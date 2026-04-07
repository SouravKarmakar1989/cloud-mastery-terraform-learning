# 05_AI_Governance_Security.md

## Scope
- Topic: Responsible AI, governance, access control, evaluation, and platform safety patterns
- Files processed: 56
- Extracted non-empty transcript lines: 2484
- Processing mode: line-by-line (sentence-level), zero-loss
- Primary source ownership: AWS AI Knowledge Base
- Cross-domain referrals: 0

## Real Material - Architect Learning Build (AI: AI Governance Security)

This section is the study-first architecture guide for responsible ai, governance, access control, evaluation, and platform safety patterns.

### Phase 1 - Foundations

#### Module: AI Governance Security Mental Model
- Use ai governance security decisions to shape blast radius, access paths, and operational ownership.
- Study service behavior first, then map it into production architecture and exam-ready design language.

##### Source Transcript Details
- Module focus: AI Governance Security Mental Model
- Primary transcript files:
- outputs/AWS/AWS AI/2. aws-machine-learning-engineer-associate/10_Security, Identity, and Compliance/234_SageMaker Security_ Encryption at Rest and in Transit.txt
- outputs/AWS/AWS AI/2. aws-machine-learning-engineer-associate/10_Security, Identity, and Compliance/256_VPC Cheat Sheet & Closing Comments.txt
- outputs/AWS/AWS AI/3. aws-generative-ai-developer-professional/09_Security, Identity, and Compliance/222_VPC Cheat Sheet & Closing Comments.txt
- outputs/AWS/AWS AI/3. aws-generative-ai-developer-professional/09_Security, Identity, and Compliance/197_Section Intro.txt
- outputs/AWS/AWS AI/2. aws-machine-learning-engineer-associate/10_Security, Identity, and Compliance/236_IAM Introduction_ Users, Groups, Policies.txt
- outputs/AWS/AWS AI/3. aws-generative-ai-developer-professional/09_Security, Identity, and Compliance/200_IAM Introduction_ Users, Groups, Policies.txt
- outputs/AWS/AWS AI/3. aws-generative-ai-developer-professional/09_Security, Identity, and Compliance/210_AWS Control Tower.txt
- outputs/AWS/AWS AI/2. aws-machine-learning-engineer-associate/10_Security, Identity, and Compliance/254_NACL, Security Groups, VPC Flow Logs.txt
- outputs/AWS/AWS AI/3. aws-generative-ai-developer-professional/09_Security, Identity, and Compliance/220_NACL, Security Groups, VPC Flow Logs.txt
- outputs/AWS/AWS AI/2. aws-machine-learning-engineer-associate/02_Data Ingestion and Storage/015_Amazon S3 Security - Bucket Policy.txt
- Top concept clusters from transcript metadata:
- AI Governance and Safety
- Model Development Lifecycle
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 56
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 2484
- Key insights inside selected files: 24
- Unique concept tags in selected files: 2

##### Transcript-Enriched Learning Notes
- So if you're sending around things like people's names or email addresses or addresses or, you know, especially things like Social Security numbers or credit card numbers and things like that, make sure you're encrypting that data both in rest and at transit.
- NACLs or Network ACLs are stateless subnet rules firewalls for inbound and outbound whereas Security Groups, we've seen them before are stateful, they operate at the EC2 instance level or the ENI and they can reference other security groups.
- Welcome to the section on security, Identity and Compliance where you'll learn how to protect your generative AI applications, secure the data they rely on, and ensure that access is managed responsibly across your entire architecture.
- And so in AWS, you don't allow everyone to do everything that would be catastrophic, because a new user could basically launch so many services and they will cost you a lot of money or would be valid for security.
- So we've seen Control Tower, we've seen how it can generate new accounts and how we can have guardrails, either preventive or detective, to control the security and the compliance of our environments.
- So now that we have all this traffic flowing through our VPC, through the network ACL and the security groups, we're curious about can we get a information about all this traffic flowing through?
- So if you know that your Bucket should never be public, then leave these settings on and you have this level of security against people who would set the wrong S3 Bucket policy.
- We've touched on data masking and anonymization a couple of times previously in this course, but it seems like it makes sense to revisit it within the security section again.
- Macie is a fully managed data security and data privacy service that will use machine learning and pattern matching to discover and protect your sensitive data in AWS.
- One thing to consider when designing a system is responsible AI, and these are the core dimensions Amazon defines for the responsible development of AI applications.
- So if you click on the account name and then click on security credentials, if you are logged in with the root user, you will see my security credentials root user.
- So this is what we set to own when we created the Buckets and these settings were invented by AWS as a extra layer of security to prevent company data leaks.

##### Polished Architect Notes
- Transcript signals that so if you're sending around things like people's names or email addresses or addresses or, you know, especially things like Social Security numbers or credit card numbers and things like that, make sure you're encrypting that data both in rest and at transit.
- Transcript signals that nACLs or Network ACLs are stateless subnet rules firewalls for inbound and outbound whereas Security Groups, we've seen them before are stateful, they operate at the EC2 instance level or the ENI and they can reference other security groups.
- Transcript signals that welcome to the section on security, Identity and Compliance where you'll learn how to protect your generative AI applications, secure the data they rely on, and ensure that access is managed responsibly across your entire architecture.
- Transcript signals that and so in AWS, you don't allow everyone to do everything that would be catastrophic, because a new user could basically launch so many services and they will cost you a lot of money or would be valid for security.
- Transcript signals that so we've seen Control Tower, we've seen how it can generate new accounts and how we can have guardrails, either preventive or detective, to control the security and the compliance of our environments.
- Transcript signals that so now that we have all this traffic flowing through our VPC, through the network ACL and the security groups, we're curious about can we get a information about all this traffic flowing through?
- Transcript signals that so if you know that your Bucket should never be public, then leave these settings on and you have this level of security against people who would set the wrong S3 Bucket policy.
- Transcript signals that we've touched on data masking and anonymization a couple of times previously in this course, but it seems like it makes sense to revisit it within the security section again.
- Transcript signals that macie is a fully managed data security and data privacy service that will use machine learning and pattern matching to discover and protect your sensitive data in AWS.
- Transcript signals that one thing to consider when designing a system is responsible AI, and these are the core dimensions Amazon defines for the responsible development of AI applications.
- Transcript signals that so if you click on the account name and then click on security credentials, if you are logged in with the root user, you will see my security credentials root user.
- Transcript signals that so this is what we set to own when we created the Buckets and these settings were invented by AWS as a extra layer of security to prevent company data leaks.

##### Architect Synthesis (Transcript-Derived)
- Treat AI Governance and Safety as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Model Development Lifecycle as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: so if you're sending around things like people's names or email addresses or addresses or, you know, especially things like Social Security numbers or credit card numbers and things like that, make sure you're encrypting that data both in rest and at transit.
- Design implication: nACLs or Network ACLs are stateless subnet rules firewalls for inbound and outbound whereas Security Groups, we've seen them before are stateful, they operate at the EC2 instance level or the ENI and they can reference other security groups.
- Design implication: welcome to the section on security, Identity and Compliance where you'll learn how to protect your generative AI applications, secure the data they rely on, and ensure that access is managed responsibly across your entire architecture.
- Design implication: and so in AWS, you don't allow everyone to do everything that would be catastrophic, because a new user could basically launch so many services and they will cost you a lot of money or would be valid for security.
- Design implication: so we've seen Control Tower, we've seen how it can generate new accounts and how we can have guardrails, either preventive or detective, to control the security and the compliance of our environments.

#### Module: Core Services and Building Blocks
- Core services should be understood through control planes, data paths, and failure boundaries.
- Primary implementation choices should be explicit enough to compare with Azure and GCP equivalents.

##### Source Transcript Details
- Module focus: Core Services and Building Blocks
- Primary transcript files:
- outputs/AWS/AWS AI/3. aws-generative-ai-developer-professional/09_Security, Identity, and Compliance/210_AWS Control Tower.txt
- outputs/AWS/AWS AI/3. aws-generative-ai-developer-professional/09_Security, Identity, and Compliance/217_Amazon Cognito.txt
- outputs/AWS/AWS AI/2. aws-machine-learning-engineer-associate/10_Security, Identity, and Compliance/247_AWS KMS - Hands On.txt
- outputs/AWS/AWS AI/3. aws-generative-ai-developer-professional/09_Security, Identity, and Compliance/213_AWS KMS - Hands On.txt
- outputs/AWS/AWS AI/2. aws-machine-learning-engineer-associate/02_Data Ingestion and Storage/016_Amazon S3 Security - Bucket Policy - Hands On.txt
- outputs/AWS/AWS AI/2. aws-machine-learning-engineer-associate/02_Data Ingestion and Storage/015_Amazon S3 Security - Bucket Policy.txt
- outputs/AWS/AWS AI/2. aws-machine-learning-engineer-associate/10_Security, Identity, and Compliance/235_SageMaker Security_ VPC's, IAM, Logging and Monitoring.txt
- outputs/AWS/AWS AI/2. aws-machine-learning-engineer-associate/10_Security, Identity, and Compliance/232_Principle of Least Privilege.txt
- outputs/AWS/AWS AI/2. aws-machine-learning-engineer-associate/10_Security, Identity, and Compliance/240_IAM Policies - Hands On.txt
- outputs/AWS/AWS AI/3. aws-generative-ai-developer-professional/09_Security, Identity, and Compliance/204_IAM Policies - Hands On.txt
- Top concept clusters from transcript metadata:
- AI Governance and Safety
- AI Operational Context
- Model Development Lifecycle
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 56
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 2484
- Key insights inside selected files: 24
- Unique concept tags in selected files: 3

##### Transcript-Enriched Learning Notes
- Then you can automate ongoing policy management using guardrails.
- So these credentials now will, thanks to this very temporary credentials with associated IAM policy, will be able to access AWS on your, for example, your S3 bucket, or your DynamoDB table, without going through an API Gateway or an Application Load Balancer.
- And therefore, what's going to happen is that the user with this policy cannot read and write all the items in your DynamoDB table, that would be too much power, but instead they can only deal with the items that they have access to through this condition.
- If I looked for example, at another AWS managed key, for example, the SQS one, and look at the key policy, here the Via Service as a condition to my KMS key policy is the SQS service, therefore allowing only access from SQS to this key.
- So the first thing you can do is look at the policies example, and this is the documentation, and it will show you a lot of use cases on the right hand side that will show you what's the appropriate and corresponding bucket policy.
- So we have an IAM user in another AWS account and we create an S3 Bucket policy that allows Cross-Account Access for that specific IAM user and therefore the IAM user will be able to make API calls into our S3 Buckets.
- There are also some predefined policies you can use, such as SageMaker read only access, SageMaker full Access administrator access, and a data scientist policy as well that you can use just out of the box.
- So we've seen Control Tower, we've seen how it can generate new accounts and how we can have guardrails, either preventive or detective, to control the security and the compliance of our environments.
- But another way to do it is that if you have a user within your account, so it's an IAM user and that user wants to access Amazon S3, then we can assign IAM permissions to that user through a policy.
- And for actually reading data, the only thing I'm going to allow with this IAM policy is reading CSV files that are under my specific bucket slash data slash reports and end with a dot csv suffix.
- So we can use an S3 Bucket policy to grant public access to the Bucket as the one shown on the right hand side or to force objects to be encrypted at upload or to grant access to another account.
- And if we have a look at the policy we created, we can have a look at the corresponding JSON and see that indeed through the visual editor, we allowed iam:ListUsers and iam:getUser on Resource*.

##### Polished Architect Notes
- Transcript signals that then you can automate ongoing policy management using guardrails.
- Transcript signals that so these credentials now will, thanks to this very temporary credentials with associated IAM policy, will be able to access AWS on your, for example, your S3 bucket, or your DynamoDB table, without going through an API Gateway or an Application Load Balancer.
- Transcript signals that and therefore, what's going to happen is that the user with this policy cannot read and write all the items in your DynamoDB table, that would be too much power, but instead they can only deal with the items that they have access to through this condition.
- Transcript signals that if I looked for example, at another AWS managed key, for example, the SQS one, and look at the key policy, here the Via Service as a condition to my KMS key policy is the SQS service, therefore allowing only access from SQS to this key.
- Transcript signals that so the first thing you can do is look at the policies example, and this is the documentation, and it will show you a lot of use cases on the right hand side that will show you what's the appropriate and corresponding bucket policy.
- Transcript signals that so we have an IAM user in another AWS account and we create an S3 Bucket policy that allows Cross-Account Access for that specific IAM user and therefore the IAM user will be able to make API calls into our S3 Buckets.
- Transcript signals that there are also some predefined policies you can use, such as SageMaker read only access, SageMaker full Access administrator access, and a data scientist policy as well that you can use just out of the box.
- Transcript signals that so we've seen Control Tower, we've seen how it can generate new accounts and how we can have guardrails, either preventive or detective, to control the security and the compliance of our environments.
- Transcript signals that but another way to do it is that if you have a user within your account, so it's an IAM user and that user wants to access Amazon S3, then we can assign IAM permissions to that user through a policy.
- Transcript signals that and for actually reading data, the only thing I'm going to allow with this IAM policy is reading CSV files that are under my specific bucket slash data slash reports and end with a dot csv suffix.
- Transcript signals that so we can use an S3 Bucket policy to grant public access to the Bucket as the one shown on the right hand side or to force objects to be encrypted at upload or to grant access to another account.
- Transcript signals that and if we have a look at the policy we created, we can have a look at the corresponding JSON and see that indeed through the visual editor, we allowed iam:ListUsers and iam:getUser on Resource*.

##### Architect Synthesis (Transcript-Derived)
- Treat AI Governance and Safety as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat AI Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Model Development Lifecycle as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: then you can automate ongoing policy management using guardrails.
- Design implication: so these credentials now will, thanks to this very temporary credentials with associated IAM policy, will be able to access AWS on your, for example, your S3 bucket, or your DynamoDB table, without going through an API Gateway or an Application Load Balancer.
- Design implication: and therefore, what's going to happen is that the user with this policy cannot read and write all the items in your DynamoDB table, that would be too much power, but instead they can only deal with the items that they have access to through this condition.
- Design implication: if I looked for example, at another AWS managed key, for example, the SQS one, and look at the key policy, here the Via Service as a condition to my KMS key policy is the SQS service, therefore allowing only access from SQS to this key.
- Design implication: so the first thing you can do is look at the policies example, and this is the documentation, and it will show you a lot of use cases on the right hand side that will show you what's the appropriate and corresponding bucket policy.

#### Module: Operational and Architecture Patterns
- Patterns matter when scale, governance, or reliability turns basic service use into system design.
- Prefer design implications and trade-offs over memorizing isolated features.

##### Source Transcript Details
- Module focus: Operational and Architecture Patterns
- Primary transcript files:
- outputs/AWS/AWS AI/3. aws-generative-ai-developer-professional/09_Security, Identity, and Compliance/197_Section Intro.txt
- outputs/AWS/AWS AI/3. aws-generative-ai-developer-professional/09_Security, Identity, and Compliance/210_AWS Control Tower.txt
- outputs/AWS/AWS AI/2. aws-machine-learning-engineer-associate/10_Security, Identity, and Compliance/236_IAM Introduction_ Users, Groups, Policies.txt
- outputs/AWS/AWS AI/3. aws-generative-ai-developer-professional/09_Security, Identity, and Compliance/200_IAM Introduction_ Users, Groups, Policies.txt
- outputs/AWS/AWS AI/3. aws-generative-ai-developer-professional/08_Governance and QA/183_Principles of Responsible AI.txt
- outputs/AWS/AWS AI/2. aws-machine-learning-engineer-associate/02_Data Ingestion and Storage/015_Amazon S3 Security - Bucket Policy.txt
- outputs/AWS/AWS AI/2. aws-machine-learning-engineer-associate/10_Security, Identity, and Compliance/247_AWS KMS - Hands On.txt
- outputs/AWS/AWS AI/3. aws-generative-ai-developer-professional/09_Security, Identity, and Compliance/213_AWS KMS - Hands On.txt
- outputs/AWS/AWS AI/2. aws-machine-learning-engineer-associate/10_Security, Identity, and Compliance/232_Principle of Least Privilege.txt
- outputs/AWS/AWS AI/3. aws-generative-ai-developer-professional/09_Security, Identity, and Compliance/198_Principle of Least Privilege.txt
- Top concept clusters from transcript metadata:
- AI Governance and Safety
- AI Operational Context
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 56
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 2484
- Key insights inside selected files: 24
- Unique concept tags in selected files: 2

##### Transcript-Enriched Learning Notes
- Welcome to the section on security, Identity and Compliance where you'll learn how to protect your generative AI applications, secure the data they rely on, and ensure that access is managed responsibly across your entire architecture.
- So we've seen Control Tower, we've seen how it can generate new accounts and how we can have guardrails, either preventive or detective, to control the security and the compliance of our environments.
- And so in AWS, you don't allow everyone to do everything that would be catastrophic, because a new user could basically launch so many services and they will cost you a lot of money or would be valid for security.
- One of the areas covered by the exam is machine learning system architecture, and specifically the best practices that Amazon has defined for designing your machine learning systems.
- So if you know that your Bucket should never be public, then leave these settings on and you have this level of security against people who would set the wrong S3 Bucket policy.
- One thing to consider when designing a system is responsible AI, and these are the core dimensions Amazon defines for the responsible development of AI applications.
- You can detect policy violations and remediate them automatically, and you can monitor the overall compliance of all your accounts through an interactive dashboard.
- But if you wanted to also have some extra security, you could say, hey, only Stefan can use this key and this would create a custom KMS key policy.
- So using these guardrails, you're going to get ongoing governance for all your accounts within your Control Tower environments.
- Then you can automate ongoing policy management using guardrails.
- Let's dive into security, identity and compliance.
- So if you're sending around things like people's names or email addresses or addresses or, you know, especially things like Social Security numbers or credit card numbers and things like that, make sure you're encrypting that data both in rest and at transit.

##### Polished Architect Notes
- Transcript signals that welcome to the section on security, Identity and Compliance where you'll learn how to protect your generative AI applications, secure the data they rely on, and ensure that access is managed responsibly across your entire architecture.
- Transcript signals that so we've seen Control Tower, we've seen how it can generate new accounts and how we can have guardrails, either preventive or detective, to control the security and the compliance of our environments.
- Transcript signals that and so in AWS, you don't allow everyone to do everything that would be catastrophic, because a new user could basically launch so many services and they will cost you a lot of money or would be valid for security.
- Transcript signals that one of the areas covered by the exam is machine learning system architecture, and specifically the best practices that Amazon has defined for designing your machine learning systems.
- Transcript signals that so if you know that your Bucket should never be public, then leave these settings on and you have this level of security against people who would set the wrong S3 Bucket policy.
- Transcript signals that one thing to consider when designing a system is responsible AI, and these are the core dimensions Amazon defines for the responsible development of AI applications.
- Transcript signals that you can detect policy violations and remediate them automatically, and you can monitor the overall compliance of all your accounts through an interactive dashboard.
- Transcript signals that but if you wanted to also have some extra security, you could say, hey, only Stefan can use this key and this would create a custom KMS key policy.
- Transcript signals that so using these guardrails, you're going to get ongoing governance for all your accounts within your Control Tower environments.
- Transcript signals that then you can automate ongoing policy management using guardrails.
- Transcript signals that let's dive into security, identity and compliance.
- Transcript signals that so if you're sending around things like people's names or email addresses or addresses or, you know, especially things like Social Security numbers or credit card numbers and things like that, make sure you're encrypting that data both in rest and at transit.

##### Architect Synthesis (Transcript-Derived)
- Treat AI Governance and Safety as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat AI Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: welcome to the section on security, Identity and Compliance where you'll learn how to protect your generative AI applications, secure the data they rely on, and ensure that access is managed responsibly across your entire architecture.
- Design implication: so we've seen Control Tower, we've seen how it can generate new accounts and how we can have guardrails, either preventive or detective, to control the security and the compliance of our environments.
- Design implication: and so in AWS, you don't allow everyone to do everything that would be catastrophic, because a new user could basically launch so many services and they will cost you a lot of money or would be valid for security.
- Design implication: one of the areas covered by the exam is machine learning system architecture, and specifically the best practices that Amazon has defined for designing your machine learning systems.
- Design implication: so if you know that your Bucket should never be public, then leave these settings on and you have this level of security against people who would set the wrong S3 Bucket policy.

### Phase 2 - Core Services
- Amazon S3 should be understood in terms of request path, control plane, and operational boundary.
- Amazon EBS should be understood in terms of request path, control plane, and operational boundary.
- Amazon EC2 should be understood in terms of request path, control plane, and operational boundary.
- AWS SAM should be understood in terms of request path, control plane, and operational boundary.
- Amazon RDS should be understood in terms of request path, control plane, and operational boundary.

### Phase 3 - Advanced Patterns
- Pattern emphasis: AI Governance and Safety becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: AI Operational Context becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Generative AI Architecture becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Inference and Serving becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: MLOps and Operationalization becomes valuable when requirements move from feature use to system design discipline.

### Phase 4 - System Design (Production)
#### Reference Architecture
- Design ai governance security with explicit service boundaries, operational controls, and recovery expectations.
#### Scaling Considerations
- Scaling risk appears when ai governance security decisions are made service-by-service without a whole-system operating model.
#### Cost Considerations
- The main cost driver is usually misalignment between service choice, operations, and workload behavior.

## Cross-Domain Referrals

- No secondary referral sources were required for this topic.

## Step 1 - Line-by-Line Extraction

Every non-empty line from every primary source transcript is preserved below with extraction fields.

### File: outputs/AWS/AWS AI/2. aws-machine-learning-engineer-associate/02_Data Ingestion and Storage/015_Amazon S3 Security - Bucket Policy.txt

Line 1:
- Concepts: AI Governance and Safety
- Services: Amazon S3
- Key Insights: So now let's talk about Amazon S3-Security.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 2:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The first part is User-Based.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 3:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So as a user you can have IAM policies that you and this IAM policy is going to authorize which API calls should be allowed for a specific IAM user.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Governance and safety signal.

Line 4:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: You can also have Resource-Based Security.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 5:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So this is new.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: AI Operational Context
- Services: Amazon S3
- Key Insights: We can use what's called S3 Bucket policies and there are bucket wide rules that you can assign directly from the S3 console.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 7:
- Concepts: AI Operational Context
- Services: Amazon S3
- Key Insights: And this will allow, for example, a specific user to come in or allow a user from another account, this is called cross-account to access your S3 Buckets.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: AI Operational Context
- Services: Amazon S3
- Key Insights: This is also how we'll make our S3 Buckets public as I will show you in a minute.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: Next, you have the Object Access Control List or ACL, they're finer grain security and they can be disabled.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 10:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And if you need to go at the Bucket level, you can have Buckets ACL which is way less common also can be disabled.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: AI Governance and Safety
- Services: Amazon S3
- Key Insights: And the most common way now to do security on an Amazon S3 Bucket is to use Bucket policies.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 12:
- Concepts: AI Operational Context
- Services: Amazon S3
- Key Insights: So in which situation can an IAM principle can access an S3 object?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 13:
- Concepts: AI Operational Context
- Services: Amazon S3
- Key Insights: Well, if the IAM permissions allow it or if the resource policies allows it and that there is no explicit deny in the action, then the IAM principle can access the S3 object on the specified API call.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 14:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we'll have a look at these use cases in a minute.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 15:
- Concepts: AI Governance and Safety
- Services: Amazon S3
- Key Insights: Finally, another way to do security on Amazon S3 is to encrypt the objects using encryption keys.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 16:
- Concepts: AI Operational Context
- Services: Amazon S3
- Key Insights: So what does S3 Bucket policy actually look like?
- Hidden/Implicit Meaning: Governance and safety signal.

Line 17:
- Concepts: AI Governance and Safety
- Services: Amazon S3
- Key Insights: Because this is the focus of S3-Security for us.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 18:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So they are JSON based policies and they look like this.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 19:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So this is JSON documents and it's quite easy to read.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 20:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So the first thing is that you have a resource block and the resource tells the policy what buckets and object this policy applies on.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 21:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And in here we can see that this applies to every object within the example Bucket, this is what the star is for.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 22:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Next we have the effect.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 23:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So Allow or Deny, and what do we Allow or Deny?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 24:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Well, we Deny actions.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 25:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we have a set of APIs we can either Allow or Deny and in this example, the action we Allow is GetObject.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 26:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So this allows anyone thanks to the principle, the principle presents the account or the user to apply the policy to so principle is star.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 27:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So, here we allow anyone with a star to GetObject, so to retrieve an object from my example Bucket with a start, that means any object within it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 28:
- Concepts: AI Operational Context
- Services: Amazon S3
- Key Insights: So therefore this S3 Bucket, is setting public reads on all objects inside my Buckets.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 29:
- Concepts: AI Operational Context
- Services: Amazon S3
- Key Insights: So we can use an S3 Bucket policy to grant public access to the Bucket as the one shown on the right hand side or to force objects to be encrypted at upload or to grant access to another account.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 30:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's have a look at the situation.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 31:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So here is a Bucket Policy for Public Access.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 32:
- Concepts: AI Operational Context
- Services: Amazon EBS, Amazon S3
- Key Insights: So we have a user, it's on the worldwide web it's a website visitor and he wants to access files within our S3 Buckets.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 33:
- Concepts: AI Operational Context
- Services: Amazon S3
- Key Insights: So we'll attach an S3 Bucket policy that allows public access.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 34:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: This is the one you've seen in the previous slide.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 35:
- Concepts: AI Operational Context
- Services: Amazon S3
- Key Insights: And once this Bucket policy is attached to the S3 Bucket then we can access any objects within it.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 36:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: That's what we'll see in the hands-on.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 37:
- Concepts: AI Operational Context
- Services: Amazon S3
- Key Insights: But another way to do it is that if you have a user within your account, so it's an IAM user and that user wants to access Amazon S3, then we can assign IAM permissions to that user through a policy.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 38:
- Concepts: AI Operational Context
- Services: Amazon S3
- Key Insights: And therefore because the policy allows access to the S3 Buckets then the user can access our S3 Buckets right now.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 39:
- Concepts: AI Operational Context
- Services: Amazon EC2, Amazon S3
- Key Insights: If we have an EC2 instance and want to give access from the EC2 instance into the S3 Buckets, we've seen that IAM users are not appropriate.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 40:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: We need to use IAM roles instead.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 41:
- Concepts: AI Operational Context
- Services: Amazon EC2, Amazon S3
- Key Insights: So we create an EC2 instance role with the correct IAM permissions and that EC2 instance will be able to access the Amazon S3 Buckets.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 42:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: More advanced, if we want to allow Cross-Account Access, then we must use the Bucket Policy.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Governance and safety signal.

Line 43:
- Concepts: AI Operational Context
- Services: Amazon S3
- Key Insights: So we have an IAM user in another AWS account and we create an S3 Bucket policy that allows Cross-Account Access for that specific IAM user and therefore the IAM user will be able to make API calls into our S3 Buckets.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 44:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: Other security settings you need to know about is that there is the Bucket settings for Block Public Access.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 45:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: So this is what we set to own when we created the Buckets and these settings were invented by AWS as a extra layer of security to prevent company data leaks.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 46:
- Concepts: AI Operational Context
- Services: Amazon S3
- Key Insights: So even though you would set an S3 Bucket policy that would make it public, if these settings are enabled, the Bucket will never be public.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Governance and safety signal.

Line 47:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So this is to prevent data leaks.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 48:
- Concepts: AI Governance and Safety
- Services: Amazon S3
- Key Insights: So if you know that your Bucket should never be public, then leave these settings on and you have this level of security against people who would set the wrong S3 Bucket policy.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Governance and safety signal.

Line 49:
- Concepts: AI Operational Context
- Services: Amazon S3
- Key Insights: And if you know that none of your S3 Buckets ever should be public, then you can set this at the account level.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 50:
- Concepts: AI Governance and Safety
- Services: Amazon S3
- Key Insights: Okay, so that's it for S3-Security.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 51:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Now let's go in the hands-on to practice.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

### File: outputs/AWS/AWS AI/2. aws-machine-learning-engineer-associate/02_Data Ingestion and Storage/016_Amazon S3 Security - Bucket Policy - Hands On.txt

Line 1:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's go ahead and make a bucket policy so that we can access this coffee file from the public URL.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 2:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So to do so, let's go under the Permission tabs.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 3:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And the first thing we have to do is to allow public access from the bucket setting, because right now everything is blocked.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 4:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we edit this and we're going to untick this, and, therefore, we will allow public access.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But again, this is something you would disable only, and only if, you know you want to set a public bucket policy.
- Hidden/Implicit Meaning: Constraint or limitation signal; Governance and safety signal.

Line 6:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So this is dangerous action.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 7:
- Concepts: AI Operational Context
- Services: Amazon S3
- Key Insights: So we say yes, because, of course, if you set real data of your company on an S3 bucket and you make this public, you have data leaks and that can never be good.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 8:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So now, under Permissions overview, the access that objects can be public.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So that's the first step.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 10:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Next, we scroll down and we look at Bucket policy.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 11:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So currently we have none and we wanna create one so that we make our entire bucket public.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 12:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So the first thing you can do is look at the policies example, and this is the documentation, and it will show you a lot of use cases on the right hand side that will show you what's the appropriate and corresponding bucket policy.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 13:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But for us, we're going to use the policy generator.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 14:
- Concepts: AI Operational Context
- Services: Amazon S3
- Key Insights: So here's the AWS Policy Generator, and we're going to create an S3 Bucket Policy.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 15:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's select the right type.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 16:
- Concepts: AI Operational Context
- Services: Amazon S3
- Key Insights: We'll allow, and then the principal is going to be a star because we want to allow anyone on the Amazon S3 service to perform, and because we will read objects on our bucket, we want to perform a getObject.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 17:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So here it is.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 18:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: We want to allow getObjects.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 19:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And the Amazon Resource Name must be the bucket name with a slash, and then with a star.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 20:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's have a look first.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 21:
- Concepts: AI Operational Context
- Services: Amazon S3
- Key Insights: So back into our S3 buckets, we have the bucket arn here, the Amazon resource name here.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 22:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we copy it, we paste it into the Amazon Resource Name, and this is not over.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 23:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: We add a slash and then we add a star.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 24:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And the reason why we do this is that this action, the getObject action right here, applies to objects within your buckets, and, therefore, objects within your bucket are after a slash and there are stars to represent these objects.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 25:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's add these statements and then let's generate this policy.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 26:
- Concepts: AI Operational Context
- Services: Amazon S3
- Key Insights: And this policy is what we copy into here, and this is a public S3 policy.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 27:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So that means that getObjects are allowed from anyone on any objects of this bucket.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 28:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's good.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 29:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's save these changes.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 30:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And there is a space here, so let's remove this.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 31:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Perfect.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 32:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Save these changes.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 33:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Now that works.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 34:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we can see that our bucket policy has properly been applied.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 35:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So, now, let's go into our object, coffee.jpg, and let's find the object URL, right here.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 36:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: We copy it and we enter it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 37:
- Concepts: AI Operational Context
- Services: Amazon S3
- Key Insights: And as you can see now, my coffee image is fully visible and it is public as well as any other objects in my Amazon S3 buckets.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 38:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 39:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: We've seen bucket policies, we've seen the policy generator, and we've seen that now our image is public.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 40:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

### File: outputs/AWS/AWS AI/2. aws-machine-learning-engineer-associate/10_Security, Identity, and Compliance/232_Principle of Least Privilege.txt

Line 1:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: Let's dive into security, identity and compliance.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 2:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: This is a quick one.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 3:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: We're going to start off with a very basic principle of security, but an important one the principle of least privilege.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 4:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And the exam guide does say you need to know what this is.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It's pretty simple though.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: All it means is that you're only granting the permissions required for someone to perform a given task.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 7:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So it's kind of common sense, right?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Don't give people more permissions than they need to do what they need to do.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Otherwise they might figure out a way to exploit or abuse that extraneous permission that they have.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 10:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Now, while you're developing, it certainly makes sense to start with broader permissions, since you don't necessarily know exactly what you need permission for when you're still building a system and figuring out what components make it up right.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But once you're done, once you actually know what somebody needs to do with that system, you should lock it down.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 12:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Once you have that better idea of the exact services and operations that a workload requires over on the right here, we have an example of that.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 13:
- Concepts: AI Operational Context
- Services: Amazon S3
- Key Insights: So this is just an IAM policy that restricts S3 access to listing a specific bucket.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 14:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And furthermore within a specific prefix of that bucket.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 15:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So that top half there is saying I'm only going to allow list bucket operations within my specific bucket under the data reports path there.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 16:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And for actually reading data, the only thing I'm going to allow with this IAM policy is reading CSV files that are under my specific bucket slash data slash reports and end with a dot csv suffix.
- Hidden/Implicit Meaning: Constraint or limitation signal; Governance and safety signal.

Line 17:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So if you have, for example, a workflow that requires people to or a system or a service to read CSV files from a specific location, there's no reason to give them access to anything more than that location, and furthermore, just to the specific types of files that they might need from that location.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 18:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Right?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 19:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So that's an example of the principle of least privilege.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 20:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And if you're not sure what privileges you need for an operation, you can use a tool called the IAM Access Analyzer.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 21:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And that will automatically generate least privilege policies based on the actual observed access activity.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 22:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So if while you're testing your system, you're only doing what you're supposed to do, you could use IAM Access Analyzer to automatically give you a starting point of what those least privileged policies might look like.
- Hidden/Implicit Meaning: Constraint or limitation signal.

### File: outputs/AWS/AWS AI/2. aws-machine-learning-engineer-associate/10_Security, Identity, and Compliance/233_Data Masking and Anonymization.txt

Line 1:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: We've touched on data masking and anonymization a couple of times previously in this course, but it seems like it makes sense to revisit it within the security section again.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 2:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It is an important concept that the exam expects you to know about, so anytime you're dealing with personally identifiable information or other sensitive data could be anything really.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 3:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Masking is one way of obfuscating that data.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 4:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So for example, you've probably seen a on your credit card bill.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: They'll mask out all but the last four digits of your credit card number, just to make sure that if somebody gets a copy of that bill, they can't run off with your complete credit card number.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 6:
- Concepts: AI Governance and Safety
- Services: AWS SAM
- Key Insights: Same thing where you see your Social Security number listed.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 7:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Typically, you'll see everything but the last four digits masked out from that.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: AI Operational Context
- Services: Amazon RDS
- Key Insights: You can also use it for masking out passwords.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: AI Operational Context
- Services: Amazon RDS
- Key Insights: You know, as you type in passwords, you'll often see it being obscured or masked with stars or whatever it is.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 10:
- Concepts: AI Operational Context
- Services: AWS Glue, Amazon Redshift
- Key Insights: And there is built in support for masking in both glue databrew and in redshift.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: An example of a masking policy is below here that would fully mask a credit card number.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 12:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Create masking policy.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 13:
- Concepts: AI Operational Context
- Services: Amazon Redshift
- Key Insights: This is in redshift by the way.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 14:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Masked credit card full is the name of that policy, with credit card being the field that contains that credit card number of type varchar 256 using and then that mask string.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 15:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And we're going to say that that's going to be a text going into it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 16:
- Concepts: AI Operational Context
- Services: Amazon Redshift
- Key Insights: So that's just an example of creating a masking policy for a credit card number under redshift.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 17:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And again, the syntax error isn't something you'll be expected to know, I don't think.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 18:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But just know that you can do that.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 19:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Also, anonymization is another way of doing it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 20:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So rather than masking something, you can replace that data with something that is not traceable back to where it came from.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 21:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So you could just replace a credit card number or a password or whatever it is with random information.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 22:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You could shuffle it so that you're just shuffling everything in a given column, so that people's actual credit card numbers don't match up to the actual person.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 23:
- Concepts: AI Operational Context
- Services: AWS SAM
- Key Insights: Another approach would be encryption, and that can be deterministic, where you can always get the same result from encrypting the same input, or probabilistic where you might have a different result every time you encrypt it.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 24:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Hashing is another technique that we talked about before too, where you just apply what's called a hash function to the string.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 25:
- Concepts: AI Operational Context
- Services: AWS SAM
- Key Insights: And the thing with hashing is that you might get more than one thing that hashes to the same value, but you know, at the end that just increases the anonymization of it, right?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 26:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Or even better, just delete it or don't import it in the first place.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 27:
- Concepts: AI Operational Context
- Services: Amazon RDS
- Key Insights: If you don't need credit card numbers or passwords for whatever you're doing, don't take it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 28:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You know, if you see that information coming in, delete it during your ETL, or don't even try to import it to begin with.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 29:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: That's probably the safest way of dealing with personally identifiable information.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 30:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Don't have it in the first place.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

### File: outputs/AWS/AWS AI/2. aws-machine-learning-engineer-associate/10_Security, Identity, and Compliance/234_SageMaker Security_ Encryption at Rest and in Transit.txt

Line 1:
- Concepts: AI Governance and Safety, Model Development Lifecycle
- Services: SageMaker
- Key Insights: Let's talk about security in the context of SageMaker.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 2:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: As we know, most AWS exams focus a lot on security, so you definitely want to pay attention during this lecture.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 3:
- Concepts: AI Governance and Safety, Model Development Lifecycle
- Services: SageMaker
- Key Insights: Let's start by reviewing some general best practices with AWS security that also apply to SageMaker and using Amazon's machine learning services.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Governance and safety signal.

Line 4:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: First of all, you want to be using the IAM service as much as possible.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: That's identity and access management.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Not only can you use that to restrict the permissions of the different services that are talking to each other within your larger system, you can also use it to set up user accounts for AWS, and make sure that those user accounts only have the permissions that they need.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 7:
- Concepts: Model Development Lifecycle
- Services: Amazon S3, SageMaker
- Key Insights: So if you need to only have permission to run a SageMaker notebook, you can restrict permissions to setting up SageMaker notebooks and maybe S3 to getting data in and out of it.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 8:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You want to use multi-factor authentication whenever possible, so you want to make sure that your administrator accounts, and certainly your root account, is using MFA to make sure that we're sure that someone's not just guessing your password and breaking in That can be a lifesaver.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 9:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And I've learned that the hard way in the past.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 10:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Also use SSL and TLS when connecting to anything.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Fortunately, it's hard not to do that.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 12:
- Concepts: AI Operational Context
- Services: Amazon EMR
- Key Insights: In the case of EMR, which is about the only case where I can think of where you'd be connecting directly to a server in the world of machine learning.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 13:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You'd have to try pretty hard not to do that in a secure manner, but it is possible.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 14:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So don't get any ideas.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 15:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Make sure you're using SSL when you're connecting to those servers.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 16:
- Concepts: AI Operational Context
- Services: AWS CloudTrail
- Key Insights: Also, you should be using Amazon's CloudTrail service to log any activity to the APIs that you're using and any user activity.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 17:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So if you do, God forbid, have a breach, you'll at least have an audit trail to look at to try to get some forensic information about what happened there and how to undo the damage.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 18:
- Concepts: AI Operational Context
- Services: AWS CloudTrail, Amazon CloudWatch
- Key Insights: Now remember the difference between CloudTrail and CloudWatch.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 19:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: This tends to be a favorite question on Amazon exams in general.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 20:
- Concepts: AI Operational Context
- Services: AWS CloudTrail
- Key Insights: Remember, CloudTrail is for auditing.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 21:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It's leaving a trail of activity, a log of what everyone did.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 22:
- Concepts: MLOps and Operationalization
- Services: Amazon CloudWatch
- Key Insights: Whereas CloudWatch is monitoring log data and issuing alarms when things are going wrong.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 23:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Use encryption whenever appropriate and especially with PII, that's personally identifiable information.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 24:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: So if you're sending around things like people's names or email addresses or addresses or, you know, especially things like Social Security numbers or credit card numbers and things like that, make sure you're encrypting that data both in rest and at transit.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 25:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: Let's dive into more detail on how to do that with SageMaker.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 26:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: So at rest, you can use Amazon's key management service for pretty much everything in SageMaker.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 27:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: Any SageMaker jobs or notebooks will accept a KMS key to encrypt all the data stored by those notebooks or jobs, so you can provide a key managed by KMS to actually perform encryption of that data at rest.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 28:
- Concepts: Inference and Serving, Model Development Lifecycle
- Services: AWS Batch
- Key Insights: That includes artifacts coming from training, parameter tuning, batch transforms and coming from your endpoints.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 29:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Also your notebooks, the notebooks themselves and everything under opt ML and temp in your Docker containers can be encrypted with a KMS key as well.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 30:
- Concepts: Model Development Lifecycle
- Services: Amazon S3
- Key Insights: There's also the problem of securing your training data and the data used for hosting your models, so you can just use standard S3 encryption techniques for that.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 31:
- Concepts: Model Development Lifecycle
- Services: Amazon S3
- Key Insights: Uh, S3 supports various kinds of encryption at rest and in transit, so you can just use the capabilities of encrypted S3 buckets for your training data and for hosting your trained models.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 32:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: Back to SageMaker.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 33:
- Concepts: AI Operational Context
- Services: Amazon S3
- Key Insights: S3 can also use KMS optionally, and it can use its own keys as well.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 34:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: In transit.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 35:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: Basically all traffic supports TLS and SSL within SageMaker.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 36:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: You can also use IAM to assign roles to SageMaker to give it permissions to access specific resources.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 37:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So in general, you want to follow the principle of least access.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 38:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: So only give SageMaker itself permissions that it needs to access the data that it absolutely needs and, you know, reject everything else.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 39:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: IAM can let you do that.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 40:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: Also, you can optionally encrypt the Inter-node training communication as well.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 41:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: So if you actually have training happening across multiple nodes, you can even encrypt that traffic too.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 42:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It's kind of hard to imagine how someone could actually intercept that traffic, but you might have some sort of a regulatory or requirement to actually encrypt that too, if you're dealing with particularly sensitive information.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 43:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: This does come at the cost of increasing training time, and time is money when it comes to training.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 44:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So if you're doing a very complicated deep learning algorithm that's spread out across multiple nodes, that encryption will come at a very real cost.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 45:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But sometimes it's required.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 46:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: This is also known as inter container traffic encryption.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 47:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: You can just turn this on via the console when you're setting up your training job, or through the API for training or tuning for that matter.
- Hidden/Implicit Meaning: Model lifecycle signal.

### File: outputs/AWS/AWS AI/2. aws-machine-learning-engineer-associate/10_Security, Identity, and Compliance/235_SageMaker Security_ VPC's, IAM, Logging and Monitoring.txt

Line 1:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: There are some specific concerns around VPCs with SageMaker that you need to know about as well.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 2:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: So when you run a training job in SageMaker that's running within a virtual private cloud of some sort.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 3:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: Now, if you really need extra security, you could even use a private VPC for that.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 4:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: You can specify that when you're launching your training job.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 5:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: However, that creates some problems, right?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: Model Development Lifecycle
- Services: Amazon S3, SageMaker
- Key Insights: Because SageMaker depends on having access to S3 to get its training data, and also to get the trained model artifacts for when it's actually deploying your model.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 7:
- Concepts: Model Development Lifecycle
- Services: Amazon S3, SageMaker
- Key Insights: So we need to make sure that we at least have connectivity between SageMaker and S3 within a private VPC.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: Inference and Serving
- Services: Amazon S3
- Key Insights: That means you'll have to set up S3 VPC endpoints to enable that communication, and you can still use custom endpoint policies and bucket policies within S3 to keep that secure.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: But you do need to set that up for SageMaker to work at all.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 10:
- Concepts: AI Governance and Safety, Model Development Lifecycle
- Services: SageMaker
- Key Insights: Another consideration with security in SageMaker is that SageMaker notebooks are internet enabled by default.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 11:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So by default, your notebook can go out to the internet and download data and do whatever it wants to it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 12:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: That can be very convenient if you're downloading, you know, public data sets or what have you.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 13:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: But it can also be a security hole.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 14:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: So you can disable that while you're creating your SageMaker notebook.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 15:
- Concepts: Model Development Lifecycle
- Services: Amazon S3, SageMaker
- Key Insights: But again, you need to get out to S3 somehow in order for SageMaker to work at all.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 16:
- Concepts: Inference and Serving, Model Development Lifecycle
- Services: (none explicit)
- Key Insights: So if you do disable internet access on your notebooks, you're going to have to set up an interface endpoint that's also known as Privatelink, or maybe a Nat gateway, and set up outbound connections to actually allow your training and hosting to work.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 17:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: So remember, if you disable internet access from your notebooks, you're going to have to set up Privatelink or a Nat gateway to make sure that you can get through your VPC to get the outbound connections that you need for training and hosting to work.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 18:
- Concepts: Inference and Serving, Model Development Lifecycle
- Services: (none explicit)
- Key Insights: Also, your training and inference containers are also internet enabled by default.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 19:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It is possible to enable network isolation on those as well.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 20:
- Concepts: AI Operational Context
- Services: Amazon S3
- Key Insights: But again, you're going to lose S3 access by doing so, so you'll have to work around that somehow.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 21:
- Concepts: AI Governance and Safety, Model Development Lifecycle
- Services: Amazon S3, SageMaker
- Key Insights: Um, you know, it is a security concern in general that SageMaker has to get to S3 still somehow.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 22:
- Concepts: Model Development Lifecycle
- Services: Amazon S3, SageMaker
- Key Insights: So you can tighten that up using these techniques, but you still have to make sure that SageMaker has the S3 access that it needs.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 23:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: We mentioned using IAM with SageMaker, the identity and access management service.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 24:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: Here are a list of some of the specific permissions you can set that are related to SageMaker.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 25:
- Concepts: Inference and Serving, Model Development Lifecycle
- Services: (none explicit)
- Key Insights: So you can set a specific permissions for creating training jobs, creating models, creating endpoints.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 26:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Creating hyperparameter tuning jobs, creating notebooks.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 27:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You can lock these down or enable them to whatever degree makes sense for a given user.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 28:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: So if I want a user that I just want to be able to create notebooks but not actually deploy them, or create notebooks, but not actually create a huge training job that might cost a lot of money.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 29:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Or I might just want to lock down hyperparameter tuning jobs because those in particular can get really expensive.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 30:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: You can do that through user permissions with IAM and SageMaker.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 31:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: There are also some predefined policies you can use, such as SageMaker read only access, SageMaker full Access administrator access, and a data scientist policy as well that you can use just out of the box.
- Hidden/Implicit Meaning: Constraint or limitation signal; Governance and safety signal.

Line 32:
- Concepts: MLOps and Operationalization
- Services: (none explicit)
- Key Insights: A brief mention of logging and monitoring again.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 33:
- Concepts: AI Operational Context
- Services: Amazon CloudWatch
- Key Insights: So again, it's a good practice to use CloudWatch.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 34:
- Concepts: Inference and Serving
- Services: Amazon CloudWatch
- Key Insights: In general, CloudWatch can log, monitor and alarm on your endpoints for actually doing inferences, and it can monitor the invocations of those endpoints and the latency of those endpoints as well.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 35:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Very important for runtime performance, right?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 36:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The health of the nodes themselves, the CPU available memory, things like that can also be monitored.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 37:
- Concepts: AI Operational Context
- Services: Amazon CloudWatch
- Key Insights: And you can also use CloudWatch with ground truth which is kind of neat.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 38:
- Concepts: AI Operational Context
- Services: Amazon CloudWatch
- Key Insights: So if I want to monitor how many active human beings, how many workers are actually working on my job and how much work they're doing, I can actually monitor that as well through CloudWatch.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 39:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So kind of an interesting twist there.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 40:
- Concepts: MLOps and Operationalization, Model Development Lifecycle
- Services: Amazon CloudWatch
- Key Insights: You usually think of CloudWatch as monitoring machines, but it can monitor the performance of humans doing your labeling tasks as well.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 41:
- Concepts: AI Operational Context
- Services: AWS CloudTrail
- Key Insights: And CloudTrail is again used for auditing.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 42:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So that's going to record actions from your users roles and services.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 43:
- Concepts: Model Development Lifecycle
- Services: Amazon S3, SageMaker
- Key Insights: Within SageMaker, the log files containing that log information are delivered to S3, where they can later be used for auditing purposes
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

### File: outputs/AWS/AWS AI/2. aws-machine-learning-engineer-associate/10_Security, Identity, and Compliance/236_IAM Introduction_ Users, Groups, Policies.txt

Line 1:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: - [Stephane] Welcome to the first deep dive on an iterator service.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 2:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The first one is called IAM.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 3:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So IAM stands for identity and access management.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 4:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It is a global service because in IAM, we are going to create our users and assign them to group.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we've already used IAM without knowing, when we created an account, we created a root accounts, and has been created by default.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: This is the root user of our accounts.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 7:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And the only things you should use it for is to set up your account as we'll do it right now.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal.

Line 8:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But then you shouldn't use that account anymore, or even share it.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 9:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: What you should be doing instead, is create users.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 10:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So you will create users in IAM, and one user represents one person within your organization.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And the users can be grouped together if it makes sense.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 12:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's take an example we have an organization with six people.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 13:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You have Alice, Bob, Charles, David, Edward and Fred so all these people are in your organization.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 14:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Now Alice, Bob, and Charles they work together.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 15:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: They're all developers.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 16:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we're going to create a group called the group developers who regrouping Alice, Bob and Charles.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 17:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And it turns out that David and Edward also work together.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 18:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we're going to create an operations group.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 19:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Now we have two groups within IAM.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 20:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Now groups can only contain users, not other groups.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 21:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So this is something very important to understand.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 22:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Groups only contain users.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 23:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Now, some users don't have to belong to a group.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 24:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: For example, Fred right here is alone, he does not correspond to any group.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 25:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: That is not best practice.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 26:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But it is something you can do in AWS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 27:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And also, a user can belong to multiple groups.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 28:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: That means that for example, if you know that Charles and David worked together, and they're part of your audit team, you can create a third group with Charles and David.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 29:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And as you can see, now, in this example, Charles and David are part of two different groups.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 30:
- Concepts: AI Operational Context
- Services: AWS Config
- Key Insights: So this is the possible configurations for IAM.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 31:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So why do we create users and why do we create groups?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 32:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Well, because we want to allow them to use our AWS accounts and to allow them to do so, we have to give them permissions.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 33:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So users or groups can be assigned what's called a JSON document.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 34:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I'll show you right now what it means called a policy, an IAM policy.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 35:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So it looks just like this.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 36:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So you don't have to be a programmer.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 37:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: This is not programming.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 38:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: This is just describing in, I think plain English, what a user is allowed to do or what a group and all the users within that group are allowed to do.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 39:
- Concepts: AI Operational Context
- Services: Amazon CloudWatch, Amazon EC2
- Key Insights: So in this example, we can see that we allow people to use the EC2 to service and do describe on it, to use the elastic load balancing service and to describe on it and to use CloudWatch.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 40:
- Concepts: AI Operational Context
- Services: Amazon CloudWatch, Amazon EC2
- Key Insights: Now we'll see what EC2 elastic load balancing and CloudWatch mean, but through this JSON document that looks just like this.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 41:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: We are allowing our users to use some services in AWS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 42:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So these policies will help us define permissions of our users.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 43:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: And so in AWS, you don't allow everyone to do everything that would be catastrophic, because a new user could basically launch so many services and they will cost you a lot of money or would be valid for security.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 44:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So in AWS, you apply a principle called the least privilege principle.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 45:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So you don't give more permissions than a user needs.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 46:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Okay, so if a user just needs access to three services, just create a permission for that user.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 47:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So now we have seen an overview IAM.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 48:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Let's go in the next lecture to practice creating users and groups.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

### File: outputs/AWS/AWS AI/2. aws-machine-learning-engineer-associate/10_Security, Identity, and Compliance/237_IAM Users & Groups - Hands On.txt

Line 1:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's go ahead and practice using the IAM service to create users in AWS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 2:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So in the search bar, I just type IAM and I go into the IAM console.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 3:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: So upon arriving on the IAM Dashboard, we have some security recommendations that we can for now not care about.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 4:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And what I want to draw your attention to is that on the left hand side, we go to users.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So this is where we're creating to create users for IAM, but first, let's notice something.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: If you go to the top right corner and click on Global, you can see that the region selection is not active.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 7:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: That means that IAM as an entire service is a global service and therefore there is no region to be selected.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: When you create a user in IAM, it will be available everywhere, but some other consoles we'll see in this course will be region-specific.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So just something to notice.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 10:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Okay, so now we have users, and why do we create users?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Well, we create users, because right now, we are using what's called the root user.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 12:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So if you click on this, you see there's just the account ID available to you.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 13:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So when you have it, that means you're using the root account and it's not best practice to use the root account.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 14:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So therefore, we want to create users such as admin users that will allow us to use our accounts more safely.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 15:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So for this, let's go ahead and create a user, and I will provide a username, for example, Stephane.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 16:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So of course I want to provide myself access to the management console, so I'm going to do this, and we have the option to use identity center, which is recommended, or to create an IAM user.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 17:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I will choose the second option because it is more simple, and from an exam perspective, this is the one you need to know about.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 18:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But don't worry, this does not affect how your course is going to go.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 19:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Okay, so we create an IAM user, and now we have to set the password.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 20:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So if this was a user that was not me, I would leave it as auto-generated password, and I would leave this so that the user must change this password at the next sign-in, but because it is me, I'm just going to enter a custom password and I'm going to untick this because I don't need to change my password at the next login.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 21:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's click on next.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 22:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Next, we have to add permissions to this user, so we can add it directly or we can get started with groups.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 23:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's create a group, and we're going to create a group.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 24:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The group name is going to be admin and the policy name is going to be administrator access.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 25:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So now that this is done, we can add the user into the admin group.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 26:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's click on next, and we can review everything right now.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 27:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we have the username, the permissions on the group, and we have tags, and tags are everywhere in AWS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 28:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: They're optional, but they allow you to give metadata to many of your resources.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 29:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: For example, I could say that the department of Stephane is engineering.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 30:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: This is not something I'm going to do everywhere on the course, but I want show you once how you can add tags to resources in AWS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 31:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Okay, so now the user is created successfully.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 32:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So now we can email signing instructions or download CSV files and then we can log in with this user.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 33:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But first, let's return to the user list and have a look at everything.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 34:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So here is my user lists, here is me and we also have groups.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 35:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So if I go to the left hand side, user groups, we have admins.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 36:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's observe admins.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 37:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So admins has one user in it named Stephane.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 38:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And if you look at permissions of admins you see that there is administrator access attached to the admin group.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 39:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Now if I go to my user, Stephane in here, we can look at permission policies and see it also has administrative access but this one has not been attached directly.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 40:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It has been attached via the group admin.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 41:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So that means that Stephane inherited any permissions of the group admin it is in.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 42:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And this is why we put users in groups.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 43:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It is a bit more simple to manage permissions this way.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 44:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So now let's go back to our dashboard and we want to sign in with our user, Stephane.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 45:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So first what we can do is look at our AWS accounts and it has an account ID and a Sign-in URL.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 46:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Now you can customize this Sign-in URL very easily by creating what's called an account alias.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 47:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So it could be aws-stephane-v3 and then Create alias so whatever alias until someone hasn't created it, so it has to be unique.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 48:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: For example, v5 is available.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 49:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So now using this alias can simplify my signing URL.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 50:
- Concepts: AI Operational Context
- Services: AWS SAM
- Key Insights: Now to sign in using my Stephane accounts we could use the same browser or we could create a new browser window in private mode.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 51:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And the benefit of doing this is that we can have two windows side by side using AWS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 52:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So if you don't do this, that's fine, but if you log in using the Stephane account on the right hand side window then you will be disconnected on the left hand side, this is the only difference.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 53:
- Concepts: Model Development Lifecycle
- Services: AWS SAM
- Key Insights: So to use two accounts at the same time, the route on the left and my account on the right what I'm doing as a trick is that I'm using a private window on my web browser, and Chrome has this feature, Firefox as this feature, Safari as this feature, and so on.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 54:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So by pasting the signing URL, as you can see, I get the sign in and as an IAM user and to get to this page, we can go back to one.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 55:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And as you can see, when you do a sign in on AWS, you have the root user sign in or the IAM user sign in.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 56:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So to get back to this, we go to IAM user.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 57:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: We enter either the account ID or the account alias that I can copy in here, and then we are taken to this page.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 58:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So the IAM user name is going to be Stephane and the password is going to be whatever you have set from before, then you sign in.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 59:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So now the cool thing is that if I look at the top right hand side, IAM logged in using my IAM user.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 60:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So it says the account ID and the IAM user.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 61:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But if I look on the top right hand side of here it just says the account id which shows me it's the root accounts.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 62:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So here we are, we have the root accounts logged in on the left hand side through a normal window and we have the IAM user logged in on the right hand side through a private window.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 63:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Please make sure not to lose your root account logins and your admin login.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 64:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Otherwise, you will be in deep trouble with your account and you'll have to contact AWS for support.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 65:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And currently I cannot help you with this.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 66:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Now from a course perspective, I recommend you use your IAM user and not your root user but this is just a normal recommendation.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 67:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Sometimes you'll see me using root sometimes I'm using IAM user.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 68:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But when you have to use roots or when you have to use an IAM user, I will let you know in the course.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 69:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Don't worry about that.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 70:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Now for the rest of this section, please keep these two windows open and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

### File: outputs/AWS/AWS AI/2. aws-machine-learning-engineer-associate/10_Security, Identity, and Compliance/238_AWS Console Simultaneous Sign-in.txt

Line 1:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let me show you something cool now called the multi-session support.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 2:
- Concepts: AI Operational Context
- Services: AWS SAM
- Key Insights: So you click on it to turn it on, and the idea now is that now I can have in this browser a specific role or account and then I can add a session, and sign into any of your identities using the same browser.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 3:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So here I'm going to click on it and I'm going to add a session.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 4:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And now you can login again using any account ID or route.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And then you go to go.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's go and let me just signing into one of my accounts.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 7:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And after being signed in, as you can see here, I have one specific account ID and here I have a different account ID.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: AI Operational Context
- Services: Amazon EBS, Amazon EC2
- Key Insights: And the cool thing is that, for example, let's say I'm going to the EC2 console here, and then I'm going to go into volumes and then I'm going to, for example, create an EBS volume of one gigabyte just to do something very quickly.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's create this volume.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 10:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Okay, as you can see, my volume has been created, so it's just showing you how to do something very quickly on this window.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: AI Operational Context
- Services: Amazon EBS
- Key Insights: You don't have to know about EBS and so on.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 12:
- Concepts: AI Operational Context
- Services: Amazon EBS, Amazon EC2
- Key Insights: But now if I go into EBS on this other browser, so I go under EC2, and then I go under EBS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 13:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: As you can see here, I don't see any volumes, because I'm using a different account window, and this other one is using the other account window.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 14:
- Concepts: AI Operational Context
- Services: AWS SAM
- Key Insights: So that means I can have two accounts under the same browser.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 15:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: This was not possible before, which is very helpful, and something you should know about if you want to use AWS at scale.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 16:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So a nice welcome edition.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 17:
- Concepts: AI Operational Context
- Services: Amazon EBS
- Key Insights: You don't need to go ahead and create an EBS volume.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 18:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I just want to show you the fact that you could have two different accounts on two different browser windows.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 19:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And for me, that's been using AWS for over 10 years, this is a little revolution.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 20:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: All right, so that's it, you can go back to the course.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 21:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

### File: outputs/AWS/AWS AI/2. aws-machine-learning-engineer-associate/10_Security, Identity, and Compliance/239_IAM Policies.txt

Line 1:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Okay, so now let's discuss, IAM policies in depth.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 2:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's imagine we have a group of developers, Alice, Bob and Charles, and we, attach a policy at the group level.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 3:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: In that case, the policy will get applied to every single member of the group so both Alice, Bob, and Charles they will all get access and inherit this policy.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 4:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Now, if you have a second group with operations with a different policy, David and Edward will have a different policy than the group of developers.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 5:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: If Fred is a user, it has the possibility not to belong to a group.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And we have the possibility to create what's called an inline policy which has a policy that's only attached to a user.
- Hidden/Implicit Meaning: Constraint or limitation signal; Governance and safety signal.

Line 7:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So that user could or could not belong to a group you can have inline policies for whatever user you want.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And finally, if Charles and David both belong to the audit team and you attach a policy to the audit team as well, Charles and David will also inherit that policy from the audit team.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 9:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So in this case, Charles has a policy from developers and a policy from audit team.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 10:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And David has a policy from audit team and a policy from the operations team.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 11:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: That should make a lot of sense when we get into the hands-on.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 12:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Now, in terms of the policy structure, you just need to know at a high level how it works, as well as how it is named.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 13:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So this is something you will see quite a lot in AWS, so get familiar with this structure this is adjacent documents.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 14:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And so an IAM policy structure, consists of a version number, so usually it's 2012-10-17, this is the policy language version.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 15:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And ID which is how to identify that policy, this is optional.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 16:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And then more statements, and statements can be one or multiple ones, and a statement has some very important parts.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 17:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So the Sid is a statement ID, which is an identifier for the statement, which is optional as well, so on the right hand side is the number one.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 18:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The effect of the policy itself, so it is whether or not the statement allows or denies access to certain API, so in the right hand side, this says allow, but you can see deny as well.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 19:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The principle consists of which accounts, user or role which, to which this policy will be applied to.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 20:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So in this example, it's applied to the root accounts of your AWS accounts.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 21:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Action is the list of API calls that will be either denied or allowed based on the effect.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 22:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And the resource is a list of resources, to which the actions will be applied to.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 23:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So in this example, it is a bucket, but it could be many different things.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 24:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And finally in, not represented here but there's a condition to which when this statement should be applied or not, and this is not representative here because it is optional.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 25:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So going into the exam, you need to make sure that you really understand the effect, the principle, the action and resource, but don't worry, you will see those along the way in the course so you should be confident with them by the end of the course.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 26:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: That's it for this lecture, I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 27:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

### File: outputs/AWS/AWS AI/2. aws-machine-learning-engineer-associate/10_Security, Identity, and Compliance/240_IAM Policies - Hands On.txt

Line 1:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So now let's have a look at IAM policies in depth.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 2:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So first of all, let's go into users.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 3:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And as you can see, the user Stephane is part of the admin group, and therefore, has administrator access permissions to AWS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 4:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: That means that if I use my user Stephane to go into the IAM console, so now I'm using my user, and then I go to the left-hand side and click on users, as you can see, I can see my user Stephane, which is right here.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So my user Stephane has permission to do anything because it's an administrator.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But what I'm going to do is that I'm going to the groups of admins and then I'm going to remove my user Stephane from that group.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 7:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So by removing the user, which I've done right now, then Stephane loses its permissions on the right-hand side.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: How do we make sure of this?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Well, let's refresh this page.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 10:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And as you can see, now I see zero users and I get an access denied and it said that I don't have the permission to do iamListUsers.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And so therefore, because I removed my Stephane user from the admin group, then I've lost permissions to look at users on the right-hand side.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 12:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's try to fix this.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 13:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's go into IAM and we're gonna go under users, find Stephane in here.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 14:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And right now, as you can see, Stephane has zero permission policies but let's add permissions.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 15:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we can add permissions directly or create an inline policy.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 16:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's add permissions, and this is going to be easier.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 17:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And so again, we could add the user back to a group.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 18:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: That's not what we want.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 19:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Or we could attach policies directly to my user.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 20:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And so the policy I'm going to attach is going to be IAMReadOnlyAccess.
- Hidden/Implicit Meaning: Constraint or limitation signal; Governance and safety signal.

Line 21:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So this will allow my user Stephane to read anything on IAM, which is what we want.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 22:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's add this permission and now this policy has been added.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 23:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So back in here, let's refresh this page.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 24:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And as you can see now, I can finally do my API call again and look at the Stephane user in my users category.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 25:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So I can view users, I can view user groups, such as admin but can I create a group?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 26:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Let's try to create the developer group and then create this group.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 27:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And as you can see, I cannot create it because I'm not allowed to actually create a group.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 28:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I'm only given the read-only access on IAM.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 29:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And so therefore, because I have read-only access, I cannot create groups.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 30:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So this shows you that you can only permission users for what they're supposed to do.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 31:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And of course, if I wanted to give access to create groups on the right-hand side, I will need to attach a bigger permission sets, such as the IAM full access.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 32:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So next, let's do something.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 33:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So next, I'm going to go into the left-hand side under user groups, and I'm going to create a group.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 34:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So this group is going to be called developers.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 35:
- Concepts: Managed AI Service Selection
- Services: Amazon Lex
- Key Insights: And then I'm going to add the user Stephane in this group and I'm going to attach whatever policy I can find, for example, AlexaForBusiness but it doesn't really matter.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 36:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Just attach the first policy you can and let's create this group.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 37:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Okay, so this has been added.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 38:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And finally, let's go into the admin group.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 39:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And again, we're going to add users and re-add Stephane into this group.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 40:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So now if we go back to the Stephane user, so let's go into IAM and look at the users and look at Stephane, I'm going to shut down this message on right-hand side.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 41:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So if we look at Stephane as the user, as we can see, we have three permission policies attached to my user.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 42:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: We have the administrator access that has been inherited from the group admin.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 43:
- Concepts: Managed AI Service Selection
- Services: Amazon Lex
- Key Insights: We have this AlexaForBusiness managed policy that has been attached via the group developers.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 44:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And finally, IAMReadOnlyAccess that has been attached directly.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 45:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And so as you can see, I inherited different permissions based on how it's been attached.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 46:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So now let's look at policies in detail.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 47:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So on the left-hand side, let's look at policies.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 48:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And first, let's have a look at this AdministratorAccess policy.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 49:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So if we look at it, it's the permission that gave us administrator access to everything.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 50:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And if you look at the permissions defined in this policy as a summary, as you can see, this allows all the services in AWS.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 51:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And this number can change over time.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 52:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It doesn't matter.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 53:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The course will be up to date.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 54:
- Concepts: Managed AI Service Selection
- Services: Amazon Lex
- Key Insights: So all these services, for example, App Mesh or Alexa for Business or Amplify, they all have full access.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 55:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So how is this permission defined?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 56:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Well, if you click on JSON, this is the JSON form of this policy, and we can see that here we have allow Action, star and resource, star.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 57:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So star in AWS means anything.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 58:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So it means we allow any action on any resource.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 59:
- Concepts: AI Operational Context
- Services: AWS SAM
- Key Insights: And of course, allowing any action on any resource is exactly the same thing as giving administrator access to someone.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 60:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So this is how it's been defined.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 61:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: If we have a look at another policy, for example, the IAMReadOnlyAccess that we saw from before.
- Hidden/Implicit Meaning: Constraint or limitation signal; Governance and safety signal.

Line 62:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So if we look at it, we see that IAM is authorized with Full: List and Limited: Read.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 63:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And if I click on it, you can actually have a look at all the API calls that has been allowed as part of this policy, which is very handy.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 64:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But if we look at how this has been actually defined, let's click on JSON.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 65:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And here we have the JSON document that shows how this has been defined.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 66:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So the effect is allow, and then we list out the API calls that are being allowed.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 67:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we have this one, this one, and then we have Get*.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 68:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So when you have Get*, it says that anything that starts with Get and then has something after is authorized.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 69:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: For example, get users or get groups.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 70:
- Concepts: AI Operational Context
- Services: AWS SAM
- Key Insights: Same for list.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 71:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we have a List*.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 72:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So list users or list groups.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 73:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So by using a star, we encompass and group many API calls together.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 74:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So all this is allowed on Resource*.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 75:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And so therefore, that summarizes what the read-only IAM access policy is made of.
- Hidden/Implicit Meaning: Constraint or limitation signal; Governance and safety signal.

Line 76:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So this is very handy.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 77:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You can also create your own policy.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 78:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's create a policy and we have a visual editor or a JSON editor.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 79:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So if you have JSON, you can just very simply edit this and create your JSON document with this builder, which is very handy.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 80:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Or you can use the visual editor.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 81:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And for example, let's say IAM, we wanna create stuff for IAM.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 82:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And what action do we wanna authorize?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 83:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Well, we want to authorize ListUsers.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 84:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we're going to take this and GetUser.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 85:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So just two API calls.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 86:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And as we can see, we have selected one out of 38 in list and one out of 32 in read.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 87:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And then what do we want to authorize this on?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 88:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So on all resources or only specific resources?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 89:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So this is a very simple one but as you can see, this builder is very handy.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 90:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And when you click on next, you can have a look and say MyIAMPermissions.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 91:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And then we create this policy.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 92:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And if we have a look at the policy we created, we can have a look at the corresponding JSON and see that indeed through the visual editor, we allowed iam:ListUsers and iam:getUser on Resource*.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 93:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And then this policy, we can attach to groups or to users and so on.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 94:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So this is how you manage permissions in AWS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 95:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So now to just wrap up this hands-on, let's go to user groups and we're going to delete the developers group because we don't need it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 96:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And then I'm going to go into my Stephane user and I'm going to just remove this IAMReadOnlyAccess that had attached directly.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 97:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So now Stephane only belongs to the group admin and it has administrator access.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 98:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So of course, if I go back to my IAM console in here and I just look at users, as you can see, yes, everything is showing fine.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 99:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So it is working correctly.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 100:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Okay, so that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 101:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

### File: outputs/AWS/AWS AI/2. aws-machine-learning-engineer-associate/10_Security, Identity, and Compliance/241_IAM MFA.txt

Line 1:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Now that we have created users in groups, it is time for us to protect these users in groups from being compromised.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 2:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So for this, we have two defense mechanisms.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 3:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The first one is to define what's called a password policy.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 4:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Why?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: Well, because the stronger the password you use, the more security for your accounts.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 6:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So in AWS you can set up a password policy with different options.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 7:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The first one is you can set a minimum password length and you can require specific character types.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: For example, you may want to have an uppercase letter, lowercase letter, number, non alphanumeric characters, for example, a question mark and so on.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: AI Operational Context
- Services: Amazon RDS
- Key Insights: Then you can allow or not IAM users to change their own passwords, or you can require users to change their password after some time to make your password expired, for example, to say every 90 days, users have to change their passwords.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 10:
- Concepts: AI Operational Context
- Services: Amazon RDS
- Key Insights: Finally, you can also prevent password reuse so that users, when they change their passwords, don't change it to the one that they already have or change it to the one they had before.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So this is great.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 12:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: A password policy really is helpful against brute force attacks on your account.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 13:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But there's a second defense mechanism that you need to know going into the exam.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 14:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And this is the Multi-Factor Authentication or MFA.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 15:
- Concepts: AI Operational Context
- Services: Amazon EBS
- Key Insights: It is possible, you already used it on some websites, but on AWS it's a must and it's very recommended to use it.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 16:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So users have access to your account and they can possibly do a lot of things, especially if they're administrators.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 17:
- Concepts: AI Operational Context
- Services: AWS Config
- Key Insights: They can change configuration, delete resources and other things.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 18:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So you absolutely want to protect at least your root account and hopefully, all your IAM users.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 19:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So how do we protect them on top of the password?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 20:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Well, you use an MFA device.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 21:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So what is MFA?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 22:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: MFA is using the combination of a password that you know and a security device that you own.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 23:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: And these two things together have a much greater security than just a password.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 24:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So for example, let's take Alice.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 25:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Alice knows her password, but she also has an MFA generating token.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 26:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And by using these things together while logging in, she's going to be able to do a successful login on MFA.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 27:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So the benefit of MFA is that even if Alice has lost her password because it's stolen or it's hacked, the account will not be compromised because the hacker will need to also get a hold of the physical device of Alice, that could be her phone, for example, to do a login.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 28:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Obviously that is much less likely.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 29:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So what are the MFA devices option in AWS?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 30:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And you need to know them going into the exam, but don't worry, they're quite simple.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 31:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The first one is a virtual MFA device.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 32:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: This is what we'll be using in the hands-on.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 33:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And so you can use Google Authenticator, which is just working on one phone at a time, or using Authy.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 34:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So for Authy, you have support for multiple tokens on a single device.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 35:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So that means that with the virtual MFA device, you can have your root account, your IAM user, another account, another IAM user.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 36:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It's up to you.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 37:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You can have as many users and accounts as you want on your virtual MFA device, which make it a very easy solution to use.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 38:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: Now we have another thing called a Universal 2nd Factor or U2F Security Key, and that is a physical device.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 39:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: For example, a YubiKey by Yubico and Yubico is a third party to AWS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 40:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: This is not AWS that provides it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 41:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: This is a third party.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 42:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And we use a physical device because maybe it's super easy, you put it on your key fobs and you're good to go.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 43:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: So this YubiKey supports multiple root and IAM users using a single security key.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 44:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So you don't need as many keys as users, otherwise there will be a nightmare.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 45:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Then you have other options.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 46:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You have a hardware key fob MFA device, for example, this one provided by Gemalto, which is also a third party to AWS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 47:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And finally, if you are using the cloud of the government in the US, the AWS GovCloud, then you have a special key fob that looks like this that is provided by SurePassID, which is also a third party.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 48:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So that's it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 49:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: We've seen the theory on how to protect your account, but let's go in the next lecture to implement that.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 50:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

### File: outputs/AWS/AWS AI/2. aws-machine-learning-engineer-associate/10_Security, Identity, and Compliance/242_IAM MFA - Hands On.txt

Line 1:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we are going to first, define a password policy.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 2:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: For this, click on account settings on the left-hand side.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 3:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You will find password policy and you can edit it.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 4:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So here, we can use the IAM default password policy, which composes of these kind of requirements, or we can customize the password policy and force a password minimum length.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 5:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: We can also require uppercase letter, lowercase letter, a number, a non-alphanumeric character.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: We can also turn on password expiration to turn on, for example, expire after 90 days, or that a password expiration requires administrative resets, or we can allow the users to change their own password or we can prevent password reuse.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 7:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: So this password process can be edited directly from the IAM console, and that's the first part of security.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 8:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The second part is around setting multi-factor authentication for your root account.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: So if you click on the account name and then click on security credentials, if you are logged in with the root user, you will see my security credentials root user.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 10:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Now, there is a way for you to actually protect your root user, which is the most important account in your AWS account, and you can protect it by using multi-factor authentication.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Now, just so you know, I'm going to do it and demonstrate how it works in front of you, but I've had students who locked themselves out of their accounts because they lost access to their multi-factor authentication device.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 12:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: As such, if you think you are running the risk of losing your iPhone or whatever, do not do this, okay?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 13:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Just keep your phone with you, just watch my video.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 14:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It will be good enough if you want to practice along with me, you can as well.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 15:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And you can also delete the MFA device after activating it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 16:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Okay, but let's go ahead and assign an MFA device.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 17:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So I will call this one my iPhone because this is what I have, but you can name it whatever you want.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 18:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Then you can select the type of MFA device.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 19:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: So it could be an authenticator app, which is something I'm going to use, but also it can be a security key or a hardware TOTP token.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 20:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to use an authenticator app because it will be virtual.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 21:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And now we go into the setup of the app.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 22:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So there's a list of compatible applications right here.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 23:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You can find here for Android and for iOS that we know work well with AWS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 24:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And as such, I'm going to use the Twilio of the Authenticator, which is an app I like.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 25:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So what I have to do then is actually launch the app on my phone and then you click on show QR code.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 26:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So when you should a QR code, you need to scan this QR code directly on your phone.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 27:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So for this, you add an account, you scan the QR code right here, and once scanned, it will add the account and start naming it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 28:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we'll just save this, this looks good.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 29:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And then we get access to MFA code.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 30:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So there is first, the first MFA code, so 301935.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 31:
- Concepts: Inference and Serving
- Services: (none explicit)
- Key Insights: So this is a code generated by my iPhone in real-time.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 32:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And this code is going to change over time.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 33:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And the reason why these two codes are asked by AWS is that it wants to make sure that the MFA device is set up correctly and that the codes are accurate.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 34:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So the second code is 792843.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 35:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And, of course, there will be difference for your device.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 36:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And once these two codes are entered, you click on add MFA.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 37:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And as you can see, we can reach there up to eight MFA devices currently, and you can scroll down and see them right here on the list.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 38:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So the multi-factor authentication, MFA, one, it's called my iPhone that's been created right now.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 39:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So if you wanted to remove it, you can remove it and so on.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 40:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But so how do we use MFA?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 41:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Well now, if I log out of AWS and I log back in, so I'm going to use my router account and my password.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 42:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Now after doing a successful login, I have the MFA code to enter.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 43:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And so I open my app and enter the code that I see and press submit.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 44:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And this way IAM logged in.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 45:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: And this is perfect because well, we had an extra level of security on our account.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 46:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 47:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

### File: outputs/AWS/AWS AI/2. aws-machine-learning-engineer-associate/10_Security, Identity, and Compliance/243_IAM Roles.txt

Line 1:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we have to talk about the last component of IAM, which is called IAM Roles.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 2:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So some AWS services that we'll be launching throughout this course will need to perform actions on our behalf, on our account, okay?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 3:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And for this to do these actions, they're just like users, they will need some kind of permissions.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 4:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we need to assign permissions to AWS services and to do so, we're going to create what's called an IAM Role.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So these IAM role will be just like a user, but they are intended to be used not by physical people, but instead they will be used by AWS services.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So what does that mean?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 7:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It's a bit confusing.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: AI Operational Context
- Services: Amazon EC2
- Key Insights: So for example, we are going to create throughout this course, an EC2 Instance.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: AI Operational Context
- Services: Amazon EC2
- Key Insights: An EC2 Instance is just like a virtual server, and we'll see this in the next section.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 10:
- Concepts: AI Operational Context
- Services: Amazon EC2
- Key Insights: But so this EC2 Instance may want to perform some actions on AWS and to do so, we need to give permissions to our EC2 Instance.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: To do so, we're going to create an IAM Role and together they're going to make one entity.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 12:
- Concepts: AI Operational Context
- Services: Amazon EC2
- Key Insights: And together, once the EC2 Instance is trying to access some information from AWS, then it will use the IAM Role.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 13:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And if the permission assigned to the IAM Role is correct, then we're going to get access to the call we're trying to make.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 14:
- Concepts: AI Operational Context
- Services: Amazon EC2
- Key Insights: So some common roles include what I just showed you, EC2 Instance roles, but also other things that perform actions against AWS we'll see in this course.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 15:
- Concepts: AI Operational Context
- Services: AWS CloudFormation, AWS Lambda
- Key Insights: For example, Lambda Function Roles or CloudFormation.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 16:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So I know this is a high level of review.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 17:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: In the next lecture we'll be creating a role, but we won't be using it yet until the next section, but let's go ahead and create a role.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 18:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

### File: outputs/AWS/AWS AI/2. aws-machine-learning-engineer-associate/10_Security, Identity, and Compliance/244_IAM Roles - Hands On.txt

Line 1:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's practice using roles.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 2:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So on the left hand side, you click on roles, and you can see that some roles may have already been created for your accounts.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 3:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Could be two, could be more.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 4:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It doesn't matter.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But what we're going to do is that we're going to create our own role in here.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So a role is a way to give AWS entities permissions to do stuff on AWS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 7:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: As you can see, you have different kind of roles.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You can create actually five of them right now.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But the one that you need to know about for this hands-on and for the exam is going to be a role for an AWS service.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 10:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's choose this one, and then we need to choose for which service we want this role to apply to.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: AI Operational Context
- Services: AWS Lambda, Amazon EC2
- Key Insights: So as you can see, if you click on it, you have commonly used services, such as EC2 and Lambda, or a role for pretty much every service on AWS.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 12:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So it's a very common thing to know in AWS, and that's why we learn about it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 13:
- Concepts: AI Operational Context
- Services: Amazon EC2
- Key Insights: So we are going to create a role for an EC2 instance when we get to the EC2 section.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 14:
- Concepts: AI Operational Context
- Services: Amazon EC2
- Key Insights: And so we choose EC2, and the use case is just EC2.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 15:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: We disregard any of these.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 16:
- Concepts: AI Operational Context
- Services: Amazon EC2
- Key Insights: So click on next, and now that we create a role for an EC2 instance, we need to attach a policy.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 17:
- Concepts: AI Operational Context
- Services: Amazon EC2
- Key Insights: So I'm going to attach the IAM read only access to allow my EC2 instance to read whatever is in IAM.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 18:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Let's click on next.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 19:
- Concepts: AI Operational Context
- Services: Amazon EC2
- Key Insights: Next do meet to enter a demo, a role name, so DemoRoleForEC2 is going to be my role name, and then we select the trusted entities.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 20:
- Concepts: AI Operational Context
- Services: Amazon EC2
- Key Insights: So this is saying, hey, this role can be assumed by the EC2 service, and this is what defines it as a role for Amazon EC2.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 21:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: We are verifying the permissions, yes, it has IAM read only access, and we create this role.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 22:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So now my role is created.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 23:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: As you can see, it appears in my role lists.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 24:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And we can verify that the permissions are correct for this role.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 25:
- Concepts: AI Operational Context
- Services: Amazon EC2
- Key Insights: Now, we cannot use this role just yet because we need to get to the EC2 section, but we will use it when we get to it.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 26:
- Concepts: AI Operational Context
- Services: Amazon EC2
- Key Insights: In the meantime, you've seen how to create a role for Amazon EC2 and how to attach correct permissions to it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 27:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 28:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

### File: outputs/AWS/AWS AI/2. aws-machine-learning-engineer-associate/10_Security, Identity, and Compliance/245_Encryption 101.txt

Line 1:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Okay, so in this lecture, if you're not too familiar with how encryption works, I want to give you a little bit of details on how it works at a high level.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 2:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So, first let's talk about encryption in flight, which is going to be referred as TLS or SSL.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 3:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: TLS is the newest version of SSL.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 4:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So what we have is that the data is going to be encrypted before sending the data.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: And then it will be decrypted after receiving it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So this is for communication between a client and a server over a network.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 7:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And so what's going to be happening is that for encrypting the data TLS certificates are going to be used.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: AI Operational Context
- Services: Amazon EBS
- Key Insights: And this is what you see when you go onto websites and it says HTTPS, that means that the connection between you and the server is going to be encrypted using TLS certificates.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Why do we want encryption in flight?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 10:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Well, because we're sending data over a network and sometimes a public network and the data goes around many different servers.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: We don't want to be having a man in the middle attacks where a middle server receives the data and just observes the packages we're sending to the server.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 12:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: And so what we want to have HTTPS or TLS, or SSL, this is when we know that only the target server can decrypt the encrypted data we're sending.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 13:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's take an example.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 14:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: We have a client and a server and we want to be able to securely login into the server by providing our username and password.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 15:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But we only want the target server to be able to receive it.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 16:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we're going to have the username and password and then we're going to apply TLS encryption on the client side automatically.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 17:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The data is going to be encrypted and sent over the network.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 18:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So as you can see, no between server can decrypt the data and only the target server can use the TLS decryption mechanism to decrypt that package and then see that we've sent the username and password.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 19:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And therefore say that we're securely logged in.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 20:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So that's for encryption in flight.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 21:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The next one is around the server side encryption at rest.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 22:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The idea is that the data will be encrypted after being received by the server so that it's stored securely.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 23:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: And then it will be decrypted before being sent back to our clients.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 24:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It will be stored in an encrypted form thanks to a key, and that key is usually a data key.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 25:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: And so the whole idea of managing these keys for encryption and decryption is that the management must happen somewhere and the server must have access to these keys.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 26:
- Concepts: AI Operational Context
- Services: Amazon S3
- Key Insights: So let's take a service, for example, Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 27:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: We're sending an object over HTTP, maybe even HTTPS for inflight encryption.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 28:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: And so the service receives our object, but it is decrypted.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 29:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So the service can use a data key, and using the data key and the decrypted objects, we can have encryption of that object at rest.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 30:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: And then when it comes to sending back that object to the clients, the encrypted objects and the data key will be used together to decrypt.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 31:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: We'll have a decrypted form of object, and then that object will be sent over HTTPS back to the clients.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 32:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So we received the decrypted object as is.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 33:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: As we can see in this case, there is a server side encryption because all the encryption and decryption happens on the server.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 34:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So finally let's talk about client-side encryption.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 35:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: And the idea is that this time the data is encrypted and decrypted at the client side.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 36:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: And the server should never be able to decrypt the data because we don't trust a server in that case.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 37:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So for this, we could leverage encryption for this mechanism.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 38:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's have an example.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 39:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The client has an object and the data key this time is client side.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 40:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And after encryption, we get an encrypted object.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 41:
- Concepts: AI Operational Context
- Services: Amazon EBS, Amazon S3
- Key Insights: That encrypted object can be sent then securely to any storage service available, an FTP server, Amazon S3, EBS volumes, et cetera.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 42:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And they will be stored in encrypted form.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 43:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So the entire server can not even decrypt the data contents.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 44:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: When we retrieve the contents, we retrieve the encrypted object directly.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 45:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: And if we still have access to the data key client-site, then we're able to perform the decryption mechanism and get the decrypted objects back.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 46:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So that's it for the three encryption mechanisms we can see in the Cloud.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 47:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 48:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

### File: outputs/AWS/AWS AI/2. aws-machine-learning-engineer-associate/10_Security, Identity, and Compliance/246_AWS KMS.txt

Line 1:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So now let's talk about AWS KMS, which is a key management service of AWS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 2:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we've been using it a lot without knowing, but anytime you hear encryption when you have an AWS service, it's most likely going to be KMS encryption.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 3:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The aim is that with this KMS service, AWS is going to manage the encryption keys for us.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 4:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And that's great, because that means that we have less things to do.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So KMS is, of course, fully integrated with IAM for authorization, and it gives us very easy ways to control access to our data if it's encrypted with KMS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: AI Operational Context
- Services: AWS CloudTrail
- Key Insights: The power of using AWS KMS is that you're able to audit every single API call made to use your keys through CloudTrail, which is something the exam may test you on.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 7:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So on top of it, KMS can be used seamlessly into most AWS services.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: AI Operational Context
- Services: Amazon EBS
- Key Insights: So for example, if you wanted to encrypt the data at rest in an EBS volume, just enable the KMS integration.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: AI Operational Context
- Services: AWS SAM, Amazon RDS, Amazon S3
- Key Insights: Same for S3, same for RDS, same for SSM, and same for pretty much all the services that require encryption.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 10:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The idea is that with KMS, you can also use it yourself.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: And if you have secrets data, you never ever store them in plain text, that means just as is.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 12:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Especially in your code.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 13:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So if you want to use KMS, you can also use KMS through API calls.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 14:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You can use the AWS CLI or the SDK.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 15:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: And that means that you can encrypt whatever is a secret for you with a KMS key.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 16:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: And then these encrypted secrets can be, for example, stored in your code or in environment variables.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 17:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: That is a much better pattern.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 18:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So now let's talk about the different types of KMS keys available to you.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 19:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So now it's called a KMS key.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 20:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: By the way, it used to be called the KMS customer master key, but it was confusing because there's also the customer managed keys as we'll see in a second.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 21:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So now, we just talk about KMS keys.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 22:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we have two types of KMS keys.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 23:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: We have the symmetric KMS keys, and that means there's only one single encrypted key that is used to encrypt and decrypt data.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 24:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And so any service of AWS that is integrated with KMS will use symmetric keys.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 25:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The idea is that when we create or use a KMS symmetric key, then we never get access to the key itself, okay?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 26:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: All we do is that we use the KMS API calls to leverage and use that key.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 27:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The second kind of key available on KMS are called asymmetric keys.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 28:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: That means that you have two keys.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 29:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: You have a public key that's used to encrypt data, and a private key used to decrypt data.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 30:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So this is used when you have encrypt/decrypt, or sign/verify type of operations.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 31:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And in that case, you can download the public key out of KMS, but you can use access the private key.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 32:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You can only use API calls against to access the private key.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 33:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So the use cases for an asymmetric type of key is when you want the encryption to be done outside of your AWS cloud by users who cannot or don't have access to the KMS API key.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 34:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: In which case they will use the public key to encrypt the data.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 35:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Send it over to you.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 36:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: And you within your account, you would use the private key of AWS to decrypt that data.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 37:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So within the world of KMS keys, you have different types of KMS keys.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 38:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The first one are AWS owned keys.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 39:
- Concepts: AI Operational Context
- Services: Amazon DynamoDB, Amazon S3
- Key Insights: They're free, and this is the kind of key you would use when you use SSE-S3 type of encryption, or SSC DynamoDB, where you have the option, for example, that you choose a key owned by DynamoDB.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 40:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So these are not really KMS because you don't really see them, but they're types of encryption keys within AWS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 41:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Then you have the AWS managed keys, and they're free, and you will recognize them because they start with AWS slash and then the service name.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 42:
- Concepts: AI Operational Context
- Services: Amazon DynamoDB, Amazon EBS, Amazon RDS
- Key Insights: For example, AWS/RDS or AWS/EBS, or in this example, AWS/DynamoDB.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 43:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: They're free and you can just use them as you please, but only from within the service that it's assigned to.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 44:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Then you have your own customer managed keys and their custom keys, and they cost you $1 per month.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 45:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And if you want to import them as well, you can import them, and they cost you $1 per month.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 46:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: KMS also has a pricing where you're going to pay for each API call made to the KMS service, which is about 3 cents per 10,000 API calls.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 47:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You also have automatic key rotation.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 48:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So if it's an AWS managed KMS key, then it's automatic every one year.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 49:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And if it's a customer managed key, you can enable automatic rotation and you set the period, and you can also have on-demand rotation of your key.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 50:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And if it's imported KMS key, then you can only manually rotate it.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 51:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And for this, you need to leverage an alias.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 52:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So KMS keys are scoped per region.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 53:
- Concepts: AI Operational Context
- Services: Amazon EBS
- Key Insights: That means that if you have an EBS volume encrypted with KMS key in a region, for example, EUS2, then if you want to copy that to a different region, we have to do several steps.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 54:
- Concepts: AI Operational Context
- Services: Amazon EBS
- Key Insights: First of all, we have to take a snapshot of this EBS volume.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 55:
- Concepts: AI Operational Context
- Services: AWS SAM
- Key Insights: And if we take a snapshot from an encrypted snapshot, then this snapshot itself will also be encrypted with the same KMS key.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 56:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Then to copy the snapshot to another region, we need to re-encrypt the snapshot using a different KMS key.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 57:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And this is something AWS will do for you.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 58:
- Concepts: AI Operational Context
- Services: AWS SAM
- Key Insights: But the same KMS key cannot live in two regions.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 59:
- Concepts: AI Operational Context
- Services: Amazon EBS
- Key Insights: So now we have an EBS snapshot, it's encrypted with KMS with a different key, and it lives in another region.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 60:
- Concepts: AI Operational Context
- Services: Amazon EBS
- Key Insights: Now, we restore the snapshot into its own EBS volume with KMS, and it's KMS key B into the region AP southeast two.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 61:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Now, the other thing we need to know about is KMS key policies.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 62:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So this is to control access to your KMS keys.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 63:
- Concepts: AI Operational Context
- Services: Amazon S3
- Key Insights: It's similar to an S3 bucket policy.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 64:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: With a difference that if you don't have the KMS key policy on your KMS key, then no one can access it.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 65:
- Concepts: AI Operational Context
- Services: Amazon RDS
- Key Insights: So in that regards, we have two types of KMS key policies.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 66:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: We have the default one, and it's created if you don't provide a specific custom KMS key policy.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 67:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And the idea is that the default allows everyone in your account to access this key.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 68:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: That means that if you have an IAM policy allowing a user or role to access this key policy, you're good.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 69:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But if you want to have more specific controls over it, you could use a KMS key policy that is custom.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 70:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: In which you define the users, the roles that can access your KMS key.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 71:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And you define who can administer the key.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 72:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And this is especially helpful if you want to do cross account access for your KMS key, because we can authorize another account to use our KMS key.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 73:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So when do we use this?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 74:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Well, for example, if we wanted to copy an encrypted snapshots across accounts.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 75:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we create a snapshot encrypted with our own KMS key, and it's a customer managed key.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 76:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It must be that because we need to attach a custom key policy.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Governance and safety signal.

Line 77:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And then we attach a KMS key policy to authorize for cross account access.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 78:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It looks like this.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 79:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Then we share the encrypted snapshot with the target account.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 80:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And then in the target account, we create a copy of the snapshot and we encrypt it with a different customer managed key in that target account.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 81:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And then we can create a volume from the snapshot in the target account, and we're done.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 82:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So that's a lot of information by KMS, but let's go into hands-on to hopefully learn a bit more about it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

### File: outputs/AWS/AWS AI/2. aws-machine-learning-engineer-associate/10_Security, Identity, and Compliance/247_AWS KMS - Hands On.txt

Line 1:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's have a look at the KMS service.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 2:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And first on the left hand side, I wanna look at the AWS managed keys.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 3:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You can see if I've been using KMS encryption throughout this course, then these keys will appear right here.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 4:
- Concepts: AI Operational Context
- Services: Amazon EBS
- Key Insights: So we can look for example at the AWS EBS, and this is an Else managed key because it belongs to the EBS service.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we can have a look here, how it's being used.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: Managed AI Service Selection
- Services: Amazon Lex
- Key Insights: So there is a key policy, and this complex policy defines what can access this key.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 7:
- Concepts: AI Operational Context
- Services: Amazon EBS
- Key Insights: And of course, because this is an EBS AWS key, then you will look at all the actions, so it can come from anywhere, do some kind of actions.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: AI Operational Context
- Services: Amazon EBS, Amazon EC2
- Key Insights: But the condition is that the caller accounts has to be mine and the Via Service has to be the EC2 service, which is a service above the EBS service, okay?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: If I looked for example, at another AWS managed key, for example, the SQS one, and look at the key policy, here the Via Service as a condition to my KMS key policy is the SQS service, therefore allowing only access from SQS to this key.
- Hidden/Implicit Meaning: Constraint or limitation signal; Governance and safety signal.

Line 10:
- Concepts: AI Operational Context
- Services: AWS Config, Amazon ECR
- Key Insights: We can also look at the cryptographic configuration, which show that this key is symmetric of origin KMS and it's used to encrypt and decrypt data.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 12:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So that's for the KMS managed key by AWS, but then we have other kinds.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 13:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: We have the customer managed keys, as well as the custom key store.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 14:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So the custom key store is when we wanna use CloudHSM, but this is out of scope for this exam.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 15:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we don't go over this, we're just gonna go over the customer managed key.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 16:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So this is when we want to create our own keys within KMS and not use the ones managed by AWS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 17:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's create a key, but if we do so, remember this is going to cost you $1 per month.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 18:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So if you don't want to pay anything, then do not do this.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 19:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So here for the key type, have multiple options, have the symmetric or asymmetric type of key.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 20:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So if I use asymmetric, this could be used for encrypt and decrypt or sign and verify type of operations.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 21:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: But this is out of scope for this lecture, I'm going use the symmetric type of KMS key, and we'll use the encrypt and decrypt option.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 22:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Okay, this is the most basic one I want to show you For advanced options, the key origin is going to be KMS because we want KMS to create this key for us.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 23:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: If we wanted to import a key, this would be the external type of key origin or custom key store if we wanted to have CloudHSM, but again, this is out of scope.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 24:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we'll use KMS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 25:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And here for regionality we have single region key and multi region key.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 26:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And we're just going to consider single region key right now because this is the most, the oldest type of option and the most common for KMS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 27:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we'll use single region key, click on Next.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 28:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Next we have a key alias, so I'll just have it as tutorial.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 29:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Click on Next.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 30:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And here we can start define key administrators.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 31:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So if I don't define one, then we're going to use the default KMS key policy, which is what I want.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 32:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But if you wanted to be very specific about who can use this key and who could administer it, this is where it would happen.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 33:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So right now I'm not going to take anything, and click on Next.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 34:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Then you can say, who can use this key?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 35:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So again, this is for your KMS key policy.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 36:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: To be more specific, right now I want to allow everyone to use it if they have the right IAM permissions.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 37:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: But if you wanted to also have some extra security, you could say, hey, only Stefan can use this key and this would create a custom KMS key policy.
- Hidden/Implicit Meaning: Constraint or limitation signal; Governance and safety signal.

Line 38:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But in this instance, I don't want this.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 39:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And as you can see at the bottom, I can choose other AWS accounts to access my key.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 40:
- Concepts: AI Operational Context
- Services: Amazon EBS
- Key Insights: So this is if you had for example, the use case of sharing an encrypted snapshot, an EBS snapshot for example, you would add another account to allow access to your key.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 41:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we summarize everything, so we have a symmetric key, and then this is the key policy and this is what I call the default key policy.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 42:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: This is just to enable IAM user permission, so it allows anything to do any resource on KMS as long as they will have, of course, IAM permissions to do so.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 43:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's finish this.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 44:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And now my key has been created and we can click on View Key.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 45:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So now that my key is created, I can have a look at the key policy.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 46:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And so the key policy is just like this, it's an IAM policy for your key.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 47:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But you can switch to the default view and you can see in a better summary, like who are the key administrators, is it allowed for key deletion?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 48:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Who are the key users?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 49:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And can other accounts access it?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 50:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So I won't touch this.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 51:
- Concepts: AI Operational Context
- Services: AWS Config
- Key Insights: Then you can have a look at the cryptographic configuration.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 52:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I won't touch this.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 53:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Tags not needed.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 54:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So for key rotation, we can enable automatic key rotation by editing here and saying yes, it's enabled, and we can set up the rotation period from 90 days to many more days, to 2,560 days.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 55:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So here this is one year, but you have the option to customize it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 56:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: If you enable this, then you know the next rotation dates.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 57:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And also for example, you can initiate on demand key rotation by just clicking on this button.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 58:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Whenever you rotate your key automatically or on demand, it's going to appear in the key rotation history.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 59:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So these options are available because we have created their key directly from KMS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 60:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And finally, see, finally what is the alias for my key?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 61:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It is named tutorial, so I can refer to it with an alias ARN, which will be a little bit simpler for us.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 62:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Finally, for key actions, you can disable it or schedule key deletion.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 63:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So we have our key, it's great, but now let's go use the CLI to encrypt and decrypt some data.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 64:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So under KMS I have kms-demo-cli.sh, which is going to show us how to use the encrypt and decrypt call of KMS with an example.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 65:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So, first we have got to create a file, and I'm going to call it ExampleSecretFile.txt.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 66:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: And with it I'm going to say there is a super, secret, password, okay?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 67:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So this is whatever you want in this text file.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 68:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: For me I just entered a password called SuperSecretPassword, and we're going to encrypt it and then decrypt it using KMS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 69:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So the first thing that you do for KMS encryption is use the encrypt command.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 70:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we have to specify a key ID, for me it's alias/tutorial, so this corresponds to the key you have created in My Console.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 71:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And you could use the alias, you could use this key ID right here, or you could use the full ARN, it doesn't really matter, just use whatever you want.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 72:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And then you need to pass in plain text the address of your file.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 73:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So for me it's ExampleSecretFile.txt.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 74:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The output of the query, so you're querying for a Cipher text blog, which represents the encrypted contents, and you want the text as is.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 75:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And finally the region your key is in, so for me, mine is manage region eu-west-2.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 76:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: This is going to give us a base 64 file containing the encrypted content.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 77:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's copy this command right here and paste it, run it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 78:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: And now I have a file called ExampleSecretFileEncrypted.base64.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 79:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And this represents my encrypted file, okay, in base 64, so just with letters and numbers that we can recognize.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 80:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Now though, we're going to do a base 64 decode to get the binary encrypted value.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 81:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So if you're on Windows, the command is different.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 82:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So for Linux, I'm just going to run this one, but for Windows you can run the other one.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 83:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: And so the idea is that you're going to create a file called ExampleSecretFileEncrypted without a base 64.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 84:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let me copy this and paste it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 85:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: And now I have a new file called ExampleSecretFileEncrypted.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 86:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And if I try to open it with my text editor, it's not going to work because it say it uses either binary or unsupported text encoding.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 87:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So this is indeed a binary file.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 88:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So this is the kind of secret file that you would share with someone.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 89:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: And so now I want to go and decrypt it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 90:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So this is completely gibberish and we cannot get any information of it.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 91:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Even this one, we cannot get any information.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 92:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: How do we know it's super secret password?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 93:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So this is an encrypted file, but now we want to take this encrypted binary file, and decrypt it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 94:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So for this we're going to run an KMS decrypt command.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 95:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So this time we pass in the file that was encrypted.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 96:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So this is where we pass in the file in here.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 97:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: Then we query for the plain text value, so the decrypted value, and we write this to another file that is going to be base 64 encrypted, and we specify the region.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 98:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's go ahead.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 99:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: KMS knows automatically which key to use for the description because it is included in the blob of encrypted value.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 100:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let me enter this, and so this has succeeded.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 101:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So now if I go to my Example File decrypted base 64, it is here, it's a much shorter thing, and now we're going to base 64 decode this to get my text value.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 102:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we'll have a different command again, if you're on Windows or if you're on Mac, so I'm on Mac, so I'm going to use this one.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 103:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So I'm copying this command, pasting it, and now we have done a base 64 decoding of our file.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 104:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So if we go back to Example File decrypted.txt, we find back our super secret password.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 105:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So we have shown the encryption and it's reverse operation, the decryption.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 106:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: Obviously these are low level commands, the SDK will abstract some of that for us, but this shows you the full example of how you can use the encrypt and decrypt command of KMS with your own customer master key.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 107:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So that's it, super simple.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 108:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I hope that was helpful, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

### File: outputs/AWS/AWS AI/2. aws-machine-learning-engineer-associate/10_Security, Identity, and Compliance/248_Amazon Macie.txt

Line 1:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Now let's talk about Macie.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 2:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: Macie is a fully managed data security and data privacy service that will use machine learning and pattern matching to discover and protect your sensitive data in AWS.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 3:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: More specifically, it will alert you around sensitive data such as personally identifiable information, which is named PII.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 4:
- Concepts: AI Operational Context
- Services: Amazon S3
- Key Insights: So very simply, your PII data will be in your S3 buckets and it will be analyzed by Macie which will discover what data can be classified as PII.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: AI Operational Context
- Services: Amazon EventBridge
- Key Insights: And then will notify you through EventBridge of the discoveries.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: AI Operational Context
- Services: AWS Lambda
- Key Insights: Then you can have integrations into an SNS topic, Lambda functions and so on.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 7:
- Concepts: AI Operational Context
- Services: Amazon S3
- Key Insights: So Macie in this instance will be used to find the sensitive data in your S3 buckets and that's the only thing it will do.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 8:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It's just one click to enable it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: AI Operational Context
- Services: Amazon S3
- Key Insights: You just specify the S3 buckets you want to have and that will be it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 10:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture, very, very short, but that's enough on Macie.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

### File: outputs/AWS/AWS AI/2. aws-machine-learning-engineer-associate/10_Security, Identity, and Compliance/249_AWS Secrets Manager.txt

Line 1:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So now let's talk about a very simple service called the AWS Secrets Manager.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 2:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So it's a newer service and it's meant for storing secrets and it's going to be different from the SSM parameter store, because on Secrets Manager, you have the capability to force the rotation of secrets every X number of days, and therefore you have a better secret management schedule.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 3:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: On top of it, from within Secrets Manager, you can force and automate the generation of secrets on the rotation.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 4:
- Concepts: AI Operational Context
- Services: AWS Lambda, Amazon ECR
- Key Insights: And for this, you have to define a Lambda function that will generate that new secrets.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: Moreover, Secrets Manager is really well integrated with different services on AWS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: AI Operational Context
- Services: Amazon Aurora, Amazon RDS
- Key Insights: And I just showed you Amazon RDS for example, for MySQL, PostgreSQL, SQL or Aurora.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 7:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: But there are other services as well with AWS, other databases, that are integrated with Secrets Manager out of the box.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: That means that the username and the password to get into your database is stored directly in Secrets Manager and it can be rotated and so on.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: Now, Secrets can be encrypted using the KMS service.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 10:
- Concepts: AI Operational Context
- Services: Amazon Aurora, Amazon ECR, Amazon RDS
- Key Insights: And so anytime in the exam you see Secrets, or integration for RDS, or for Aurora of Secrets, really think Secrets Manager.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: Model Development Lifecycle
- Services: Amazon ECR
- Key Insights: There's one more feature we need to know about which is the concept of multi-region Secrets.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 12:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So the idea is that you can replicate your Secrets across multiple AWS regions and Secrets Manager Service will keep readers in sync with the primary Secrets.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 13:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So here have two regions.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 14:
- Concepts: AI Operational Context
- Services: AWS SAM, Amazon ECR
- Key Insights: We create a Secret in the primary one and it gets replicated as a same Secret into a secondary region.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 15:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Now, why would we do this?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 16:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Well, multiple things.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 17:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: Number one, in case there is a problem with US East 1, you're able, for example, to promote a replica Secret as a standalone secret.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 18:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: And then thanks to the fact that that Secret is replicated across regions, then you can build multiple regions apps.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 19:
- Concepts: AI Operational Context
- Services: AWS SAM, Amazon ECR, Amazon RDS
- Key Insights: You can also have disaster recovery strategies, or if you have an RDS database that is also being replicated from one region to the next, then you can use the same Secret to access, the same, the RDS database, the corresponding one, in the corresponding region.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 20:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 21:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

### File: outputs/AWS/AWS AI/2. aws-machine-learning-engineer-associate/10_Security, Identity, and Compliance/250_AWS Secrets Manager - Hands On.txt

Line 1:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So, now let's talk about the Secrets Manager service.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 2:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So, as we can see, it's to easily rotate, manage, and retrieve secrets throughout their life cycle.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 3:
- Concepts: AI Operational Context
- Services: Amazon Aurora, Amazon ECR, Amazon RDS
- Key Insights: So, it's similar to the SSM parameter store because you can store secret things, but it's going to be different from it because while you have rotation, management, and tight integrations with databases such as MySQL, PostgreSQL, Amazon Aurora, and RDS and so on.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 4:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So, the pricing is you have a 30-day free trial available, and then you're going to pay $0.40 per secret, per month, and then $0.05 per 10,000 API calls.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So, if you again expect to remain within the free tier, just create a secret and then delete it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So, let's go ahead and store a new secret, and we can choose a secret type.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 7:
- Concepts: AI Operational Context
- Services: Amazon DocumentDB, Amazon ECR, Amazon RDS, Amazon Redshift
- Key Insights: Now, over time, it's very possible that this gets increased in terms of the capability of integrations, but we have Amazon RDS, we have Amazon DocumentDB, Amazon Redshift, other databases, or other type of secrets.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: Generative AI Architecture
- Services: Amazon RDS
- Key Insights: So, if you are on Amazon RDS, as you can see, it prompts you for username and password and so on.
- Hidden/Implicit Meaning: Generative architecture signal.

Line 9:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: And if you go for example, for other type of secrets, here we can store anything we want.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 10:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So for example, I can say MySecretKey, and then MyVerySecretValue, and this would be a secret stored in here.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: And another one could be, for example, API_KEY, and then would be as well like a secret API key, so you would enter some text in here.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 12:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So you can enter it through this UI, or you can go in plain text and you have adjacent document that you can edit it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 13:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: To edit the key values, this is just a different way of specifying your secrets.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 14:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So, this will be kept secret so that only person with the correct IAM permissions can access these secrets.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 15:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Then we specify an encryption key.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 16:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So, we have the default one, but you can use your own KMS key if you wanted to.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 17:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I click on next.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 18:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: Then we need to name our secret.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 19:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So prod/my-secret for example, and a description but I don't need it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 20:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: Resource permission, so do we want to have a policy that restricts who can access the secret?
- Hidden/Implicit Meaning: Governance and safety signal.

Line 21:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And it could be across AWS accounts thanks to this resource policy right here, and you would've have it adjacent form.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 22:
- Concepts: AI Operational Context
- Services: Amazon S3
- Key Insights: So, it's similar to an S3 bucket policy.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 23:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: And then you have the option to replicate the secret across regions.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 24:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And this is good if you want to have multi-region setups which as multi-region apps or multi-region databases.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 25:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And here we can say, "Okay, I want to replicate this into us-west-2 using this encryption key right here and also into AP Southeast-1 and so on.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 26:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So, I'm not gonna do this, but this would be how you would replicate your secrets.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 27:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So, then I click on Next.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 28:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: Then you want to automatically rotate our secrets, yes or no.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 29:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And when do we want to rotate it, and if we do enable rotation, then we need to specify a rotation function.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 30:
- Concepts: AI Operational Context
- Services: AWS Lambda
- Key Insights: This is a Lambda function that will be performing this rotation.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 31:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So for now, disable it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 32:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And then we have a look.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 33:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So, we have a secret right here.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 34:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It's replicated into us-west-2.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 35:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: And here's some code if we wanted to invoke and get that secrets from our clients.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 36:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So, I'm not gonna go ahead with creating this, but as you can see, this would store a secret and then use this code to retrieve in your code the correct secrets.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 37:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So, we'll cancel this.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 38:
- Concepts: AI Operational Context
- Services: Amazon ECR, Amazon RDS
- Key Insights: Another kind of secret you can have is a credential for an Amazon RDS database.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 39:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So, you would create a username and a password and then you would specify a database.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 40:
- Concepts: AI Operational Context
- Services: Amazon ECR, Amazon RDS
- Key Insights: And the cool thing about it is that thanks to the integration between RDS and Secrets Manager, then this username and this password would be used to be able to login into the database.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 41:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And if you wanted to rotate it, then automatically the database also gets updated.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 42:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So, here you would enter it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 43:
- Concepts: AI Operational Context
- Services: AWS Config, Amazon ECR
- Key Insights: Then you would configure the secrets as well if you wanted to have for example some kind of multi-region replication.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 44:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Rotation as well if you wanted to review it and you're done.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 45:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 46:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

### File: outputs/AWS/AWS AI/2. aws-machine-learning-engineer-associate/10_Security, Identity, and Compliance/251_AWS WAF.txt

Line 1:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So now let's talk about AWS WAF, the Web Application Firewall.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 2:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It's used to protect your web application from common web exploits at the Layer 7.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 3:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Just a reminder Layer 7 is HTTP, so it protects you against HTTP exploits.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 4:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Whereas as comparison Layer 4 is for TCP or UDP protocol.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: AI Operational Context
- Services: API Gateway
- Key Insights: So this WAF, this Web Application Firewall can be deployed on the Application Balancer, and API gateway, CloudFront, the AppSync GraphQL API, or Cognito user pools.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So remember, this is very important.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 7:
- Concepts: AI Operational Context
- Services: Elastic Load Balancing
- Key Insights: You remember the targets of WAF because the exam will try to trick you, and for example, make you deploy WAF on an NLB but this is not possible.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So once you've deployed a firewall on these services, you can define web ACL, they're web access control lists, and their rules.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And so you can set a rule, for example, to filter based on IP addresses.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 10:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So you can define an IP sets.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Each IP set can be up to 10,000 IP addresses.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 12:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And if you need more IP addresses, you can use multiple rules for more IPs.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 13:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You can also filter based on HTTP headers, body.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 14:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You can use URI strings to protect from the most common attacks, such as SQL injection and cross-site scripting.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 15:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You can have size constraints to make sure that the request are only up to, for example, two megabytes or geo match to allow or block specific countries.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 16:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And you can even have rate-based rules to count the occurrences of requests per IP for DDoS protection, for example, to prevent a specific IP from sending more than 10 requests per second.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 17:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So these web ACLs, they're regional, except for CloudFront, where they are defined globally.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 18:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And if you see the term rule group, well, it's a set, it's a reasonable set of rules that you can add it to many web ACL.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 19:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So this is just to organize them.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 20:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So WAF has a really good use case.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 21:
- Concepts: AI Operational Context
- Services: Elastic Load Balancing
- Key Insights: So what if you want to get a fixed IP on our application while using WAF with an application load balancer?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 22:
- Concepts: AI Operational Context
- Services: Elastic Load Balancing
- Key Insights: So WAF does not support the Network Load Balancer because the NLB operates on Layer 4 and WAF is for Layer 7.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 23:
- Concepts: AI Operational Context
- Services: Elastic Load Balancing
- Key Insights: So therefore, to provide WAF, you need to have an application load balancer.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 24:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But we know that an application balancer does not have fixed IPs.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 25:
- Concepts: AI Operational Context
- Services: Elastic Load Balancing
- Key Insights: So to solve a problem, we can use a Global Accelerator to get fixed IP for application, and then enable WAF on our ALB.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 26:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So the architecture looks like this.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 27:
- Concepts: AI Operational Context
- Services: Amazon EC2, Elastic Load Balancing
- Key Insights: We have one region with an ALB and EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 28:
- Concepts: AI Operational Context
- Services: Elastic Load Balancing
- Key Insights: We're going to front our ALB with a Global Accelerator to get a fixed IP for our application.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 29:
- Concepts: AI Operational Context
- Services: AWS SAM
- Key Insights: And we're going to attach a Web Application Firewall with a WebACL on the same region as where our application low balancer is located.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 30:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And therefore, we have achieved our target architecture.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 31:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 32:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 33:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

### File: outputs/AWS/AWS AI/2. aws-machine-learning-engineer-associate/10_Security, Identity, and Compliance/252_AWS Shield.txt

Line 1:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So now let's talk about AWS Shields.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 2:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And Shield is a service to protect yourself from DDoS attacks.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 3:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: What is DDoS?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 4:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Well, it's a distributed denial of service.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: AI Operational Context
- Services: AWS SAM
- Key Insights: And the idea is that your infrastructure is going to suddenly receive many, many requests at the same time from a lot of computers all around the world.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And so the goal of it is to overwhelm and overload your infrastructure.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 7:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And this way your infrastructure cannot serve your real users and this is what it's called a distributed denial of service.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 8:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we can protect against it, so we have the AWS Shield Standard service.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It's a free service, it's already activated for every customer of AWS and is going to give you protection from attacks such as the SYN or UDP floods or any reflection attack or other layer 3, or layer 4 attacks.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 10:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And if you want to get advanced protection, you can use the AWS Shield Advanced service.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So this is an optional DDoS mitigation service.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 12:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It costs around 3,000 per month per organization.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 13:
- Concepts: AI Operational Context
- Services: Amazon EC2
- Key Insights: And the idea is that you're going to get protected against more sophisticated DDoS attacks on Amazon EC2, Elastic Load Balancing, Amazon CloudFront, the Global Accelerator and Route 53.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 14:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It also gives you 24/7 access to the AWS DDoS response team.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 15:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So in case you get attacked, you will have someone to help you and get you along the way.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 16:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: In case you are incurring higher fees because you are also being attacked, this Shield Advance protects you from these higher fees.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 17:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And this Shield Advance has an automatic application layer, DDoS mitigation, and it's going to mean that it's automatically going to create and evaluate and deploy WAF rules to mitigate layer 7 attacks.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 18:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So automatically your web application firewall will have rules to help you mitigate these attacks, DDoS attacks if they happen at the layer 7, which is great.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 19:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's say for this lecture, I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

### File: outputs/AWS/AWS AI/2. aws-machine-learning-engineer-associate/10_Security, Identity, and Compliance/253_VPC, Subnets, Internet Gateway, NAT Gateway.txt

Line 1:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: [Instructor] Okay, so first let's get an introduction to VPC and subnets.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 2:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So VPC is a virtual private cloud, which means it's a private network that is within the AWS cloud that allows you to deploy your resources within it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 3:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And a VPC is a regional resource.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 4:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So if you have two AWS regions, they will have two different VPC.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So VPC is represented like this.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Inside of your VPC, which is just a logical construct.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 7:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You have subnets, and subnets allow you to partition your network inside your VPC, and subnets are defined at the availability zone level.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we have one AZ, So ACs in this example.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And we can have multiple subnets.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 10:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So the first subnet that I'm going to create is a public subnet.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And as you can see the public subnet is a subnet that is accessible from the internet.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 12:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So that's subnets, can access the World Wide Web and also can be accessed.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 13:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: From the World Wide Web, okay, so then we have another kind of subnets, called a private subnet, and the private subnet is a subnet that is not accessible from the internet's okay.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 14:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And how do we define this, we'll see this in the next slide.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 15:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So to define access to the Internet and between subnets, we're going to use router tables.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 16:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So within your VPC, you're going to define a bunch of write tables, which is going to define how your network flows between all the different subnets.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 17:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So remember, everything is at a high level in this whole section, so we won't do any hands on but try to remember these concepts, you'll see if it should make sense to you very soon.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 18:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we have an easy to instance in a public subnet, and that one has access to the internet.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 19:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And we have a situ instance in the private subnet.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 20:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And then one does not have access to the internet or the internet does not have access to it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 21:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The reason being, we want it to be more secure and more private.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 22:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Okay,so if we look at bigger diagram for VPC, we have our cloud infrastructure.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 23:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And we have one region, within the region we have a VPC.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 24:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And the VPC has a set of IP ranges.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 25:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So it's called a cider range.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 26:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And this is just a range of IP allowed within your VPC.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 27:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And we have two AZ in this example.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 28:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So in the first AZ, I'm going to have, a the public subnet and the private subnets.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 29:
- Concepts: AI Operational Context
- Services: Amazon EC2
- Key Insights: And we can launch our EC2 instances in each subnet we want.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 30:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And in the AZ two, with a public subnet and a private subnet.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 31:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So this is what the VPC looks like at a high level.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 32:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And this is very common in the VPC that is created for you.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 33:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: When you use your cloud on AWS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 34:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You only have public subnets.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 35:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You don't have private subnets.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 36:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: We have one public subnets per AZ and you have one VPC in each and every region that's created for you.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 37:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It's called the default VPC.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 38:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Okay, next in your network.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 39:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: We talked about public and private subnet, but we're going to go one step deeper.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 40:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And talk about internet gateways and Nat gateways.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 41:
- Concepts: AI Operational Context
- Services: AWS SAM
- Key Insights: So, if we go back to the same diagram, say we have an easy to instance, in the public subnets.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 42:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: What makes the subnet really public?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 43:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: How can it access the internet?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 44:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Well for this, we use an internet gateway.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 45:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Our internet gateway will help our VPC instances in our subnets to connect to the internet.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 46:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So here's your internet gateway, it lives in your VPC.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 47:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And so the public subnets will have a route to the internet gateway.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 48:
- Concepts: AI Operational Context
- Services: Amazon EC2
- Key Insights: So your public subnets for example, your EC2 instance in that public subnet, has a route to your internet gateway.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 49:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And your internet gateway knows how to talk to the internet's, and that's what makes a subnet a public subnet.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 50:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So public subnets, will have a route direct route to an internet gateway.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 51:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So now let's take another example.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 52:
- Concepts: AI Operational Context
- Services: Amazon EBS, Amazon EC2
- Key Insights: We have our EC2 instance in the private subnets and we want it to also be able to access the internet for example to get updates for software's, but we don't wanna it to be accessible from the internet Don't wanna the internet to be able to reach out to websites on our private subnet.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 53:
- Concepts: AI Operational Context
- Services: AWS SAM
- Key Insights: For example, for this we use what's called a NAT gateway, or NAT instance, they do the same thing.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 54:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: They provide nets for your private subnets.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 55:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But the NAT gateways are managed by AWS, so you don't have to worry about provisioning them and scaling them.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 56:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Whereas the NAT instances are self managed.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 57:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And they both allow your instances in your private subnets to access the internet while remaining private.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 58:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So how does it work, we are going to deploy a NAT gateway or in that instance, in our public subnets.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 59:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And then we're going to create a route from the private subnet to the NAT instance or gateway.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 60:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And then that has a route to the internet gateway, because it's in the public subnet, and therefore your private subnets can access through the nuts all the way to the internet.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 61:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And that's the whole point of Nat gateways.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 62:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So this is a typical infrastructure.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 63:
- Concepts: AI Operational Context
- Services: AWS Lambda
- Key Insights: In AWS and the NAT gateways NAT instances will come at play later in this course, when we talk about lambda functions okay, but try to remember this, this is a very simple diagram and feel free again to revisit the section later in this course maybe it will make a lot more sense, but still I wanna to introduce concepts to you.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 64:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So,I will see you in the next lecture for more UBC concepts.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

### File: outputs/AWS/AWS AI/2. aws-machine-learning-engineer-associate/10_Security, Identity, and Compliance/254_NACL, Security Groups, VPC Flow Logs.txt

Line 1:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: So now that we've seen all the aspect about defining the network in our VPC let's talk about this network security.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 2:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: So let's talk about the concept of network ACL and security groups.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 3:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we're back in our VPC.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 4:
- Concepts: AI Operational Context
- Services: Amazon EC2
- Key Insights: It has 1 public subnet and 1 EC2 instance in it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: We can create a NACL or network ACL.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Which is a firewall that controls traffic from and to the subnets.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 7:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And this can have allow and deny rules.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we can allow traffic or deny traffic.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And that's explicit.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 10:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You attach these NACL's at the subnet level and the rules only include IP addresses.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 11:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So you're saying, Hey all the traffic coming from this IP address is allowed, or all the traffic coming from these IP addresses are denied, and so on.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 12:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So the NACL is here and it is the first mechanism of defense of our public subnets, and it's at the subnet level.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 13:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So as we can see the traffic coming to and from the internet is going to go first through the network ACL.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 14:
- Concepts: AI Operational Context
- Services: Amazon EC2
- Key Insights: But it hasn't reached our EC2 instance just yet.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 15:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: Next we have security groups and we've seen them already in this course.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 16:
- Concepts: AI Governance and Safety
- Services: Amazon EC2
- Key Insights: So security groups is a firewall that controls traffic to and from an ENI so elastic network interface or an EC2 instance.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 17:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: In this security groups as we've seen can only have the allow rules and they can reference either IP addresses or other security groups.
- Hidden/Implicit Meaning: Constraint or limitation signal; Governance and safety signal.

Line 18:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And this is something we have seen already in this course.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 19:
- Concepts: AI Governance and Safety
- Services: Amazon EC2
- Key Insights: So we attach a security group to our EC2 instance and now the traffic can flow all the way through to our EC2 instance.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 20:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And we have the second mechanism of defense.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 21:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: So we've seen security groups at depth in this course but we haven't really touched NACL's.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 22:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Why?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 23:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Because when you have a default VPC the default NACL allows everything in and allows everything out.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 24:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And this is why we haven't had to change the network ACL in this course and we will not do any hands-on on it either.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 25:
- Concepts: AI Operational Context
- Services: Amazon EC2
- Key Insights: But just know that before the internet traffic reaches your EC2 instance it has to go through this network ACL which acts as a firewall.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 26:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: So they're very different than network SCL and the security Group.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 27:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And there is a table that summarizes it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 28:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You don't need to remember it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 29:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: This is more something for the Solutions Architect Associate or the certified Sysap's Associate.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 30:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: But the idea is that the security group is attached to an instance or an ENI whereas the network ACL is at the subnet level.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 31:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: The Security Group is only allow rules whereas for network ACL it's allow and deny rules.
- Hidden/Implicit Meaning: Constraint or limitation signal; Governance and safety signal.

Line 32:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Is stateful, so that means any traffic that comes that return traffic is automatically allowed regardless of any roles.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 33:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Whereas here for the network ACL you need to allow the traffic in and out.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 34:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And here you can look at the rest but this is pretty irrelevant for the certification.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 35:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Okay, so this is just if you're curious.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 36:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: So now that we have all this traffic flowing through our VPC, through the network ACL and the security groups, we're curious about can we get a information about all this traffic flowing through?
- Hidden/Implicit Meaning: Governance and safety signal.

Line 37:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Can we get a log from it?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 38:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And this is called a VPC flow log.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 39:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So this is going to capture information about all the IP traffic going into your interfaces.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 40:
- Concepts: AI Operational Context
- Services: Amazon VPC Flow Logs
- Key Insights: That includes the VPC flow logs, the Subnet flow logs and the ENI flow logs or Elastic Network Interface flow logs.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 41:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So anytime you have network going through your VPC it will be logged in a flow log.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 42:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And so this is to help you monitor and troubleshoot connectivity issues.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 43:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: For example, if you want to know why your subnet cannot access the internet or why a subnet can talk or cannot talk to another subnets or internet to subnet et cetera, et cetera.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 44:
- Concepts: AI Operational Context
- Services: Amazon VPC Flow Logs
- Key Insights: So anytime you have a network issue and you need to be able to troubleshoot it, you need to look at the VPC flow logs because they will give you everything.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 45:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: All the information around the allowed and the denied traffic.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 46:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It will capture network information as well from anything that is managed by AWS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 47:
- Concepts: AI Operational Context
- Services: Amazon Aurora, Amazon ElastiCache, Amazon RDS, Amazon VPC Flow Logs, Elastic Load Balancing
- Key Insights: So the Elastic Load Balancers, your ElastiCache, RDS, Aurora all this will appear in your VPC flow logs.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 48:
- Concepts: AI Operational Context
- Services: Amazon CloudWatch, Amazon Data Firehose, Amazon Kinesis, Amazon S3, Amazon VPC Flow Logs
- Key Insights: So in case of connectivity issues you can look there right away And the VPC flow logs data can be sent to Amazon S3 it can be sent to CloudWatch Logs and Kinesis Data Firehose so you can send it to many places in AWS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 49:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 50:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 51:
- Concepts: AI Governance and Safety
- Services: Amazon VPC Flow Logs
- Key Insights: We've seen NACL's, security groups and VPC flow logs and I will see you and the next lecture.
- Hidden/Implicit Meaning: Governance and safety signal.

### File: outputs/AWS/AWS AI/2. aws-machine-learning-engineer-associate/10_Security, Identity, and Compliance/255_VPC Peering, Endpoints, VPN, Direct Connect.txt

Line 1:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Okay, so now let's talk about how we can establish connectivity between VPC and other structures.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 2:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So, the first thing is called VPC peering.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 3:
- Concepts: AI Operational Context
- Services: AWS SAM
- Key Insights: So say you have two virtual private clouds, they're either in two different accounts or in two different regions, and you want to connect together as if they're part of the same network.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 4:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we want to connect to VPC privately using the network from AWS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: AI Operational Context
- Services: AWS SAM
- Key Insights: And it's going to make them behave as if they were in the same network, so we have VPC A and VPC B, and if we want to have them talk to one another, we need to establish a VPC peering connection from A to B.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Very simple.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 7:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: To make sure that these VPC can be connected, you need to make sure that the IP ranges that is defined for each VPC are not overlapping.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Because to be able to address network to another VPC, you need to talk to an IP address.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And so, if obviously, the network ranges overlap, then the network doesn't know where to go.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 10:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So to connect to VPC, you need to make sure that the IP addresses range it operates on are different and not overlapping.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And a VPC peering connection is not transitive.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 12:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So it must be established for each VPC that needs to communicate with one another.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 13:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: What I mean is that if we connect VPC C through a VPC peering connection between A and C, B and C cannot talk to each other.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 14:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: There is no transitivity in the VPC peering.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 15:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: That means that if I want to establish connectivity between VPC B and VPC C, then I need to create its own VPC peering connection between B and C.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 16:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: That's what it means with VPC peering.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 17:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So as you add more and more VPC, you need to add more and more peering connections.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 18:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's number one.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 19:
- Concepts: Inference and Serving
- Services: (none explicit)
- Key Insights: Number two, VPC endpoints, which is going to be very important going into this exam.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 20:
- Concepts: Inference and Serving
- Services: (none explicit)
- Key Insights: So, endpoints allow you to connect to AWS services using a private network instead of using the public internet network.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 21:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So something you maybe didn't know is that all the AWS services are public, okay?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 22:
- Concepts: AI Operational Context
- Services: Amazon EC2
- Key Insights: And so anytime your EC2 instances, for example, use the AWS services, they talk publicly to AWS, but sometimes your EC2 instances are not connected to the public subnets, and therefore you want to have them access, privately, your AWS services.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 23:
- Concepts: Inference and Serving
- Services: (none explicit)
- Key Insights: So this is the VPC endpoint.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 24:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: So this just gives you security and lower latency to access AWS services.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 25:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's take an example.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 26:
- Concepts: AI Operational Context
- Services: Amazon DynamoDB, Amazon EC2, Amazon S3
- Key Insights: We have a private subnet and an EC2 instance in it, and it wants to access Amazon S3 and DynamoDB, which are outside of the VPC into the public realm.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 27:
- Concepts: Inference and Serving
- Services: Amazon DynamoDB, Amazon S3
- Key Insights: Then we can create a VPC endpoint gateway, and this is only for S3 and DynamoDB, so endpoint gateway, and we'll see what S3 and DynamoDB are in this course, obviously.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 28:
- Concepts: Inference and Serving
- Services: Amazon DynamoDB, Amazon EC2, Amazon S3
- Key Insights: But so, your EC2 instance talks to that VPC endpoint and has access to S3 and DynamoDB privately.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 29:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: As you can see, the traffic does not go through the internet.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 30:
- Concepts: Inference and Serving
- Services: Amazon CloudWatch
- Key Insights: And then, for VPC endpoint interface, that's the rest of the service, and that's only used within your VPC, so that means that we can create, for example, a VPC endpoint interface in your private subnet, and through that endpoints interface, through that ENI, we have private access to CloudWatch.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 31:
- Concepts: Inference and Serving
- Services: (none explicit)
- Key Insights: So, VPC endpoints are really, really helpful anytime you need private access from within your VPC to an AWS service, okay?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 32:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: That's what you need to remember.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 33:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The other exams need to know the difference between gateway and interface.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 34:
- Concepts: Inference and Serving
- Services: (none explicit)
- Key Insights: I don't believe you need to know it for the certified developer exam, but know that anytime the exam is asking you to privately connect to an AWS service, then a VPC endpoint is going to be the way.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 35:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Okay, so now how do we establish connectivity between your on-premises data center, So that could be your office building, for example, and your cloud VPC?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 36:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So, the first way is called site to site VPN, to connect an on-premises VPN appliance to AWS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 37:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The connection will be automatically encrypted and will go over the public internet.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 38:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So in this example, we establish a VPN, virtual private network between your on-premises data center and your VPC, and that goes over the public internet.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 39:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: That's very easy to set up very quick.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 40:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You can set up in matter of minutes.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 41:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And there you go, you have a private connection, or an encrypted connection, sorry, over the public internet to your VPC.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 42:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The other option is direct connect.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 43:
- Concepts: AI Operational Context
- Services: AWS SAM
- Key Insights: It achieves the same purpose, it's to establish a connection between your on-premises data center and your VPC, but this time it is a physical connection.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 44:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So that means that the connection is going to be private, it will not go over the public internet, it's going to be secure and fast, and it goes over the private network.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 45:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And because it is a private line to your VPC, it takes at least a month to establish, because there is some work that needs to happen to have a private connectivity to AWS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 46:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So, this is called direct connect, and this is the private route.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 47:
- Concepts: AI Operational Context
- Services: AWS SAM
- Key Insights: As we can see, both the VPN and direct connect achieve the same purpose, but with different matters and different timeline.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 48:
- Concepts: Inference and Serving
- Services: (none explicit)
- Key Insights: Okay, so that's it for connectivity of your VPC in terms of external VPC peering, VPC endpoints, site to site VPN and direct connect.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 49:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I hope that was helpful, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

### File: outputs/AWS/AWS AI/2. aws-machine-learning-engineer-associate/10_Security, Identity, and Compliance/256_VPC Cheat Sheet & Closing Comments.txt

Line 1:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So this was a heavy section and without any hands-on, so that may have been confusing, but really I don't want to bug you down with hands-on because this is not for a Certified Developer.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 2:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You just need to remember a few concepts out of this whole section, so I'm going to summarize everything in one slide.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 3:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And trust me, you will be all set on all the VPC questions going into the exam, okay?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 4:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So don't stress it out.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The first one is VPC which stands for Virtual Private Cloud.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: AI Operational Context
- Services: Amazon EC2
- Key Insights: And we've been using the default VPC all along this course when we created our EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 7:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: There's going to be one default VPC for AWS region we are using.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Subnets are tied to a specific Availability Zones.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: AI Operational Context
- Services: Amazon EC2
- Key Insights: And this is where we've been launching our EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 10:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And they represent a network partition of your VPC.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The Internet Gateway is what gives access to our instances in our public subnets to the internet, okay?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 12:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And they are defined at the VPC level.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 13:
- Concepts: AI Operational Context
- Services: Amazon EC2
- Key Insights: NAT Gateways and NAT Instances will give internet access this time to our private subnets through our EC2 instances and private subnets.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 14:
- Concepts: AI Governance and Safety
- Services: Amazon EC2
- Key Insights: NACLs or Network ACLs are stateless subnet rules firewalls for inbound and outbound whereas Security Groups, we've seen them before are stateful, they operate at the EC2 instance level or the ENI and they can reference other security groups.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 15:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: For VPC Peering, this allows us to connect two VPC together as long as they are not overlapping and this is not a transitive VPC Peering therefore you need to establish VPC Peering connection between all your VPC if you want to have them connected with each other.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 16:
- Concepts: Inference and Serving
- Services: (none explicit)
- Key Insights: VPC Endpoints is going to provide you private access to AWS services within your VPC, and that is something that we will see in the future lectures for some services.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 17:
- Concepts: AI Operational Context
- Services: Amazon VPC Flow Logs
- Key Insights: And VPC Flow Logs will give you your network traffic logs to ensure that you can debug if something is access denied, or if traffic is locked or allowed within your VPC.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 18:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Finally, let's establish connection from your on-premises data center to AWS, you have the Site to Site VPN which is to have a VPN connection over the public internet and your Direct Connect if you want a direct private connection to AWS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 19:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So, don't stress if you didn't understand everything in that section, you can come back to it later.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 20:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: As I said in the course, I will be highlighting all the specific VPC features we need.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 21:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And then come back to it if you want at the end but don't stress it out.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 22:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I'm really, really serious about it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 23:
- Concepts: AI Operational Context
- Services: AWS SAM
- Key Insights: I just want to give you a bit more information than what you needed just to make sure we are on the same page, and let's go, let's move on with this course.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 24:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Trust me it's gonna get a lot more developed very very soon.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 25:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 26:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

### File: outputs/AWS/AWS AI/2. aws-machine-learning-engineer-associate/10_Security, Identity, and Compliance/257_AWS PrivateLink.txt

Line 1:
- Concepts: Inference and Serving
- Services: (none explicit)
- Key Insights: So now let's talk about AWS PrivateLink, also from the VPC Endpoint Services family.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 2:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 3:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Well, say you have a service that you run within AWS, or say there is a vendor on the Marketplace, and they run a service on their own account within their own VPC.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 4:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And they want to expose a service to customers of AWS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So to thousands of VPC, they need to have private access to that service, to establish a connectivity.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You could, for example, use VPC peering, but that doesn't scale, and it's not very secure.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 7:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: What you want is use something else, and that's something else is a Private Link.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So a Private Link allows you to connect a service running within your VPC to other VPCs directly and privately.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So it does not require VPC peering or internet gateway, because it's from the private network, or NAT or route tables or anything like this.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 10:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's go through a diagram.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Say, for example, you are talking to a vendor on the AWS Marketplace, and they run application service.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 12:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So they have their own service that you wanna use in their own VPC.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 13:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And you wanna have access to it from your own VPC in your own accounts with your own consumer applications.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 14:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: In that case, you're going to ask your vendor to do a Private Link.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 15:
- Concepts: AI Operational Context
- Services: Elastic Load Balancing
- Key Insights: On their end, they will have to create a Network Load Balancer to expose that service.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 16:
- Concepts: AI Operational Context
- Services: Elastic Load Balancing
- Key Insights: And on your end, you will create an Elastic Network Interface, and then you will establish a Private Link between the two so that you have private access to their Network Load Balancer and therefore to their service.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 17:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And all the internet traffic is actually not gonna go through the public internet, but it's actually gonna go through your private network.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 18:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And so therefore all communications will remain private.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 19:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And so for every new customer that that third party will need, all they will have to do is to create a new Private Link for their customers, which is very easy to manage and way more scalable.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 20:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So that's it, I hope you like this lecture, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

### File: outputs/AWS/AWS AI/3. aws-generative-ai-developer-professional/08_Governance and QA/183_Principles of Responsible AI.txt

Line 1:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: One of the areas covered by the exam is machine learning system architecture, and specifically the best practices that Amazon has defined for designing your machine learning systems.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 2:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So I didn't make this up.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 3:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: This is straight from Amazon, so pay attention.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 4:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: One thing to consider when designing a system is responsible AI, and these are the core dimensions Amazon defines for the responsible development of AI applications.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 5:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And you know, good on them for thinking about this.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You know there's a lot of people using AI, perhaps irresponsibly.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 7:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So here are some things to think about to make sure that you're using this technology for the power of good.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You want to consider the fairness of the application that you're developing.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You know, is it going to be biased or not?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 10:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: In some unintentional way?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: It's explainability can be important for responsible AI.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 12:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Can you explain why it made its output?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 13:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Why did it say something you know, can you go back and figure out why it said something wrong and fix that if it's not explainable, you can't.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 14:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: Privacy and security.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 15:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Are you being careful not to let it be trained on private, personally identifiable information or sensitive information?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 16:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Is your AI system potentially a conduit for leaking that information out to others unintentionally?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 17:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: You want to make sure it doesn't even get in there, and you have guardrails in place to make sure it's master removed if it does slip through.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 18:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Safety, controllability and veracity and robustness.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 19:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Um, safety is kind of a broad term, right?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 20:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You know, it just means, well, do people feel safe when they're using this system?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 21:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Um, is it going to explode in unintentional ways?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 22:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Kind of a broad, uh, meta concern there.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 23:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Controllability.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 24:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Do you have any control over the output of this thing?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 25:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Again, that ties back to explainability in terms of being able to understand what's going on.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 26:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You can't really control it if you don't understand it.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 27:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But do you have knobs and dials at your disposal to make sure you can control the behavior of this system if you do need to tune it or change it later on.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 28:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Veracity and robustness, of course.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 29:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Does it tell the truth?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 30:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Um, you know, generative AI is prone to hallucinations, they call it these days.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 31:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And, well, you want to be sure you can measure that and you have a handle on just how truthful your system is and whether that's within your acceptable limits for your application.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 32:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Governance.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 33:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Um, how do I know what this thing is doing?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 34:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: How do I keep tabs on it?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 35:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: How do I communicate what it's doing to others?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 36:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: How do I make sure that I'm in compliance with any relevant regulations?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 37:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: Different countries have different laws about AI, and you want to make sure you're in compliance with all of them.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 38:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Transparency sounds related to explainability, but really it's more about just being transparent about what your system does.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 39:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So are you publishing the limitations of your model, the capabilities of your model, the shortcomings that it may have?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 40:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You know, you want to be transparent about what your model can and cannot do.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 41:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: There are some tools available to enforce these within AWS, so this is tying it back to AWS and some more technical considerations.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 42:
- Concepts: AI Governance and Safety, Generative AI Architecture
- Services: Amazon Bedrock
- Key Insights: Amazon Bedrock, which is the bedrock of Amazon's generative AI capabilities, has model evaluation tools built into it.
- Hidden/Implicit Meaning: Generative architecture signal; Governance and safety signal.

Line 43:
- Concepts: Generative AI Architecture
- Services: Amazon Bedrock
- Key Insights: So using bedrock, if you were to develop a LM agent or a image generation model or anything else on top of the suite of foundation models that are offered by Amazon Bedrock, they have tools for evaluating the accuracy of that, or for throwing a set of test prompts at it and evaluating if their responses match the ideal responses or not.
- Hidden/Implicit Meaning: Generative architecture signal.

Line 44:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So they do have mechanisms for evaluating even non-deterministic LM models.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 45:
- Concepts: AI Governance and Safety, Model Development Lifecycle
- Services: SageMaker
- Key Insights: SageMaker clarify is also a tool in your arsenal for responsible AI.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 46:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: SageMaker clarify can automatically detect bias in your data sets that are being used to train it and also in the output.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 47:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: So we can say, okay, for this feature, is there some imbalance in that data that we need to be aware of and potentially address and fix?
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 48:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: You also have tools within SageMaker to fix those biases if they do exist, by rebalancing the data that you have or maybe even introducing new data.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 49:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: It also has model evaluation capabilities.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 50:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So it has the ability to evaluate your model not just as a one off, but also continuously as it's being run.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 51:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: And feed that information back into SageMaker maybe to tune your model continuously.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 52:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Explainability.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 53:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: It also has the ability to look at what happens if you remove a given feature and what impact that has on the output.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 54:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: So it can say, okay, the output is actually being driven primarily by these features in your training data.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 55:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So you can say, you know, if I if I'm feeding it information about, I don't know, age and um, what else, you know, income, where you live, things like that.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 56:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And you're trying to create a model that can predict something like whether this person should be approved for a loan.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 57:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: You can go back and use SageMaker clarifies explainability features to determine which of those features is most contributing to that final decision, and that can also help you with your feature selection, your, uh, your feature engineering later on.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 58:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: SageMaker Model Monitor is another tool at your disposal that allows you to automatically get alerts for inaccurate responses so you can keep an eye on your model once it's been deployed, and get an alarm if it's doing naughty things.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 59:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: Amazon augmented AI is also a tool that can be used for responsible AI that allows you to insert humans in the loop.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 60:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: So if you want to have human beings that are double checking these results before they go out, or maybe even involving them in the training process, things like reinforcement learning from human feedback is a popular technique for training your model.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 61:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: On which of two responses is better, and fine tuning your model in that way.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 62:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: So oftentimes there's a lot more human involvement in training these models than you might think.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 63:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: There's not as much A and AI as you might think.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 64:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: Uh, however, you know, I should point out that, um, this too can be irresponsible.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Governance and safety signal.

Line 65:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: You know, keep in mind that if you are leveraging a team of people in a developing country, um, well, maybe that's not responsible.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 66:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You might be exploiting them, right?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 67:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Amazon augmented AI, however, allows you to bring your own team if you want to.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 68:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So you have complete control over who's doing that work.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 69:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Or you can use their own AWS managed teams as well.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 70:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: And there are some general tools for SageMaker for ML governance.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 71:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: SageMaker ML governance is not the name of a service.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 72:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: It's just a heading for this set of features here.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 73:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: One thing is SageMaker role manager.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 74:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: So that allows you to define roles for groups of people that are using SageMaker and define their permissions for what they can and cannot do.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 75:
- Concepts: Model Development Lifecycle
- Services: Amazon RDS, SageMaker
- Key Insights: There's also model cards where you can define high level information about a model that you've developed using SageMaker, and publish that that gets back to transparency, right.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 76:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So a screenshot of that is over here on the right, where you can start off by just documenting what the intended use of this model is, what its risks are, what the risks might be, you know, explain that.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 77:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Just general information about what the limitations and risks of this model might be.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 78:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And again, just publishing that in a way that's easily consumable.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 79:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: They also offer a model dashboard that gives you quick access to all of the models you've been using within SageMaker, and you can dig into those further from there.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

### File: outputs/AWS/AWS AI/3. aws-generative-ai-developer-professional/09_Security, Identity, and Compliance/197_Section Intro.txt

Line 1:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: Welcome to the section on security, Identity and Compliance where you'll learn how to protect your generative AI applications, secure the data they rely on, and ensure that access is managed responsibly across your entire architecture.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 2:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: In this part of the course, we focus on the tools and patterns that keep your AI systems safe in real world production environments.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 3:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: We'll begin with the principle of least privilege, the foundation of all secure system design.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 4:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You'll learn how to apply least privilege to gen AI workloads, how to mask or salt sensitive data, and how to design systems that minimize exposure without sacrificing functionality.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: Generative AI Architecture
- Services: Amazon ECR
- Key Insights: From there, we'll explore AWS identity and access management, IAM, and how to use fine grained policies to control who can access models, data sets, vector stores, prompts, secrets, and APIs.
- Hidden/Implicit Meaning: Generative architecture signal.

Line 6:
- Concepts: MLOps and Operationalization
- Services: (none explicit)
- Key Insights: We'll compare encryption at rest and in transit, and you'll see how AWS Key Management Service, or KMS, protects sensitive information throughout your AI pipeline.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 7:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: We'll also cover tools designed specifically to identify and protect sensitive data, including Amazon Macie for PII detection and AWS Secrets Manager for securely storing API keys, connection strings, and other credentials your applications depend on.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Next, we'll move into identity and network protection.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: Inference and Serving
- Services: (none explicit)
- Key Insights: You'll learn how Amazon Cognito handles user authentication and authorization, how AWS helps to defend your AI endpoints from malicious inputs, and how to use Amazon VPC to isolate sensitive components of your system.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 10:
- Concepts: Generative AI Architecture
- Services: Amazon Bedrock
- Key Insights: Finally, we'll look at AWS Privatelink, a powerful way to keep traffic off the public internet and securely connect your applications to bedrock databases and other critical services.
- Hidden/Implicit Meaning: Generative architecture signal.

Line 11:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: By the end of this section, you'll understand exactly how to harden your generative AI systems.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 12:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: Protecting identities, securing data, locking down access, and ensuring compliance across the entire solution.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 13:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Let's get started.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

### File: outputs/AWS/AWS AI/3. aws-generative-ai-developer-professional/09_Security, Identity, and Compliance/198_Principle of Least Privilege.txt

Line 1:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: Let's dive into security, identity and compliance.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 2:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: This is a quick one.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 3:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: We're going to start off with a very basic principle of security, but an important one the principle of least privilege.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 4:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And the exam guide does say you need to know what this is.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It's pretty simple though.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: All it means is that you're only granting the permissions required for someone to perform a given task.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 7:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So it's kind of common sense, right?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Don't give people more permissions than they need to do what they need to do.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Otherwise, they might figure out a way to exploit or abuse that extraneous permission that they have.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 10:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Now, while you're developing, it certainly makes sense to start with broader permissions, since you don't necessarily know exactly what you need permission for when you're still building a system and figuring out what components make it up right.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But once you're done, once you actually know what somebody needs to do with that system, you should lock it down.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 12:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Once you have that better idea of the exact services and operations that a workload requires.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 13:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Over on the right here, we have an example of that.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 14:
- Concepts: AI Operational Context
- Services: Amazon S3
- Key Insights: So this is just an IAM policy that restricts S3 access to listing a specific bucket.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 15:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And furthermore within a specific prefix of that bucket.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 16:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So that top half there is saying I'm only going to allow list bucket operations within my specific bucket under the data reports path there.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 17:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And for actually reading data, the only thing I'm going to allow with this IAM policy is reading CSV files that are under my specific bucket data reports and end with a CSV suffix.
- Hidden/Implicit Meaning: Constraint or limitation signal; Governance and safety signal.

Line 18:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So if you have, for example, a workflow that requires people to or a system or a service to read CSV files from a specific location, there's no reason to give them access to anything more than that location, and furthermore, just to the specific types of files that they might need from that location.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 19:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 20:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So that's an example of the principle of least privilege.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 21:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And if you're not sure what privileges you need for an operation, you can use a tool called the IAM Access Analyzer.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 22:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And that will automatically generate least privileged policies based on the actual observed access activity.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 23:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So if while you're testing your system, you're only doing what you're supposed to do, you could use IAM Access Analyzer to automatically give you a starting point of what those least privileged policies might look like.
- Hidden/Implicit Meaning: Constraint or limitation signal.

### File: outputs/AWS/AWS AI/3. aws-generative-ai-developer-professional/09_Security, Identity, and Compliance/199_Data Masking and Key Salting.txt

Line 1:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: We've touched on data masking and anonymization a couple of times previously in this course, but it seems like it makes sense to revisit it within the security section again.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 2:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It is an important concept that the exam expects you to know about.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 3:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So anytime you're dealing with personally identifiable information or other sensitive data could be anything really.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 4:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Masking is one way of obfuscating that data.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So for example, you've probably seen, uh, on your credit card bill, they'll mask out all but the last four digits of your credit card number, just to make sure that if somebody gets a copy of that bill, they can't run off with your credit card number.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 6:
- Concepts: AI Governance and Safety
- Services: AWS SAM
- Key Insights: Same thing where you see your Social Security number listed.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 7:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Typically, you'll see everything but the last four digits masked out from that.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: AI Operational Context
- Services: Amazon RDS
- Key Insights: You can also use it for masking out passwords.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: AI Operational Context
- Services: Amazon RDS
- Key Insights: As you type in passwords.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 10:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You'll often see it being obscured or masked with stars or whatever it is.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: AI Operational Context
- Services: AWS Glue, Amazon Redshift
- Key Insights: And there is built in support for masking in both glue databrew and in redshift.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 12:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: An example of a masking policy is below here that would fully mask a credit card number.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 13:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Create masking policy.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 14:
- Concepts: AI Operational Context
- Services: Amazon Redshift
- Key Insights: This is in redshift by the way.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 15:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Mask credit card full is the name of that policy, with credit card being the field that contains that credit card number of a type varchar 256 using and then that mask string.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 16:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And we're going to say that that's going to be a text going into it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 17:
- Concepts: AI Operational Context
- Services: Amazon Redshift
- Key Insights: So that's just an example of creating a masking policy for a credit card number under redshift.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 18:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And again, the syntax error isn't something you'll be expected to know.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 19:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I don't think, but just know that you can do that.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 20:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Also, anonymization is another way of doing it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 21:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So rather than masking something, you can replace that data with something that is not traceable back to where it came from.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 22:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So you could just replace a credit card number or password or whatever it is with random information.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 23:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You could shuffle it so that you're just shuffling everything in a given column, so that people's actual credit card numbers don't match up to the actual person.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 24:
- Concepts: AI Operational Context
- Services: AWS SAM
- Key Insights: Another approach would be encryption, and that can be deterministic, where you can always get the same result from encrypting the same input, or probabilistic where you might have a different result every time you encrypt it.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 25:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Hashing is another technique that we talked about before to where you just apply what's called a hash function to the string.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 26:
- Concepts: AI Operational Context
- Services: AWS SAM
- Key Insights: And the thing with hashing is that you might get more than one thing that hashes to the same value, but you know, at the end that just increases the anonymization of it, right?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 27:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Or even better, just delete it or don't import it in the first place.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 28:
- Concepts: AI Operational Context
- Services: Amazon RDS
- Key Insights: If you don't need credit card numbers or passwords for whatever you're doing.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 29:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Don't take it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 30:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You know, if you see that information coming in, delete it during your ETL, or don't even try to import it to begin with.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 31:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: That's probably the safest way of dealing with personally identifiable information.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 32:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Don't have it in the first place.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

### File: outputs/AWS/AWS AI/3. aws-generative-ai-developer-professional/09_Security, Identity, and Compliance/200_IAM Introduction_ Users, Groups, Policies.txt

Line 1:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: - [Stephane] Welcome to the first deep dive on an iterator service.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 2:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The first one is called IAM.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 3:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So IAM stands for identity and access management.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 4:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It is a global service because in IAM, we are going to create our users and assign them to group.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we've already used IAM without knowing, when we created an account, we created a root accounts, and has been created by default.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: This is the root user of our accounts.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 7:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And the only things you should use it for is to set up your account as we'll do it right now.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal.

Line 8:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But then you shouldn't use that account anymore, or even share it.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 9:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: What you should be doing instead, is create users.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 10:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So you will create users in IAM, and one user represents one person within your organization.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And the users can be grouped together if it makes sense.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 12:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's take an example we have an organization with six people.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 13:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You have Alice, Bob, Charles, David, Edward and Fred so all these people are in your organization.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 14:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Now Alice, Bob, and Charles they work together.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 15:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: They're all developers.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 16:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we're going to create a group called the group developers who regrouping Alice, Bob and Charles.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 17:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And it turns out that David and Edward also work together.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 18:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we're going to create an operations group.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 19:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Now we have two groups within IAM.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 20:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Now groups can only contain users, not other groups.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 21:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So this is something very important to understand.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 22:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Groups only contain users.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 23:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Now, some users don't have to belong to a group.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 24:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: For example, Fred right here is alone, he does not correspond to any group.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 25:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: That is not best practice.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 26:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But it is something you can do in AWS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 27:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And also, a user can belong to multiple groups.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 28:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: That means that for example, if you know that Charles and David worked together, and they're part of your audit team, you can create a third group with Charles and David.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 29:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And as you can see, now, in this example, Charles and David are part of two different groups.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 30:
- Concepts: AI Operational Context
- Services: AWS Config
- Key Insights: So this is the possible configurations for IAM.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 31:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So why do we create users and why do we create groups?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 32:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Well, because we want to allow them to use our AWS accounts and to allow them to do so, we have to give them permissions.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 33:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So users or groups can be assigned what's called a JSON document.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 34:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I'll show you right now what it means called a policy, an IAM policy.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 35:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So it looks just like this.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 36:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So you don't have to be a programmer.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 37:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: This is not programming.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 38:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: This is just describing in, I think plain English, what a user is allowed to do or what a group and all the users within that group are allowed to do.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 39:
- Concepts: AI Operational Context
- Services: Amazon CloudWatch, Amazon EC2
- Key Insights: So in this example, we can see that we allow people to use the EC2 to service and do describe on it, to use the elastic load balancing service and to describe on it and to use CloudWatch.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 40:
- Concepts: AI Operational Context
- Services: Amazon CloudWatch, Amazon EC2
- Key Insights: Now we'll see what EC2 elastic load balancing and CloudWatch mean, but through this JSON document that looks just like this.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 41:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: We are allowing our users to use some services in AWS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 42:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So these policies will help us define permissions of our users.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 43:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: And so in AWS, you don't allow everyone to do everything that would be catastrophic, because a new user could basically launch so many services and they will cost you a lot of money or would be valid for security.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 44:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So in AWS, you apply a principle called the least privilege principle.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 45:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So you don't give more permissions than a user needs.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 46:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Okay, so if a user just needs access to three services, just create a permission for that user.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 47:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So now we have seen an overview IAM.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 48:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Let's go in the next lecture to practice creating users and groups.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

### File: outputs/AWS/AWS AI/3. aws-generative-ai-developer-professional/09_Security, Identity, and Compliance/201_IAM Users & Groups - Hands On.txt

Line 1:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's go ahead and practice using the IAM service to create users in AWS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 2:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So in the search bar, I just type IAM and I go into the IAM console.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 3:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: So upon arriving on the IAM Dashboard, we have some security recommendations that we can for now not care about.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 4:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And what I want to draw your attention to is that on the left hand side, we go to users.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So this is where we're creating to create users for IAM, but first, let's notice something.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: If you go to the top right corner and click on Global, you can see that the region selection is not active.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 7:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: That means that IAM as an entire service is a global service and therefore there is no region to be selected.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: When you create a user in IAM, it will be available everywhere, but some other consoles we'll see in this course will be region-specific.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So just something to notice.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 10:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Okay, so now we have users, and why do we create users?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Well, we create users, because right now, we are using what's called the root user.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 12:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So if you click on this, you see there's just the account ID available to you.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 13:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So when you have it, that means you're using the root account and it's not best practice to use the root account.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 14:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So therefore, we want to create users such as admin users that will allow us to use our accounts more safely.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 15:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So for this, let's go ahead and create a user, and I will provide a username, for example, Stephane.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 16:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So of course I want to provide myself access to the management console, so I'm going to do this, and we have the option to use identity center, which is recommended, or to create an IAM user.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 17:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I will choose the second option because it is more simple, and from an exam perspective, this is the one you need to know about.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 18:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But don't worry, this does not affect how your course is going to go.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 19:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Okay, so we create an IAM user, and now we have to set the password.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 20:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So if this was a user that was not me, I would leave it as auto-generated password, and I would leave this so that the user must change this password at the next sign-in, but because it is me, I'm just going to enter a custom password and I'm going to untick this because I don't need to change my password at the next login.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 21:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's click on next.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 22:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Next, we have to add permissions to this user, so we can add it directly or we can get started with groups.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 23:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's create a group, and we're going to create a group.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 24:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The group name is going to be admin and the policy name is going to be administrator access.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 25:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So now that this is done, we can add the user into the admin group.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 26:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's click on next, and we can review everything right now.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 27:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we have the username, the permissions on the group, and we have tags, and tags are everywhere in AWS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 28:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: They're optional, but they allow you to give metadata to many of your resources.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 29:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: For example, I could say that the department of Stephane is engineering.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 30:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: This is not something I'm going to do everywhere on the course, but I want show you once how you can add tags to resources in AWS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 31:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Okay, so now the user is created successfully.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 32:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So now we can email signing instructions or download CSV files and then we can log in with this user.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 33:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But first, let's return to the user list and have a look at everything.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 34:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So here is my user lists, here is me and we also have groups.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 35:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So if I go to the left hand side, user groups, we have admins.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 36:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's observe admins.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 37:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So admins has one user in it named Stephane.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 38:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And if you look at permissions of admins you see that there is administrator access attached to the admin group.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 39:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Now if I go to my user, Stephane in here, we can look at permission policies and see it also has administrative access but this one has not been attached directly.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 40:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It has been attached via the group admin.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 41:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So that means that Stephane inherited any permissions of the group admin it is in.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 42:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And this is why we put users in groups.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 43:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It is a bit more simple to manage permissions this way.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 44:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So now let's go back to our dashboard and we want to sign in with our user, Stephane.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 45:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So first what we can do is look at our AWS accounts and it has an account ID and a Sign-in URL.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 46:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Now you can customize this Sign-in URL very easily by creating what's called an account alias.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 47:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So it could be aws-stephane-v3 and then Create alias so whatever alias until someone hasn't created it, so it has to be unique.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 48:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: For example, v5 is available.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 49:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So now using this alias can simplify my signing URL.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 50:
- Concepts: AI Operational Context
- Services: AWS SAM
- Key Insights: Now to sign in using my Stephane accounts we could use the same browser or we could create a new browser window in private mode.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 51:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And the benefit of doing this is that we can have two windows side by side using AWS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 52:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So if you don't do this, that's fine, but if you log in using the Stephane account on the right hand side window then you will be disconnected on the left hand side, this is the only difference.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 53:
- Concepts: Model Development Lifecycle
- Services: AWS SAM
- Key Insights: So to use two accounts at the same time, the route on the left and my account on the right what I'm doing as a trick is that I'm using a private window on my web browser, and Chrome has this feature, Firefox as this feature, Safari as this feature, and so on.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 54:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So by pasting the signing URL, as you can see, I get the sign in and as an IAM user and to get to this page, we can go back to one.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 55:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And as you can see, when you do a sign in on AWS, you have the root user sign in or the IAM user sign in.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 56:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So to get back to this, we go to IAM user.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 57:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: We enter either the account ID or the account alias that I can copy in here, and then we are taken to this page.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 58:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So the IAM user name is going to be Stephane and the password is going to be whatever you have set from before, then you sign in.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 59:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So now the cool thing is that if I look at the top right hand side, IAM logged in using my IAM user.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 60:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So it says the account ID and the IAM user.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 61:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But if I look on the top right hand side of here it just says the account id which shows me it's the root accounts.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 62:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So here we are, we have the root accounts logged in on the left hand side through a normal window and we have the IAM user logged in on the right hand side through a private window.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 63:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Please make sure not to lose your root account logins and your admin login.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 64:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Otherwise, you will be in deep trouble with your account and you'll have to contact AWS for support.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 65:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And currently I cannot help you with this.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 66:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Now from a course perspective, I recommend you use your IAM user and not your root user but this is just a normal recommendation.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 67:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Sometimes you'll see me using root sometimes I'm using IAM user.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 68:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But when you have to use roots or when you have to use an IAM user, I will let you know in the course.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 69:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Don't worry about that.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 70:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Now for the rest of this section, please keep these two windows open and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

### File: outputs/AWS/AWS AI/3. aws-generative-ai-developer-professional/09_Security, Identity, and Compliance/202_AWS Console Simultaneous Sign-in.txt

Line 1:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let me show you something cool now called the multi-session support.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 2:
- Concepts: AI Operational Context
- Services: AWS SAM
- Key Insights: So you click on it to turn it on, and the idea now is that now I can have in this browser a specific role or account and then I can add a session, and sign into any of your identities using the same browser.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 3:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So here I'm going to click on it and I'm going to add a session.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 4:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And now you can login again using any account ID or route.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And then you go to go.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's go and let me just signing into one of my accounts.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 7:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And after being signed in, as you can see here, I have one specific account ID and here I have a different account ID.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: AI Operational Context
- Services: Amazon EBS, Amazon EC2
- Key Insights: And the cool thing is that, for example, let's say I'm going to the EC2 console here, and then I'm going to go into volumes and then I'm going to, for example, create an EBS volume of one gigabyte just to do something very quickly.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's create this volume.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 10:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Okay, as you can see, my volume has been created, so it's just showing you how to do something very quickly on this window.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: AI Operational Context
- Services: Amazon EBS
- Key Insights: You don't have to know about EBS and so on.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 12:
- Concepts: AI Operational Context
- Services: Amazon EBS, Amazon EC2
- Key Insights: But now if I go into EBS on this other browser, so I go under EC2, and then I go under EBS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 13:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: As you can see here, I don't see any volumes, because I'm using a different account window, and this other one is using the other account window.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 14:
- Concepts: AI Operational Context
- Services: AWS SAM
- Key Insights: So that means I can have two accounts under the same browser.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 15:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: This was not possible before, which is very helpful, and something you should know about if you want to use AWS at scale.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 16:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So a nice welcome edition.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 17:
- Concepts: AI Operational Context
- Services: Amazon EBS
- Key Insights: You don't need to go ahead and create an EBS volume.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 18:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I just want to show you the fact that you could have two different accounts on two different browser windows.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 19:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And for me, that's been using AWS for over 10 years, this is a little revolution.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 20:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: All right, so that's it, you can go back to the course.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 21:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

### File: outputs/AWS/AWS AI/3. aws-generative-ai-developer-professional/09_Security, Identity, and Compliance/203_IAM Policies.txt

Line 1:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Okay, so now let's discuss, IAM policies in depth.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 2:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's imagine we have a group of developers, Alice, Bob and Charles, and we, attach a policy at the group level.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 3:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: In that case, the policy will get applied to every single member of the group so both Alice, Bob, and Charles they will all get access and inherit this policy.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 4:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Now, if you have a second group with operations with a different policy, David and Edward will have a different policy than the group of developers.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 5:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: If Fred is a user, it has the possibility not to belong to a group.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And we have the possibility to create what's called an inline policy which has a policy that's only attached to a user.
- Hidden/Implicit Meaning: Constraint or limitation signal; Governance and safety signal.

Line 7:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So that user could or could not belong to a group you can have inline policies for whatever user you want.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And finally, if Charles and David both belong to the audit team and you attach a policy to the audit team as well, Charles and David will also inherit that policy from the audit team.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 9:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So in this case, Charles has a policy from developers and a policy from audit team.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 10:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And David has a policy from audit team and a policy from the operations team.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 11:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: That should make a lot of sense when we get into the hands-on.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 12:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Now, in terms of the policy structure, you just need to know at a high level how it works, as well as how it is named.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 13:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So this is something you will see quite a lot in AWS, so get familiar with this structure this is adjacent documents.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 14:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And so an IAM policy structure, consists of a version number, so usually it's 2012-10-17, this is the policy language version.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 15:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And ID which is how to identify that policy, this is optional.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 16:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And then more statements, and statements can be one or multiple ones, and a statement has some very important parts.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 17:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So the Sid is a statement ID, which is an identifier for the statement, which is optional as well, so on the right hand side is the number one.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 18:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The effect of the policy itself, so it is whether or not the statement allows or denies access to certain API, so in the right hand side, this says allow, but you can see deny as well.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 19:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The principle consists of which accounts, user or role which, to which this policy will be applied to.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 20:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So in this example, it's applied to the root accounts of your AWS accounts.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 21:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Action is the list of API calls that will be either denied or allowed based on the effect.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 22:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And the resource is a list of resources, to which the actions will be applied to.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 23:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So in this example, it is a bucket, but it could be many different things.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 24:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And finally in, not represented here but there's a condition to which when this statement should be applied or not, and this is not representative here because it is optional.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 25:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So going into the exam, you need to make sure that you really understand the effect, the principle, the action and resource, but don't worry, you will see those along the way in the course so you should be confident with them by the end of the course.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 26:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: That's it for this lecture, I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 27:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

### File: outputs/AWS/AWS AI/3. aws-generative-ai-developer-professional/09_Security, Identity, and Compliance/204_IAM Policies - Hands On.txt

Line 1:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So now let's have a look at IAM policies in depth.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 2:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So first of all, let's go into users.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 3:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And as you can see, the user Stephane is part of the admin group, and therefore, has administrator access permissions to AWS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 4:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: That means that if I use my user Stephane to go into the IAM console, so now I'm using my user, and then I go to the left-hand side and click on users, as you can see, I can see my user Stephane, which is right here.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So my user Stephane has permission to do anything because it's an administrator.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But what I'm going to do is that I'm going to the groups of admins and then I'm going to remove my user Stephane from that group.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 7:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So by removing the user, which I've done right now, then Stephane loses its permissions on the right-hand side.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: How do we make sure of this?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Well, let's refresh this page.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 10:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And as you can see, now I see zero users and I get an access denied and it said that I don't have the permission to do iamListUsers.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And so therefore, because I removed my Stephane user from the admin group, then I've lost permissions to look at users on the right-hand side.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 12:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's try to fix this.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 13:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's go into IAM and we're gonna go under users, find Stephane in here.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 14:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And right now, as you can see, Stephane has zero permission policies but let's add permissions.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 15:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we can add permissions directly or create an inline policy.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 16:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's add permissions, and this is going to be easier.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 17:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And so again, we could add the user back to a group.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 18:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: That's not what we want.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 19:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Or we could attach policies directly to my user.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 20:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And so the policy I'm going to attach is going to be IAMReadOnlyAccess.
- Hidden/Implicit Meaning: Constraint or limitation signal; Governance and safety signal.

Line 21:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So this will allow my user Stephane to read anything on IAM, which is what we want.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 22:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's add this permission and now this policy has been added.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 23:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So back in here, let's refresh this page.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 24:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And as you can see now, I can finally do my API call again and look at the Stephane user in my users category.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 25:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So I can view users, I can view user groups, such as admin but can I create a group?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 26:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Let's try to create the developer group and then create this group.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 27:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And as you can see, I cannot create it because I'm not allowed to actually create a group.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 28:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I'm only given the read-only access on IAM.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 29:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And so therefore, because I have read-only access, I cannot create groups.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 30:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So this shows you that you can only permission users for what they're supposed to do.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 31:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And of course, if I wanted to give access to create groups on the right-hand side, I will need to attach a bigger permission sets, such as the IAM full access.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 32:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So next, let's do something.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 33:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So next, I'm going to go into the left-hand side under user groups, and I'm going to create a group.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 34:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So this group is going to be called developers.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 35:
- Concepts: Managed AI Service Selection
- Services: Amazon Lex
- Key Insights: And then I'm going to add the user Stephane in this group and I'm going to attach whatever policy I can find, for example, AlexaForBusiness but it doesn't really matter.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 36:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Just attach the first policy you can and let's create this group.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 37:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Okay, so this has been added.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 38:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And finally, let's go into the admin group.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 39:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And again, we're going to add users and re-add Stephane into this group.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 40:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So now if we go back to the Stephane user, so let's go into IAM and look at the users and look at Stephane, I'm going to shut down this message on right-hand side.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 41:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So if we look at Stephane as the user, as we can see, we have three permission policies attached to my user.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 42:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: We have the administrator access that has been inherited from the group admin.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 43:
- Concepts: Managed AI Service Selection
- Services: Amazon Lex
- Key Insights: We have this AlexaForBusiness managed policy that has been attached via the group developers.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 44:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And finally, IAMReadOnlyAccess that has been attached directly.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 45:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And so as you can see, I inherited different permissions based on how it's been attached.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 46:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So now let's look at policies in detail.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 47:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So on the left-hand side, let's look at policies.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 48:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And first, let's have a look at this AdministratorAccess policy.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 49:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So if we look at it, it's the permission that gave us administrator access to everything.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 50:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And if you look at the permissions defined in this policy as a summary, as you can see, this allows all the services in AWS.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 51:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And this number can change over time.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 52:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It doesn't matter.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 53:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The course will be up to date.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 54:
- Concepts: Managed AI Service Selection
- Services: Amazon Lex
- Key Insights: So all these services, for example, App Mesh or Alexa for Business or Amplify, they all have full access.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 55:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So how is this permission defined?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 56:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Well, if you click on JSON, this is the JSON form of this policy, and we can see that here we have allow Action, star and resource, star.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 57:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So star in AWS means anything.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 58:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So it means we allow any action on any resource.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 59:
- Concepts: AI Operational Context
- Services: AWS SAM
- Key Insights: And of course, allowing any action on any resource is exactly the same thing as giving administrator access to someone.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 60:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So this is how it's been defined.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 61:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: If we have a look at another policy, for example, the IAMReadOnlyAccess that we saw from before.
- Hidden/Implicit Meaning: Constraint or limitation signal; Governance and safety signal.

Line 62:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So if we look at it, we see that IAM is authorized with Full: List and Limited: Read.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 63:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And if I click on it, you can actually have a look at all the API calls that has been allowed as part of this policy, which is very handy.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 64:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But if we look at how this has been actually defined, let's click on JSON.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 65:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And here we have the JSON document that shows how this has been defined.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 66:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So the effect is allow, and then we list out the API calls that are being allowed.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 67:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we have this one, this one, and then we have Get*.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 68:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So when you have Get*, it says that anything that starts with Get and then has something after is authorized.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 69:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: For example, get users or get groups.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 70:
- Concepts: AI Operational Context
- Services: AWS SAM
- Key Insights: Same for list.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 71:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we have a List*.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 72:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So list users or list groups.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 73:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So by using a star, we encompass and group many API calls together.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 74:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So all this is allowed on Resource*.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 75:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And so therefore, that summarizes what the read-only IAM access policy is made of.
- Hidden/Implicit Meaning: Constraint or limitation signal; Governance and safety signal.

Line 76:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So this is very handy.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 77:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You can also create your own policy.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 78:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's create a policy and we have a visual editor or a JSON editor.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 79:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So if you have JSON, you can just very simply edit this and create your JSON document with this builder, which is very handy.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 80:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Or you can use the visual editor.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 81:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And for example, let's say IAM, we wanna create stuff for IAM.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 82:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And what action do we wanna authorize?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 83:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Well, we want to authorize ListUsers.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 84:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we're going to take this and GetUser.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 85:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So just two API calls.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 86:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And as we can see, we have selected one out of 38 in list and one out of 32 in read.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 87:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And then what do we want to authorize this on?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 88:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So on all resources or only specific resources?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 89:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So this is a very simple one but as you can see, this builder is very handy.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 90:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And when you click on next, you can have a look and say MyIAMPermissions.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 91:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And then we create this policy.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 92:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And if we have a look at the policy we created, we can have a look at the corresponding JSON and see that indeed through the visual editor, we allowed iam:ListUsers and iam:getUser on Resource*.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 93:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And then this policy, we can attach to groups or to users and so on.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 94:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So this is how you manage permissions in AWS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 95:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So now to just wrap up this hands-on, let's go to user groups and we're going to delete the developers group because we don't need it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 96:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And then I'm going to go into my Stephane user and I'm going to just remove this IAMReadOnlyAccess that had attached directly.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 97:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So now Stephane only belongs to the group admin and it has administrator access.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 98:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So of course, if I go back to my IAM console in here and I just look at users, as you can see, yes, everything is showing fine.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 99:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So it is working correctly.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 100:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Okay, so that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 101:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

### File: outputs/AWS/AWS AI/3. aws-generative-ai-developer-professional/09_Security, Identity, and Compliance/205_IAM MFA.txt

Line 1:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Now that we have created users in groups, it is time for us to protect these users in groups from being compromised.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 2:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So for this, we have two defense mechanisms.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 3:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The first one is to define what's called a password policy.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 4:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Why?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: Well, because the stronger the password you use, the more security for your accounts.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 6:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So in AWS you can set up a password policy with different options.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 7:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The first one is you can set a minimum password length and you can require specific character types.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: For example, you may want to have an uppercase letter, lowercase letter, number, non alphanumeric characters, for example, a question mark and so on.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: AI Operational Context
- Services: Amazon RDS
- Key Insights: Then you can allow or not IAM users to change their own passwords, or you can require users to change their password after some time to make your password expired, for example, to say every 90 days, users have to change their passwords.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 10:
- Concepts: AI Operational Context
- Services: Amazon RDS
- Key Insights: Finally, you can also prevent password reuse so that users, when they change their passwords, don't change it to the one that they already have or change it to the one they had before.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So this is great.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 12:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: A password policy really is helpful against brute force attacks on your account.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 13:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But there's a second defense mechanism that you need to know going into the exam.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 14:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And this is the Multi-Factor Authentication or MFA.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 15:
- Concepts: AI Operational Context
- Services: Amazon EBS
- Key Insights: It is possible, you already used it on some websites, but on AWS it's a must and it's very recommended to use it.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 16:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So users have access to your account and they can possibly do a lot of things, especially if they're administrators.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 17:
- Concepts: AI Operational Context
- Services: AWS Config
- Key Insights: They can change configuration, delete resources and other things.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 18:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So you absolutely want to protect at least your root account and hopefully, all your IAM users.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 19:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So how do we protect them on top of the password?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 20:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Well, you use an MFA device.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 21:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So what is MFA?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 22:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: MFA is using the combination of a password that you know and a security device that you own.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 23:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: And these two things together have a much greater security than just a password.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 24:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So for example, let's take Alice.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 25:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Alice knows her password, but she also has an MFA generating token.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 26:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And by using these things together while logging in, she's going to be able to do a successful login on MFA.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 27:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So the benefit of MFA is that even if Alice has lost her password because it's stolen or it's hacked, the account will not be compromised because the hacker will need to also get a hold of the physical device of Alice, that could be her phone, for example, to do a login.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 28:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Obviously that is much less likely.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 29:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So what are the MFA devices option in AWS?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 30:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And you need to know them going into the exam, but don't worry, they're quite simple.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 31:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The first one is a virtual MFA device.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 32:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: This is what we'll be using in the hands-on.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 33:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And so you can use Google Authenticator, which is just working on one phone at a time, or using Authy.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 34:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So for Authy, you have support for multiple tokens on a single device.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 35:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So that means that with the virtual MFA device, you can have your root account, your IAM user, another account, another IAM user.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 36:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It's up to you.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 37:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You can have as many users and accounts as you want on your virtual MFA device, which make it a very easy solution to use.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 38:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: Now we have another thing called a Universal 2nd Factor or U2F Security Key, and that is a physical device.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 39:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: For example, a YubiKey by Yubico and Yubico is a third party to AWS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 40:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: This is not AWS that provides it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 41:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: This is a third party.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 42:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And we use a physical device because maybe it's super easy, you put it on your key fobs and you're good to go.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 43:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: So this YubiKey supports multiple root and IAM users using a single security key.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 44:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So you don't need as many keys as users, otherwise there will be a nightmare.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 45:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Then you have other options.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 46:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You have a hardware key fob MFA device, for example, this one provided by Gemalto, which is also a third party to AWS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 47:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And finally, if you are using the cloud of the government in the US, the AWS GovCloud, then you have a special key fob that looks like this that is provided by SurePassID, which is also a third party.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 48:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So that's it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 49:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: We've seen the theory on how to protect your account, but let's go in the next lecture to implement that.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 50:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

### File: outputs/AWS/AWS AI/3. aws-generative-ai-developer-professional/09_Security, Identity, and Compliance/206_IAM MFA - Hands On.txt

Line 1:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we are going to first, define a password policy.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 2:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: For this, click on account settings on the left-hand side.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 3:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You will find password policy and you can edit it.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 4:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So here, we can use the IAM default password policy, which composes of these kind of requirements, or we can customize the password policy and force a password minimum length.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 5:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: We can also require uppercase letter, lowercase letter, a number, a non-alphanumeric character.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: We can also turn on password expiration to turn on, for example, expire after 90 days, or that a password expiration requires administrative resets, or we can allow the users to change their own password or we can prevent password reuse.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 7:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: So this password process can be edited directly from the IAM console, and that's the first part of security.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 8:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The second part is around setting multi-factor authentication for your root account.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: So if you click on the account name and then click on security credentials, if you are logged in with the root user, you will see my security credentials root user.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 10:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Now, there is a way for you to actually protect your root user, which is the most important account in your AWS account, and you can protect it by using multi-factor authentication.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Now, just so you know, I'm going to do it and demonstrate how it works in front of you, but I've had students who locked themselves out of their accounts because they lost access to their multi-factor authentication device.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 12:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: As such, if you think you are running the risk of losing your iPhone or whatever, do not do this, okay?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 13:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Just keep your phone with you, just watch my video.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 14:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It will be good enough if you want to practice along with me, you can as well.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 15:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And you can also delete the MFA device after activating it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 16:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Okay, but let's go ahead and assign an MFA device.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 17:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So I will call this one my iPhone because this is what I have, but you can name it whatever you want.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 18:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Then you can select the type of MFA device.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 19:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: So it could be an authenticator app, which is something I'm going to use, but also it can be a security key or a hardware TOTP token.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 20:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to use an authenticator app because it will be virtual.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 21:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And now we go into the setup of the app.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 22:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So there's a list of compatible applications right here.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 23:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You can find here for Android and for iOS that we know work well with AWS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 24:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And as such, I'm going to use the Twilio of the Authenticator, which is an app I like.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 25:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So what I have to do then is actually launch the app on my phone and then you click on show QR code.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 26:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So when you should a QR code, you need to scan this QR code directly on your phone.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 27:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So for this, you add an account, you scan the QR code right here, and once scanned, it will add the account and start naming it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 28:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we'll just save this, this looks good.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 29:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And then we get access to MFA code.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 30:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So there is first, the first MFA code, so 301935.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 31:
- Concepts: Inference and Serving
- Services: (none explicit)
- Key Insights: So this is a code generated by my iPhone in real-time.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 32:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And this code is going to change over time.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 33:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And the reason why these two codes are asked by AWS is that it wants to make sure that the MFA device is set up correctly and that the codes are accurate.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 34:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So the second code is 792843.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 35:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And, of course, there will be difference for your device.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 36:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And once these two codes are entered, you click on add MFA.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 37:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And as you can see, we can reach there up to eight MFA devices currently, and you can scroll down and see them right here on the list.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 38:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So the multi-factor authentication, MFA, one, it's called my iPhone that's been created right now.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 39:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So if you wanted to remove it, you can remove it and so on.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 40:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But so how do we use MFA?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 41:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Well now, if I log out of AWS and I log back in, so I'm going to use my router account and my password.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 42:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Now after doing a successful login, I have the MFA code to enter.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 43:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And so I open my app and enter the code that I see and press submit.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 44:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And this way IAM logged in.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 45:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: And this is perfect because well, we had an extra level of security on our account.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 46:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 47:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

### File: outputs/AWS/AWS AI/3. aws-generative-ai-developer-professional/09_Security, Identity, and Compliance/207_IAM Roles.txt

Line 1:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we have to talk about the last component of IAM, which is called IAM Roles.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 2:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So some AWS services that we'll be launching throughout this course will need to perform actions on our behalf, on our account, okay?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 3:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And for this to do these actions, they're just like users, they will need some kind of permissions.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 4:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we need to assign permissions to AWS services and to do so, we're going to create what's called an IAM Role.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So these IAM role will be just like a user, but they are intended to be used not by physical people, but instead they will be used by AWS services.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So what does that mean?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 7:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It's a bit confusing.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: AI Operational Context
- Services: Amazon EC2
- Key Insights: So for example, we are going to create throughout this course, an EC2 Instance.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: AI Operational Context
- Services: Amazon EC2
- Key Insights: An EC2 Instance is just like a virtual server, and we'll see this in the next section.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 10:
- Concepts: AI Operational Context
- Services: Amazon EC2
- Key Insights: But so this EC2 Instance may want to perform some actions on AWS and to do so, we need to give permissions to our EC2 Instance.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: To do so, we're going to create an IAM Role and together they're going to make one entity.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 12:
- Concepts: AI Operational Context
- Services: Amazon EC2
- Key Insights: And together, once the EC2 Instance is trying to access some information from AWS, then it will use the IAM Role.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 13:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And if the permission assigned to the IAM Role is correct, then we're going to get access to the call we're trying to make.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 14:
- Concepts: AI Operational Context
- Services: Amazon EC2
- Key Insights: So some common roles include what I just showed you, EC2 Instance roles, but also other things that perform actions against AWS we'll see in this course.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 15:
- Concepts: AI Operational Context
- Services: AWS CloudFormation, AWS Lambda
- Key Insights: For example, Lambda Function Roles or CloudFormation.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 16:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So I know this is a high level of review.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 17:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: In the next lecture we'll be creating a role, but we won't be using it yet until the next section, but let's go ahead and create a role.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 18:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

### File: outputs/AWS/AWS AI/3. aws-generative-ai-developer-professional/09_Security, Identity, and Compliance/208_IAM Roles - Hands On.txt

Line 1:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's practice using roles.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 2:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So on the left hand side, you click on roles, and you can see that some roles may have already been created for your accounts.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 3:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Could be two, could be more.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 4:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It doesn't matter.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But what we're going to do is that we're going to create our own role in here.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So a role is a way to give AWS entities permissions to do stuff on AWS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 7:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: As you can see, you have different kind of roles.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You can create actually five of them right now.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But the one that you need to know about for this hands-on and for the exam is going to be a role for an AWS service.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 10:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's choose this one, and then we need to choose for which service we want this role to apply to.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: AI Operational Context
- Services: AWS Lambda, Amazon EC2
- Key Insights: So as you can see, if you click on it, you have commonly used services, such as EC2 and Lambda, or a role for pretty much every service on AWS.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 12:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So it's a very common thing to know in AWS, and that's why we learn about it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 13:
- Concepts: AI Operational Context
- Services: Amazon EC2
- Key Insights: So we are going to create a role for an EC2 instance when we get to the EC2 section.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 14:
- Concepts: AI Operational Context
- Services: Amazon EC2
- Key Insights: And so we choose EC2, and the use case is just EC2.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 15:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: We disregard any of these.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 16:
- Concepts: AI Operational Context
- Services: Amazon EC2
- Key Insights: So click on next, and now that we create a role for an EC2 instance, we need to attach a policy.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 17:
- Concepts: AI Operational Context
- Services: Amazon EC2
- Key Insights: So I'm going to attach the IAM read only access to allow my EC2 instance to read whatever is in IAM.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 18:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Let's click on next.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 19:
- Concepts: AI Operational Context
- Services: Amazon EC2
- Key Insights: Next do meet to enter a demo, a role name, so DemoRoleForEC2 is going to be my role name, and then we select the trusted entities.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 20:
- Concepts: AI Operational Context
- Services: Amazon EC2
- Key Insights: So this is saying, hey, this role can be assumed by the EC2 service, and this is what defines it as a role for Amazon EC2.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 21:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: We are verifying the permissions, yes, it has IAM read only access, and we create this role.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 22:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So now my role is created.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 23:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: As you can see, it appears in my role lists.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 24:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And we can verify that the permissions are correct for this role.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 25:
- Concepts: AI Operational Context
- Services: Amazon EC2
- Key Insights: Now, we cannot use this role just yet because we need to get to the EC2 section, but we will use it when we get to it.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 26:
- Concepts: AI Operational Context
- Services: Amazon EC2
- Key Insights: In the meantime, you've seen how to create a role for Amazon EC2 and how to attach correct permissions to it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 27:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 28:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

### File: outputs/AWS/AWS AI/3. aws-generative-ai-developer-professional/09_Security, Identity, and Compliance/209_AWS IAM Identity Center.txt

Line 1:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So now let's talk about the AWS IAM Identity Center.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 2:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And this service is the successor to something that you used to know probably, which is called the AWS Single Sign-On Service.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 3:
- Concepts: AI Operational Context
- Services: AWS SAM
- Key Insights: So the idea is that it's the same service, just been renamed and it gives you one login, therefore it's called single sign-on, for all your AWS accounts in the AWS Organizations, but also your business cloud applications.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 4:
- Concepts: AI Operational Context
- Services: AWS SAM
- Key Insights: So you can connect to Salesforce to Box to Microsoft 365 and so on, or any application you want, as long as you have a SAML2.0 integration.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: AI Operational Context
- Services: Amazon EC2
- Key Insights: And finally, it gives you also a single login into your EC2 Windows Instances.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So one login, access to everything, which is really, really good.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 7:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And the exam most likely will ask you about one login into multiple AWS accounts.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Now, the identity provider, so where your users are stored for this login, can be twofold.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It could be a built-in identity store in the IAM Identity Center, or you can connect to a third-party identity provider.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 10:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It could be Active Directory, AD, or OneLogin or Okta and so on.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So just to make it very visible and visual for you, we have the login flow, such as this.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 12:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You go onto the login page, you enter your username and your password, and then you go directly into the AWS IAM Identity Center.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 13:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And this is actually a screenshot from my own Identity Center page.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 14:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And as you can see from there, I have enabled it for my AWS accounts.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 15:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And so I can click on the account I want and connect directly, for example, in the management console.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 16:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And then if I do this, then I'm taken directly from this into the home page of your console.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 17:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But I'm logged in in that specific console.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 18:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So the idea is that I don't need to know how to log in into that specific console.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 19:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I can just log in into my IAM Identity Center portal.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 20:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And from there I have SSO.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 21:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So no need to enter your password once, it's single sign on, have SSO access to accounts, business applications, and so on.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 22:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So if in the real world you have multiple AWS accounts, I would recommend 100% to use this service.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 23:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Okay, so now let's talk about how this works.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 24:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So the browser interface is going to connect to the login page of your AWS IAM Identity Center.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 25:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And then you have to integrate it, as I said, with different user stores.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 26:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So it could be an Active Directory, it could be on the cloud or on premises.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 27:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And this is where you would use Active Directory to manage your users and your groups.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 28:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Or you can use the IAM Identity Center.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 29:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: This is the built-in identity store.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 30:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And this is where, for example, you would define your users and your groups as you're used to in IAM.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 31:
- Concepts: AI Operational Context
- Services: AWS SAM, Amazon EC2
- Key Insights: Then you integrate Identity Center with SSO for your organization or your Windows EC2 instances, your business cloud applications or your custom SAML2.0-enabled applications.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 32:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Again, the cool thing is that you have one login for all of this, and that simplifies a lot your flow.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 33:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Now, of course, when you log in, you don't have access to everything.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 34:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You define something called permission sets in the Identity Center to define which users have access to what.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 35:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So how does everything relate in IAM Identity Center for permissions and users and groups?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 36:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we have an organization and we set up IAM Identity Center in the management account.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 37:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: We have two OUs, a development and a production OU, each with their own accounts.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 38:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Now we have two developers in our company.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 39:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: We have Bob and Alice.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 40:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So first of all, we're going to do, just like we do in IAM, we're going to create a group of developers for Bob and Alice.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 41:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Now we want to make sure that Bob and Alice both have access to full access of the OU for development.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 42:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we're going to create what's called the permission sets, and we're going to allow admin access on it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 43:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And then you have to assign this permission set directly into specific accounts, for example, your development accounts, and then you assign this permission set either to your users or to a group of users, for example, your developers.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 44:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So this would allow Bob and Alice to assume a role with full access on the development account B right now.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 45:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You can also have a permission set, for example, for read-only access and assign this permission set directly into your production account, so account A and account B.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 46:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And then you assign this permission set again to Bob and Alice, which would allow them to have a read-only access to these accounts.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 47:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So now let's talk about the fine-grained permissions and assignments.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 48:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And the first one is multi-account permissions.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 49:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So, of course, using the service, you can manage access across multiple accounts in your organization.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 50:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And using permission sets, you define one or more IAM policies that you assign to users and to groups to define what they can access in AWS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 51:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So here is the IAM Identity Center, and it's integrated with your organization and you define a permission set for database admins.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 52:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So it's a collection of IAM policies.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 53:
- Concepts: AI Operational Context
- Services: Amazon Aurora, Amazon RDS
- Key Insights: And you say, for example, that you have access to RDS and Aurora in your dev account, as well as RDS and Aurora in the prod account.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 54:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And this will automatically create a corresponding IAM role for your users.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 55:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And therefore, when you have your database admins, it can be a group, for example, and your users are in this group, you will assign it the permission sets of database admins.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 56:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And whenever users log in through the IAM Identity Center and access the console of your dev accounts or your prod accounts, they will be automatically assuming an IAM role in that specific account that will give them the permissions they're supposed to get, which is pretty good.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 57:
- Concepts: AI Operational Context
- Services: AWS SAM
- Key Insights: So it works the same way.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 58:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So you have application assignments and you can define which users or groups can access which applications.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 59:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And it gives them the required URLs, the certificates and metadata.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 60:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So all of this is supported out of the box.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 61:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And something that enables is called attribute-based access control.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 62:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So the idea is that you're going to have fine-grained permissions based on the users' attributes stored in the IAM Identity Center store.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 63:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So that means that you can have tags and so on.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 64:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And using this, you can, for example, assign a user to a cost center or give them a title, so like junior, senior or a locale, whatever, so they only have access to a specific region.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 65:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And the use case of this is that you actually define the IAM permission sets once and they leverage these attributes, and you only modify the access to AWS of your users or your groups by just changing these underlying attributes.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 66:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So this is a use case that is advanced, but that is enabled by using the AWS IAM Identity Center.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 67:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 68:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

### File: outputs/AWS/AWS AI/3. aws-generative-ai-developer-professional/09_Security, Identity, and Compliance/210_AWS Control Tower.txt

Line 1:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So now let's talk about the AWS Control Tower service.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 2:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So it's a very easy way for you to set up and govern a secure and compliant multi-account AWS environment based on best practices.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 3:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So actually to create these accounts, well, the Control Tower service is going to use the AWS Organization service and then the accounts are automatically being created and we'll see in the next slide how to make them secure and compliant.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 4:
- Concepts: AI Operational Context
- Services: AWS Config
- Key Insights: And so the benefits of using a Control Tower is that you automate the set up of your environments in a few clicks and you have all your configs you want in advance.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: Then you can automate ongoing policy management using guardrails.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 6:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I will show you this in the next slide.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 7:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: You can detect policy violations and remediate them automatically, and you can monitor the overall compliance of all your accounts through an interactive dashboard.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 8:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So it's yet another service on top of organizations.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: So what are these guardrails?
- Hidden/Implicit Meaning: Governance and safety signal.

Line 10:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: So say you set up multiple accounts on AWS, but you want to restrict all of them at once for certain kind of things, or you want to monitor the compliance for certain kind of things.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: So using these guardrails, you're going to get ongoing governance for all your accounts within your Control Tower environments.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 12:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: So you have two kinds of guardrails.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 13:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: The first one is called a preventive guardrail.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 14:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And so it's to prevent accounts from doing something and therefore they're restrictive.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 15:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And so we're going to use SCP, so Service Control Policies, from the AWS Organization service to apply them to all our accounts.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 16:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: For example, we could create a preventive guardrail to restrict regions across all your accounts to say, hey, you should only operate in the us-east-1 in the eu-west-2 regions.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal; Governance and safety signal.

Line 17:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And so therefore behind the scenes, Control Tower is going to tell organizations to use SCPs.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 18:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: The second kind of guardrail we have is a detective guardrail.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 19:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: So this time, we want to just detect non-compliance.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 20:
- Concepts: AI Governance and Safety
- Services: AWS Config
- Key Insights: And because I talk to you about compliance, of course, it's using the AWS Config service.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 21:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: For example, we want to identify untagged resources in our accounts.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 22:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: So we have Control Tower and we set up a detective guardrail.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 23:
- Concepts: AI Operational Context
- Services: AWS Config
- Key Insights: And so it's going to use Config and Config is going to be deployed on all your member accounts and is going through the rules, monitor any untagged resources.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 24:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: In case anything is non-compliant, it's going to trigger an SNS topic.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 25:
- Concepts: AI Operational Context
- Services: AWS Lambda
- Key Insights: So we could be notified as an administrator or the SNS topic can also invoke a Lambda function.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 26:
- Concepts: AI Operational Context
- Services: AWS Lambda
- Key Insights: And the Lambda function can automatically remediate the action and add tags to your untagged resources.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 27:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: So we've seen Control Tower, we've seen how it can generate new accounts and how we can have guardrails, either preventive or detective, to control the security and the compliance of our environments.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 28:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So I hope you like this lecture and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

### File: outputs/AWS/AWS AI/3. aws-generative-ai-developer-professional/09_Security, Identity, and Compliance/211_Encryption 101.txt

Line 1:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Okay, so in this lecture, if you're not too familiar with how encryption works, I want to give you a little bit of details on how it works at a high level.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 2:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So, first let's talk about encryption in flight, which is going to be referred as TLS or SSL.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 3:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: TLS is the newest version of SSL.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 4:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So what we have is that the data is going to be encrypted before sending the data.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: And then it will be decrypted after receiving it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So this is for communication between a client and a server over a network.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 7:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And so what's going to be happening is that for encrypting the data TLS certificates are going to be used.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: AI Operational Context
- Services: Amazon EBS
- Key Insights: And this is what you see when you go onto websites and it says HTTPS, that means that the connection between you and the server is going to be encrypted using TLS certificates.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Why do we want encryption in flight?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 10:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Well, because we're sending data over a network and sometimes a public network and the data goes around many different servers.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: We don't want to be having a man in the middle attacks where a middle server receives the data and just observes the packages we're sending to the server.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 12:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: And so what we want to have HTTPS or TLS, or SSL, this is when we know that only the target server can decrypt the encrypted data we're sending.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 13:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's take an example.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 14:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: We have a client and a server and we want to be able to securely login into the server by providing our username and password.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 15:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But we only want the target server to be able to receive it.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 16:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we're going to have the username and password and then we're going to apply TLS encryption on the client side automatically.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 17:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The data is going to be encrypted and sent over the network.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 18:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So as you can see, no between server can decrypt the data and only the target server can use the TLS decryption mechanism to decrypt that package and then see that we've sent the username and password.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 19:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And therefore say that we're securely logged in.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 20:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So that's for encryption in flight.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 21:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The next one is around the server side encryption at rest.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 22:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The idea is that the data will be encrypted after being received by the server so that it's stored securely.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 23:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: And then it will be decrypted before being sent back to our clients.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 24:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It will be stored in an encrypted form thanks to a key, and that key is usually a data key.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 25:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: And so the whole idea of managing these keys for encryption and decryption is that the management must happen somewhere and the server must have access to these keys.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 26:
- Concepts: AI Operational Context
- Services: Amazon S3
- Key Insights: So let's take a service, for example, Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 27:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: We're sending an object over HTTP, maybe even HTTPS for inflight encryption.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 28:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: And so the service receives our object, but it is decrypted.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 29:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So the service can use a data key, and using the data key and the decrypted objects, we can have encryption of that object at rest.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 30:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: And then when it comes to sending back that object to the clients, the encrypted objects and the data key will be used together to decrypt.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 31:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: We'll have a decrypted form of object, and then that object will be sent over HTTPS back to the clients.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 32:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So we received the decrypted object as is.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 33:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: As we can see in this case, there is a server side encryption because all the encryption and decryption happens on the server.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 34:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So finally let's talk about client-side encryption.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 35:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: And the idea is that this time the data is encrypted and decrypted at the client side.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 36:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: And the server should never be able to decrypt the data because we don't trust a server in that case.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 37:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So for this, we could leverage encryption for this mechanism.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 38:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's have an example.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 39:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The client has an object and the data key this time is client side.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 40:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And after encryption, we get an encrypted object.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 41:
- Concepts: AI Operational Context
- Services: Amazon EBS, Amazon S3
- Key Insights: That encrypted object can be sent then securely to any storage service available, an FTP server, Amazon S3, EBS volumes, et cetera.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 42:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And they will be stored in encrypted form.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 43:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So the entire server can not even decrypt the data contents.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 44:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: When we retrieve the contents, we retrieve the encrypted object directly.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 45:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: And if we still have access to the data key client-site, then we're able to perform the decryption mechanism and get the decrypted objects back.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 46:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So that's it for the three encryption mechanisms we can see in the Cloud.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 47:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 48:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

### File: outputs/AWS/AWS AI/3. aws-generative-ai-developer-professional/09_Security, Identity, and Compliance/212_AWS KMS.txt

Line 1:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So now let's talk about AWS KMS, which is a key management service of AWS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 2:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we've been using it a lot without knowing, but anytime you hear encryption when you have an AWS service, it's most likely going to be KMS encryption.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 3:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The aim is that with this KMS service, AWS is going to manage the encryption keys for us.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 4:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And that's great, because that means that we have less things to do.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So KMS is, of course, fully integrated with IAM for authorization, and it gives us very easy ways to control access to our data if it's encrypted with KMS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: AI Operational Context
- Services: AWS CloudTrail
- Key Insights: The power of using AWS KMS is that you're able to audit every single API call made to use your keys through CloudTrail, which is something the exam may test you on.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 7:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So on top of it, KMS can be used seamlessly into most AWS services.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: AI Operational Context
- Services: Amazon EBS
- Key Insights: So for example, if you wanted to encrypt the data at rest in an EBS volume, just enable the KMS integration.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: AI Operational Context
- Services: AWS SAM, Amazon RDS, Amazon S3
- Key Insights: Same for S3, same for RDS, same for SSM, and same for pretty much all the services that require encryption.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 10:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The idea is that with KMS, you can also use it yourself.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: And if you have secrets data, you never ever store them in plain text, that means just as is.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 12:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Especially in your code.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 13:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So if you want to use KMS, you can also use KMS through API calls.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 14:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You can use the AWS CLI or the SDK.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 15:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: And that means that you can encrypt whatever is a secret for you with a KMS key.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 16:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: And then these encrypted secrets can be, for example, stored in your code or in environment variables.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 17:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: That is a much better pattern.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 18:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So now let's talk about the different types of KMS keys available to you.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 19:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So now it's called a KMS key.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 20:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: By the way, it used to be called the KMS customer master key, but it was confusing because there's also the customer managed keys as we'll see in a second.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 21:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So now, we just talk about KMS keys.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 22:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we have two types of KMS keys.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 23:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: We have the symmetric KMS keys, and that means there's only one single encrypted key that is used to encrypt and decrypt data.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 24:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And so any service of AWS that is integrated with KMS will use symmetric keys.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 25:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The idea is that when we create or use a KMS symmetric key, then we never get access to the key itself, okay?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 26:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: All we do is that we use the KMS API calls to leverage and use that key.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 27:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The second kind of key available on KMS are called asymmetric keys.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 28:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: That means that you have two keys.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 29:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: You have a public key that's used to encrypt data, and a private key used to decrypt data.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 30:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So this is used when you have encrypt/decrypt, or sign/verify type of operations.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 31:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And in that case, you can download the public key out of KMS, but you can use access the private key.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 32:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You can only use API calls against to access the private key.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 33:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So the use cases for an asymmetric type of key is when you want the encryption to be done outside of your AWS cloud by users who cannot or don't have access to the KMS API key.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 34:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: In which case they will use the public key to encrypt the data.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 35:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Send it over to you.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 36:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: And you within your account, you would use the private key of AWS to decrypt that data.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 37:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So within the world of KMS keys, you have different types of KMS keys.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 38:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The first one are AWS owned keys.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 39:
- Concepts: AI Operational Context
- Services: Amazon DynamoDB, Amazon S3
- Key Insights: They're free, and this is the kind of key you would use when you use SSE-S3 type of encryption, or SSC DynamoDB, where you have the option, for example, that you choose a key owned by DynamoDB.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 40:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So these are not really KMS because you don't really see them, but they're types of encryption keys within AWS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 41:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Then you have the AWS managed keys, and they're free, and you will recognize them because they start with AWS slash and then the service name.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 42:
- Concepts: AI Operational Context
- Services: Amazon DynamoDB, Amazon EBS, Amazon RDS
- Key Insights: For example, AWS/RDS or AWS/EBS, or in this example, AWS/DynamoDB.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 43:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: They're free and you can just use them as you please, but only from within the service that it's assigned to.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 44:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Then you have your own customer managed keys and their custom keys, and they cost you $1 per month.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 45:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And if you want to import them as well, you can import them, and they cost you $1 per month.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 46:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: KMS also has a pricing where you're going to pay for each API call made to the KMS service, which is about 3 cents per 10,000 API calls.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 47:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You also have automatic key rotation.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 48:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So if it's an AWS managed KMS key, then it's automatic every one year.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 49:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And if it's a customer managed key, you can enable automatic rotation and you set the period, and you can also have on-demand rotation of your key.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 50:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And if it's imported KMS key, then you can only manually rotate it.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 51:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And for this, you need to leverage an alias.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 52:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So KMS keys are scoped per region.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 53:
- Concepts: AI Operational Context
- Services: Amazon EBS
- Key Insights: That means that if you have an EBS volume encrypted with KMS key in a region, for example, EUS2, then if you want to copy that to a different region, we have to do several steps.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 54:
- Concepts: AI Operational Context
- Services: Amazon EBS
- Key Insights: First of all, we have to take a snapshot of this EBS volume.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 55:
- Concepts: AI Operational Context
- Services: AWS SAM
- Key Insights: And if we take a snapshot from an encrypted snapshot, then this snapshot itself will also be encrypted with the same KMS key.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 56:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Then to copy the snapshot to another region, we need to re-encrypt the snapshot using a different KMS key.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 57:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And this is something AWS will do for you.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 58:
- Concepts: AI Operational Context
- Services: AWS SAM
- Key Insights: But the same KMS key cannot live in two regions.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 59:
- Concepts: AI Operational Context
- Services: Amazon EBS
- Key Insights: So now we have an EBS snapshot, it's encrypted with KMS with a different key, and it lives in another region.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 60:
- Concepts: AI Operational Context
- Services: Amazon EBS
- Key Insights: Now, we restore the snapshot into its own EBS volume with KMS, and it's KMS key B into the region AP southeast two.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 61:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Now, the other thing we need to know about is KMS key policies.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 62:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So this is to control access to your KMS keys.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 63:
- Concepts: AI Operational Context
- Services: Amazon S3
- Key Insights: It's similar to an S3 bucket policy.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 64:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: With a difference that if you don't have the KMS key policy on your KMS key, then no one can access it.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 65:
- Concepts: AI Operational Context
- Services: Amazon RDS
- Key Insights: So in that regards, we have two types of KMS key policies.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 66:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: We have the default one, and it's created if you don't provide a specific custom KMS key policy.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 67:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And the idea is that the default allows everyone in your account to access this key.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 68:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: That means that if you have an IAM policy allowing a user or role to access this key policy, you're good.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 69:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But if you want to have more specific controls over it, you could use a KMS key policy that is custom.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 70:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: In which you define the users, the roles that can access your KMS key.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 71:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And you define who can administer the key.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 72:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And this is especially helpful if you want to do cross account access for your KMS key, because we can authorize another account to use our KMS key.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 73:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So when do we use this?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 74:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Well, for example, if we wanted to copy an encrypted snapshots across accounts.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 75:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we create a snapshot encrypted with our own KMS key, and it's a customer managed key.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 76:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It must be that because we need to attach a custom key policy.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Governance and safety signal.

Line 77:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And then we attach a KMS key policy to authorize for cross account access.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 78:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It looks like this.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 79:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Then we share the encrypted snapshot with the target account.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 80:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And then in the target account, we create a copy of the snapshot and we encrypt it with a different customer managed key in that target account.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 81:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And then we can create a volume from the snapshot in the target account, and we're done.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 82:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So that's a lot of information by KMS, but let's go into hands-on to hopefully learn a bit more about it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

### File: outputs/AWS/AWS AI/3. aws-generative-ai-developer-professional/09_Security, Identity, and Compliance/213_AWS KMS - Hands On.txt

Line 1:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's have a look at the KMS service.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 2:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And first on the left hand side, I wanna look at the AWS managed keys.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 3:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You can see if I've been using KMS encryption throughout this course, then these keys will appear right here.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 4:
- Concepts: AI Operational Context
- Services: Amazon EBS
- Key Insights: So we can look for example at the AWS EBS, and this is an Else managed key because it belongs to the EBS service.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we can have a look here, how it's being used.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: Managed AI Service Selection
- Services: Amazon Lex
- Key Insights: So there is a key policy, and this complex policy defines what can access this key.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 7:
- Concepts: AI Operational Context
- Services: Amazon EBS
- Key Insights: And of course, because this is an EBS AWS key, then you will look at all the actions, so it can come from anywhere, do some kind of actions.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: AI Operational Context
- Services: Amazon EBS, Amazon EC2
- Key Insights: But the condition is that the caller accounts has to be mine and the Via Service has to be the EC2 service, which is a service above the EBS service, okay?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: If I looked for example, at another AWS managed key, for example, the SQS one, and look at the key policy, here the Via Service as a condition to my KMS key policy is the SQS service, therefore allowing only access from SQS to this key.
- Hidden/Implicit Meaning: Constraint or limitation signal; Governance and safety signal.

Line 10:
- Concepts: AI Operational Context
- Services: AWS Config, Amazon ECR
- Key Insights: We can also look at the cryptographic configuration, which show that this key is symmetric of origin KMS and it's used to encrypt and decrypt data.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 12:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So that's for the KMS managed key by AWS, but then we have other kinds.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 13:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: We have the customer managed keys, as well as the custom key store.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 14:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So the custom key store is when we wanna use CloudHSM, but this is out of scope for this exam.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 15:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we don't go over this, we're just gonna go over the customer managed key.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 16:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So this is when we want to create our own keys within KMS and not use the ones managed by AWS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 17:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's create a key, but if we do so, remember this is going to cost you $1 per month.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 18:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So if you don't want to pay anything, then do not do this.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 19:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So here for the key type, have multiple options, have the symmetric or asymmetric type of key.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 20:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So if I use asymmetric, this could be used for encrypt and decrypt or sign and verify type of operations.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 21:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: But this is out of scope for this lecture, I'm going use the symmetric type of KMS key, and we'll use the encrypt and decrypt option.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 22:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Okay, this is the most basic one I want to show you For advanced options, the key origin is going to be KMS because we want KMS to create this key for us.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 23:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: If we wanted to import a key, this would be the external type of key origin or custom key store if we wanted to have CloudHSM, but again, this is out of scope.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 24:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we'll use KMS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 25:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And here for regionality we have single region key and multi region key.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 26:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And we're just going to consider single region key right now because this is the most, the oldest type of option and the most common for KMS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 27:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we'll use single region key, click on Next.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 28:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Next we have a key alias, so I'll just have it as tutorial.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 29:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Click on Next.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 30:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And here we can start define key administrators.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 31:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So if I don't define one, then we're going to use the default KMS key policy, which is what I want.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 32:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But if you wanted to be very specific about who can use this key and who could administer it, this is where it would happen.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 33:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So right now I'm not going to take anything, and click on Next.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 34:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Then you can say, who can use this key?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 35:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So again, this is for your KMS key policy.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 36:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: To be more specific, right now I want to allow everyone to use it if they have the right IAM permissions.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 37:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: But if you wanted to also have some extra security, you could say, hey, only Stefan can use this key and this would create a custom KMS key policy.
- Hidden/Implicit Meaning: Constraint or limitation signal; Governance and safety signal.

Line 38:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But in this instance, I don't want this.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 39:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And as you can see at the bottom, I can choose other AWS accounts to access my key.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 40:
- Concepts: AI Operational Context
- Services: Amazon EBS
- Key Insights: So this is if you had for example, the use case of sharing an encrypted snapshot, an EBS snapshot for example, you would add another account to allow access to your key.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 41:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we summarize everything, so we have a symmetric key, and then this is the key policy and this is what I call the default key policy.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 42:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: This is just to enable IAM user permission, so it allows anything to do any resource on KMS as long as they will have, of course, IAM permissions to do so.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 43:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's finish this.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 44:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And now my key has been created and we can click on View Key.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 45:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So now that my key is created, I can have a look at the key policy.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 46:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And so the key policy is just like this, it's an IAM policy for your key.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 47:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But you can switch to the default view and you can see in a better summary, like who are the key administrators, is it allowed for key deletion?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 48:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Who are the key users?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 49:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And can other accounts access it?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 50:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So I won't touch this.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 51:
- Concepts: AI Operational Context
- Services: AWS Config
- Key Insights: Then you can have a look at the cryptographic configuration.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 52:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I won't touch this.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 53:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Tags not needed.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 54:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So for key rotation, we can enable automatic key rotation by editing here and saying yes, it's enabled, and we can set up the rotation period from 90 days to many more days, to 2,560 days.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 55:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So here this is one year, but you have the option to customize it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 56:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: If you enable this, then you know the next rotation dates.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 57:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And also for example, you can initiate on demand key rotation by just clicking on this button.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 58:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Whenever you rotate your key automatically or on demand, it's going to appear in the key rotation history.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 59:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So these options are available because we have created their key directly from KMS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 60:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And finally, see, finally what is the alias for my key?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 61:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It is named tutorial, so I can refer to it with an alias ARN, which will be a little bit simpler for us.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 62:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Finally, for key actions, you can disable it or schedule key deletion.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 63:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So we have our key, it's great, but now let's go use the CLI to encrypt and decrypt some data.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 64:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So under KMS I have kms-demo-cli.sh, which is going to show us how to use the encrypt and decrypt call of KMS with an example.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 65:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So, first we have got to create a file, and I'm going to call it ExampleSecretFile.txt.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 66:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: And with it I'm going to say there is a super, secret, password, okay?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 67:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So this is whatever you want in this text file.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 68:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: For me I just entered a password called SuperSecretPassword, and we're going to encrypt it and then decrypt it using KMS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 69:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So the first thing that you do for KMS encryption is use the encrypt command.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 70:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we have to specify a key ID, for me it's alias/tutorial, so this corresponds to the key you have created in My Console.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 71:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And you could use the alias, you could use this key ID right here, or you could use the full ARN, it doesn't really matter, just use whatever you want.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 72:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And then you need to pass in plain text the address of your file.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 73:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So for me it's ExampleSecretFile.txt.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 74:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The output of the query, so you're querying for a Cipher text blog, which represents the encrypted contents, and you want the text as is.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 75:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And finally the region your key is in, so for me, mine is manage region eu-west-2.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 76:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: This is going to give us a base 64 file containing the encrypted content.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 77:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's copy this command right here and paste it, run it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 78:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: And now I have a file called ExampleSecretFileEncrypted.base64.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 79:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And this represents my encrypted file, okay, in base 64, so just with letters and numbers that we can recognize.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 80:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Now though, we're going to do a base 64 decode to get the binary encrypted value.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 81:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So if you're on Windows, the command is different.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 82:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So for Linux, I'm just going to run this one, but for Windows you can run the other one.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 83:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: And so the idea is that you're going to create a file called ExampleSecretFileEncrypted without a base 64.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 84:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let me copy this and paste it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 85:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: And now I have a new file called ExampleSecretFileEncrypted.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 86:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And if I try to open it with my text editor, it's not going to work because it say it uses either binary or unsupported text encoding.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 87:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So this is indeed a binary file.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 88:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So this is the kind of secret file that you would share with someone.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 89:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: And so now I want to go and decrypt it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 90:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So this is completely gibberish and we cannot get any information of it.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 91:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Even this one, we cannot get any information.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 92:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: How do we know it's super secret password?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 93:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So this is an encrypted file, but now we want to take this encrypted binary file, and decrypt it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 94:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So for this we're going to run an KMS decrypt command.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 95:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So this time we pass in the file that was encrypted.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 96:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So this is where we pass in the file in here.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 97:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: Then we query for the plain text value, so the decrypted value, and we write this to another file that is going to be base 64 encrypted, and we specify the region.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 98:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's go ahead.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 99:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: KMS knows automatically which key to use for the description because it is included in the blob of encrypted value.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 100:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let me enter this, and so this has succeeded.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 101:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So now if I go to my Example File decrypted base 64, it is here, it's a much shorter thing, and now we're going to base 64 decode this to get my text value.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 102:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we'll have a different command again, if you're on Windows or if you're on Mac, so I'm on Mac, so I'm going to use this one.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 103:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So I'm copying this command, pasting it, and now we have done a base 64 decoding of our file.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 104:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So if we go back to Example File decrypted.txt, we find back our super secret password.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 105:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So we have shown the encryption and it's reverse operation, the decryption.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 106:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: Obviously these are low level commands, the SDK will abstract some of that for us, but this shows you the full example of how you can use the encrypt and decrypt command of KMS with your own customer master key.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 107:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So that's it, super simple.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 108:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I hope that was helpful, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

### File: outputs/AWS/AWS AI/3. aws-generative-ai-developer-professional/09_Security, Identity, and Compliance/214_Amazon Macie.txt

Line 1:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Now let's talk about Macie.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 2:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: Macie is a fully managed data security and data privacy service that will use machine learning and pattern matching to discover and protect your sensitive data in AWS.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 3:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: More specifically, it will alert you around sensitive data such as personally identifiable information, which is named PII.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 4:
- Concepts: AI Operational Context
- Services: Amazon S3
- Key Insights: So very simply, your PII data will be in your S3 buckets and it will be analyzed by Macie which will discover what data can be classified as PII.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: AI Operational Context
- Services: Amazon EventBridge
- Key Insights: And then will notify you through EventBridge of the discoveries.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: AI Operational Context
- Services: AWS Lambda
- Key Insights: Then you can have integrations into an SNS topic, Lambda functions and so on.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 7:
- Concepts: AI Operational Context
- Services: Amazon S3
- Key Insights: So Macie in this instance will be used to find the sensitive data in your S3 buckets and that's the only thing it will do.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 8:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It's just one click to enable it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: AI Operational Context
- Services: Amazon S3
- Key Insights: You just specify the S3 buckets you want to have and that will be it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 10:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture, very, very short, but that's enough on Macie.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

### File: outputs/AWS/AWS AI/3. aws-generative-ai-developer-professional/09_Security, Identity, and Compliance/215_AWS Secrets Manager.txt

Line 1:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So now let's talk about a very simple service called the AWS Secrets Manager.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 2:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So it's a newer service and it's meant for storing secrets and it's going to be different from the SSM parameter store, because on Secrets Manager, you have the capability to force the rotation of secrets every X number of days, and therefore you have a better secret management schedule.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 3:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: On top of it, from within Secrets Manager, you can force and automate the generation of secrets on the rotation.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 4:
- Concepts: AI Operational Context
- Services: AWS Lambda, Amazon ECR
- Key Insights: And for this, you have to define a Lambda function that will generate that new secrets.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: Moreover, Secrets Manager is really well integrated with different services on AWS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: AI Operational Context
- Services: Amazon Aurora, Amazon RDS
- Key Insights: And I just showed you Amazon RDS for example, for MySQL, PostgreSQL, SQL or Aurora.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 7:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: But there are other services as well with AWS, other databases, that are integrated with Secrets Manager out of the box.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: That means that the username and the password to get into your database is stored directly in Secrets Manager and it can be rotated and so on.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: Now, Secrets can be encrypted using the KMS service.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 10:
- Concepts: AI Operational Context
- Services: Amazon Aurora, Amazon ECR, Amazon RDS
- Key Insights: And so anytime in the exam you see Secrets, or integration for RDS, or for Aurora of Secrets, really think Secrets Manager.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: Model Development Lifecycle
- Services: Amazon ECR
- Key Insights: There's one more feature we need to know about which is the concept of multi-region Secrets.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 12:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So the idea is that you can replicate your Secrets across multiple AWS regions and Secrets Manager Service will keep readers in sync with the primary Secrets.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 13:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So here have two regions.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 14:
- Concepts: AI Operational Context
- Services: AWS SAM, Amazon ECR
- Key Insights: We create a Secret in the primary one and it gets replicated as a same Secret into a secondary region.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 15:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Now, why would we do this?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 16:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Well, multiple things.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 17:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: Number one, in case there is a problem with US East 1, you're able, for example, to promote a replica Secret as a standalone secret.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 18:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: And then thanks to the fact that that Secret is replicated across regions, then you can build multiple regions apps.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 19:
- Concepts: AI Operational Context
- Services: AWS SAM, Amazon ECR, Amazon RDS
- Key Insights: You can also have disaster recovery strategies, or if you have an RDS database that is also being replicated from one region to the next, then you can use the same Secret to access, the same, the RDS database, the corresponding one, in the corresponding region.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 20:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 21:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

### File: outputs/AWS/AWS AI/3. aws-generative-ai-developer-professional/09_Security, Identity, and Compliance/216_AWS Secrets Manager - Hands On.txt

Line 1:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So, now let's talk about the Secrets Manager service.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 2:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So, as we can see, it's to easily rotate, manage, and retrieve secrets throughout their life cycle.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 3:
- Concepts: AI Operational Context
- Services: Amazon Aurora, Amazon ECR, Amazon RDS
- Key Insights: So, it's similar to the SSM parameter store because you can store secret things, but it's going to be different from it because while you have rotation, management, and tight integrations with databases such as MySQL, PostgreSQL, Amazon Aurora, and RDS and so on.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 4:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So, the pricing is you have a 30-day free trial available, and then you're going to pay $0.40 per secret, per month, and then $0.05 per 10,000 API calls.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So, if you again expect to remain within the free tier, just create a secret and then delete it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So, let's go ahead and store a new secret, and we can choose a secret type.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 7:
- Concepts: AI Operational Context
- Services: Amazon DocumentDB, Amazon ECR, Amazon RDS, Amazon Redshift
- Key Insights: Now, over time, it's very possible that this gets increased in terms of the capability of integrations, but we have Amazon RDS, we have Amazon DocumentDB, Amazon Redshift, other databases, or other type of secrets.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: Generative AI Architecture
- Services: Amazon RDS
- Key Insights: So, if you are on Amazon RDS, as you can see, it prompts you for username and password and so on.
- Hidden/Implicit Meaning: Generative architecture signal.

Line 9:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: And if you go for example, for other type of secrets, here we can store anything we want.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 10:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So for example, I can say MySecretKey, and then MyVerySecretValue, and this would be a secret stored in here.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: And another one could be, for example, API_KEY, and then would be as well like a secret API key, so you would enter some text in here.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 12:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So you can enter it through this UI, or you can go in plain text and you have adjacent document that you can edit it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 13:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: To edit the key values, this is just a different way of specifying your secrets.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 14:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So, this will be kept secret so that only person with the correct IAM permissions can access these secrets.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 15:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Then we specify an encryption key.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 16:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So, we have the default one, but you can use your own KMS key if you wanted to.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 17:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I click on next.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 18:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: Then we need to name our secret.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 19:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So prod/my-secret for example, and a description but I don't need it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 20:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: Resource permission, so do we want to have a policy that restricts who can access the secret?
- Hidden/Implicit Meaning: Governance and safety signal.

Line 21:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And it could be across AWS accounts thanks to this resource policy right here, and you would've have it adjacent form.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 22:
- Concepts: AI Operational Context
- Services: Amazon S3
- Key Insights: So, it's similar to an S3 bucket policy.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 23:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: And then you have the option to replicate the secret across regions.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 24:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And this is good if you want to have multi-region setups which as multi-region apps or multi-region databases.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 25:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And here we can say, "Okay, I want to replicate this into us-west-2 using this encryption key right here and also into AP Southeast-1 and so on.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 26:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So, I'm not gonna do this, but this would be how you would replicate your secrets.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 27:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So, then I click on Next.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 28:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: Then you want to automatically rotate our secrets, yes or no.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 29:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And when do we want to rotate it, and if we do enable rotation, then we need to specify a rotation function.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 30:
- Concepts: AI Operational Context
- Services: AWS Lambda
- Key Insights: This is a Lambda function that will be performing this rotation.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 31:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So for now, disable it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 32:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And then we have a look.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 33:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So, we have a secret right here.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 34:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It's replicated into us-west-2.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 35:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: And here's some code if we wanted to invoke and get that secrets from our clients.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 36:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So, I'm not gonna go ahead with creating this, but as you can see, this would store a secret and then use this code to retrieve in your code the correct secrets.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 37:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So, we'll cancel this.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 38:
- Concepts: AI Operational Context
- Services: Amazon ECR, Amazon RDS
- Key Insights: Another kind of secret you can have is a credential for an Amazon RDS database.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 39:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So, you would create a username and a password and then you would specify a database.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 40:
- Concepts: AI Operational Context
- Services: Amazon ECR, Amazon RDS
- Key Insights: And the cool thing about it is that thanks to the integration between RDS and Secrets Manager, then this username and this password would be used to be able to login into the database.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 41:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And if you wanted to rotate it, then automatically the database also gets updated.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 42:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So, here you would enter it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 43:
- Concepts: AI Operational Context
- Services: AWS Config, Amazon ECR
- Key Insights: Then you would configure the secrets as well if you wanted to have for example some kind of multi-region replication.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 44:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Rotation as well if you wanted to review it and you're done.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 45:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 46:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

### File: outputs/AWS/AWS AI/3. aws-generative-ai-developer-professional/09_Security, Identity, and Compliance/217_Amazon Cognito.txt

Line 1:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So now let's talk about Amazon Cognito.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 2:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And the goal of it is to give user an identity to interact with a web and mobile application.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 3:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So these users usually sit outside of our AWS account, hence the name Cognito, because it gives an identity to users that we don't know about yet.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 4:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we have two kind of sub-services within Cognito.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: AI Operational Context
- Services: API Gateway, Elastic Load Balancing
- Key Insights: We have the Cognito user pool, and this provides a sign-in functionality for app users and has really good integration with API Gateway and the Application Load Balancer.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And we have the Cognito Identity Pool, used to be called Federated Identity.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 7:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And this is to actually provide temporary AWS credentials to users that are registered with their application so that they can access some resources of AWS directly.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And there is a good integration as we'll see with Cognito User Pools.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So if you are asking yourself, "Don't we already have users in IAM?" The answer is yes, you do, but Cognito is gonna be for your web and mobile application users, which sits outside of AWS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 10:
- Concepts: AI Operational Context
- Services: AWS SAM
- Key Insights: So look for the keyword, such as hundreds of users, or mobile users, or authentication with whatever mechanism such as SAML and so on.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's do a deep dive into Cognito User Pool or CUP.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 12:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So it's a serverless database of users for your web and mobile application.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 13:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And you can define a simple login, such as username or email and a password as a combination.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 14:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: You have password reset feature.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 15:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You can have email and phone number verification, multi-factor authentication for users, and you can also have integration with, for example, Facebook for your login, or Google for your login, and so on.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 16:
- Concepts: AI Operational Context
- Services: API Gateway, Elastic Load Balancing
- Key Insights: So this Cognito User Pools, they integrate with the API Gateway or the Application Load Balancer.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 17:
- Concepts: Managed AI Service Selection
- Services: API Gateway, AWS Lambda, Amazon Translate
- Key Insights: So if we take the example of the API Gateway, the user is going to connect to your Cognito User Pool, retrieve a token, pass this token to the API Gateway, which is going to verify it, and then if it's good, it's going to translate it into the user identity, which will be passed to your lambda function as a backend.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 18:
- Concepts: AI Operational Context
- Services: AWS Lambda
- Key Insights: And now your lambda function knows the user it's dealing with, and the fact that it has a very specific user that's been really well authenticated.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 19:
- Concepts: AI Operational Context
- Services: AWS SAM, Elastic Load Balancing
- Key Insights: Alternatively, you can also do the exact same thing with your Cognito User Pool on top of your Application Load Balancer.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 20:
- Concepts: AI Operational Context
- Services: Elastic Load Balancing
- Key Insights: So that means that your application will connect again with your Cognito User Pool, then pass it on to your Application Load Balancer, and make sure that there is a true login.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 21:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And if it's true, it will redirect the request to your backend, and pass in some additional headers with the identity of the user.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 22:
- Concepts: AI Operational Context
- Services: API Gateway, Elastic Load Balancing
- Key Insights: So this really allows you to have in one place either your API Gateway or your ALB, the certainty that you can verify the login of your user.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 23:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So it's a responsibility that you've moved from your backend to the actual piece that is going to balance the load for your backend.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 24:
- Concepts: AI Operational Context
- Services: API Gateway, Elastic Load Balancing
- Key Insights: So the API Gateway or the ALB.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 25:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Okay, the other sub-part of Cognito is Cognito Identity Pools or Federated Identities.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 26:
- Concepts: AI Operational Context
- Services: API Gateway, Elastic Load Balancing
- Key Insights: And it's to get identities for users, but this time, they don't access our application through the API Gateway or the Application Load Balancer, but instead, they're going to directly access your AWS accounts using temporary AWS credentials.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 27:
- Concepts: AI Operational Context
- Services: API Gateway
- Key Insights: So the users' source can be, for example, users that are within Cognito User Pools, or it can be third party logins, and then they can access the services of AWS directly or through the API Gateway.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 28:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So the IAM policies applied to the credentials are defined within the Cognito Identity Pool service already.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 29:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And they can be customized based on the user ID for fine grain control.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 30:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And in case you want to have a default IAM role, you can, so that your guest users or authenticated users that don't have specific roles defined to them will inherit this defined IAM role.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 31:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So a diagram will surely help you to understand what identity pools are.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 32:
- Concepts: AI Operational Context
- Services: Amazon DynamoDB, Amazon S3
- Key Insights: So let's say your web and mobile applications want to have direct access into an S3 bucket or DynamoDB table.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 33:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we're going to have Cognito Identity Pools for this.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 34:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So the web and mobile application is going to log in and get a token out of it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 35:
- Concepts: AI Operational Context
- Services: AWS SAM
- Key Insights: So it could be a login against Cognito User Pools, or social identity provider, or SAML, or open ID connect and so on.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 36:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And then it's going to take this token and pass it on to the Cognito Identity Pool service to exchange this token for temporary AWS credentials.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 37:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And to do so, the Cognito Identity Pool is first going to evaluate whether or not the token passed is being correct, meaning the login is valid.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 38:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And the second thing it's going to do is to craft this IAM policy that is specific to that user.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 39:
- Concepts: AI Operational Context
- Services: API Gateway, Amazon DynamoDB, Amazon S3, Elastic Load Balancing
- Key Insights: So these credentials now will, thanks to this very temporary credentials with associated IAM policy, will be able to access AWS on your, for example, your S3 bucket, or your DynamoDB table, without going through an API Gateway or an Application Load Balancer.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 40:
- Concepts: AI Governance and Safety
- Services: Amazon DynamoDB
- Key Insights: And this enables for you a use case where you can do row level security in DynamoDB.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 41:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So you would, for example, have this policy coming out of the Cognito Identity Pools.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 42:
- Concepts: AI Operational Context
- Services: Amazon DynamoDB
- Key Insights: And the idea is that in it, you have a condition, and this condition is saying that the leading key for DynamoDB must be equal to the Cognito identity user ID.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 43:
- Concepts: AI Operational Context
- Services: Amazon DynamoDB
- Key Insights: And therefore, what's going to happen is that the user with this policy cannot read and write all the items in your DynamoDB table, that would be too much power, but instead they can only deal with the items that they have access to through this condition.
- Hidden/Implicit Meaning: Constraint or limitation signal; Governance and safety signal.

Line 44:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So I understand that Cognito is a very complicated service.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 45:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Thankfully, you just need to know at a high level what it means.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 46:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So it means that you can create a user base for your web and mobile application.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 47:
- Concepts: AI Governance and Safety
- Services: Amazon DynamoDB
- Key Insights: It means you can enable row level security in DynamoDB, for example, to get fine grain access.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 48:
- Concepts: AI Operational Context
- Services: API Gateway, Elastic Load Balancing
- Key Insights: And finally, remember this integration between Cognito User Pools and your API Gateway or your Application Load Balancer.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 49:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 50:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 51:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

### File: outputs/AWS/AWS AI/3. aws-generative-ai-developer-professional/09_Security, Identity, and Compliance/218_AWS WAF.txt

Line 1:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So now let's talk about AWS WAF, the Web Application Firewall.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 2:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It's used to protect your web application from common web exploits at the Layer 7.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 3:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Just a reminder Layer 7 is HTTP, so it protects you against HTTP exploits.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 4:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Whereas as comparison Layer 4 is for TCP or UDP protocol.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: AI Operational Context
- Services: API Gateway
- Key Insights: So this WAF, this Web Application Firewall can be deployed on the Application Balancer, and API gateway, CloudFront, the AppSync GraphQL API, or Cognito user pools.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So remember, this is very important.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 7:
- Concepts: AI Operational Context
- Services: Elastic Load Balancing
- Key Insights: You remember the targets of WAF because the exam will try to trick you, and for example, make you deploy WAF on an NLB but this is not possible.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So once you've deployed a firewall on these services, you can define web ACL, they're web access control lists, and their rules.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And so you can set a rule, for example, to filter based on IP addresses.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 10:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So you can define an IP sets.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Each IP set can be up to 10,000 IP addresses.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 12:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And if you need more IP addresses, you can use multiple rules for more IPs.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 13:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You can also filter based on HTTP headers, body.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 14:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You can use URI strings to protect from the most common attacks, such as SQL injection and cross-site scripting.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 15:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You can have size constraints to make sure that the request are only up to, for example, two megabytes or geo match to allow or block specific countries.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 16:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And you can even have rate-based rules to count the occurrences of requests per IP for DDoS protection, for example, to prevent a specific IP from sending more than 10 requests per second.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 17:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So these web ACLs, they're regional, except for CloudFront, where they are defined globally.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 18:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And if you see the term rule group, well, it's a set, it's a reasonable set of rules that you can add it to many web ACL.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 19:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So this is just to organize them.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 20:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So WAF has a really good use case.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 21:
- Concepts: AI Operational Context
- Services: Elastic Load Balancing
- Key Insights: So what if you want to get a fixed IP on our application while using WAF with an application load balancer?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 22:
- Concepts: AI Operational Context
- Services: Elastic Load Balancing
- Key Insights: So WAF does not support the Network Load Balancer because the NLB operates on Layer 4 and WAF is for Layer 7.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 23:
- Concepts: AI Operational Context
- Services: Elastic Load Balancing
- Key Insights: So therefore, to provide WAF, you need to have an application load balancer.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 24:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But we know that an application balancer does not have fixed IPs.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 25:
- Concepts: AI Operational Context
- Services: Elastic Load Balancing
- Key Insights: So to solve a problem, we can use a Global Accelerator to get fixed IP for application, and then enable WAF on our ALB.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 26:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So the architecture looks like this.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 27:
- Concepts: AI Operational Context
- Services: Amazon EC2, Elastic Load Balancing
- Key Insights: We have one region with an ALB and EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 28:
- Concepts: AI Operational Context
- Services: Elastic Load Balancing
- Key Insights: We're going to front our ALB with a Global Accelerator to get a fixed IP for our application.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 29:
- Concepts: AI Operational Context
- Services: AWS SAM
- Key Insights: And we're going to attach a Web Application Firewall with a WebACL on the same region as where our application low balancer is located.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 30:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And therefore, we have achieved our target architecture.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 31:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 32:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 33:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

### File: outputs/AWS/AWS AI/3. aws-generative-ai-developer-professional/09_Security, Identity, and Compliance/219_VPC, Subnets, Internet Gateway, NAT Gateway.txt

Line 1:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: [Instructor] Okay, so first let's get an introduction to VPC and subnets.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 2:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So VPC is a virtual private cloud, which means it's a private network that is within the AWS cloud that allows you to deploy your resources within it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 3:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And a VPC is a regional resource.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 4:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So if you have two AWS regions, they will have two different VPC.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So VPC is represented like this.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Inside of your VPC, which is just a logical construct.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 7:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You have subnets, and subnets allow you to partition your network inside your VPC, and subnets are defined at the availability zone level.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we have one AZ, So ACs in this example.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And we can have multiple subnets.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 10:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So the first subnet that I'm going to create is a public subnet.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And as you can see the public subnet is a subnet that is accessible from the internet.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 12:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So that's subnets, can access the World Wide Web and also can be accessed.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 13:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: From the World Wide Web, okay, so then we have another kind of subnets, called a private subnet, and the private subnet is a subnet that is not accessible from the internet's okay.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 14:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And how do we define this, we'll see this in the next slide.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 15:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So to define access to the Internet and between subnets, we're going to use router tables.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 16:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So within your VPC, you're going to define a bunch of write tables, which is going to define how your network flows between all the different subnets.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 17:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So remember, everything is at a high level in this whole section, so we won't do any hands on but try to remember these concepts, you'll see if it should make sense to you very soon.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 18:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we have an easy to instance in a public subnet, and that one has access to the internet.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 19:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And we have a situ instance in the private subnet.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 20:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And then one does not have access to the internet or the internet does not have access to it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 21:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The reason being, we want it to be more secure and more private.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 22:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Okay,so if we look at bigger diagram for VPC, we have our cloud infrastructure.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 23:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And we have one region, within the region we have a VPC.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 24:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And the VPC has a set of IP ranges.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 25:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So it's called a cider range.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 26:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And this is just a range of IP allowed within your VPC.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 27:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And we have two AZ in this example.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 28:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So in the first AZ, I'm going to have, a the public subnet and the private subnets.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 29:
- Concepts: AI Operational Context
- Services: Amazon EC2
- Key Insights: And we can launch our EC2 instances in each subnet we want.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 30:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And in the AZ two, with a public subnet and a private subnet.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 31:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So this is what the VPC looks like at a high level.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 32:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And this is very common in the VPC that is created for you.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 33:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: When you use your cloud on AWS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 34:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You only have public subnets.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 35:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You don't have private subnets.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 36:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: We have one public subnets per AZ and you have one VPC in each and every region that's created for you.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 37:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It's called the default VPC.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 38:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Okay, next in your network.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 39:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: We talked about public and private subnet, but we're going to go one step deeper.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 40:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And talk about internet gateways and Nat gateways.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 41:
- Concepts: AI Operational Context
- Services: AWS SAM
- Key Insights: So, if we go back to the same diagram, say we have an easy to instance, in the public subnets.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 42:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: What makes the subnet really public?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 43:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: How can it access the internet?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 44:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Well for this, we use an internet gateway.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 45:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Our internet gateway will help our VPC instances in our subnets to connect to the internet.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 46:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So here's your internet gateway, it lives in your VPC.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 47:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And so the public subnets will have a route to the internet gateway.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 48:
- Concepts: AI Operational Context
- Services: Amazon EC2
- Key Insights: So your public subnets for example, your EC2 instance in that public subnet, has a route to your internet gateway.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 49:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And your internet gateway knows how to talk to the internet's, and that's what makes a subnet a public subnet.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 50:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So public subnets, will have a route direct route to an internet gateway.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 51:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So now let's take another example.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 52:
- Concepts: AI Operational Context
- Services: Amazon EBS, Amazon EC2
- Key Insights: We have our EC2 instance in the private subnets and we want it to also be able to access the internet for example to get updates for software's, but we don't wanna it to be accessible from the internet Don't wanna the internet to be able to reach out to websites on our private subnet.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 53:
- Concepts: AI Operational Context
- Services: AWS SAM
- Key Insights: For example, for this we use what's called a NAT gateway, or NAT instance, they do the same thing.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 54:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: They provide nets for your private subnets.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 55:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But the NAT gateways are managed by AWS, so you don't have to worry about provisioning them and scaling them.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 56:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Whereas the NAT instances are self managed.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 57:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And they both allow your instances in your private subnets to access the internet while remaining private.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 58:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So how does it work, we are going to deploy a NAT gateway or in that instance, in our public subnets.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 59:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And then we're going to create a route from the private subnet to the NAT instance or gateway.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 60:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And then that has a route to the internet gateway, because it's in the public subnet, and therefore your private subnets can access through the nuts all the way to the internet.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 61:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And that's the whole point of Nat gateways.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 62:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So this is a typical infrastructure.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 63:
- Concepts: AI Operational Context
- Services: AWS Lambda
- Key Insights: In AWS and the NAT gateways NAT instances will come at play later in this course, when we talk about lambda functions okay, but try to remember this, this is a very simple diagram and feel free again to revisit the section later in this course maybe it will make a lot more sense, but still I wanna to introduce concepts to you.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 64:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So,I will see you in the next lecture for more UBC concepts.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

### File: outputs/AWS/AWS AI/3. aws-generative-ai-developer-professional/09_Security, Identity, and Compliance/220_NACL, Security Groups, VPC Flow Logs.txt

Line 1:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: So now that we've seen all the aspect about defining the network in our VPC let's talk about this network security.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 2:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: So let's talk about the concept of network ACL and security groups.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 3:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we're back in our VPC.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 4:
- Concepts: AI Operational Context
- Services: Amazon EC2
- Key Insights: It has 1 public subnet and 1 EC2 instance in it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: We can create a NACL or network ACL.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Which is a firewall that controls traffic from and to the subnets.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 7:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And this can have allow and deny rules.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we can allow traffic or deny traffic.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And that's explicit.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 10:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You attach these NACL's at the subnet level and the rules only include IP addresses.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 11:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So you're saying, Hey all the traffic coming from this IP address is allowed, or all the traffic coming from these IP addresses are denied, and so on.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 12:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So the NACL is here and it is the first mechanism of defense of our public subnets, and it's at the subnet level.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 13:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So as we can see the traffic coming to and from the internet is going to go first through the network ACL.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 14:
- Concepts: AI Operational Context
- Services: Amazon EC2
- Key Insights: But it hasn't reached our EC2 instance just yet.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 15:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: Next we have security groups and we've seen them already in this course.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 16:
- Concepts: AI Governance and Safety
- Services: Amazon EC2
- Key Insights: So security groups is a firewall that controls traffic to and from an ENI so elastic network interface or an EC2 instance.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 17:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: In this security groups as we've seen can only have the allow rules and they can reference either IP addresses or other security groups.
- Hidden/Implicit Meaning: Constraint or limitation signal; Governance and safety signal.

Line 18:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And this is something we have seen already in this course.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 19:
- Concepts: AI Governance and Safety
- Services: Amazon EC2
- Key Insights: So we attach a security group to our EC2 instance and now the traffic can flow all the way through to our EC2 instance.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 20:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And we have the second mechanism of defense.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 21:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: So we've seen security groups at depth in this course but we haven't really touched NACL's.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 22:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Why?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 23:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Because when you have a default VPC the default NACL allows everything in and allows everything out.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 24:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And this is why we haven't had to change the network ACL in this course and we will not do any hands-on on it either.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 25:
- Concepts: AI Operational Context
- Services: Amazon EC2
- Key Insights: But just know that before the internet traffic reaches your EC2 instance it has to go through this network ACL which acts as a firewall.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 26:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: So they're very different than network SCL and the security Group.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 27:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And there is a table that summarizes it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 28:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You don't need to remember it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 29:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: This is more something for the Solutions Architect Associate or the certified Sysap's Associate.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 30:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: But the idea is that the security group is attached to an instance or an ENI whereas the network ACL is at the subnet level.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 31:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: The Security Group is only allow rules whereas for network ACL it's allow and deny rules.
- Hidden/Implicit Meaning: Constraint or limitation signal; Governance and safety signal.

Line 32:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Is stateful, so that means any traffic that comes that return traffic is automatically allowed regardless of any roles.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 33:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Whereas here for the network ACL you need to allow the traffic in and out.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 34:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And here you can look at the rest but this is pretty irrelevant for the certification.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 35:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Okay, so this is just if you're curious.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 36:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: So now that we have all this traffic flowing through our VPC, through the network ACL and the security groups, we're curious about can we get a information about all this traffic flowing through?
- Hidden/Implicit Meaning: Governance and safety signal.

Line 37:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Can we get a log from it?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 38:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And this is called a VPC flow log.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 39:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So this is going to capture information about all the IP traffic going into your interfaces.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 40:
- Concepts: AI Operational Context
- Services: Amazon VPC Flow Logs
- Key Insights: That includes the VPC flow logs, the Subnet flow logs and the ENI flow logs or Elastic Network Interface flow logs.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 41:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So anytime you have network going through your VPC it will be logged in a flow log.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 42:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And so this is to help you monitor and troubleshoot connectivity issues.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 43:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: For example, if you want to know why your subnet cannot access the internet or why a subnet can talk or cannot talk to another subnets or internet to subnet et cetera, et cetera.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 44:
- Concepts: AI Operational Context
- Services: Amazon VPC Flow Logs
- Key Insights: So anytime you have a network issue and you need to be able to troubleshoot it, you need to look at the VPC flow logs because they will give you everything.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 45:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: All the information around the allowed and the denied traffic.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 46:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It will capture network information as well from anything that is managed by AWS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 47:
- Concepts: AI Operational Context
- Services: Amazon Aurora, Amazon ElastiCache, Amazon RDS, Amazon VPC Flow Logs, Elastic Load Balancing
- Key Insights: So the Elastic Load Balancers, your ElastiCache, RDS, Aurora all this will appear in your VPC flow logs.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 48:
- Concepts: AI Operational Context
- Services: Amazon CloudWatch, Amazon Data Firehose, Amazon Kinesis, Amazon S3, Amazon VPC Flow Logs
- Key Insights: So in case of connectivity issues you can look there right away And the VPC flow logs data can be sent to Amazon S3 it can be sent to CloudWatch Logs and Kinesis Data Firehose so you can send it to many places in AWS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 49:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 50:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 51:
- Concepts: AI Governance and Safety
- Services: Amazon VPC Flow Logs
- Key Insights: We've seen NACL's, security groups and VPC flow logs and I will see you and the next lecture.
- Hidden/Implicit Meaning: Governance and safety signal.

### File: outputs/AWS/AWS AI/3. aws-generative-ai-developer-professional/09_Security, Identity, and Compliance/221_VPC Peering, Endpoints, VPN, Direct Connect.txt

Line 1:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Okay, so now let's talk about how we can establish connectivity between VPC and other structures.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 2:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So, the first thing is called VPC peering.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 3:
- Concepts: AI Operational Context
- Services: AWS SAM
- Key Insights: So say you have two virtual private clouds, they're either in two different accounts or in two different regions, and you want to connect together as if they're part of the same network.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 4:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we want to connect to VPC privately using the network from AWS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: AI Operational Context
- Services: AWS SAM
- Key Insights: And it's going to make them behave as if they were in the same network, so we have VPC A and VPC B, and if we want to have them talk to one another, we need to establish a VPC peering connection from A to B.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Very simple.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 7:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: To make sure that these VPC can be connected, you need to make sure that the IP ranges that is defined for each VPC are not overlapping.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Because to be able to address network to another VPC, you need to talk to an IP address.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And so, if obviously, the network ranges overlap, then the network doesn't know where to go.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 10:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So to connect to VPC, you need to make sure that the IP addresses range it operates on are different and not overlapping.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And a VPC peering connection is not transitive.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 12:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So it must be established for each VPC that needs to communicate with one another.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 13:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: What I mean is that if we connect VPC C through a VPC peering connection between A and C, B and C cannot talk to each other.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 14:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: There is no transitivity in the VPC peering.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 15:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: That means that if I want to establish connectivity between VPC B and VPC C, then I need to create its own VPC peering connection between B and C.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 16:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: That's what it means with VPC peering.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 17:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So as you add more and more VPC, you need to add more and more peering connections.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 18:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's number one.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 19:
- Concepts: Inference and Serving
- Services: (none explicit)
- Key Insights: Number two, VPC endpoints, which is going to be very important going into this exam.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 20:
- Concepts: Inference and Serving
- Services: (none explicit)
- Key Insights: So, endpoints allow you to connect to AWS services using a private network instead of using the public internet network.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 21:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So something you maybe didn't know is that all the AWS services are public, okay?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 22:
- Concepts: AI Operational Context
- Services: Amazon EC2
- Key Insights: And so anytime your EC2 instances, for example, use the AWS services, they talk publicly to AWS, but sometimes your EC2 instances are not connected to the public subnets, and therefore you want to have them access, privately, your AWS services.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 23:
- Concepts: Inference and Serving
- Services: (none explicit)
- Key Insights: So this is the VPC endpoint.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 24:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: So this just gives you security and lower latency to access AWS services.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 25:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's take an example.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 26:
- Concepts: AI Operational Context
- Services: Amazon DynamoDB, Amazon EC2, Amazon S3
- Key Insights: We have a private subnet and an EC2 instance in it, and it wants to access Amazon S3 and DynamoDB, which are outside of the VPC into the public realm.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 27:
- Concepts: Inference and Serving
- Services: Amazon DynamoDB, Amazon S3
- Key Insights: Then we can create a VPC endpoint gateway, and this is only for S3 and DynamoDB, so endpoint gateway, and we'll see what S3 and DynamoDB are in this course, obviously.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 28:
- Concepts: Inference and Serving
- Services: Amazon DynamoDB, Amazon EC2, Amazon S3
- Key Insights: But so, your EC2 instance talks to that VPC endpoint and has access to S3 and DynamoDB privately.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 29:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: As you can see, the traffic does not go through the internet.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 30:
- Concepts: Inference and Serving
- Services: Amazon CloudWatch
- Key Insights: And then, for VPC endpoint interface, that's the rest of the service, and that's only used within your VPC, so that means that we can create, for example, a VPC endpoint interface in your private subnet, and through that endpoints interface, through that ENI, we have private access to CloudWatch.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 31:
- Concepts: Inference and Serving
- Services: (none explicit)
- Key Insights: So, VPC endpoints are really, really helpful anytime you need private access from within your VPC to an AWS service, okay?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 32:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: That's what you need to remember.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 33:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The other exams need to know the difference between gateway and interface.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 34:
- Concepts: Inference and Serving
- Services: (none explicit)
- Key Insights: I don't believe you need to know it for the certified developer exam, but know that anytime the exam is asking you to privately connect to an AWS service, then a VPC endpoint is going to be the way.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 35:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Okay, so now how do we establish connectivity between your on-premises data center, So that could be your office building, for example, and your cloud VPC?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 36:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So, the first way is called site to site VPN, to connect an on-premises VPN appliance to AWS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 37:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The connection will be automatically encrypted and will go over the public internet.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 38:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So in this example, we establish a VPN, virtual private network between your on-premises data center and your VPC, and that goes over the public internet.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 39:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: That's very easy to set up very quick.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 40:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You can set up in matter of minutes.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 41:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And there you go, you have a private connection, or an encrypted connection, sorry, over the public internet to your VPC.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 42:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The other option is direct connect.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 43:
- Concepts: AI Operational Context
- Services: AWS SAM
- Key Insights: It achieves the same purpose, it's to establish a connection between your on-premises data center and your VPC, but this time it is a physical connection.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 44:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So that means that the connection is going to be private, it will not go over the public internet, it's going to be secure and fast, and it goes over the private network.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 45:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And because it is a private line to your VPC, it takes at least a month to establish, because there is some work that needs to happen to have a private connectivity to AWS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 46:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So, this is called direct connect, and this is the private route.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 47:
- Concepts: AI Operational Context
- Services: AWS SAM
- Key Insights: As we can see, both the VPN and direct connect achieve the same purpose, but with different matters and different timeline.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 48:
- Concepts: Inference and Serving
- Services: (none explicit)
- Key Insights: Okay, so that's it for connectivity of your VPC in terms of external VPC peering, VPC endpoints, site to site VPN and direct connect.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 49:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I hope that was helpful, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

### File: outputs/AWS/AWS AI/3. aws-generative-ai-developer-professional/09_Security, Identity, and Compliance/222_VPC Cheat Sheet & Closing Comments.txt

Line 1:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So this was a heavy section and without any hands-on, so that may have been confusing, but really I don't want to bug you down with hands-on because this is not for a Certified Developer.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 2:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You just need to remember a few concepts out of this whole section, so I'm going to summarize everything in one slide.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 3:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And trust me, you will be all set on all the VPC questions going into the exam, okay?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 4:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So don't stress it out.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The first one is VPC which stands for Virtual Private Cloud.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: AI Operational Context
- Services: Amazon EC2
- Key Insights: And we've been using the default VPC all along this course when we created our EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 7:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: There's going to be one default VPC for AWS region we are using.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Subnets are tied to a specific Availability Zones.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: AI Operational Context
- Services: Amazon EC2
- Key Insights: And this is where we've been launching our EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 10:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And they represent a network partition of your VPC.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The Internet Gateway is what gives access to our instances in our public subnets to the internet, okay?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 12:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And they are defined at the VPC level.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 13:
- Concepts: AI Operational Context
- Services: Amazon EC2
- Key Insights: NAT Gateways and NAT Instances will give internet access this time to our private subnets through our EC2 instances and private subnets.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 14:
- Concepts: AI Governance and Safety
- Services: Amazon EC2
- Key Insights: NACLs or Network ACLs are stateless subnet rules firewalls for inbound and outbound whereas Security Groups, we've seen them before are stateful, they operate at the EC2 instance level or the ENI and they can reference other security groups.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 15:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: For VPC Peering, this allows us to connect two VPC together as long as they are not overlapping and this is not a transitive VPC Peering therefore you need to establish VPC Peering connection between all your VPC if you want to have them connected with each other.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 16:
- Concepts: Inference and Serving
- Services: (none explicit)
- Key Insights: VPC Endpoints is going to provide you private access to AWS services within your VPC, and that is something that we will see in the future lectures for some services.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 17:
- Concepts: AI Operational Context
- Services: Amazon VPC Flow Logs
- Key Insights: And VPC Flow Logs will give you your network traffic logs to ensure that you can debug if something is access denied, or if traffic is locked or allowed within your VPC.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 18:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Finally, let's establish connection from your on-premises data center to AWS, you have the Site to Site VPN which is to have a VPN connection over the public internet and your Direct Connect if you want a direct private connection to AWS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 19:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So, don't stress if you didn't understand everything in that section, you can come back to it later.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 20:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: As I said in the course, I will be highlighting all the specific VPC features we need.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 21:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And then come back to it if you want at the end but don't stress it out.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 22:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I'm really, really serious about it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 23:
- Concepts: AI Operational Context
- Services: AWS SAM
- Key Insights: I just want to give you a bit more information than what you needed just to make sure we are on the same page, and let's go, let's move on with this course.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 24:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Trust me it's gonna get a lot more developed very very soon.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 25:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 26:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

### File: outputs/AWS/AWS AI/3. aws-generative-ai-developer-professional/09_Security, Identity, and Compliance/223_AWS PrivateLink.txt

Line 1:
- Concepts: Inference and Serving
- Services: (none explicit)
- Key Insights: So now let's talk about AWS PrivateLink, also from the VPC Endpoint Services family.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 2:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 3:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Well, say you have a service that you run within AWS, or say there is a vendor on the Marketplace, and they run a service on their own account within their own VPC.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 4:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And they want to expose a service to customers of AWS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So to thousands of VPC, they need to have private access to that service, to establish a connectivity.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You could, for example, use VPC peering, but that doesn't scale, and it's not very secure.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 7:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: What you want is use something else, and that's something else is a Private Link.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So a Private Link allows you to connect a service running within your VPC to other VPCs directly and privately.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So it does not require VPC peering or internet gateway, because it's from the private network, or NAT or route tables or anything like this.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 10:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's go through a diagram.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Say, for example, you are talking to a vendor on the AWS Marketplace, and they run application service.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 12:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So they have their own service that you wanna use in their own VPC.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 13:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And you wanna have access to it from your own VPC in your own accounts with your own consumer applications.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 14:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: In that case, you're going to ask your vendor to do a Private Link.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 15:
- Concepts: AI Operational Context
- Services: Elastic Load Balancing
- Key Insights: On their end, they will have to create a Network Load Balancer to expose that service.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 16:
- Concepts: AI Operational Context
- Services: Elastic Load Balancing
- Key Insights: And on your end, you will create an Elastic Network Interface, and then you will establish a Private Link between the two so that you have private access to their Network Load Balancer and therefore to their service.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 17:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And all the internet traffic is actually not gonna go through the public internet, but it's actually gonna go through your private network.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 18:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And so therefore all communications will remain private.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 19:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And so for every new customer that that third party will need, all they will have to do is to create a new Private Link for their customers, which is very easy to manage and way more scalable.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 20:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So that's it, I hope you like this lecture, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

## Step 2 - Consolidation

### 1. Concepts List
- AI Governance and Safety
- AI Operational Context
- Generative AI Architecture
- Inference and Serving
- MLOps and Operationalization
- Managed AI Service Selection
- Model Development Lifecycle

### 2. Services List
- API Gateway
- AWS Batch
- AWS CloudFormation
- AWS CloudTrail
- AWS Config
- AWS Glue
- AWS Lambda
- AWS SAM
- Amazon Aurora
- Amazon Bedrock
- Amazon CloudWatch
- Amazon Data Firehose
- Amazon DocumentDB
- Amazon DynamoDB
- Amazon EBS
- Amazon EC2
- Amazon ECR
- Amazon EMR
- Amazon ElastiCache
- Amazon EventBridge
- Amazon Kinesis
- Amazon Lex
- Amazon RDS
- Amazon Redshift
- Amazon S3
- Amazon Translate
- Amazon VPC Flow Logs
- Elastic Load Balancing
- SageMaker

### 3. Features List
- bedrock
- inference
- lex
- prompt
- sagemaker
- translate

### 4. Use Cases
- 015_Amazon S3 Security - Bucket Policy.txt:7: And this will allow, for example, a specific user to come in or allow a user from another account, this is called cross-account to access your S3 Buckets.
- 015_Amazon S3 Security - Bucket Policy.txt:14: So we'll have a look at these use cases in a minute.
- 015_Amazon S3 Security - Bucket Policy.txt:42: More advanced, if we want to allow Cross-Account Access, then we must use the Bucket Policy.
- 015_Amazon S3 Security - Bucket Policy.txt:45: So this is what we set to own when we created the Buckets and these settings were invented by AWS as a extra layer of security to prevent company data leaks.
- 016_Amazon S3 Security - Bucket Policy - Hands On.txt:3: And the first thing we have to do is to allow public access from the bucket setting, because right now everything is blocked.
- 016_Amazon S3 Security - Bucket Policy - Hands On.txt:12: So the first thing you can do is look at the policies example, and this is the documentation, and it will show you a lot of use cases on the right hand side that will show you what's the appropriate and corresponding bucket policy.
- 016_Amazon S3 Security - Bucket Policy - Hands On.txt:16: We'll allow, and then the principal is going to be a star because we want to allow anyone on the Amazon S3 service to perform, and because we will read objects on our bucket, we want to perform a getObject.
- 016_Amazon S3 Security - Bucket Policy - Hands On.txt:18: We want to allow getObjects.
- 232_Principle of Least Privilege.txt:10: Now, while you're developing, it certainly makes sense to start with broader permissions, since you don't necessarily know exactly what you need permission for when you're still building a system and figuring out what components make it up right.
- 232_Principle of Least Privilege.txt:15: So that top half there is saying I'm only going to allow list bucket operations within my specific bucket under the data reports path there.
- 232_Principle of Least Privilege.txt:16: And for actually reading data, the only thing I'm going to allow with this IAM policy is reading CSV files that are under my specific bucket slash data slash reports and end with a dot csv suffix.
- 232_Principle of Least Privilege.txt:17: So if you have, for example, a workflow that requires people to or a system or a service to read CSV files from a specific location, there's no reason to give them access to anything more than that location, and furthermore, just to the specific types of files that they might need from that location.
- 233_Data Masking and Anonymization.txt:4: So for example, you've probably seen a on your credit card bill.
- 234_SageMaker Security_ Encryption at Rest and in Transit.txt:8: You want to use multi-factor authentication whenever possible, so you want to make sure that your administrator accounts, and certainly your root account, is using MFA to make sure that we're sure that someone's not just guessing your password and breaking in That can be a lifesaver.
- 234_SageMaker Security_ Encryption at Rest and in Transit.txt:10: Also use SSL and TLS when connecting to anything.
- 234_SageMaker Security_ Encryption at Rest and in Transit.txt:15: Make sure you're using SSL when you're connecting to those servers.
- 234_SageMaker Security_ Encryption at Rest and in Transit.txt:22: Whereas CloudWatch is monitoring log data and issuing alarms when things are going wrong.
- 234_SageMaker Security_ Encryption at Rest and in Transit.txt:23: Use encryption whenever appropriate and especially with PII, that's personally identifiable information.
- 234_SageMaker Security_ Encryption at Rest and in Transit.txt:43: This does come at the cost of increasing training time, and time is money when it comes to training.
- 234_SageMaker Security_ Encryption at Rest and in Transit.txt:47: You can just turn this on via the console when you're setting up your training job, or through the API for training or tuning for that matter.
- 235_SageMaker Security_ VPC's, IAM, Logging and Monitoring.txt:2: So when you run a training job in SageMaker that's running within a virtual private cloud of some sort.
- 235_SageMaker Security_ VPC's, IAM, Logging and Monitoring.txt:4: You can specify that when you're launching your training job.
- 235_SageMaker Security_ VPC's, IAM, Logging and Monitoring.txt:6: Because SageMaker depends on having access to S3 to get its training data, and also to get the trained model artifacts for when it's actually deploying your model.
- 236_IAM Introduction_ Users, Groups, Policies.txt:5: So we've already used IAM without knowing, when we created an account, we created a root accounts, and has been created by default.
- 236_IAM Introduction_ Users, Groups, Policies.txt:24: For example, Fred right here is alone, he does not correspond to any group.
- 236_IAM Introduction_ Users, Groups, Policies.txt:28: That means that for example, if you know that Charles and David worked together, and they're part of your audit team, you can create a third group with Charles and David.
- 236_IAM Introduction_ Users, Groups, Policies.txt:32: Well, because we want to allow them to use our AWS accounts and to allow them to do so, we have to give them permissions.
- 237_IAM Users & Groups - Hands On.txt:8: When you create a user in IAM, it will be available everywhere, but some other consoles we'll see in this course will be region-specific.
- 237_IAM Users & Groups - Hands On.txt:13: So when you have it, that means you're using the root account and it's not best practice to use the root account.
- 237_IAM Users & Groups - Hands On.txt:15: So for this, let's go ahead and create a user, and I will provide a username, for example, Stephane.
- 237_IAM Users & Groups - Hands On.txt:29: For example, I could say that the department of Stephane is engineering.
- 237_IAM Users & Groups - Hands On.txt:48: For example, v5 is available.
- 237_IAM Users & Groups - Hands On.txt:55: And as you can see, when you do a sign in on AWS, you have the root user sign in or the IAM user sign in.
- 237_IAM Users & Groups - Hands On.txt:68: But when you have to use roots or when you have to use an IAM user, I will let you know in the course.
- 238_AWS Console Simultaneous Sign-in.txt:8: And the cool thing is that, for example, let's say I'm going to the EC2 console here, and then I'm going to go into volumes and then I'm going to, for example, create an EBS volume of one gigabyte just to do something very quickly.
- 239_IAM Policies.txt:11: That should make a lot of sense when we get into the hands-on.
- 239_IAM Policies.txt:24: And finally in, not represented here but there's a condition to which when this statement should be applied or not, and this is not representative here because it is optional.
- 240_IAM Policies - Hands On.txt:35: And then I'm going to add the user Stephane in this group and I'm going to attach whatever policy I can find, for example, AlexaForBusiness but it doesn't really matter.
- 240_IAM Policies - Hands On.txt:54: So all these services, for example, App Mesh or Alexa for Business or Amplify, they all have full access.
- 240_IAM Policies - Hands On.txt:61: If we have a look at another policy, for example, the IAMReadOnlyAccess that we saw from before.

### 5. Constraints / Limitations
- 015_Amazon S3 Security - Bucket Policy.txt:3: So as a user you can have IAM policies that you and this IAM policy is going to authorize which API calls should be allowed for a specific IAM user.
- 015_Amazon S3 Security - Bucket Policy.txt:42: More advanced, if we want to allow Cross-Account Access, then we must use the Bucket Policy.
- 015_Amazon S3 Security - Bucket Policy.txt:48: So if you know that your Bucket should never be public, then leave these settings on and you have this level of security against people who would set the wrong S3 Bucket policy.
- 015_Amazon S3 Security - Bucket Policy.txt:49: And if you know that none of your S3 Buckets ever should be public, then you can set this at the account level.
- 016_Amazon S3 Security - Bucket Policy - Hands On.txt:5: But again, this is something you would disable only, and only if, you know you want to set a public bucket policy.
- 016_Amazon S3 Security - Bucket Policy - Hands On.txt:19: And the Amazon Resource Name must be the bucket name with a slash, and then with a star.
- 232_Principle of Least Privilege.txt:6: All it means is that you're only granting the permissions required for someone to perform a given task.
- 232_Principle of Least Privilege.txt:11: But once you're done, once you actually know what somebody needs to do with that system, you should lock it down.
- 232_Principle of Least Privilege.txt:15: So that top half there is saying I'm only going to allow list bucket operations within my specific bucket under the data reports path there.
- 232_Principle of Least Privilege.txt:16: And for actually reading data, the only thing I'm going to allow with this IAM policy is reading CSV files that are under my specific bucket slash data slash reports and end with a dot csv suffix.
- 232_Principle of Least Privilege.txt:22: So if while you're testing your system, you're only doing what you're supposed to do, you could use IAM Access Analyzer to automatically give you a starting point of what those least privileged policies might look like.
- 233_Data Masking and Anonymization.txt:5: They'll mask out all but the last four digits of your credit card number, just to make sure that if somebody gets a copy of that bill, they can't run off with your complete credit card number.
- 234_SageMaker Security_ Encryption at Rest and in Transit.txt:3: Let's start by reviewing some general best practices with AWS security that also apply to SageMaker and using Amazon's machine learning services.
- 234_SageMaker Security_ Encryption at Rest and in Transit.txt:6: Not only can you use that to restrict the permissions of the different services that are talking to each other within your larger system, you can also use it to set up user accounts for AWS, and make sure that those user accounts only have the permissions that they need.
- 234_SageMaker Security_ Encryption at Rest and in Transit.txt:7: So if you need to only have permission to run a SageMaker notebook, you can restrict permissions to setting up SageMaker notebooks and maybe S3 to getting data in and out of it.
- 234_SageMaker Security_ Encryption at Rest and in Transit.txt:12: In the case of EMR, which is about the only case where I can think of where you'd be connecting directly to a server in the world of machine learning.
- 234_SageMaker Security_ Encryption at Rest and in Transit.txt:16: Also, you should be using Amazon's CloudTrail service to log any activity to the APIs that you're using and any user activity.
- 234_SageMaker Security_ Encryption at Rest and in Transit.txt:38: So only give SageMaker itself permissions that it needs to access the data that it absolutely needs and, you know, reject everything else.
- 234_SageMaker Security_ Encryption at Rest and in Transit.txt:45: But sometimes it's required.
- 235_SageMaker Security_ VPC's, IAM, Logging and Monitoring.txt:31: There are also some predefined policies you can use, such as SageMaker read only access, SageMaker full Access administrator access, and a data scientist policy as well that you can use just out of the box.
- 236_IAM Introduction_ Users, Groups, Policies.txt:7: And the only things you should use it for is to set up your account as we'll do it right now.
- 236_IAM Introduction_ Users, Groups, Policies.txt:8: But then you shouldn't use that account anymore, or even share it.
- 236_IAM Introduction_ Users, Groups, Policies.txt:9: What you should be doing instead, is create users.
- 236_IAM Introduction_ Users, Groups, Policies.txt:20: Now groups can only contain users, not other groups.
- 236_IAM Introduction_ Users, Groups, Policies.txt:22: Groups only contain users.
- 236_IAM Introduction_ Users, Groups, Policies.txt:25: That is not best practice.
- 237_IAM Users & Groups - Hands On.txt:13: So when you have it, that means you're using the root account and it's not best practice to use the root account.
- 237_IAM Users & Groups - Hands On.txt:20: So if this was a user that was not me, I would leave it as auto-generated password, and I would leave this so that the user must change this password at the next sign-in, but because it is me, I'm just going to enter a custom password and I'm going to untick this because I don't need to change my password at the next login.
- 237_IAM Users & Groups - Hands On.txt:52: So if you don't do this, that's fine, but if you log in using the Stephane account on the right hand side window then you will be disconnected on the left hand side, this is the only difference.
- 237_IAM Users & Groups - Hands On.txt:65: And currently I cannot help you with this.
- 238_AWS Console Simultaneous Sign-in.txt:15: This was not possible before, which is very helpful, and something you should know about if you want to use AWS at scale.
- 239_IAM Policies.txt:6: And we have the possibility to create what's called an inline policy which has a policy that's only attached to a user.
- 239_IAM Policies.txt:11: That should make a lot of sense when we get into the hands-on.
- 239_IAM Policies.txt:24: And finally in, not represented here but there's a condition to which when this statement should be applied or not, and this is not representative here because it is optional.
- 239_IAM Policies.txt:25: So going into the exam, you need to make sure that you really understand the effect, the principle, the action and resource, but don't worry, you will see those along the way in the course so you should be confident with them by the end of the course.
- 240_IAM Policies - Hands On.txt:20: And so the policy I'm going to attach is going to be IAMReadOnlyAccess.
- 240_IAM Policies - Hands On.txt:27: And as you can see, I cannot create it because I'm not allowed to actually create a group.
- 240_IAM Policies - Hands On.txt:28: I'm only given the read-only access on IAM.
- 240_IAM Policies - Hands On.txt:29: And so therefore, because I have read-only access, I cannot create groups.
- 240_IAM Policies - Hands On.txt:30: So this shows you that you can only permission users for what they're supposed to do.

### 6. Patterns / Architectures
- 232_Principle of Least Privilege.txt:17: So if you have, for example, a workflow that requires people to or a system or a service to read CSV files from a specific location, there's no reason to give them access to anything more than that location, and furthermore, just to the specific types of files that they might need from that location.
- 246_AWS KMS.txt:17: That is a much better pattern.
- 248_Amazon Macie.txt:2: Macie is a fully managed data security and data privacy service that will use machine learning and pattern matching to discover and protect your sensitive data in AWS.
- 251_AWS WAF.txt:26: So the architecture looks like this.
- 251_AWS WAF.txt:30: And therefore, we have achieved our target architecture.
- 183_Principles of Responsible AI.txt:1: One of the areas covered by the exam is machine learning system architecture, and specifically the best practices that Amazon has defined for designing your machine learning systems.
- 183_Principles of Responsible AI.txt:4: One thing to consider when designing a system is responsible AI, and these are the core dimensions Amazon defines for the responsible development of AI applications.
- 197_Section Intro.txt:1: Welcome to the section on security, Identity and Compliance where you'll learn how to protect your generative AI applications, secure the data they rely on, and ensure that access is managed responsibly across your entire architecture.
- 197_Section Intro.txt:2: In this part of the course, we focus on the tools and patterns that keep your AI systems safe in real world production environments.
- 197_Section Intro.txt:3: We'll begin with the principle of least privilege, the foundation of all secure system design.
- 197_Section Intro.txt:4: You'll learn how to apply least privilege to gen AI workloads, how to mask or salt sensitive data, and how to design systems that minimize exposure without sacrificing functionality.
- 197_Section Intro.txt:6: We'll compare encryption at rest and in transit, and you'll see how AWS Key Management Service, or KMS, protects sensitive information throughout your AI pipeline.
- 197_Section Intro.txt:7: We'll also cover tools designed specifically to identify and protect sensitive data, including Amazon Macie for PII detection and AWS Secrets Manager for securely storing API keys, connection strings, and other credentials your applications depend on.
- 198_Principle of Least Privilege.txt:18: So if you have, for example, a workflow that requires people to or a system or a service to read CSV files from a specific location, there's no reason to give them access to anything more than that location, and furthermore, just to the specific types of files that they might need from that location.
- 212_AWS KMS.txt:17: That is a much better pattern.
- 214_Amazon Macie.txt:2: Macie is a fully managed data security and data privacy service that will use machine learning and pattern matching to discover and protect your sensitive data in AWS.
- 218_AWS WAF.txt:26: So the architecture looks like this.
- 218_AWS WAF.txt:30: And therefore, we have achieved our target architecture.

## Step 3 - Deep Expansion (AI Concepts)

### Core Services in This Topic
- API Gateway: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Batch: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS CloudFormation: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS CloudTrail: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Config: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Glue: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Lambda: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS SAM: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon Aurora: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon Bedrock: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.

### Architect-Level Concept Expansion
- AI Governance and Safety: treat this as a design lever that changes topology, risk posture, or operational workflow.
- AI Operational Context: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Generative AI Architecture: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Inference and Serving: treat this as a design lever that changes topology, risk posture, or operational workflow.
- MLOps and Operationalization: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Managed AI Service Selection: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Model Development Lifecycle: treat this as a design lever that changes topology, risk posture, or operational workflow.

## Cross-Cloud Mapping (Concept-First)

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| Managed AI building blocks | Rekognition / Textract / Comprehend / Polly / Translate / Lex | Azure AI services | Vertex AI APIs / Document AI / Vision / Speech / Translation |
| Managed ML platform | SageMaker | Azure Machine Learning | Vertex AI |
| Generative AI platform | Bedrock | Azure OpenAI + AI Studio | Vertex AI Generative AI |
| Feature, training, and inference lifecycle | SageMaker pipelines and endpoints | Azure ML pipelines and endpoints | Vertex pipelines and endpoints |
| AI governance and safety | Bedrock guardrails / IAM / service controls | Azure AI content safety / policy / Entra | Vertex AI safety settings / IAM / policy |
| Enterprise AI search and retrieval | Kendra / Bedrock retrieval patterns | Azure AI Search | Vertex AI Search / Discovery Engine |

### Trade-offs and Decision Notes
- AI Knowledge Base is strongest when design decisions are expressed as control objectives rather than vendor-only terminology.
- Cross-cloud portability improves when service choice, failure behavior, and governance model are documented together.
- Cloud-native implementations should still preserve comparable intent across AWS, Azure, and GCP.

## Phase-wise Architect-Level Organization

### Phase 1 - Foundations
- AI architecture begins with the problem shape: prebuilt intelligence, supervised ML, or generative retrieval-based systems.
- Model quality, governance, and serving paths must be designed together.

### Phase 2 - Core Services
- Implement data preparation, training, inference, and application integration as one lifecycle rather than isolated service calls.
- Use managed AI services when the operational burden of bespoke ML is not justified.

### Phase 3 - Advanced Patterns
- Treat generative AI retrieval, model choice, and guardrails as first-class architecture trade-offs.
- MLOps maturity depends on repeatable promotion, evaluation, and runtime monitoring loops.

### Phase 4 - System Design
- Reference architecture: data and feature plane, model lifecycle plane, inference plane, and governance controls.
- Scaling considerations: training cost, endpoint concurrency, model drift, and retrieval latency.
- Cost considerations: persistent endpoints, large-context inference, duplicated experimentation, and unmanaged feature stores.
