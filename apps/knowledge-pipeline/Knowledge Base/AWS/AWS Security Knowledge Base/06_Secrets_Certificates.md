# 06_Secrets_Certificates.md

## Scope
- Topic: SSM Parameter Store, Secrets Manager, ACM, SSL/TLS, cert operations
- Files processed: 19
- Extracted non-empty transcript lines: 961
- Processing mode: line-by-line (sentence-level), zero-loss

## Real Material - Architect Learning Build (Domain 5 Topic 2: Secrets and Certificates)

This section is the study-first guide for secret lifecycle, certificate operations, and transport-security architecture.

### Phase 1 - Foundations

#### Module 1: Secrets vs Configuration vs Credentials
- Sensitive configuration must be separated from static code artifacts.
- Credential lifecycle must include creation, retrieval, rotation, and revocation.
- Secret distribution model influences blast radius during compromise.


##### Source Transcript Details
- Module focus: Secrets vs Configuration vs Credentials
- Primary transcript files:
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/04_Security/020_Secrets Manager.txt
- outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/190_[SAA] Secrets Manager - Hands On.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/26_AWS Security & Encryption_ KMS, SSM Parameter Store, Shield, WAF/305_AWS Secrets Manager - Hands On.txt
- outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/191_Secrets Manager - Advanced.txt
- outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/189_[SAA] Secrets Manager.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/26_AWS Security & Encryption_ KMS, SSM Parameter Store, Shield, WAF/304_AWS Secrets Manager - Overview.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/04_Security/019_Parameter Store.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/26_AWS Security & Encryption_ KMS, SSM Parameter Store, Shield, WAF/302_SSM Parameter Store Overview.txt
- outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/212_[SAA_DVA_SOA] ELB SSL Certificates.txt
- outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/213_ELB - SSL Certificates - Advanced.txt
- Top concept clusters from transcript metadata:
- Data Security Operational Context
- Secrets Management
- Certificate and TLS Security
- Access Control Enforcement
- Key Management Lifecycle
- Encryption Fundamentals
- Cross-Account and Multi-Region Security
- Storage Data Protection
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 19
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 961
- Key insights inside selected files: 441
- Unique concept tags in selected files: 8

##### Transcript-Enriched Learning Notes
- Let's talk about AWS Secrets Manager, which is a great service meant, obviously, for storing secrets.
- But the cool thing about the service is that you can rotate your secrets automatically every X number of days.
- And these new secrets can be rotated on-demand or automatically and generated automatically.
- There is a native integration between RDS and Secrets Manager for all DB engines, but also Redshift, DocumentDB and so on.
- And for other databases or services that you want to rotate automatically, you would have to write a custom Lambda function that would generate these secrets, and then insert it into Secrets Manager.
- Here, in this diagram, we have Secrets Manager.
- And also, Secrets Manager is going to be integrated with so many other services that will automatically pull the secrets from Secrets Manager.
- We have CloudFormation, so you can reference Secrets Manager secrets in the CloudFormation templates, but also CodeBuild, ECS for your environment variables.
- Well, because we have a native integration between ECS and Secrets Manager, what can happen is that at boot time, your ECS task can automatically pull your secrets and inject it as an environment variable within your...
- This is the kind of template that would create a secret with Secrets Manager within CloudFormation.
- In the first part, we generate the secrets.
- Then, in the second part, we're going to reference the secrets in your RDS DB instance.
- And then, in the third part, we create what's called a "secret attachment", which is going to link the secrets to the RDS DB instance.
- And it's going to tell Secrets Manager that, in case of rotation, you need to also change the password in your RDS database itself.
- You need to know the process to share secrets across accounts in Secrets Manager.
- Instead, we can access and we can attach resource-based policies to our secrets.
- The KMS via service, which allows to use the kms:Decrypt operation only if it's invoked via, so through, the Service Secrets Manager.
- And then, we create a resource-based policy on our Secrets Manager's secrets, which is similar, for example, to an S3 bucket policy.

##### Polished Architect Notes
- Transcript signals that let's talk about AWS Secrets Manager, which is a great service meant, obviously, for storing secrets.
- Transcript signals that the cool thing about the service is that you can rotate your secrets automatically every X number of days.
- Transcript signals that these new secrets can be rotated on-demand or automatically and generated automatically.
- Transcript signals that there is a native integration between RDS and Secrets Manager for all DB engines, but also Redshift, DocumentDB and so on.
- Transcript signals that for other databases or services that you want to rotate automatically, you would have to write a custom Lambda function that would generate these secrets, and then insert it into Secrets Manager.
- Transcript signals that here, in this diagram, we have Secrets Manager.
- Transcript signals that also, Secrets Manager is going to be integrated with so many other services that will automatically pull the secrets from Secrets Manager.
- Transcript signals that we have CloudFormation, so you can reference Secrets Manager secrets in the CloudFormation templates, but also CodeBuild, ECS for your environment variables.
- Transcript signals that because we have a native integration between ECS and Secrets Manager, what can happen is that at boot time, your ECS task can automatically pull your secrets and inject it as an environment variable within your...
- Transcript signals that this is the kind of template that would create a secret with Secrets Manager within CloudFormation.
- Transcript signals that in the first part, we generate the secrets.
- Transcript signals that in the second part, we're going to reference the secrets in your RDS DB instance.

##### Architect Synthesis (Transcript-Derived)
- Treat Data Security Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Secrets Management as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Certificate and TLS Security as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Access Control Enforcement as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Key Management Lifecycle as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: let's talk about AWS Secrets Manager, which is a great service meant, obviously, for storing secrets.
- Design implication: the cool thing about the service is that you can rotate your secrets automatically every X number of days.
- Design implication: these new secrets can be rotated on-demand or automatically and generated automatically.
#### Module 2: Certificate and TLS Basics
- Certificates establish identity and trust in transport channels.
- TLS protects confidentiality and integrity during transit.
- Misconfigured certificate chains and endpoint trust often become operational outage causes.


##### Source Transcript Details
- Module focus: Certificate and TLS Basics
- Primary transcript files:
- outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/212_[SAA_DVA_SOA] ELB SSL Certificates.txt
- outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/213_ELB - SSL Certificates - Advanced.txt
- outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/216_[DVA_SOA] AWS Certificate Manager (ACM) - Hands On.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/26_AWS Security & Encryption_ KMS, SSM Parameter Store, Shield, WAF/306_AWS Certificate Manager (ACM).txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/04_Security/023_AWS Certificate Manager - ACM.txt
- outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/215_AWS Certificate Manager (ACM).txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/04_Security/022_SSL Encryption, SNI & MITM.txt
- outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/214_Network Load Balancer - TLS Listeners.txt
- outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/217_ACM - Advanced.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/04_Security/020_Secrets Manager.txt
- Top concept clusters from transcript metadata:
- Certificate and TLS Security
- Data Security Operational Context
- Secrets Management
- Encryption Fundamentals
- Access Control Enforcement
- Key Management Lifecycle
- Storage Data Protection
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 19
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 961
- Key insights inside selected files: 594
- Unique concept tags in selected files: 7

##### Transcript-Enriched Learning Notes
- Okay, so now let's talk about SSL and TLS Certificates.
- And even if you do know SSL and TLS, please watch this lecture.
- So an SSL certificate allows the traffic between your clients and your load balancer to be encrypted while in transit.
- And TLS is the newer version of SSL and it refers to Transport Layer Security.
- But the thing is, nowadays, TLS certificates are the one that are mainly used, but people, including myself, I will still refer this as SSL.
- So it's better to say a TLS certificate than SSL certificates, but for many reasons, I'm still gonna say it's SSL because it's easier to understand.
- So public SSL certificates are issued by Certificate Authorities, and they include something like Comodo, Symantec, GoDaddy, GlobalSign, Digicert, Letsencrypt, and so on.
- And using this public SSL certificate attached to our load balancer, we're able to encrypt the connection between the clients and the load balancer.
- Don't put your login information because it's not secure." So the SSL certificates, they have an an expiration date that you set and they must be renewed regularly to make sure that they're authentic, okay?
- So users connect over HTTPS, and it's S because it's using SSL certificates and it's encrypted.
- And internally, your load balancer does something called SSL certificate termination.
- So the load balancer will load an X.509 certificate, which is called a SSL or TLS server certificate.
- And you can manage these SSL certificates in AWS using ACM, meaning AWS Certificate Manager.
- Now, you can also upload your own certificates to ACM if you wanted to.
- And when you set you an HTTPS listener, you must specify a default certificate.
- That means that, and you can also, finally for HTTPS, set a specific security policy if you wanted to support all their versions of SSL and TLS, called also legacy clients.
- SNI solves a very important problem, which is how do you load multiple SSL certificates onto one web server in order for that web server to serve multiple websites?
- So the client will say, "I want to connect to this website." And the server will know what certificate to load.

##### Polished Architect Notes
- Transcript signals that so now let's talk about SSL and TLS Certificates.
- Transcript signals that even if you do know SSL and TLS, please watch this lecture.
- Transcript signals that an SSL certificate allows the traffic between your clients and your load balancer to be encrypted while in transit.
- Transcript signals that tLS is the newer version of SSL and it refers to Transport Layer Security.
- Transcript signals that the thing is, nowadays, TLS certificates are the one that are mainly used, but people, including myself, I will still refer this as SSL.
- Transcript signals that it's better to say a TLS certificate than SSL certificates, but for many reasons, I'm still gonna say it's SSL because it's easier to understand.
- Transcript signals that public SSL certificates are issued by Certificate Authorities, and they include something like Comodo, Symantec, GoDaddy, GlobalSign, Digicert, Letsencrypt, and so on.
- Transcript signals that using this public SSL certificate attached to our load balancer, we're able to encrypt the connection between the clients and the load balancer.
- Transcript signals that don't put your login information because it's not secure." So the SSL certificates, they have an an expiration date that you set and they must be renewed regularly to make sure that they're authentic, okay?
- Transcript signals that users connect over HTTPS, and it's S because it's using SSL certificates and it's encrypted.
- Transcript signals that internally, your load balancer does something called SSL certificate termination.
- Transcript signals that the load balancer will load an X.509 certificate, which is called a SSL or TLS server certificate.

##### Architect Synthesis (Transcript-Derived)
- Treat Certificate and TLS Security as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Data Security Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Secrets Management as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Encryption Fundamentals as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Access Control Enforcement as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: so now let's talk about SSL and TLS Certificates.
- Design implication: even if you do know SSL and TLS, please watch this lecture.
- Design implication: an SSL certificate allows the traffic between your clients and your load balancer to be encrypted while in transit.
### Phase 2 - Core Services

#### SSM Parameter Store
- Centralized secure configuration store with access controls and versioning patterns.
- Useful for runtime parameters with controlled retrieval paths.

#### AWS Secrets Manager
- Purpose-built secret management with rotation-centric workflows.
- Ideal for credential-heavy application paths requiring periodic rotation automation.

#### AWS Certificate Manager
- Certificate issuance and lifecycle management for integrated AWS endpoints.
- Reduces manual certificate overhead when integrated service paths are used.

#### SSL/TLS Operational Security
- SNI behavior, MITM risk awareness, and endpoint validation are operationally critical.
- Treat certificate expiry and chain validation as reliability and security events.

### Phase 3 - Advanced Patterns

#### Pattern 1: Zero-Plaintext Application Pipeline
- Application retrieves secrets at runtime from managed stores.
- No long-lived plaintext credentials in repos, AMIs, or static environment files.

#### Pattern 2: Rotating Credentials with Safe Rollout
- Implement staged rotation with compatibility windows and health checks.
- Pair secret updates with dependent service reload/restart controls.

#### Pattern 3: Certificate Reliability Governance
- Automate issuance/renewal and expiry alerting.
- Maintain trust-store and endpoint consistency across environments.

### Phase 4 - System Design (Production)

#### Reference Secret and Certificate Architecture
- Central secret domain with scoped access policies per workload tier.
- Certificate lifecycle control integrated into deployment and traffic entry layers.
- Audit trail of retrieval and update operations.

#### Scaling Considerations
- Secret sprawl and naming inconsistency.
- Rotation dependencies across multi-service transaction paths.
- Certificate distribution complexity in hybrid and multi-region architectures.

#### Cost Considerations
- Secret retrieval frequency and rotation cadence influence operational cost.
- Certificate automation lowers manual toil and incident risk.

### Cross-Cloud Concept Mapping (Secrets and Certificates)

#### Underlying Concept: Managed Secret Storage
- AWS: Parameter Store and Secrets Manager
- Azure: Key Vault secrets
- GCP: Secret Manager
- Trade-off: retrieval patterns and rotation tooling differ; unify operational controls, not API specifics.

#### Underlying Concept: Certificate Lifecycle Management
- AWS: ACM
- Azure: Key Vault certificates and service integrations
- GCP: Certificate management patterns across edge and load-balancing stacks
- Trade-off: automated renewal depth varies by integration surface.

### Real-World Use Cases from Transcript Signals
- Remove hard-coded credentials from application pipelines.
- Rotate database and service credentials with minimal downtime.
- Maintain secure TLS posture for public and internal endpoints.

### Constraints and Exam-Relevant Traps Captured
- Secret storage alone is insufficient without retrieval-path governance.
- Certificate validity issues can appear as availability incidents.
- Rotation without compatibility planning can create production outages.
## Step 1 â€” Line-by-Line Extraction

Every non-empty line from every source transcript is preserved below with extraction fields.

### File: outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/04_Security/019_Parameter Store.txt

Line 1:
- Concepts: Secrets Management
- Services: SSM Parameter Store
- Key Insights: So now let's talk about the SSM Parameter Store.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 2:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It's a secure storage for your configuration and your secrets.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 3:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: And optionally, you can choose to encrypt these configurations and therefore make it secrets by using the KMS service.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 4:
- Concepts: Secrets Management
- Services: SSM Parameter Store
- Key Insights: SSM Parameter Store is serverless, it's scalable, it's durable, and the SDK is very easy to use.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 5:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: On top of it, if you update your parameters then you have version tracking of them.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 6:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: The security is provided through IAM and you get notifications with Amazon EventBridge, in certain amount of cases.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 7:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: You have full integration with CloudFormation.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 8:
- Concepts: Secrets Management
- Services: SSM Parameter Store
- Key Insights: That means that CloudFormation can leverage the parameters from parameter store as input parameters for your stacks.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 9:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's take an example.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 10:
- Concepts: Secrets Management
- Services: SSM Parameter Store
- Key Insights: We have an application and then we have the SSM parameter store.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 11:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So we can store plain text configuration in this way.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 12:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Then the IAM permissions of your applications are going to be checked.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 13:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: For example, your EC2 instance role or you can have encrypted configuration.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 14:
- Concepts: Secrets Management
- Services: AWS KMS, SSM Parameter Store
- Key Insights: In that case the SSM parameter store is going to encrypt it with KMS.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 15:
- Concepts: Encryption Fundamentals
- Services: AWS KMS
- Key Insights: And so the KMS service is going to be used for encryption and decryption.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 16:
- Concepts: Encryption Fundamentals
- Services: AWS KMS
- Key Insights: And of course, you need to make sure that your applications do have access to the underlying KMS key to perform that encryption and that decryption.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 17:
- Concepts: Secrets Management
- Services: SSM Parameter Store
- Key Insights: So you can store parameters in the parameter store with a hierarchy.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 18:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So for example, you can define my department as a path and underneath the My-app and then the Dev and then we have the Dev DB-URL and then the DB-password within that folder.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 19:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So that means that your parameters goes all the way down into the hierarchy.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 20:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: We can go one level up and store a parameter for the Prod DB-URL, as well as a Prod DB password and go up to another app or another department.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 21:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: That really allows you to organize your parameters the way you want in a structured fashion.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 22:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then this is going to simplify your IAM policies to allow applications to have access to an entire department, or to an entire app, or just to an app department environment specific path.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 23:
- Concepts: Secrets Management
- Services: AWS Secrets Manager, SSM Parameter Store
- Key Insights: You also have the opportunity to access Secrets of Secrets Manager through the Parameter Store by using this reference right here.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 24:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So it's a little trick that not many people know.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 25:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And there are something called Public Parameters that are issued by AWS that you can use.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 26:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: For example, if you want to find the latest AMI for the Amazon Index 2 in your specific region.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 27:
- Concepts: Secrets Management
- Services: SSM Parameter Store
- Key Insights: This is something that's available within the Parameter Store as an API call.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 28:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So if you take an application, for example our Dev Lambda function is going to have an IAM roll that allows it to access the DB-URL and DB-password within the Dev of my app.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 29:
- Concepts: Access Control Enforcement, Secrets Management
- Services: (none explicit)
- Key Insights: And then if you have a Prod Lambda Function, thanks to again, a different IAM policy and maybe some environment variables, you can access the Prod DB-URL and Prod DB-password of another path. (mouse clicks) Now, within Systems Manager, you have two kinds of parameter tiers.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 30:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: You have the standard and the advanced tier.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 31:
- Concepts: Access Control Enforcement, Secrets Management
- Services: (none explicit)
- Key Insights: So the big difference is going to be around the size of 4KB which is 8KB, and also the availability of a parameter policy.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 32:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: For the standard one, we have none but for advanced, we have some.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 33:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: The advanced type of parameters is going to be a $0.05 per month.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 34:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Whereas the first one is going to be free.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 35:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: So what are these parameter policies?
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 36:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: And this is only for advanced parameters. (mouse clicks) Well, this allows you to assign a time to live to a parameter, that means an expiration date.
- Hidden/Implicit Meaning: Constraint or limitation signal; Secret/certificate lifecycle signal.

Line 37:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So that you forced users to update or delete sensitive data such as passwords.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 38:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And you can assign multiple policies at a time.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 39:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: So here is an example policy.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 40:
- Concepts: Access Control Enforcement, Secrets Management
- Services: (none explicit)
- Key Insights: So this is an expiration policy to delete a parameter and you say, "Hey, on this time stamp you must delete these parameter." And then through the EventBridge integration, EventBridge is going to get notifications of it.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Secret/certificate lifecycle signal.

Line 41:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: So in this example, 15 days before the parameter expires we'll receive notification in EventBridge which gives us enough time to actually update it and make sure the parameter is not getting deleted because of the TTL.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 42:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Or maybe sometimes you wanna make sure the parameters change once in a while.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 43:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: So you can have a no change notification in EventBridge so that if a parameter has not been updated for 20 days, then you will be notified as well.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 44:
- Concepts: Secrets Management
- Services: SSM Parameter Store
- Key Insights: So you can get very, you know, creative with the parameter store.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 45:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But now you get the idea behind it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 46:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So I hope you like this lecture and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/04_Security/020_Secrets Manager.txt

Line 1:
- Concepts: Data Security Operational Context
- Services: AWS Secrets Manager
- Key Insights: Let's talk about AWS Secrets Manager, which is a great service meant, obviously, for storing secrets.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 2:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It could be passwords, API keys, and so on.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 3:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But the cool thing about the service is that you can rotate your secrets automatically every X number of days.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 4:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And these new secrets can be rotated on-demand or automatically and generated automatically.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 5:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: For example, using a Lambda function.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 6:
- Concepts: Data Security Operational Context
- Services: AWS Secrets Manager, Amazon RDS
- Key Insights: There is a native integration between RDS and Secrets Manager for all DB engines, but also Redshift, DocumentDB and so on.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 7:
- Concepts: Data Security Operational Context
- Services: AWS Secrets Manager
- Key Insights: And for other databases or services that you want to rotate automatically, you would have to write a custom Lambda function that would generate these secrets, and then insert it into Secrets Manager.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 8:
- Concepts: Data Security Operational Context
- Services: AWS Secrets Manager
- Key Insights: Here, in this diagram, we have Secrets Manager.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 9:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: It contains a secret, it's a database password.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 10:
- Concepts: Data Security Operational Context
- Services: Amazon RDS
- Key Insights: And it's actually the database password of our RDS database.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 11:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So they're linked together, and they will change together.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 12:
- Concepts: Access Control Enforcement, Secrets Management
- Services: (none explicit)
- Key Insights: Now, to control access to the secret, we can use a resource-based policy.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 13:
- Concepts: Data Security Operational Context
- Services: AWS Secrets Manager
- Key Insights: And also, Secrets Manager is going to be integrated with so many other services that will automatically pull the secrets from Secrets Manager.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 14:
- Concepts: Data Security Operational Context
- Services: AWS Secrets Manager
- Key Insights: We have CloudFormation, so you can reference Secrets Manager secrets in the CloudFormation templates, but also CodeBuild, ECS for your environment variables.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 15:
- Concepts: Secrets Management
- Services: SSM Parameter Store
- Key Insights: And I will not name them all, but EMR, Fargate, EKS, Parameter Store, and so on.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 16:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So in this example, I represented an ECS task.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 17:
- Concepts: Data Security Operational Context
- Services: Amazon RDS
- Key Insights: And as you can see, this ECS task will need to access your RDS database.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 18:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So how will it do it?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 19:
- Concepts: Data Security Operational Context
- Services: AWS Secrets Manager
- Key Insights: Well, because we have a native integration between ECS and Secrets Manager, what can happen is that at boot time, your ECS task can automatically pull your secrets and inject it as an environment variable within your task.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 20:
- Concepts: Data Security Operational Context
- Services: Amazon RDS
- Key Insights: And therefore, because it's available as an environment variable, then your ECS task, whatever software is running within it, can access your RDS database securely.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 21:
- Concepts: Secrets Management
- Services: AWS Secrets Manager
- Key Insights: This is the kind of template that would create a secret with Secrets Manager within CloudFormation.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 22:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: In the first part, we generate the secrets.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 23:
- Concepts: Data Security Operational Context
- Services: Amazon RDS
- Key Insights: Then, in the second part, we're going to reference the secrets in your RDS DB instance.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 24:
- Concepts: Secrets Management
- Services: Amazon RDS
- Key Insights: And then, in the third part, we create what's called a "secret attachment", which is going to link the secrets to the RDS DB instance.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 25:
- Concepts: Key Management Lifecycle
- Services: AWS Secrets Manager, Amazon RDS
- Key Insights: And it's going to tell Secrets Manager that, in case of rotation, you need to also change the password in your RDS database itself.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 26:
- Concepts: Data Security Operational Context
- Services: AWS Secrets Manager
- Key Insights: You need to know the process to share secrets across accounts in Secrets Manager.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 27:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: So you have a security account, where your secret is going to be, and a developer account that needs to use that secret.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 28:
- Concepts: Secrets Management
- Services: AWS KMS
- Key Insights: We have a Secret Manager's secret, it's in our account, and of course, it's protected and encrypted through a KMS key.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 29:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: Now, how do we make a user in the dev account access our secret?
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 30:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: There is no way to share that secret using Resource Access Manager, so you can forget about it.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 31:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Instead, we can access and we can attach resource-based policies to our secrets.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 32:
- Concepts: Access Control Enforcement, Encryption Fundamentals
- Services: AWS KMS
- Key Insights: The first thing to do though, is to allow the user to do a kms:Decrypt on our KMS key by attaching a KMS policy to our KMS key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 33:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And on top of it, you see there will be a condition in it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 34:
- Concepts: Encryption Fundamentals
- Services: AWS KMS, AWS Secrets Manager
- Key Insights: The KMS via service, which allows to use the kms:Decrypt operation only if it's invoked via, so through, the Service Secrets Manager.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal; Secret/certificate lifecycle signal.

Line 35:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It's a little bit of a tricky condition here.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 36:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: AWS Secrets Manager, Amazon S3
- Key Insights: And then, we create a resource-based policy on our Secrets Manager's secrets, which is similar, for example, to an S3 bucket policy.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal; Storage access-hardening signal.

Line 37:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: And we allow, from the resource-based policy, a user, or an IAM role, or whatever you want, in the developer account, to do a GetSecretValue on our secrets.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 38:
- Concepts: Access Control Enforcement, Encryption Fundamentals, Secrets Management
- Services: AWS KMS
- Key Insights: And with these two permissions, anyone or, I think, anyone authorized in a dev account to access our secret can access it and can decrypt it because you have access both to the secret, thanks to resource-based policy, as well as the key, thanks to a KMS policy.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 39:
- Concepts: Secrets Management
- Services: AWS Secrets Manager, SSM Parameter Store
- Key Insights: You can ask me what's the difference between Parameter Store and Secrets Manager?
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 40:
- Concepts: Key Management Lifecycle
- Services: AWS Secrets Manager
- Key Insights: Well, Secrets Manager is more expensive, but you get automated rotation of secrets with Lambda.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 41:
- Concepts: Data Security Operational Context
- Services: Amazon RDS
- Key Insights: The Lambda function is automatically provided for you with RDS, Redshift, and DocumentDB.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 42:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: That's why it's automatic.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 43:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: Then, of course, you need to encrypt your secrets with KMS.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 44:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It's mandatory.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 45:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And it has deep integration with CloudFormation.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 46:
- Concepts: Secrets Management
- Services: SSM Parameter Store
- Key Insights: So with the SSM Parameter Store, it's a more simple API.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 47:
- Concepts: Key Management Lifecycle, Secrets Management
- Services: (none explicit)
- Key Insights: There is no secret rotation, although we'll see in the next slide how you can actually create some kind of rotation mechanism using EventBridge and Lambda.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 48:
- Concepts: Encryption Fundamentals
- Services: AWS KMS
- Key Insights: KMS encryption is optional.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 49:
- Concepts: Secrets Management
- Services: SSM Parameter Store
- Key Insights: That means that you can also store non-secret values in the Parameter Store.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 50:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: There is deep integration with CloudFormation.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 51:
- Concepts: Secrets Management
- Services: AWS Secrets Manager, SSM Parameter Store
- Key Insights: And there is a little trick to pull Secrets Manager's secret directly using the Parameter Store API.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 52:
- Concepts: Key Management Lifecycle
- Services: AWS Secrets Manager, Amazon RDS
- Key Insights: So in terms of rotation, if you look at Secrets Manager, there is, for example, deep integration with RDS.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 53:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And the way it works that, in the backend, a Lambda function is going to be invoked every 30 days.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 54:
- Concepts: Data Security Operational Context
- Services: AWS Secrets Manager, Amazon RDS
- Key Insights: It's going to change the password onto Amazon RDS and also change the passwords in Secrets Manager.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 55:
- Concepts: Secrets Management
- Services: SSM Parameter Store
- Key Insights: Whereas, if you used the SSM Parameter Store...
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 56:
- Concepts: Secrets Management
- Services: Amazon RDS, SSM Parameter Store
- Key Insights: Say you had your RDS secrets into the Parameter Store.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 57:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Well, you would need to create an Amazon EventBridge rule to invoke a Lambda function every 30 days that would change the password and change the value.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 58:
- Concepts: Key Management Lifecycle
- Services: AWS Secrets Manager
- Key Insights: But it's up to you to maintain this kind of integration, whereas it's provided by Secrets Manager automatically as a rotation feature.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 59:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: That's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 60:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/04_Security/022_SSL Encryption, SNI & MITM.txt

Line 1:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: So here is a lecture about how SSL works, and how to protect yourself against Man-in-the-Middle attacks.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 2:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: Please do not skip this lecture even if you know SSL.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 3:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I will go over the basics but trust me, there'll be some new content for you.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 4:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: So, SSL refers to Secure Socket Layer, and it's used to encrypt connections.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 5:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: And TLS refers to Transport Layer Security, which is a newer version of that protocol.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 6:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: And nowadays, even though it's almost only TLS certificates, people still refer, including me, of it as SSL.
- Hidden/Implicit Meaning: Constraint or limitation signal; Secret/certificate lifecycle signal.

Line 7:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: So if you hear me say SSL, I meant TLS, and it's just everyone does that.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 8:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So don't get mad at me.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 9:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: So public SSL certificates are issued by something called the Certificate Authority.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 10:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: And you have many public Certificate Authorities, such as Comodo, Symantec, GoDaddy, GlobalSign, Digicert, Letsencrypt, and so on.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 11:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: And when a certificate is issued to you, it has an expiration date that you will set, and then you must renew it before it expires to keep your service up and running.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Secret/certificate lifecycle signal.

Line 12:
- Concepts: Certificate and TLS Security, Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So, how does SSL encryption work?
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 13:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Well, you have a client and a server and they need to talk to one another using a secure channel.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 14:
- Concepts: Certificate and TLS Security, Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So they need to use SSL encryption.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 15:
- Concepts: Certificate and TLS Security, Encryption Fundamentals
- Services: (none explicit)
- Key Insights: The thing is, using asymmetric encryption, which is the basis of SSL, is very, very expensive.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 16:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And by expensive, we mean expensive in terms of CPU cycles.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 17:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So the least expensive type of encryption is symmetric encryption, it's much cheaper.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 18:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: But SSL is only for asymmetric.
- Hidden/Implicit Meaning: Constraint or limitation signal; Secret/certificate lifecycle signal.

Line 19:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So the idea is that during the asymmetric handshake, which is the first connection between the client and the server, they're going to use an exchange, a symmetric key that it will commonly share for this communication.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 20:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And from that point forward, they will only use the symmetric key to talk to one another.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 21:
- Concepts: Certificate and TLS Security, Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So in this case, the asymmetric encryption of SSL is just used for the handshake, and then it's all symmetrical.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 22:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, how does that work in detail?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 23:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: The client says, hello, here is my cipher suits and here is a random thing.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 24:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: And the server responds, okay, here is my server random, and here is my SSL certificate.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 25:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: The client will verify the authenticity of the SSL certificate by looking up if it's correctly computed.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 26:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then if it is, it will send a master symmetric key that has been generated and sent, and they will be encrypted using the key that it has received.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 27:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: And the idea here is that, this secret will be able to be retrieved by the server and decrypted.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 28:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: And in case the client also has an SSL certificate, it will send it at this moment.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 29:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: So it's possible to have a two-way certificate where the client will find it gets to the server, and the server to the client.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 30:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then using the master key of the server, the private, using the private key, the master symmetric generated key by the client will be decrypted.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 31:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And we will have a secure connection.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 32:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: That is going to be symmetrical this time, in place between the client and the server.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 33:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: You don't need to know all these details.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 34:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: The exam will not test you on this, but I want to make sure you understand how these handshake works, at least at a high level.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 35:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: So you get an idea of how SSL works, just for your knowledge because I think as a Solution Architect Professional, if you don't know how SSL works, that's a bit worrying, okay?
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 36:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But the exam will not test you on this exact, this exact knowledge.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 37:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: Definitely not, but, something it may test you on is, SSL, SNI, for Server Name Indication.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 38:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: So the idea is that SNI, will solve the problem of loading multiple SSL certificates onto one web server only.
- Hidden/Implicit Meaning: Constraint or limitation signal; Secret/certificate lifecycle signal.

Line 39:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And that will allow you to serve multiple websites from that one web server.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 40:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It's a newer kind of protocol.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 41:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: And so it requires the clients to indicate which host name it's trying to connect to, during this initial SSL handshake that we solved.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 42:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: And then the server will find the correct certificate, or it will return a default one if it doesn't find one.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 43:
- Concepts: Data Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: And so this works for the ALB and the NLB, which are the newer generation load balancers, and CloudFront.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 44:
- Concepts: Data Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: It does not work for your Classic Load Balancer, which is older gen.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 45:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Very important to note.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 46:
- Concepts: Data Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: So we have our ALB, and it needs to be connected to two target group, which are connected to different host names.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 47:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: The first one is www.mycorp.com.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 48:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And the second one is Domain1.example.com.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 49:
- Concepts: Certificate and TLS Security
- Services: Elastic Load Balancing
- Key Insights: So we're going to load two SSL certificates onto our ALB, but it could be more.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 50:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: And so one SSL certificate will correspond to the first target group, and the other one to the second target group.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 51:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: The idea now is that, a client who has SNI compatibility says, hey, I would like to connect to www.mycorp.com.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 52:
- Concepts: Certificate and TLS Security
- Services: Elastic Load Balancing
- Key Insights: And the ALB, because it has SNI enabled, will use the SSL, the correct SSL certificate, and then it will redirect it to the correct target group.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 53:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And we'll have an encrypted connection.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 54:
- Concepts: Certificate and TLS Security
- Services: Elastic Load Balancing
- Key Insights: But in case we ask for obviously another domain, then the ALB will be smart enough to get the other SSL certificate and connect to the right target group.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 55:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: So SNI is extremely important.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 56:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: As soon as you have multiple SSL certificates.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 57:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: If you have a CLB, it doesn't work.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 58:
- Concepts: Certificate and TLS Security
- Services: Elastic Load Balancing
- Key Insights: So Classic Load Balancer, and it doesn't work with SNI.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 59:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Then we cannot use one CLB behind multiple applications.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 60:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: You would need to have multiple CLB for multiple target, for multiple ASG, in order to get this architecture working.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 61:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 62:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: And next, extremely important, how to protect yourself against SSL Man-in-the-Middle attacks.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Secret/certificate lifecycle signal.

Line 63:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, how does it look like?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 64:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: We have the Good Server we're trying to reach, and our user is trying to talk to it, but there's a Pirate Server in between.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 65:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And because it's HTTP, right now, it can intercept the packets and change them at will.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 66:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And so it's in the middle and it can see the secrets and so on.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 67:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It's really, really bad.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 68:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this is never happening on the web because there's almost no more HTTP available.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 69:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But if you do have HTTP on the web, be very careful because you are public, you can be a target of Man-in-the-Middle attacks.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 70:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So now the good way is to use HTTPS.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 71:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: So we have the same kind of architecture, but this time the Pirate Server will try to send a fake SSL certificate to the user.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 72:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: By decrypting the packets from the Good Server, and re encrypting them, and maybe changing them.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 73:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: And so if the user is not infected, it's going to detect it's a fake SSL certificate, and not react to it and just say, okay, I'm not communicating with that Pirate Server.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 74:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: But in case the Pirate Server did manage to get onto the user's machine, and make the pirate certificate trustable by the user.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 75:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: Then the user will say, oh, this looks like, it's a certificate I trust.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 76:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And the Pirate Server has successfully done a Man-in-the-Middle attack.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 77:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So how do we prevent a Man-in-the-Middle attack?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 78:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Number one is, do not use public-facing HTTP servers, use HTTPS.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 79:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: That means that you leverage SSL and TLS certificates.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 80:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And that means that the content is encrypted between your clients and your servers.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 81:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: That doesn't prevent the second vector of attack which is, to have a DNS attack.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 82:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So if you're using a DNS, that has DNSSEC enabled, that means that, the DNS is going to be protected against the type of attacks as well.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 83:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Why?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 84:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Well, when a DNS server is hacked, or is possible for a pirate server to forge a DNS response, and to send your clients to the wrong target server.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 85:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But you can protect against that by having your domain name configured with DNSSEC.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 86:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So Amazon Route 53 supports DNSSEC for domain registration.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 87:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: And, as of December 2020, it also supports DNS security, DNSSEC, for DNS service itself using KMS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 88:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So both domain registration, and the DNS service, are now DNSSEC compliant on Route 53.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 89:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: You could alternatively run a custom DNS server on EC2, for example.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 90:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: One of them could be Bind, which is the most popular, but you have other ones which is dnsmasq, KnotDNS, or PowerDNS.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 91:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And configure DNSSEC directly on your custom institute instance.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 92:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But right now, there's a change, and Amazon Route 53 supports DNSSEC out of the box, as of December 2020, that used to not be the case.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 93:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 94:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 95:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/04_Security/023_AWS Certificate Manager - ACM.txt

Line 1:
- Concepts: Certificate and TLS Security
- Services: AWS Certificate Manager
- Key Insights: So now, let's talk about AWS Certificate Manager or ACM.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 2:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: So, in case you wanna host public SSL certificates in AWS, you can have two ways.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 3:
- Concepts: Data Security Operational Context
- Services: AWS Certificate Manager
- Key Insights: You can buy your own and upload them to ACM using the CLI, or you can have ACM provision the certificates itself, and renew it for you for free, free of cost and automatically.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 4:
- Concepts: Certificate and TLS Security
- Services: AWS Certificate Manager
- Key Insights: So, ACM will load SSL certificates onto some following integrations.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 5:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Number one is load balancers, including the one you can, that you would create using Elastic Beanstalk, CloudFront distributions, APIs on API's Gateways.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 6:
- Concepts: Certificate and TLS Security
- Services: AWS Certificate Manager
- Key Insights: So, anywhere, really, there is a need for SSL certificates, there is going to be an integration with ACM for it.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 7:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, how does it work?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 8:
- Concepts: Certificate and TLS Security
- Services: Elastic Load Balancing
- Key Insights: We have our user, and he's going to talk to you in ALB for this instance, and he will go through HTTPS, and the ALB would provide SSL termination.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 9:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: That means that the connection will be terminated, and a new one will be opened to the backend instances.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 10:
- Concepts: Certificate and TLS Security
- Services: AWS Certificate Manager, Elastic Load Balancing
- Key Insights: So, ACM will be on the left-hand side to provision and maintain the SSL certificates on to the ALB, so we don't have to worry about that part any more.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 11:
- Concepts: Certificate and TLS Security, Encryption Fundamentals
- Services: Elastic Load Balancing
- Key Insights: And then, finally, the ALB will be forwarding private, HTTP requests to your EC2 instance, if you set up HTP integration, and your EC2 instance will not have to perform SSL encryption or decryption, so that means that you have less CPU cost on your EC2 instance, thanks to the SSL termination that happens at the load-balancer level.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 12:
- Concepts: Certificate and TLS Security
- Services: AWS Certificate Manager
- Key Insights: So, overall, ACM is amazing, because, from my personal experience, SSL certificates are very difficult to maintain manually, and so, having this integration with ACM, this automated provisioning, and this integration with AWS services, makes it really, really easy to deal with SSL certificates in AWS, and so, you have no reason not to use them nowadays.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 13:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 14:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, good to know going into the exam.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 15:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: First of all, you can create your own public certificates, and you need to verify the public DNS, and you must be issued by a trusted public certificate authority.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Secret/certificate lifecycle signal.

Line 16:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: You can create some private certificates.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 17:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: That's for your internal applications, so you can have your own private CA, and your applications must be set up to trust your private CA.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 18:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, the definition of a private CA is that it's not public.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 19:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So it's yours, it's not widely known.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 20:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: And so, for your application to trust any SSL certificates that is created outside of your, from your private CA, that means that your application need to trust the certificate of the CA itself.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 21:
- Concepts: Certificate and TLS Security
- Services: AWS Certificate Manager
- Key Insights: For the certificate renewal, in case you provision the certificate using ACM, it's automatically done by ACM, or, if you have manually uploaded a certificate into ACM, you will need to be performing the renewal of that certificates manually, so a bit more maintenance on your side.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 22:
- Concepts: Data Security Operational Context
- Services: AWS Certificate Manager
- Key Insights: Finally, very, very, very, very important, ACM is a regional service.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 23:
- Concepts: Certificate and TLS Security
- Services: Elastic Load Balancing
- Key Insights: That means that if you have a global application, with multiple ALB all around the world in different AWS regions, you will need to issue an SSL certificate in each region where your application is deployed.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 24:
- Concepts: Data Security Operational Context
- Services: AWS Certificate Manager
- Key Insights: So, you cannot use ACM as a global service.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 25:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It's a regional service.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 26:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And you cannot copy certificates across regions.
- Hidden/Implicit Meaning: Constraint or limitation signal; Secret/certificate lifecycle signal.

Line 27:
- Concepts: Certificate and TLS Security
- Services: AWS Certificate Manager
- Key Insights: So, you will have to have ACM provision a certificate in every single region where you have load-balancers, for example, for this to work.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 28:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Obviously, if you use CloudFront, CloudFront is a global distribution, so you don't need to do this, right?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 29:
- Concepts: Certificate and TLS Security
- Services: AWS Certificate Manager, Elastic Load Balancing
- Key Insights: But if you have an ALB deployed in multiple regions, then you need to remember that ACM is a regional service and so, you need to have multiple SSL certificates, all around the globe, for this to work.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 30:
- Concepts: Data Security Operational Context
- Services: AWS Certificate Manager
- Key Insights: All right, that's it for ACM.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 31:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/189_[SAA] Secrets Manager.txt

Line 1:
- Concepts: Data Security Operational Context
- Services: AWS Secrets Manager
- Key Insights: So now let's talk about a very simple service called the AWS Secrets Manager.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 2:
- Concepts: Key Management Lifecycle, Secrets Management
- Services: AWS Secrets Manager, SSM Parameter Store
- Key Insights: So it's a newer service and it's meant for storing secrets and it's going to be different from the SSM parameter store, because on Secrets Manager, you have the capability to force the rotation of secrets every X number of days, and therefore you have a better secret management schedule.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 3:
- Concepts: Key Management Lifecycle
- Services: AWS Secrets Manager
- Key Insights: On top of it, from within Secrets Manager, you can force and automate the generation of secrets on the rotation.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 4:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And for this, you have to define a Lambda function that will generate that new secrets.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 5:
- Concepts: Data Security Operational Context
- Services: AWS Secrets Manager
- Key Insights: Moreover, Secrets Manager is really well integrated with different services on AWS.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 6:
- Concepts: Data Security Operational Context
- Services: Amazon RDS
- Key Insights: And I just showed you Amazon RDS for example, for MySQL, PostgreSQL, SQL or Aurora.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 7:
- Concepts: Data Security Operational Context
- Services: AWS Secrets Manager
- Key Insights: But there are other services as well with AWS, other databases, that are integrated with Secrets Manager out of the box.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 8:
- Concepts: Data Security Operational Context
- Services: AWS Secrets Manager
- Key Insights: That means that the username and the password to get into your database is stored directly in Secrets Manager and it can be rotated and so on.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 9:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: Now, Secrets can be encrypted using the KMS service.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 10:
- Concepts: Data Security Operational Context
- Services: AWS Secrets Manager, Amazon RDS
- Key Insights: And so anytime in the exam you see Secrets, or integration for RDS, or for Aurora of Secrets, really think Secrets Manager.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 11:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: There's one more feature we need to know about which is the concept of multi-region Secrets.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 12:
- Concepts: Data Security Operational Context
- Services: AWS Secrets Manager
- Key Insights: So the idea is that you can replicate your Secrets across multiple AWS regions and Secrets Manager Service will keep readers in sync with the primary Secrets.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 13:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So here have two regions.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 14:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: We create a Secret in the primary one and it gets replicated as a same Secret into a secondary region.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 15:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Now, why would we do this?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 16:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Well, multiple things.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 17:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: Number one, in case there is a problem with US East 1, you're able, for example, to promote a replica Secret as a standalone secret.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 18:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: And then thanks to the fact that that Secret is replicated across regions, then you can build multiple regions apps.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 19:
- Concepts: Secrets Management
- Services: Amazon RDS
- Key Insights: You can also have disaster recovery strategies, or if you have an RDS database that is also being replicated from one region to the next, then you can use the same Secret to access, the same, the RDS database, the corresponding one, in the corresponding region.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 20:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 21:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/190_[SAA] Secrets Manager - Hands On.txt

Line 1:
- Concepts: Data Security Operational Context
- Services: AWS Secrets Manager
- Key Insights: So, now let's talk about the Secrets Manager service.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 2:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, as we can see, it's to easily rotate, manage, and retrieve secrets throughout their life cycle.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 3:
- Concepts: Key Management Lifecycle, Secrets Management
- Services: Amazon RDS, SSM Parameter Store
- Key Insights: So, it's similar to the SSM parameter store because you can store secret things, but it's going to be different from it because while you have rotation, management, and tight integrations with databases such as MySQL, PostgreSQL, Amazon Aurora, and RDS and so on.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 4:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: So, the pricing is you have a 30-day free trial available, and then you're going to pay $0.40 per secret, per month, and then $0.05 per 10,000 API calls.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 5:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: So, if you again expect to remain within the free tier, just create a secret and then delete it.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 6:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: So, let's go ahead and store a new secret, and we can choose a secret type.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 7:
- Concepts: Data Security Operational Context
- Services: Amazon RDS
- Key Insights: Now, over time, it's very possible that this gets increased in terms of the capability of integrations, but we have Amazon RDS, we have Amazon DocumentDB, Amazon Redshift, other databases, or other type of secrets.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 8:
- Concepts: Data Security Operational Context
- Services: Amazon RDS
- Key Insights: So, if you are on Amazon RDS, as you can see, it prompts you for username and password and so on.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 9:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And if you go for example, for other type of secrets, here we can store anything we want.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 10:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: So for example, I can say MySecretKey, and then MyVerySecretValue, and this would be a secret stored in here.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 11:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: And another one could be, for example, API_KEY, and then would be as well like a secret API key, so you would enter some text in here.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 12:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So you can enter it through this UI, or you can go in plain text and you have adjacent document that you can edit it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 13:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: To edit the key values, this is just a different way of specifying your secrets.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 14:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: So, this will be kept secret so that only person with the correct IAM permissions can access these secrets.
- Hidden/Implicit Meaning: Constraint or limitation signal; Secret/certificate lifecycle signal.

Line 15:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: Then we specify an encryption key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 16:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So, we have the default one, but you can use your own KMS key if you wanted to.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 17:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I click on next.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 18:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: Then we need to name our secret.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 19:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: So prod/my-secret for example, and a description but I don't need it.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 20:
- Concepts: Access Control Enforcement, Secrets Management
- Services: (none explicit)
- Key Insights: Resource permission, so do we want to have a policy that restricts who can access the secret?
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 21:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: And it could be across AWS accounts thanks to this resource policy right here, and you would've have it adjacent form.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 22:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: Amazon S3
- Key Insights: So, it's similar to an S3 bucket policy.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 23:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: And then you have the option to replicate the secret across regions.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 24:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: And this is good if you want to have multi-region setups which as multi-region apps or multi-region databases.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 25:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: And here we can say, "Okay, I want to replicate this into us-west-2 using this encryption key right here and also into AP Southeast-1 and so on.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 26:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, I'm not gonna do this, but this would be how you would replicate your secrets.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 27:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, then I click on Next.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 28:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Then you want to automatically rotate our secrets, yes or no.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 29:
- Concepts: Key Management Lifecycle
- Services: (none explicit)
- Key Insights: And when do we want to rotate it, and if we do enable rotation, then we need to specify a rotation function.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 30:
- Concepts: Key Management Lifecycle
- Services: (none explicit)
- Key Insights: This is a Lambda function that will be performing this rotation.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 31:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So for now, disable it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 32:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then we have a look.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 33:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: So, we have a secret right here.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 34:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It's replicated into us-west-2.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 35:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And here's some code if we wanted to invoke and get that secrets from our clients.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 36:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: So, I'm not gonna go ahead with creating this, but as you can see, this would store a secret and then use this code to retrieve in your code the correct secrets.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 37:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, we'll cancel this.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 38:
- Concepts: Secrets Management
- Services: Amazon RDS
- Key Insights: Another kind of secret you can have is a credential for an Amazon RDS database.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 39:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, you would create a username and a password and then you would specify a database.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 40:
- Concepts: Data Security Operational Context
- Services: AWS Secrets Manager, Amazon RDS
- Key Insights: And the cool thing about it is that thanks to the integration between RDS and Secrets Manager, then this username and this password would be used to be able to login into the database.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 41:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And if you wanted to rotate it, then automatically the database also gets updated.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 42:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, here you would enter it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 43:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: Then you would configure the secrets as well if you wanted to have for example some kind of multi-region replication.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 44:
- Concepts: Key Management Lifecycle
- Services: (none explicit)
- Key Insights: Rotation as well if you wanted to review it and you're done.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 45:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 46:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/191_Secrets Manager - Advanced.txt

Line 1:
- Concepts: Data Security Operational Context
- Services: AWS Secrets Manager
- Key Insights: So let's have a look at some advanced concepts around Secrets Manager.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 2:
- Concepts: Encryption Fundamentals, Secrets Management
- Services: AWS KMS
- Key Insights: First one, we can use KMS to encrypt and decrypt every version of every secret value.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 3:
- Concepts: Encryption Fundamentals, Secrets Management
- Services: (none explicit)
- Key Insights: And so each secret is going to be encrypted thanks to envelope encryption, with a unique data key.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 4:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: So Secret Manager internally is going to use the generate data key API call to get a data key and is going to encrypt, for example, a secret value, a database password, and then you're going to get the encrypted value and that's how it works in the reverse mechanism for decryption.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 5:
- Concepts: Secrets Management
- Services: AWS KMS
- Key Insights: So we have the option to set our own KMS key for this, or to use the AWS managed key called AWS/Secret Manager.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 6:
- Concepts: Encryption Fundamentals
- Services: AWS KMS
- Key Insights: It only works with symmetric KMS keys and all the encryption process will happen within the service.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 7:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: You don't have to do it on your own.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 8:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: To access a secret, very similar to SSM Biometric Store.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 9:
- Concepts: Encryption Fundamentals, Secrets Management
- Services: AWS KMS
- Key Insights: You must have access, of course, to the secret in Secret Manager, but also have access to the underlying KMS key to be able to encrypt or decrypt that secret.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal; Secret/certificate lifecycle signal.

Line 10:
- Concepts: Key Management Lifecycle
- Services: AWS Secrets Manager
- Key Insights: Next thing is around secrets rotation for Secrets Manager.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 11:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: So this is around the idea that you want to automatically and periodically update a secret.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 12:
- Concepts: Key Management Lifecycle
- Services: Amazon RDS
- Key Insights: So for some databases you have automated password rotation for example, RDS, Redshift, Document DB or other databases.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 13:
- Concepts: Data Security Operational Context
- Services: AWS Secrets Manager, Amazon RDS
- Key Insights: What's going to happen is that Secrets Manager, if this is enabled, every 30 day is going to invoke a Lambda function that you create yourself or that is provided by the service when there isn't already in existing integration such as RDS.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 14:
- Concepts: Data Security Operational Context
- Services: AWS Secrets Manager, Amazon RDS
- Key Insights: And this Lambda function is going to change the password of your Amazon RDS database and therefore it's also going to store the final value in Secrets Manager.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 15:
- Concepts: Secrets Management
- Services: AWS Secrets Manager
- Key Insights: So no matter what the secret you have, Secrets Manager will use a Lambda function to rotate the secrets.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 16:
- Concepts: Key Management Lifecycle, Secrets Management
- Services: (none explicit)
- Key Insights: And if you do happen to enable Secret Rotation, the Secret is going to be rotated immediately.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 17:
- Concepts: Data Security Operational Context
- Services: AWS Secrets Manager, Amazon RDS
- Key Insights: Now, in the use case of you're using a Lambda function to rotate an Amazon RDS database, you must make sure that this Lambda function has access to both the Secrets Manager Service and your database.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Secret/certificate lifecycle signal.

Line 18:
- Concepts: Data Security Operational Context
- Services: Amazon RDS
- Key Insights: So let's assume that our Amazon RDS database is deployed within a VPC.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 19:
- Concepts: Data Security Operational Context
- Services: AWS Secrets Manager, Amazon RDS
- Key Insights: Then we must, of course, deploy our Lambda function within the same VPC, then is going to be able to access Amazon RDS privately, but also we need to make sure we have a VPC endpoint to access back Secrets Manager or a NAT Gateway in place, again, to get network connectivity into Secrets Manager.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Secret/certificate lifecycle signal.

Line 20:
- Concepts: Data Security Operational Context
- Services: AWS Secrets Manager
- Key Insights: We also have the possibility from Lambda function to pull secrets at runtime from Secrets Manager.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 21:
- Concepts: Data Security Operational Context
- Services: AWS Secrets Manager, Amazon RDS
- Key Insights: For example, say we want to connect to an RDS database and the password of this RDS database is within Secrets Manager.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 22:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: We want to inject the secret as an environment variable.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 23:
- Concepts: Secrets Management
- Services: Amazon RDS
- Key Insights: So for this, we're going to reference the secret from Lambda, which, when the Lambda function boots up, is going to fetch that secret and then access the RDS database.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 24:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Thanks to that, of course, password value.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 25:
- Concepts: Access Control Enforcement
- Services: AWS Secrets Manager
- Key Insights: So for this to happen your Lambda function must be configured to access the secrets in Secrets Manager and must have the proper IAM policy.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Secret/certificate lifecycle signal.

Line 26:
- Concepts: Data Security Operational Context
- Services: AWS Secrets Manager
- Key Insights: There is also a very similar mechanism where we integrate ECS with Secrets Manager.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 27:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's talk about the exact same problem.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 28:
- Concepts: Secrets Management
- Services: AWS Secrets Manager, Amazon RDS
- Key Insights: We want to access RDS database at runtime and so we, at boot, are going to pull the secret out of Secrets Manager, is going to be injected as an environment variable, and then we can access RDS.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 29:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: And this can happen only if we have the proper IAM policy in place and we've configured our ECS task properly with an IAM role.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 30:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Alright, next we have resource policies for Secrets Managers.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 31:
- Concepts: Access Control Enforcement, Secrets Management, Storage Data Protection
- Services: Amazon S3
- Key Insights: So it is possible for you to define access to a secret thanks to a resource policy, the same way we have bucket policies for S3 buckets.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal; Storage access-hardening signal.

Line 32:
- Concepts: Access Control Enforcement, Secrets Management
- Services: (none explicit)
- Key Insights: So let's say we have a secret and we attach this resource policy to the secret, where we're saying is that this secret can be accessed by the user Mary, and that's good enough.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 33:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Mary does not need to have its own IAM permissions to access the secrets.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 34:
- Concepts: Key Management Lifecycle, Secrets Management
- Services: (none explicit)
- Key Insights: So the use case is to grant access to a single secret for multiple users managing this from a secret perspective.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 35:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: And forcing provisions, for example, we can add an explicit deny to a secret for whatever use case you have, or sharing a secret between AWS accounts.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 36:
- Concepts: Data Security Operational Context
- Services: AWS Secrets Manager
- Key Insights: Okay, that's it for Secrets Manager.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 37:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/212_[SAA_DVA_SOA] ELB SSL Certificates.txt

Line 1:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: Okay, so now let's talk about SSL and TLS Certificates.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 2:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this is a dumb down version of how this works.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 3:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: This is obviously way more complicated but I want to introduce you to the concepts in case you don't know it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 4:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: And even if you do know SSL and TLS, please watch this lecture.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 5:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: I'm going to talk about SNI and I'm going to talk about the integrations with load balancers.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 6:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So bear with me please.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 7:
- Concepts: Certificate and TLS Security
- Services: Elastic Load Balancing
- Key Insights: So an SSL certificate allows the traffic between your clients and your load balancer to be encrypted while in transit.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 8:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: This is called in-flight encryption.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 9:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So that means the data as it goes through a network is going to be encrypted and only going to be able to be decrypted by the sender and the receiver.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 10:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: So, SSL refers to Secure Sockets Layer and it's used to encrypt transfer connections.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 11:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: And TLS is the newer version of SSL and it refers to Transport Layer Security.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 12:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: But the thing is, nowadays, TLS certificates are the one that are mainly used, but people, including myself, I will still refer this as SSL.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 13:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So I'm making a mistake, but I'm making it on purpose, okay?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 14:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: So it's better to say a TLS certificate than SSL certificates, but for many reasons, I'm still gonna say it's SSL because it's easier to understand.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 15:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: So public SSL certificates are issued by Certificate Authorities, and they include something like Comodo, Symantec, GoDaddy, GlobalSign, Digicert, Letsencrypt, and so on.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 16:
- Concepts: Certificate and TLS Security
- Services: Elastic Load Balancing
- Key Insights: And using this public SSL certificate attached to our load balancer, we're able to encrypt the connection between the clients and the load balancer.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 17:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So whenever you go to a website, for example google.com or anything, any other website, and you have a lock or a green lock that means that your traffic is encrypted.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal.

Line 18:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And if traffic is not encrypted, you'll have a red sign saying, "Hey, traffic is not encrypted.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 19:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Don't put your credit card details.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 20:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: Don't put your login information because it's not secure." So the SSL certificates, they have an an expiration date that you set and they must be renewed regularly to make sure that they're authentic, okay?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Secret/certificate lifecycle signal.

Line 21:
- Concepts: Data Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: So how does it work from a load balancer perspective?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 22:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: So users connect over HTTPS, and it's S because it's using SSL certificates and it's encrypted.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 23:
- Concepts: Data Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: It's secure, and it connects over the public internet to your load balancer.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 24:
- Concepts: Certificate and TLS Security
- Services: Elastic Load Balancing
- Key Insights: And internally, your load balancer does something called SSL certificate termination.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 25:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And in the backend, it can talk to your EC2 instance using HTTP, so not encrypted, but the traffic goes over your VPC, which is private traffic network.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 26:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And that is somewhat secure.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 27:
- Concepts: Certificate and TLS Security
- Services: Elastic Load Balancing
- Key Insights: So the load balancer will load an X.509 certificate, which is called a SSL or TLS server certificate.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 28:
- Concepts: Certificate and TLS Security
- Services: AWS Certificate Manager
- Key Insights: And you can manage these SSL certificates in AWS using ACM, meaning AWS Certificate Manager.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 29:
- Concepts: Data Security Operational Context
- Services: AWS Certificate Manager
- Key Insights: So we're not going to view ACM in that lecture but just to get an idea of what it is.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 30:
- Concepts: Data Security Operational Context
- Services: AWS Certificate Manager
- Key Insights: Now, you can also upload your own certificates to ACM if you wanted to.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 31:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: And when you set you an HTTPS listener, you must specify a default certificate.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Secret/certificate lifecycle signal.

Line 32:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: Then you can add an optional list of certs to support multiple domains, and clients can use something called SNI or Server Name Indication to specify the hostname they reach.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 33:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: Now don't worry, I'm going to explain what SNI is in details in the next slide because it is really, really important for you to understand what it means.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 34:
- Concepts: Access Control Enforcement, Certificate and TLS Security
- Services: (none explicit)
- Key Insights: That means that, and you can also, finally for HTTPS, set a specific security policy if you wanted to support all their versions of SSL and TLS, called also legacy clients.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 35:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: Okay, so let's talk about SNI 'cause it is so important.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 36:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: SNI solves a very important problem, which is how do you load multiple SSL certificates onto one web server in order for that web server to serve multiple websites?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Secret/certificate lifecycle signal.

Line 37:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: And there's a newer protocol that now requires the client to indicate the hostname of the target server in the initial SSL handshake.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 38:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: So the client will say, "I want to connect to this website." And the server will know what certificate to load.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 39:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And so, this is a newer protocol and this is something new.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 40:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Not every client supports this.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 41:
- Concepts: Data Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: So it only works when you use the application load balancer and the network load balancer, so the newer generations, or CloudFront.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 42:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And we'll see what CloudFront is later in this course.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 43:
- Concepts: Data Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: And it does not work when you use the classic load balancer because it is older generation.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 44:
- Concepts: Certificate and TLS Security
- Services: Elastic Load Balancing
- Key Insights: So anytime you see multiple SSL certificates onto your load balancer, think ALB or NLB.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 45:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So as a diagram, what does it look like?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 46:
- Concepts: Data Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: We have our ALB here and we have two target groups.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 47:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: The first one is www.mycorp.com, and the second one is Domain1.example.com.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 48:
- Concepts: Data Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: So the ALB will be routing to these target groups based on some rules and the rules may be directly linked, in this case to the hostname.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 49:
- Concepts: Certificate and TLS Security
- Services: Elastic Load Balancing
- Key Insights: So the ALB will have two SSL certificates: Domain1.example.com and www.mycorp.com, which corresponds to the corresponding target groups.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 50:
- Concepts: Data Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: Now the clients connects to our ALB and says, "I would like www.mycorp.com", and that is part of server name indication.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 51:
- Concepts: Data Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: And the ALB says, "Okay, I've seen that you want mycorp.com.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 52:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: Let me use the correct SSL certificates to fill that request." So it's going to take the right SSL certificates, encrypt the traffic, and then thanks to the routes, it's going to know to redirect to the correct target group, mycorp.com.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 53:
- Concepts: Certificate and TLS Security
- Services: Elastic Load Balancing
- Key Insights: And obviously, if you have another client connecting to your ALB for Domain1.example.com, then you will be able to pull the right SSL certificate again and connect to the right target group.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 54:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: So using SNI or server name indication, you are able to have multiple target groups for different websites using different SSL certificates.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 55:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Excellent.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 56:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: So finally, what is supported for SSL certificates?
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 57:
- Concepts: Certificate and TLS Security
- Services: Elastic Load Balancing
- Key Insights: So classic load balancer is yes, you can only support one SSL certificate.
- Hidden/Implicit Meaning: Constraint or limitation signal; Secret/certificate lifecycle signal.

Line 58:
- Concepts: Certificate and TLS Security
- Services: Elastic Load Balancing
- Key Insights: And if you want multiple hostnames with multiple SSL certificates, the best way is to use multiple classic load balancer.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 59:
- Concepts: Certificate and TLS Security
- Services: Elastic Load Balancing
- Key Insights: For ALB, the v2, you need to, you can support multiple listeners with multiple SSL certificates.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 60:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: And that's the great part of it, and it uses SNI to make it work.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 61:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And we just saw what it is.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 62:
- Concepts: Certificate and TLS Security
- Services: Elastic Load Balancing
- Key Insights: And for the NLB or network load balancer, it supports, again, multiple listeners with multiple SSL certificates, and it will use SNI again to make it work.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

### File: outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/213_ELB - SSL Certificates - Advanced.txt

Line 1:
- Concepts: Certificate and TLS Security, Encryption Fundamentals
- Services: Elastic Load Balancing
- Key Insights: Okay, so let's talk about SSL encryption for your Elastic Load Balancer.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 2:
- Concepts: Certificate and TLS Security
- Services: Elastic Load Balancing
- Key Insights: So this is our classic architecture, and the idea is that you could have termination at the ELB level by having an SSL or TLS certificate loaded onto it.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 3:
- Concepts: Data Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: In which case, while our users will access our ELB using an encrypted connection for example, HTTPS, but there is going to be a termination because then the ELB will just send HTTP traffic over your prior VPC into your EC2 instances.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 4:
- Concepts: Certificate and TLS Security
- Services: AWS Certificate Manager, Elastic Load Balancing
- Key Insights: So you would load an SSL or TLS certificate on the ELB and to manage these certificates, you need to use ACM, which is AWS Certificate Manager.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 5:
- Concepts: Data Security Operational Context
- Services: AWS Certificate Manager, Elastic Load Balancing
- Key Insights: You can upload your own certificates as well onto ACM and then have them used by the ELB.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 6:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: For your HTTPS listener, you must specify a default certificate and you can have as well an optional list of certificates if you wanted to support multiple domains.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Secret/certificate lifecycle signal.

Line 7:
- Concepts: Certificate and TLS Security
- Services: Elastic Load Balancing
- Key Insights: And as we'll see, there's something called Server Name Indication, SNI, to allow clients to specify the domain the hostname they're gonna trying to reach and therefore your ELB will be able to send back the correct certificates.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 8:
- Concepts: Access Control Enforcement, Certificate and TLS Security
- Services: (none explicit)
- Key Insights: You can also specify an SSL Security Policy for compliance features, compatibility, or security as we'll see in the very next slides.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 9:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: So now let's talk about SNI or Server Name Indication.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 10:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: The idea is that SNI will solve the problem of loading multiple SSL certificates onto one single web server that will be serving multiple websites and domains.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 11:
- Concepts: Data Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: So we have our ALB and say, we have two target groups.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 12:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: One is www.mycorp.com, which has EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 13:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And the other target group will be serving demo.example.com with other sets of EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 14:
- Concepts: Data Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: The idea is that on our ALB we're going to have routing based on hostname.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 15:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And so therefore the hostname when indicated will be served by the right target group.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 16:
- Concepts: Data Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: Now, we're also going to load a lot of certificates on the ALB.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 17:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: So we're going to load demo.example.com, but also www.mycorp.com as well as maybe other ones and a default SSL Certificates.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 18:
- Concepts: Data Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: What's going to happen is that a client when it connects to your ALB, will indicate the server name, the hostname.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 19:
- Concepts: Certificate and TLS Security
- Services: Elastic Load Balancing
- Key Insights: So I would like to connect to www.mycorp.com and thanks to the SNI feature, the ALB will know which SSL certificate to use to establish the connection with the clients and make sure it is correctly encrypted.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 20:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: So SNI is quote in quote, a newer protocol and requires the client to indicate the hostname of the target it tries to connect to during the initial SSL handshake.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 21:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And therefore, the server will find the correct certificates.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 22:
- Concepts: Data Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: This only works therefore for the newer generations types of load balancer, such as the Application Load Balancer and the Network Load Balancer.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 23:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: Now, these SSL certificates can be loaded onto the CLB.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 24:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: So the CLB supports only one SSL certificate.
- Hidden/Implicit Meaning: Constraint or limitation signal; Secret/certificate lifecycle signal.

Line 25:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And if you wanted to support multiple hostnames through your CLB, you would need to use SAN.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 26:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: So Subject Alternate Name on your SSL certificates.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 27:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: But the idea is that anytime you will need to add or remove a domain name, you will need to edit the SSL certificate with new SANs.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 28:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And so therefore it is a complicated process because you will need to reissue and reassign these certificates over time.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 29:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: Therefore, sometimes the best option is to use multiple CLBs for multiple hostnames with multiple SSL certificates.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 30:
- Concepts: Data Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: But if you can transition away from the CLB and use the ALB instead, because the ALB has the Server Name Indication feature that we just saw that will simplify your life.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 31:
- Concepts: Certificate and TLS Security
- Services: Elastic Load Balancing
- Key Insights: So talking about the ALB, it supports multiple HTTPS listeners and multiple SSL certificates.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 32:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: And then in order to make it work with multiple hostnames, then we're going to use this Server Name Indication feature, the SNI feature we just saw.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 33:
- Concepts: Data Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: The NLB is similar.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 34:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: It supports multiple listeners with multiple SSL certificates.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 35:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: And we're also going to use SNI to serve the correct SSL certificates.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 36:
- Concepts: Access Control Enforcement, Certificate and TLS Security
- Services: (none explicit)
- Key Insights: Now, finally, it is possible for you to set up a security policy for your HTTPS or your SSL listener.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 37:
- Concepts: Access Control Enforcement, Certificate and TLS Security
- Services: (none explicit)
- Key Insights: So security policy is a combination of SSL protocols, SSL ciphers and Server Order Preference option that's going to be supported during the SSL negotiation.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 38:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: That is when your client is connecting to your server and establishing a secure connection.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 39:
- Concepts: Data Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: So you can use some predefined security policies for example, the ELBSecurityPolicy-2016-08 and then apply it to your load balancer.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 40:
- Concepts: Access Control Enforcement
- Services: Elastic Load Balancing
- Key Insights: So if you consider the Application Load Balancer and the Network Load Balancer, then in case of frontend connections, so connections from the client to your load balancer, then you can use a predefined security policy.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 41:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And for backend connections, then you must use the ELBSecurityPolicy-2016-08.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 42:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It's going to be always used.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 43:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: So what can we set for predefined security policy?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 44:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: We have different ones.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 45:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: We have the default I just showed you.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 46:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: But also you can use the ELBSecurityPolicy-TLS policies.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 47:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: So in this case, you must meet compliance and security standards that require to only use certain TLS protocol version.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal; Secret/certificate lifecycle signal.

Line 48:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: That may be something internally within your company.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 49:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: And also if you wanted to sometimes support older versions of SSL and TLS for your legacy clients and application.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 50:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: The other kind of policies you may want to use is the ELBSecurityPolicy-FS.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 51:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And this is when you require Forward Secrecy.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 52:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So the idea is that with this, you're going to get additional safeguards against the eavesdropping of encrypted data by using during the negotiation, a unique, random session key and that can come up in the exam.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 53:
- Concepts: Access Control Enforcement
- Services: Elastic Load Balancing
- Key Insights: So anytime you see, how do we use a unique random session key for your ALB, think of a Forward Secrecy policy for your load balancer.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 54:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 55:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 56:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/214_Network Load Balancer - TLS Listeners.txt

Line 1:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: So here is a specific lecture for TLS and your network balancer.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 2:
- Concepts: Certificate and TLS Security
- Services: Elastic Load Balancing
- Key Insights: So if you want to have a TLS listener, you can use it on your NLB.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 3:
- Concepts: Certificate and TLS Security, Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So it will use the server certificate to terminate the TLS traffic and then it will decrypt the front end connections and then they will send it to the targets unencrypted.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 4:
- Concepts: Certificate and TLS Security
- Services: AWS Certificate Manager, Elastic Load Balancing
- Key Insights: If you wanna create a TLS listener, you must create a certificate in ACM and then you attach it on your NLB.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Secret/certificate lifecycle signal.

Line 5:
- Concepts: Certificate and TLS Security
- Services: Elastic Load Balancing
- Key Insights: And even if you have TLS termination on your NLB, with client IP preservation setting enabled, the target instances, we'll still see the source IP address and port as if it comes from your clients.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 6:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So the diagram is like this.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 7:
- Concepts: Certificate and TLS Security
- Services: Elastic Load Balancing
- Key Insights: The client, for example, talks to the TLS listener on port 443 of your network load balancer, which has TLS termination enabled because it has a certificate.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 8:
- Concepts: Data Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: What's going to happen is that the EC2 instances in your target group are going to see HTTP unencrypted traffic from your network load balancer, and the source IP of that if client IP preservation is enabled is going to be the IP of your client.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 9:
- Concepts: Certificate and TLS Security, Encryption Fundamentals
- Services: Elastic Load Balancing
- Key Insights: Now, with this kind of mechanism, because the traffic is terminated at the NLB level from an encryption perspective, then these networks do not support TLS renegotiation, or mutual TLS authentication, mTLS because it has to be done directly by the client with the EC2 instances and not by the NLB.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 10:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So how do we do this?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 11:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: Well, the option to do this kind of end-to-end encryption is to use a TCP listener, so not an encrypted one but you define it on port 443, even though it's just TCP.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 12:
- Concepts: Data Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: And what's going to happen is that all this TCP traffic is going to be passed encrypted to the target without the NLB decrypting it or terminating it.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 13:
- Concepts: Certificate and TLS Security, Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So we don't use a TLS listener, and it is the responsibility of the target group to actually decrypt the traffic.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 14:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 15:
- Concepts: Data Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: The clients sends encrypted traffic through your NLB but we have a TCP listener this time.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 16:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: Then the same traffic is going to be passed in encrypted to your EC2 instances, which are the one that will be performing TLS termination.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 17:
- Concepts: Certificate and TLS Security
- Services: Elastic Load Balancing
- Key Insights: And when you have the setting, you support mutual TLS because well, the NLB will pass the traffic as is and then the mutual TLS authentication can be implemented directly on your EC2 instances as targets.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 18:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So something to know that once you see it in the exam, it would make sense.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 19:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/215_AWS Certificate Manager (ACM).txt

Line 1:
- Concepts: Certificate and TLS Security
- Services: AWS Certificate Manager
- Key Insights: So now, let's talk about AWS Certificate Manager or ACM.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 2:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: So, in case you wanna host public SSL certificates in AWS, you can have two ways.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 3:
- Concepts: Data Security Operational Context
- Services: AWS Certificate Manager
- Key Insights: You can buy your own and upload them to ACM using the CLI, or you can have ACM provision the certificates itself, and renew it for you for free, free of cost and automatically.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 4:
- Concepts: Certificate and TLS Security
- Services: AWS Certificate Manager
- Key Insights: So, ACM will load SSL certificates onto some following integrations.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 5:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Number one is load balancers, including the one you can, that you would create using Elastic Beanstalk, CloudFront distributions, APIs on API's Gateways.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 6:
- Concepts: Certificate and TLS Security
- Services: AWS Certificate Manager
- Key Insights: So, anywhere, really, there is a need for SSL certificates, there is going to be an integration with ACM for it.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 7:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, how does it work?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 8:
- Concepts: Certificate and TLS Security
- Services: Elastic Load Balancing
- Key Insights: We have our user, and he's going to talk to you in ALB for this instance, and he will go through HTTPS, and the ALB would provide SSL termination.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 9:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: That means that the connection will be terminated, and a new one will be opened to the backend instances.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 10:
- Concepts: Certificate and TLS Security
- Services: AWS Certificate Manager, Elastic Load Balancing
- Key Insights: So, ACM will be on the left-hand side to provision and maintain the SSL certificates on to the ALB, so we don't have to worry about that part any more.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 11:
- Concepts: Certificate and TLS Security, Encryption Fundamentals
- Services: Elastic Load Balancing
- Key Insights: And then, finally, the ALB will be forwarding private, HTTP requests to your EC2 instance, if you set up HTP integration, and your EC2 instance will not have to perform SSL encryption or decryption, so that means that you have less CPU cost on your EC2 instance, thanks to the SSL termination that happens at the load-balancer level.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 12:
- Concepts: Certificate and TLS Security
- Services: AWS Certificate Manager
- Key Insights: So, overall, ACM is amazing, because, from my personal experience, SSL certificates are very difficult to maintain manually, and so, having this integration with ACM, this automated provisioning, and this integration with AWS services, makes it really, really easy to deal with SSL certificates in AWS, and so, you have no reason not to use them nowadays.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 13:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 14:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, good to know going into the exam.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 15:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: First of all, you can create your own public certificates, and you need to verify the public DNS, and you must be issued by a trusted public certificate authority.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Secret/certificate lifecycle signal.

Line 16:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: You can create some private certificates.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 17:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: That's for your internal applications, so you can have your own private CA, and your applications must be set up to trust your private CA.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 18:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, the definition of a private CA is that it's not public.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 19:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So it's yours, it's not widely known.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 20:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: And so, for your application to trust any SSL certificates that is created outside of your, from your private CA, that means that your application need to trust the certificate of the CA itself.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 21:
- Concepts: Certificate and TLS Security
- Services: AWS Certificate Manager
- Key Insights: For the certificate renewal, in case you provision the certificate using ACM, it's automatically done by ACM, or, if you have manually uploaded a certificate into ACM, you will need to be performing the renewal of that certificates manually, so a bit more maintenance on your side.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 22:
- Concepts: Data Security Operational Context
- Services: AWS Certificate Manager
- Key Insights: Finally, very, very, very, very important, ACM is a regional service.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 23:
- Concepts: Certificate and TLS Security
- Services: Elastic Load Balancing
- Key Insights: That means that if you have a global application, with multiple ALB all around the world in different AWS regions, you will need to issue an SSL certificate in each region where your application is deployed.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 24:
- Concepts: Data Security Operational Context
- Services: AWS Certificate Manager
- Key Insights: So, you cannot use ACM as a global service.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 25:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It's a regional service.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 26:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And you cannot copy certificates across regions.
- Hidden/Implicit Meaning: Constraint or limitation signal; Secret/certificate lifecycle signal.

Line 27:
- Concepts: Certificate and TLS Security
- Services: AWS Certificate Manager
- Key Insights: So, you will have to have ACM provision a certificate in every single region where you have load-balancers, for example, for this to work.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 28:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Obviously, if you use CloudFront, CloudFront is a global distribution, so you don't need to do this, right?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 29:
- Concepts: Certificate and TLS Security
- Services: AWS Certificate Manager, Elastic Load Balancing
- Key Insights: But if you have an ALB deployed in multiple regions, then you need to remember that ACM is a regional service and so, you need to have multiple SSL certificates, all around the globe, for this to work.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 30:
- Concepts: Data Security Operational Context
- Services: AWS Certificate Manager
- Key Insights: All right, that's it for ACM.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 31:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/216_[DVA_SOA] AWS Certificate Manager (ACM) - Hands On.txt

Line 1:
- Concepts: Certificate and TLS Security
- Services: AWS Certificate Manager
- Key Insights: Okay, so let's go ahead and practice using Certificate Manager.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 2:
- Concepts: Certificate and TLS Security
- Services: AWS Certificate Manager
- Key Insights: So I'm going to type, "Certificate Manager" And open the service.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 3:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: So here we're able to request a certificate, and we're going to request a public certificate.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 4:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Click on Next.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 5:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: We need to type now the fully qualified domain name.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 6:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So it's going to be, "ACMdemo.Stephantheteacher.com." And this is because I currently own Stephantheteacher.com.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 7:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And this is a domain that has been registered on my AWS account and it is managed by Route 53.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 8:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So for validation method, I will use DNS validation because this is very easy.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 9:
- Concepts: Data Security Operational Context
- Services: AWS Certificate Manager
- Key Insights: There is a direct integration between ACM and Route 53.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 10:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: For the key algorithm, I'll leave it as the default and I click on request.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 11:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So now the request is pending the validation, which is a DNS validation.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 12:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And so I scroll up, and here on the domains you see that there's a pending validation and there is a record that needs to be created for this value and this name.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 13:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So I can just click here and click on Create Record in Amazon Route 53.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 14:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Let's click on Create Records.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 15:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And now that these records have been created in Amazon Route 53 for me, this validation will take a little bit of time, but it will happen.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 16:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let me pause the video until AWS is able to verify that I still own this domain and that the records have been inserted in route 53.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 17:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: So my certificate has now been issued.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 18:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: This is success.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 19:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And so we need to start using it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 20:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: So for this, let's go into Elastic Beanstalk, 'cause this is a very easy way for us to start environment and to load SSL certificates.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 21:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's create an application.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 22:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: It's going to be a web server environment, and I'll call this one, "Demo TLS certificates." Then next we're going to scroll down, and it's going to be a managed platform.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 23:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It's going to be no JS, and we leave everything else as default.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 24:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: We'll leave the sample application, but here we're going to choose high availability.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 25:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And actually we're going to configure it with a custom configuration.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 26:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So we click on Next.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 27:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: We take a random QC2 key pair, we click on Next.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 28:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: We don't touch anything here for the database.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 29:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: We click on Next.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 30:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: The route volume, we don't touch anything.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 31:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: We don't touch anything for the security groups for now.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 32:
- Concepts: Data Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: We scroll down, the load balancer, we don't touch anything.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 33:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So far we're good.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 34:
- Concepts: Data Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: And then the load balancer type is going to be an application load balancer.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 35:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this is the important part.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 36:
- Concepts: Data Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: We're going to use a dedicated load balancer, and we're going to add a listener.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 37:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And the port is going to be 443.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 38:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And the protocol is going to be HTTPS.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 39:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: As you can see, now we need to choose an SSL certificate, and this is the one we have just created now.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 40:
- Concepts: Access Control Enforcement, Certificate and TLS Security
- Services: (none explicit)
- Key Insights: So next we need to choose a policy for our TLS.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 41:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: So really you can choose whatever policy you want in here.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 42:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: For example, the first one, and this is defining how strong you want your HTTPS security to be, but we'll just save it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 43:
- Concepts: Data Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: And now we have a listener that is going to be compatible on our load balancer, and it's on port 443.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 44:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this is perfect.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 45:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: We may have to change some things later on regarding security groups, but for now we're good.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 46:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Let's click on Next.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 47:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And we don't need anything here, so I'm just going to click on Next.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 48:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And review everything.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 49:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And let's submit.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 50:
- Concepts: Data Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: So now what's happening is that Beanstalk is going to launch our environment with a load balancer, an auto scaling group, and EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 51:
- Concepts: Data Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: And we have created a 443 listener on our load balancer.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 52:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: And we have loaded our TLS or SSL certificate directly under the balancer.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 53:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's wait for the environment to be launched and we'll get back.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 54:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so my environment has been successfully launched, so I can click on this domain.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 55:
- Concepts: Data Security Operational Context
- Services: AWS Certificate Manager
- Key Insights: As you can see right now, I access using the Beanstalk URL, but we want to access using our ACM demo URL.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 56:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So first of all, we need to create a CNAME in Route 53.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 57:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So for this, let's go into Route 53.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 58:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: We, under the hosted zone, look at our one, so stephantheteacher.com.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 59:
- Concepts: Data Security Operational Context
- Services: AWS Certificate Manager
- Key Insights: And then I'm going to create a record, and it's going to be ACM demo, it's of type CNAME because it's a domain to another domain, and we paste the value, but without the HTP.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 60:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So here now we're saying if someone goes to ACMdemo.stephantheteacher.com then actually go to this URL behind the scene.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 61:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so let's create this record.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 62:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And it has been created.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 63:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And now let's test it out.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 64:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So we're going to paste this here, and we're gonna go to the URL.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 65:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: We need to wait a little bit maybe for the domain name to be propagated.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 66:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And now just refreshed and I'm able to access my page using my URL.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 67:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this was just a DNS propagation issue.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 68:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so we're good, we are with this URL, but as you can see, there is no little lock.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 69:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's add, "https://" To see if we can access it using HTTPS.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 70:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And yes, we can.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 71:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: As you can see now, the lock saying that the connection is secure, it's verified by Amazon, and we can get more information around our certificates by just using Firefox or Chrome or whatever you want.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 72:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: You can view the certificates.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 73:
- Concepts: Certificate and TLS Security
- Services: AWS Certificate Manager
- Key Insights: And this gives you a lot of information around the certificate that we were just issued by ACM.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 74:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So actually we didn't need to do any changes to security groups, which was great.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 75:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So how do we also verify on the side of AWS that everything is loaded correctly besides this?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 76:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Because all of it is working.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 77:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Well, let's go into, for example, the EC2 console.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 78:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then let's have a look at our load balancers.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 79:
- Concepts: Data Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: We find our load balancer right here, and we look at the listeners and rules.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 80:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And we can see here we have a rule for HTPS 443.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 81:
- Concepts: Certificate and TLS Security
- Services: AWS Certificate Manager
- Key Insights: And if you click on it, we can see that there is a default SSL TLS certificate that has been loaded directly from ACM.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 82:
- Concepts: Data Security Operational Context
- Services: AWS Certificate Manager
- Key Insights: From ACM, yes.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 83:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And if you wanted to, you could change the default or you can add more certificates directly from this UI as well.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 84:
- Concepts: Data Security Operational Context
- Services: AWS Certificate Manager
- Key Insights: But this is good, we've seen the integration between ACM and Elastic Beanstalk and your load balancers.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 85:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So now to just clean things up and make sure you don't have any ongoing cost, please go to your environment, this one, and then, or your application, even easier.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 86:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: And then you do Action, and then Delete Application, and you just type the entire name of the application, "Demo TLS certificates." And you're done.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 87:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 88:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/217_ACM - Advanced.txt

Line 1:
- Concepts: Data Security Operational Context
- Services: AWS Certificate Manager
- Key Insights: So now let's do a deeper dive into ACM.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 2:
- Concepts: Certificate and TLS Security
- Services: AWS Certificate Manager
- Key Insights: The first thing is that you can have a private certificate authority on ACM.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 3:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: So it allows you to actually issue certificates privately and you manage the certificate authority, including roots and subordinaries CAs.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 4:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So with this, you can deploy end-entity X.509 certificates.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 5:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: What that means is that these certificates can be used by your application.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 6:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: They're end-entities that these certificates cannot be used to issue more certificates.
- Hidden/Implicit Meaning: Constraint or limitation signal; Secret/certificate lifecycle signal.

Line 7:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: These certificates are trusted only by your organization, not the public internet, because it's a private certificate authority.
- Hidden/Implicit Meaning: Constraint or limitation signal; Secret/certificate lifecycle signal.

Line 8:
- Concepts: Data Security Operational Context
- Services: AWS Certificate Manager
- Key Insights: It has deep integration with services such as Amazon EKS and really any service that is integrated with ACM.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 9:
- Concepts: Data Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: So you'll have CloudFront, API Gateway, ELB, ES, whatever you want, as long as, of course, the traffic is private and within your own infrastructure.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 10:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So these certificates can be issued for users for whatever they need.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 11:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: For example, for client VPN purposes.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 12:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: They can be issued for computers.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 13:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: They can be issued for APIs that will expose a private URL, or IoT devices.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 14:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: So the use cases of using a private certificate authority is to do encrypted TLS communication from internally to cryptographically signed code to authenticate users, computers, API endpoints, and IoT devices.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 15:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And to also help enterprises build a public key infrastructure, or PKI.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 16:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 17:
- Concepts: Data Security Operational Context
- Services: AWS Certificate Manager
- Key Insights: Next, we have the validation techniques of certificates in ACM.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 18:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: So when you have a public certificate, so we're back into the public realm now, you must prove that you own or control the domain because otherwise you cannot have a public certificate.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal; Secret/certificate lifecycle signal.

Line 19:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So several ways of doing it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 20:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: The number one is to do DNS validation.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 21:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And here, we're going to leverage a CNAME record that we create in our DNS config.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 22:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It could be Route 53, it could be out there as well.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 23:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: And what's going to happen is that because you are able to insert this CNAME record, you are going to be issued a TLS certificate and you're good to go.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 24:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this is the preferred method for automatic renewable purposes because everything is programmatic, and it only takes a few minutes to verify.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 25:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 26:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: The admin creates a CNAME record in your DNS, for example, Route 53.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 27:
- Concepts: Data Security Operational Context
- Services: AWS Certificate Manager
- Key Insights: And ACM tells the admin what record to create.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 28:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then it looks like something like this with some big name and big value.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 29:
- Concepts: Certificate and TLS Security
- Services: AWS Certificate Manager
- Key Insights: And then the ACM will say, hey I can verify that indeed you own this domain so I can issue this certificate for you.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 30:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So it goes into pending validation and the record is validated and we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 31:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So the other way to do it is email validation.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 32:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So the email validation will be sent to contact addresses in the who is database of your domain.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 33:
- Concepts: Data Security Operational Context
- Services: AWS Certificate Manager
- Key Insights: So when you register domain, you have to register an email address, and that's what ACM will send an email to to make sure that, again, the owner of the domain as per the registrar is there, and accept the certificates.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 34:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: So it takes a few minutes to verify this certificate.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 35:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Again, you just receive an email and you're good to go.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 36:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: This is only relevant for public certificates.
- Hidden/Implicit Meaning: Constraint or limitation signal; Secret/certificate lifecycle signal.

Line 37:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: In case you have a private certificate, you don't need to verify anything because you own the private certificate authority.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 38:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So in the case of automatic renewal, how does that work?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 39:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: Well, if there's a failure to renew a DNS validated certificate, it could be because of inaccurate CNAME records in your DNS config, and you can try an alternative way such as email validation.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 40:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But again, that requires a manual step from a human from the domain owner.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 41:
- Concepts: Data Security Operational Context
- Services: AWS Certificate Manager
- Key Insights: ACM will send renewal notices 45 days before expiration, which is ample time for you to perform the renewal.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 42:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And in case you receive emails, again, to the domains who is mailbox addresses that will be sent.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 43:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Then the email contains a link, you click on it and you can do a renewal.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 44:
- Concepts: Certificate and TLS Security
- Services: AWS Certificate Manager
- Key Insights: The ACM will issue a renewed certificate but it will keep the same ARN to keep everything running smoothly within AWS.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 45:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So again, upon expiration, we'll receive a renewal email, and then we'll click the validation link, and we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 46:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: This is when we fail the DNS validation, of course.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 47:
- Concepts: Certificate and TLS Security
- Services: AWS Certificate Manager
- Key Insights: Now, how do you resolve a pending validation certificate in ACM?
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 48:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So again, confirm the CNAME in your DNS config.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 49:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So you can use the dig command, for example, to verify the value of the DNS config itself.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 50:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then make sure you have the proper value, no additional or missing characters.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 51:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then if your DNS provider automatically modifies your DNS records by adding the bare domain to the end, make sure to remove the bare domain from it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 52:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So sometimes you'll have .example.com.example.com.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 53:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: That's common.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 54:
- Concepts: Data Security Operational Context
- Services: AWS Certificate Manager
- Key Insights: And then if there is a CNAME and the TXT record that have the same domain name, then it may be a conflict for ACM, so test it out.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 55:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And if you do have both a CNAME and the TXT record, then delete the TXT record.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 56:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So instead of getting ACMs to issue certificates for you, you may want to actually manually create them.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 57:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So there's a process for that.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 58:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: You can create a certificate manually.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 59:
- Concepts: Data Security Operational Context
- Services: AWS Certificate Manager
- Key Insights: And then you upload the certificates either to ACM or IAM.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 60:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: So you will use local tools to actually generate a certificate signing request.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 61:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: You will submit this certificate signing request file to an external certificate authority that will validate, again, the ownership and issue a certificate for you.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 62:
- Concepts: Data Security Operational Context
- Services: AWS Certificate Manager
- Key Insights: They will have their own methodology, but that is not ACM, because you wanna do this externally from ACM.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 63:
- Concepts: Certificate and TLS Security
- Services: AWS Certificate Manager
- Key Insights: You get back a certificate and you can upload the certificate into ACM or IAM.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 64:
- Concepts: Data Security Operational Context
- Services: AWS Certificate Manager
- Key Insights: So there could be reasons why you would wanna do this but it's much easier if done everything within ACM, but still you have the capability of importing certificates in there.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 65:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So how do we monitor for expired imported certificates?
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 66:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So we'll have a daily expiration event 45 days prior to expiration.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 67:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And, of course, because they are imported certificates, we cannot automatically renew them because they've been signed elsewhere.
- Hidden/Implicit Meaning: Constraint or limitation signal; Secret/certificate lifecycle signal.

Line 68:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So the number of days can be configured.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 69:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: The events will be appearing in EventBridge.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 70:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then you can have Lambda functions, SNS notifications, SQS messages, whatever you want for your integration.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 71:
- Concepts: Certificate and TLS Security
- Services: AWS Certificate Manager
- Key Insights: Or you can have also a rule in config called the ACM certificate exploration check to check regularly for the expiring certificates.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 72:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And you can also send the non-compliance events into EventBridge.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 73:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So two ways of doing it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 74:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: But if you do have a manually imported certificate, you will have to manually renew it outside and then the re-import it.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 75:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 76:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/26_AWS Security & Encryption_ KMS, SSM Parameter Store, Shield, WAF/302_SSM Parameter Store Overview.txt

Line 1:
- Concepts: Secrets Management
- Services: SSM Parameter Store
- Key Insights: So now let's talk about the SSM Parameter Store.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 2:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It's a secure storage for your configuration and your secrets.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 3:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: And optionally, you can choose to encrypt these configurations and therefore make it secrets by using the KMS service.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 4:
- Concepts: Secrets Management
- Services: SSM Parameter Store
- Key Insights: SSM Parameter Store is serverless, it's scalable, it's durable, and the SDK is very easy to use.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 5:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: On top of it, if you update your parameters then you have version tracking of them.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 6:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: The security is provided through IAM and you get notifications with Amazon EventBridge, in certain amount of cases.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 7:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: You have full integration with CloudFormation.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 8:
- Concepts: Secrets Management
- Services: SSM Parameter Store
- Key Insights: That means that CloudFormation can leverage the parameters from parameter store as input parameters for your stacks.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 9:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's take an example.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 10:
- Concepts: Secrets Management
- Services: SSM Parameter Store
- Key Insights: We have an application and then we have the SSM parameter store.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 11:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So we can store plain text configuration in this way.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 12:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Then the IAM permissions of your applications are going to be checked.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 13:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: For example, your EC2 instance role or you can have encrypted configuration.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 14:
- Concepts: Secrets Management
- Services: AWS KMS, SSM Parameter Store
- Key Insights: In that case the SSM parameter store is going to encrypt it with KMS.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 15:
- Concepts: Encryption Fundamentals
- Services: AWS KMS
- Key Insights: And so the KMS service is going to be used for encryption and decryption.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 16:
- Concepts: Encryption Fundamentals
- Services: AWS KMS
- Key Insights: And of course, you need to make sure that your applications do have access to the underlying KMS key to perform that encryption and that decryption.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 17:
- Concepts: Secrets Management
- Services: SSM Parameter Store
- Key Insights: So you can store parameters in the parameter store with a hierarchy.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 18:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So for example, you can define my department as a path and underneath the My-app and then the Dev and then we have the Dev DB-URL and then the DB-password within that folder.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 19:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So that means that your parameters goes all the way down into the hierarchy.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 20:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: We can go one level up and store a parameter for the Prod DB-URL, as well as a Prod DB password and go up to another app or another department.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 21:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: That really allows you to organize your parameters the way you want in a structured fashion.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 22:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then this is going to simplify your IAM policies to allow applications to have access to an entire department, or to an entire app, or just to an app department environment specific path.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 23:
- Concepts: Secrets Management
- Services: AWS Secrets Manager, SSM Parameter Store
- Key Insights: You also have the opportunity to access Secrets of Secrets Manager through the Parameter Store by using this reference right here.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 24:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So it's a little trick that not many people know.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 25:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And there are something called Public Parameters that are issued by AWS that you can use.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 26:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: For example, if you want to find the latest AMI for the Amazon Index 2 in your specific region.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 27:
- Concepts: Secrets Management
- Services: SSM Parameter Store
- Key Insights: This is something that's available within the Parameter Store as an API call.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 28:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So if you take an application, for example our Dev Lambda function is going to have an IAM roll that allows it to access the DB-URL and DB-password within the Dev of my app.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 29:
- Concepts: Access Control Enforcement, Secrets Management
- Services: (none explicit)
- Key Insights: And then if you have a Prod Lambda Function, thanks to again, a different IAM policy and maybe some environment variables, you can access the Prod DB-URL and Prod DB-password of another path. (mouse clicks) Now, within Systems Manager, you have two kinds of parameter tiers.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 30:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: You have the standard and the advanced tier.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 31:
- Concepts: Access Control Enforcement, Secrets Management
- Services: (none explicit)
- Key Insights: So the big difference is going to be around the size of 4KB which is 8KB, and also the availability of a parameter policy.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 32:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: For the standard one, we have none but for advanced, we have some.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 33:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: The advanced type of parameters is going to be a $0.05 per month.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 34:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Whereas the first one is going to be free.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 35:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: So what are these parameter policies?
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 36:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: And this is only for advanced parameters. (mouse clicks) Well, this allows you to assign a time to live to a parameter, that means an expiration date.
- Hidden/Implicit Meaning: Constraint or limitation signal; Secret/certificate lifecycle signal.

Line 37:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So that you forced users to update or delete sensitive data such as passwords.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 38:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And you can assign multiple policies at a time.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 39:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: So here is an example policy.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 40:
- Concepts: Access Control Enforcement, Secrets Management
- Services: (none explicit)
- Key Insights: So this is an expiration policy to delete a parameter and you say, "Hey, on this time stamp you must delete these parameter." And then through the EventBridge integration, EventBridge is going to get notifications of it.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Secret/certificate lifecycle signal.

Line 41:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: So in this example, 15 days before the parameter expires we'll receive notification in EventBridge which gives us enough time to actually update it and make sure the parameter is not getting deleted because of the TTL.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 42:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Or maybe sometimes you wanna make sure the parameters change once in a while.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 43:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: So you can have a no change notification in EventBridge so that if a parameter has not been updated for 20 days, then you will be notified as well.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 44:
- Concepts: Secrets Management
- Services: SSM Parameter Store
- Key Insights: So you can get very, you know, creative with the parameter store.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 45:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But now you get the idea behind it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 46:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So I hope you like this lecture and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/26_AWS Security & Encryption_ KMS, SSM Parameter Store, Shield, WAF/303_SSM Parameter Store Hands On (CLI).txt

Line 1:
- Concepts: Secrets Management
- Services: SSM Parameter Store
- Key Insights: Okay, so let's go ahead and practice using the Parameter Store.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 2:
- Concepts: Secrets Management
- Services: SSM Parameter Store
- Key Insights: So the best way to do it is to type Parameter Store in the search bar, and you can click here.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 3:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It's a Systems Manager feature.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 4:
- Concepts: Secrets Management
- Services: SSM Parameter Store
- Key Insights: So if you click on Parameter Store, on the left hand side, you will see that under Systems Manager, you have, under Application Tools, the Parameter Store, and what we can do here is create a new parameter.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 5:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: We specify types and values, and then we can reference the parameters in the comments or the code.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 6:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's go ahead and practice using this service.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 7:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: So I first create a parameter and I need to enter a name for it.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 8:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So the name is whatever you want.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 9:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: You don't have to follow my direction, but I like to name it like this so /my-app/dev/db-url, and this is going to allow me, with these four slashes to organize them into a hierarchy.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 10:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: So this is my app, this is the Dev Environment, and this is the name of my parameter within the Dev Environment.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 11:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So here, I say DB Url for the Dev Environment.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 12:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: That's perfect, and then Tier, we have two options.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 13:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: We have Standard and Advanced.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 14:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So we are going to use a Standard tier.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 15:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: We can store up to 10,000 standard parameters.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 16:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: They are four kilobytes in value maximum, and we can't share that with other accounts, but the Advanced parameters, you can have 100,000 of them, they can be eight kilobytes and you can share them with your other accounts.
- Hidden/Implicit Meaning: Constraint or limitation signal; Secret/certificate lifecycle signal.

Line 17:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So next we're going to choose the type, and the type could be String, StringList, or SecureString.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 18:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So here we're going to use String, but later we'll be using SecureString, and if you need to list of string, you can have a StringList, but String here has Data Type.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 19:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It's either text or AWS EC2 image because you can also reference image ARNs here, and here you just have to specify the text in a specific format.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 20:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But we'll use Text, and for the string, I will have for example, dev.database.stephantheteacher.com.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 21:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: This is just an example.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 22:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: You don't have to put anything that's a URL.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 23:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: You can put whatever you want in it, but that's going to be the value of my parameter, this one.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 24:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: So let's create this parameter, and as you can see now it's been created.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 25:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I can click on it and have a look at it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 26:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: So this is Version One of this parameter.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 27:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: We can view the version history here.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 28:
- Concepts: Secrets Management
- Services: SSM Parameter Store
- Key Insights: So if I were to change it, then I can of course update it, but I will have access to my version history, which is nice, and then we're going to do the same but add more parameters, so we're going to go under Parameter Store and I'm going to copy this, and here I'm going to have it as db-password, so we're going to create it.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 29:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So DB Password for Dev, and as you guessed it, we're going to have a SecureString this time, and because it's a password, we're going to encrypt it with a KMS key, so it could belong in my account or another account.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 30:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: We'll use my account.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 31:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: You could use the default KMS Key ID managed by AWS for the SSM service, which is this one, alias/aws/ssm, or you can select one that you have created before.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 32:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: For example, you may have created, for example, KMS, a key called Tutorial or whatever you want to create it.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 33:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: You don't have to, and so if you had created it, then you can use it here and leverage it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 34:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: It's really as you want, but let's choose Tutorial for this example, it doesn't really matter, and we need to put a password, so I'll have it as devpassword, and now this is going to be automatically encrypted by KMS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 35:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: So let's create this parameter.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 36:
- Concepts: Encryption Fundamentals
- Services: AWS KMS
- Key Insights: As you can see now, the type is a SecureString, and if I click on it, as you can see, the value is encrypted and hidden, and if I click on show decrypted value, it will check that I have the KMS permission to use the key and then therefore decrypt the value for me, so that's great.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 37:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: What we can do now is just really quickly create the other parameters for Prod.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 38:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So instead of here, I have Prod and I'll call it prod.stephantheteacher.com3306, and then for the password, same.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 39:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I'm going to copy this real quick and have it as prod.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 40:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: We'll use a SecureString, we'll use the Tutorial one, and then we'll have it as prodpassword.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 41:
- Concepts: Secrets Management
- Services: SSM Parameter Store
- Key Insights: Okay, so now we have four parameters and they're all available within the Parameter Store and they're ordered by a hierarchy.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 42:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So now let's try to access these parameters using the CLI.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 43:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to open a CloudShell on the top because it has the CLI installed of AWS and it's already configured.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 44:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And so what we're going to use is a command called the SSM Get Parameters.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 45:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So we'll do aws ssm get-parameters, and then you have to provide names, and the names correspond to the names of your parameters.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 46:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So I can have, for example, my dev/db-url as well as my dev password, db-password.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 47:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So we'll press Enter, and as you can see, now I get a result with my two parameters.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 48:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So we have this one and that one, and you can see that for the db-url, it's a String, the value has been returned as is, but for the db-password, it's a SecureString and it has been returned as an encrypted value.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 49:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So to decrypt this value, I'll press Enter, Enter, Enter, and quit, q.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 50:
- Concepts: Access Control Enforcement, Encryption Fundamentals, Secrets Management
- Services: AWS KMS
- Key Insights: I have to specify a flag, and the flag is called with-decryption, and so it's going to check additionally if I have the KMS security policy allowed on my account to decrypt that parameter.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 51:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So as you can see now, the db-password is still a SecureString, but now we have devpassword as a decrypted value thanks to this flag with decryption.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 52:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So the CLA is very powerful and something you can definitely use in your scripts.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 53:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Another command I would like to show you is going to be the Get Parameters by Path.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 54:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So you do aws ssm get-parameters-by-path, and then you have to specify a path, and the path is whatever you want, so because we have a hierarchy, we have my-app/dev, it's going to give me all the parameters in this namespace, and as you can see, we got again, the dev db-password and the dev db-url.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 55:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But you can do something more now, you can do, for example, my-app as a whole, and as you can see, I get nothing, but if I use the flag and it's a flag called Recursion, so it's going to be recursive, then you have access to all the parameters recursively under that namespace.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 56:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So we have access to the dev as well as the prod type of parameters, which is brilliant, so now we have our four parameters.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 57:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: And finally, if you want it, of course, you can also use with-decryption to decrypt all of them.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 58:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And that's it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 59:
- Concepts: Secrets Management
- Services: SSM Parameter Store
- Key Insights: So we've seen how the Parameter Store was working, we've seen about the hierarchy, we've seen the CLI, and it starts to show you the power of using the Parameter Store.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 60:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/26_AWS Security & Encryption_ KMS, SSM Parameter Store, Shield, WAF/304_AWS Secrets Manager - Overview.txt

Line 1:
- Concepts: Data Security Operational Context
- Services: AWS Secrets Manager
- Key Insights: So now let's talk about a very simple service called the AWS Secrets Manager.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 2:
- Concepts: Key Management Lifecycle, Secrets Management
- Services: AWS Secrets Manager, SSM Parameter Store
- Key Insights: So it's a newer service and it's meant for storing secrets and it's going to be different from the SSM parameter store, because on Secrets Manager, you have the capability to force the rotation of secrets every X number of days, and therefore you have a better secret management schedule.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 3:
- Concepts: Key Management Lifecycle
- Services: AWS Secrets Manager
- Key Insights: On top of it, from within Secrets Manager, you can force and automate the generation of secrets on the rotation.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 4:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And for this, you have to define a Lambda function that will generate that new secrets.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 5:
- Concepts: Data Security Operational Context
- Services: AWS Secrets Manager
- Key Insights: Moreover, Secrets Manager is really well integrated with different services on AWS.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 6:
- Concepts: Data Security Operational Context
- Services: Amazon RDS
- Key Insights: And I just showed you Amazon RDS for example, for MySQL, PostgreSQL, SQL or Aurora.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 7:
- Concepts: Data Security Operational Context
- Services: AWS Secrets Manager
- Key Insights: But there are other services as well with AWS, other databases, that are integrated with Secrets Manager out of the box.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 8:
- Concepts: Data Security Operational Context
- Services: AWS Secrets Manager
- Key Insights: That means that the username and the password to get into your database is stored directly in Secrets Manager and it can be rotated and so on.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 9:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: Now, Secrets can be encrypted using the KMS service.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 10:
- Concepts: Data Security Operational Context
- Services: AWS Secrets Manager, Amazon RDS
- Key Insights: And so anytime in the exam you see Secrets, or integration for RDS, or for Aurora of Secrets, really think Secrets Manager.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 11:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: There's one more feature we need to know about which is the concept of multi-region Secrets.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 12:
- Concepts: Data Security Operational Context
- Services: AWS Secrets Manager
- Key Insights: So the idea is that you can replicate your Secrets across multiple AWS regions and Secrets Manager Service will keep readers in sync with the primary Secrets.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 13:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So here have two regions.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 14:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: We create a Secret in the primary one and it gets replicated as a same Secret into a secondary region.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 15:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Now, why would we do this?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 16:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Well, multiple things.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 17:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: Number one, in case there is a problem with US East 1, you're able, for example, to promote a replica Secret as a standalone secret.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 18:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: And then thanks to the fact that that Secret is replicated across regions, then you can build multiple regions apps.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 19:
- Concepts: Secrets Management
- Services: Amazon RDS
- Key Insights: You can also have disaster recovery strategies, or if you have an RDS database that is also being replicated from one region to the next, then you can use the same Secret to access, the same, the RDS database, the corresponding one, in the corresponding region.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 20:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 21:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/26_AWS Security & Encryption_ KMS, SSM Parameter Store, Shield, WAF/305_AWS Secrets Manager - Hands On.txt

Line 1:
- Concepts: Data Security Operational Context
- Services: AWS Secrets Manager
- Key Insights: So, now let's talk about the Secrets Manager service.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 2:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, as we can see, it's to easily rotate, manage, and retrieve secrets throughout their life cycle.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 3:
- Concepts: Key Management Lifecycle, Secrets Management
- Services: Amazon RDS, SSM Parameter Store
- Key Insights: So, it's similar to the SSM parameter store because you can store secret things, but it's going to be different from it because while you have rotation, management, and tight integrations with databases such as MySQL, PostgreSQL, Amazon Aurora, and RDS and so on.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 4:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: So, the pricing is you have a 30-day free trial available, and then you're going to pay $0.40 per secret, per month, and then $0.05 per 10,000 API calls.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 5:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: So, if you again expect to remain within the free tier, just create a secret and then delete it.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 6:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: So, let's go ahead and store a new secret, and we can choose a secret type.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 7:
- Concepts: Data Security Operational Context
- Services: Amazon RDS
- Key Insights: Now, over time, it's very possible that this gets increased in terms of the capability of integrations, but we have Amazon RDS, we have Amazon DocumentDB, Amazon Redshift, other databases, or other type of secrets.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 8:
- Concepts: Data Security Operational Context
- Services: Amazon RDS
- Key Insights: So, if you are on Amazon RDS, as you can see, it prompts you for username and password and so on.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 9:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And if you go for example, for other type of secrets, here we can store anything we want.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 10:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: So for example, I can say MySecretKey, and then MyVerySecretValue, and this would be a secret stored in here.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 11:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: And another one could be, for example, API_KEY, and then would be as well like a secret API key, so you would enter some text in here.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 12:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So you can enter it through this UI, or you can go in plain text and you have adjacent document that you can edit it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 13:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: To edit the key values, this is just a different way of specifying your secrets.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 14:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: So, this will be kept secret so that only person with the correct IAM permissions can access these secrets.
- Hidden/Implicit Meaning: Constraint or limitation signal; Secret/certificate lifecycle signal.

Line 15:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: Then we specify an encryption key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 16:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So, we have the default one, but you can use your own KMS key if you wanted to.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 17:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I click on next.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 18:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: Then we need to name our secret.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 19:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: So prod/my-secret for example, and a description but I don't need it.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 20:
- Concepts: Access Control Enforcement, Secrets Management
- Services: (none explicit)
- Key Insights: Resource permission, so do we want to have a policy that restricts who can access the secret?
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 21:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: And it could be across AWS accounts thanks to this resource policy right here, and you would've have it adjacent form.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 22:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: Amazon S3
- Key Insights: So, it's similar to an S3 bucket policy.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 23:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: And then you have the option to replicate the secret across regions.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 24:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: And this is good if you want to have multi-region setups which as multi-region apps or multi-region databases.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 25:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: And here we can say, "Okay, I want to replicate this into us-west-2 using this encryption key right here and also into AP Southeast-1 and so on.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 26:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, I'm not gonna do this, but this would be how you would replicate your secrets.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 27:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, then I click on Next.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 28:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Then you want to automatically rotate our secrets, yes or no.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 29:
- Concepts: Key Management Lifecycle
- Services: (none explicit)
- Key Insights: And when do we want to rotate it, and if we do enable rotation, then we need to specify a rotation function.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 30:
- Concepts: Key Management Lifecycle
- Services: (none explicit)
- Key Insights: This is a Lambda function that will be performing this rotation.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 31:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So for now, disable it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 32:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then we have a look.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 33:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: So, we have a secret right here.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 34:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It's replicated into us-west-2.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 35:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And here's some code if we wanted to invoke and get that secrets from our clients.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 36:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: So, I'm not gonna go ahead with creating this, but as you can see, this would store a secret and then use this code to retrieve in your code the correct secrets.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 37:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, we'll cancel this.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 38:
- Concepts: Secrets Management
- Services: Amazon RDS
- Key Insights: Another kind of secret you can have is a credential for an Amazon RDS database.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 39:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, you would create a username and a password and then you would specify a database.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 40:
- Concepts: Data Security Operational Context
- Services: AWS Secrets Manager, Amazon RDS
- Key Insights: And the cool thing about it is that thanks to the integration between RDS and Secrets Manager, then this username and this password would be used to be able to login into the database.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 41:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And if you wanted to rotate it, then automatically the database also gets updated.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 42:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, here you would enter it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 43:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: Then you would configure the secrets as well if you wanted to have for example some kind of multi-region replication.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 44:
- Concepts: Key Management Lifecycle
- Services: (none explicit)
- Key Insights: Rotation as well if you wanted to review it and you're done.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 45:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 46:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/26_AWS Security & Encryption_ KMS, SSM Parameter Store, Shield, WAF/306_AWS Certificate Manager (ACM).txt

Line 1:
- Concepts: Certificate and TLS Security
- Services: AWS Certificate Manager
- Key Insights: So now let's talk about the AWS Certificate Manager service also called ACM.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 2:
- Concepts: Certificate and TLS Security
- Services: AWS Certificate Manager
- Key Insights: So with ACM, you can easily provision, manage and deploy TLS certificates on AWS.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 3:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: What are TLS certificates used for?
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 4:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: And they sometimes say SSL.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 5:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So they're used to provide in-flight encryptions for websites.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 6:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: You know, when you go to websites and it says HTTPS, the S stands for secure, and therefore this is where you know that there is a TLS certificate involved in the transaction.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 7:
- Concepts: Data Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: So how does that work while you have an ALB, for example, connected to your Auto Scaling group but you want to expose your application balancer as an HTTPS endpoint.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 8:
- Concepts: Certificate and TLS Security
- Services: AWS Certificate Manager
- Key Insights: Therefore you would integrate it with a certificate manager to provision and maintain TLS certificates directly on your application balancer and your users will access your websites or your API using the HTTPS protocol.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 9:
- Concepts: Certificate and TLS Security
- Services: AWS Certificate Manager
- Key Insights: So ACM supports both public and private TLS certificates and it's free of charge if you want to use public TLS certificates.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 10:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: There is also a feature to automatically renew these certificates.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 11:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: We will see this in a second on other slides and you have integrations with many AWS services.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 12:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: So you can load TLS certificates on Elastic Load Balancers.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 13:
- Concepts: Data Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: For example, the Classic one, the Application Balancer or the Network Load Balancer.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 14:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: CloudFront Distributions or any APIs on the API gateway.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 15:
- Concepts: Certificate and TLS Security
- Services: AWS Certificate Manager
- Key Insights: One thing you cannot use the AWS Certificate Manager with is EC2 instances.
- Hidden/Implicit Meaning: Constraint or limitation signal; Secret/certificate lifecycle signal.

Line 16:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So for public certificates and only for public certificates they cannot be extracted.
- Hidden/Implicit Meaning: Constraint or limitation signal; Secret/certificate lifecycle signal.

Line 17:
- Concepts: Data Security Operational Context
- Services: AWS Certificate Manager
- Key Insights: And so you cannot create public certificates for your EC2 instances through ACM.
- Hidden/Implicit Meaning: Constraint or limitation signal; Secret/certificate lifecycle signal.

Line 18:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: So what's the process to request a public certificate?
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 19:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: First of all, you need to list the domain names that are going to be included in your certificates.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 20:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So there could be a fully qualified domain name FQDN such as corp.example.com, or it could be a wildcard domain, for example, star.example.com.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 21:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And you can include as many domains as you want.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 22:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Then you select the validation method.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 23:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Would it be through DNS validation or through email validation?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 24:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: And for automation purposes, when it comes to automatically renewing your SSL certificates, DNS validation is going to be a preferred method.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 25:
- Concepts: Data Security Operational Context
- Services: AWS Certificate Manager
- Key Insights: And for email validation, what's going to happen is that ACM is going to send emails to contact addresses in the registrar for your domain and verify that you did request that certificates.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 26:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And if you decide to do DNS validation, then you will have to create a CNAME record in your DNS configuration to verify that you own the domain.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 27:
- Concepts: Data Security Operational Context
- Services: AWS Certificate Manager
- Key Insights: And so if you have Route 53, for example, then it's automatically integrated with ACM to do this for you.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 28:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: Next, you have to wait a few hours to get verified and then your certificate will be issued.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 29:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And these public certificates will also be enrolled for automatic renewal.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 30:
- Concepts: Data Security Operational Context
- Services: AWS Certificate Manager
- Key Insights: That means that automatically ACM will renew any ACM-generated certificates, 60 days before expiry which gives you a lot of peace of mind.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 31:
- Concepts: Data Security Operational Context
- Services: AWS Certificate Manager
- Key Insights: So when it comes to ACM, what if you import a public certificates?
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 32:
- Concepts: Certificate and TLS Security
- Services: AWS Certificate Manager
- Key Insights: So you have the option to actually generate a certificate outside of ACM and then import it into ACM.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 33:
- Concepts: Data Security Operational Context
- Services: AWS Certificate Manager
- Key Insights: But in that case, because it's been generated outside of ACM, there is no automatic renewal.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 34:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: And so therefore, before your existing certificate expires you need to import a new one.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 35:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: And how do you know when a certificate is going to expire?
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 36:
- Concepts: Data Security Operational Context
- Services: AWS Certificate Manager
- Key Insights: Well, the ACM service is going to send daily expiration events, starting 45 days prior to expiration into your event bridge service.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 37:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And the number of days can be configured.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 38:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: You can set 45, you can set 30, whatever you want.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 39:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So that means that daily, you will have an event in EventBridge for expiring certificates and that's one way of doing it.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 40:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then from EventBridge then you can trigger Lambda functions or SNS topics or SQL, SQS.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 41:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: There's another way to use AWS Config.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 42:
- Concepts: Certificate and TLS Security
- Services: AWS Certificate Manager
- Key Insights: And there is a managed rule in Config called the ACM-certificate-expiration-check.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 43:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And it's going to check for expiring certificates.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 44:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: You can configure the number of days again.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 45:
- Concepts: Data Security Operational Context
- Services: AWS Certificate Manager
- Key Insights: And so the Config service is going to have a rule that will check the ACM service.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 46:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: And then if any certificate is deemed not compliant then the event of non-compliance will be sent to EventBridge.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 47:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And yet again, we can trigger Lambda, SNS or SQS.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 48:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So two ways of getting these automatic alerts.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 49:
- Concepts: Data Security Operational Context
- Services: AWS Certificate Manager, Elastic Load Balancing
- Key Insights: Now, how does the ACM service integrate with the ALB?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 50:
- Concepts: Certificate and TLS Security
- Services: AWS Certificate Manager, Elastic Load Balancing
- Key Insights: So we've seen kind of an ALB with an Auto Scaling group in the backend, and we can provision and maintain a TLS certificate through the ACM service.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 51:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But there is a very good specificity.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 52:
- Concepts: Data Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: On your ALB, you can set a redirect rule from HTP to HTTPS.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 53:
- Concepts: Data Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: That means that if your user is accessing your Application Balancer on the HTP protocol the ALB will return with a redirect and say you need to redirect to HTTPS.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 54:
- Concepts: Certificate and TLS Security
- Services: AWS Certificate Manager
- Key Insights: So the user comes back to the Application Balancer now on the HTTPS protocol, and therefore it will leverage the TLS certificate coming from the Certificate Manager.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 55:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then once a request is going through the HTTPS protocol then it will be directed into your Auto Scaling group.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 56:
- Concepts: Data Security Operational Context
- Services: AWS Certificate Manager
- Key Insights: So let's look at how ACM integrates with the API gateway.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 57:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But first we have to remember the end point types.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 58:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So we have the Edge-optimized endpoint type for API gateway.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 59:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: This is when your clients are global and the requests are going to be routed first through CloudFront Edge locations to improve the latency and then sent to an API gateway that still lives in only one region.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 60:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: You can also have the Regional type of endpoint in which clients are within the same region as your API gateway.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 61:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: In this case, we don't have CloudFront available but we could still, if you wanted to, create our own CloudFront distribution to have more control over the caching and the distribution strategy.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 62:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: And then we have the private API gateway endpoints that can only be accessed from within our VPC using an interface VPC endpoint and we need to use a resource policy to define access to this API gateway in a private mode.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 63:
- Concepts: Data Security Operational Context
- Services: AWS Certificate Manager
- Key Insights: So ACM makes sense for Edge-optimized and regional endpoint.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 64:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's have a look at that.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 65:
- Concepts: Data Security Operational Context
- Services: AWS Certificate Manager
- Key Insights: So to integrate ACM with the API gateway, first we need to create a resource in the API gateway called a Custom Domain Name and then we need to configure it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 66:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: So for Edge-optimized endpoints, then because the requests are routed through CloudFront then the TLS certificates are going to be attached to your CloudFront distribution.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 67:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: And therefore the TLS Certificate must be created in the same region as CloudFront, which is us-east-1.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Secret/certificate lifecycle signal.

Line 68:
- Concepts: Data Security Operational Context
- Services: AWS Certificate Manager
- Key Insights: So therefore your API gateway lives in one region but then everything is distributed through CloudFront and your ACM certificates must live in the us-east-1 region because this is where CloudFront is located.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Secret/certificate lifecycle signal.

Line 69:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: All the certificates for CloudFront are in us-east-1.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 70:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So then we set up a CNAME or an alias record in Route 53 to be done.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 71:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: And the regional endpoints, there for clients in the same region as your API gateway, and therefore, because we only have an API gateway then the TLS certificate must be imported on API gateway in the same region as the API stage.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal; Secret/certificate lifecycle signal.

Line 72:
- Concepts: Data Security Operational Context
- Services: AWS Certificate Manager
- Key Insights: And therefore, in this example my ACM is only in the ap-southeast-2.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 73:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then we set up a CNAME or an alias record in Route 53, to point to your DNS.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 74:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And that's it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 75:
- Concepts: Certificate and TLS Security
- Services: AWS Certificate Manager
- Key Insights: So you've learned a lot about AWS Certificate Manager in this lecture.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 76:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/26_AWS Security & Encryption_ KMS, SSM Parameter Store, Shield, WAF/307_AWS CloudHSM.txt

Line 1:
- Concepts: Encryption Fundamentals
- Services: AWS CloudHSM, AWS KMS
- Key Insights: So we have seen KMS for encryption, but now let's look at CloudHSM.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 2:
- Concepts: Encryption Fundamentals
- Services: AWS KMS
- Key Insights: So with KMS, AWS will manage the software for the encryption and will have control over the encryption keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 3:
- Concepts: Encryption Fundamentals
- Services: AWS CloudHSM
- Key Insights: But with CloudHSM, AWS will provision some encryption hardware.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 4:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It's called an HSM device, so a dedicated hardware, which is a hardware security module.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 5:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: And then we are going to manage our own encryption keys entirely, not AWS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 6:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So we have full control over the encryption keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 7:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: The HSM device is going to be set up within the cloud of AWS, but it is tamper resistant with FIPS 140-2 Level 3 compliance, which means that if anyone tries to access your HSM device manually, then they're going to be stopped and blocked.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 8:
- Concepts: Encryption Fundamentals
- Services: AWS CloudHSM
- Key Insights: The CloudHSM device supports both symmetric and asymmetric encryption keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 9:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: So that means that you can have, for example, SSL and TLS keys on top of it.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 10:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM
- Key Insights: There is no free tier and to use the CloudHSM device, you need to use the client software, which is quite complicated and out of scope right now.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 11:
- Concepts: Encryption Fundamentals
- Services: AWS CloudHSM
- Key Insights: There is an integration between Redshift and CloudHSM if you wanted to leverage CloudHSM for your database encryption and key managements.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 12:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: AWS CloudHSM, Amazon S3
- Key Insights: CloudHSM is a really, really good candidate if you want to implement SSE-C type of encryption on top of S3, for example, because you are managing your own encryption keys and you are storing them into this CloudHSM.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 13:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM
- Key Insights: So with the CloudHSM, AWS will manage your hardware, whereas the service itself can be used on your own.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 14:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM
- Key Insights: The CloudHSM client is something you have to use to establish a connection into the CloudHSM service.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 15:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then you are going to manage the keys overall.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 16:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM, AWS KMS
- Key Insights: So the IAM permissions are going to be used to do a create, read, update, a delete of an HSM cluster at a high level, but then you're going to use your CloudHSM software to manage the keys and manage the users and their permissions to access the keys, which is different from KMS because in KMS, well, everything is managed using IAM.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 17:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM
- Key Insights: Now, the CloudHSM clusters can have high availability and they're spread across multiple AZ.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 18:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So they're HA, and this is super important to understand.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 19:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So you can have two AZs.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 20:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: One is going to be replicated from another and your HSM client can connect to either.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 21:
- Concepts: Encryption Fundamentals
- Services: AWS CloudHSM
- Key Insights: So how do we transparently leverage CloudHSM within the AWS services encryption?
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 22:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM, AWS KMS
- Key Insights: Well, there is an integration between CloudHSM and KMS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 23:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: How does that work?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 24:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM, AWS KMS
- Key Insights: Well, in KMS, we're going to define a KMS custom key store, and that will be CloudHSM.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 25:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: AWS CloudHSM, Amazon EBS, Amazon RDS, Amazon S3
- Key Insights: And that means we can get CloudHSM encryption for EBS, S3, RDS and so on.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 26:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 27:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM, AWS KMS
- Key Insights: Well, we create the CloudHSM cluster, and we define a KMS custom key store that is going to be connected to our CloudHSM cluster.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 28:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: AWS CloudHSM, AWS KMS, Amazon EBS, Amazon RDS
- Key Insights: From there, if we create an RDS database instance that has an encrypted EBS volume with KMS encryption, well, internally this KMS encryption is going to be leveraging encryption keys within your CloudHSM cluster.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 29:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM
- Key Insights: The benefit of doing this is number one, we are actually using our CloudHSM cluster.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 30:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: And number two, any API calls made through KMS that reaches our cloud HSM cluster is going to be logged in CloudTrail.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 31:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM, AWS KMS
- Key Insights: So if we compare CloudHSM and KMS, the tendency of KMS is multi-tenant, whereas for CloudHSM, it's single tenants.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 32:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: They both have the same standard.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 33:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: The master keys are three kinds on KMS, they're AWS owned, AWS managed, and customer managed CMK.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 34:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM
- Key Insights: Whereas for CloudHSM, it's only customer-managed CMK because AWS cannot access your HSM device.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 35:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM, AWS KMS
- Key Insights: In terms of key type, it is very similar, symmetric, asymmetric and digital signing for KMS and symmetric, asymmetric and digital sending and hashing for CloudHSM.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 36:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM, AWS KMS
- Key Insights: In terms of key accessibility, well, KMS is accessible in multiple regions, but because CloudHSM is deployed in a VPC, you can share it across VPCs using VPC for sharing.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 37:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And so that means that it's going to be accessible across multiple regions if you wanted to.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 38:
- Concepts: Certificate and TLS Security
- Services: AWS CloudHSM, AWS KMS, Elastic Load Balancing
- Key Insights: For cryptographic acceleration, well, you can set up none on KMS, but with CloudHSM, you have SSL and TLS acceleration you can use at your load balancer level, or you can use Oracle and TDE acceleration as well for your database.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 39:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: That is Oracle based.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 40:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM, AWS KMS
- Key Insights: For access and authentication, you have IAM for KMS, whereas CloudHSM has its own security mechanism to manage users and their permissions and their keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 41:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM, AWS KMS
- Key Insights: And then finally, for high availability, while KMS is a managed service and is always available and CloudHSM will have multiple HSM devices over different availability zones.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal.

Line 42:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM, AWS KMS
- Key Insights: Other capability is CloudTrail and CloudWatch for KMS, whereas we have MFS support as well for CloudHSM.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 43:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM, AWS KMS
- Key Insights: Finally, KMS is part of the free tier in AWS, whereas CloudHSM is not.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 44:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM
- Key Insights: So that's it for CloudHSM, I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

## Step 2 â€” Consolidation

### 1. Concepts List
- Access Control Enforcement
- Certificate and TLS Security
- Cross-Account and Multi-Region Security
- Data Security Operational Context
- Encryption Fundamentals
- Key Management Lifecycle
- Secrets Management
- Storage Data Protection

### 2. Services List
- AWS Certificate Manager
- AWS CloudHSM
- AWS KMS
- AWS Secrets Manager
- Amazon EBS
- Amazon RDS
- Amazon S3
- Elastic Load Balancing
- SSM Parameter Store

### 3. Features List
- asymmetric
- certificate
- envelope encryption
- kms
- rotation
- sni
- symmetric

### 4. Use Cases
- 019_Parameter Store.txt:3: And optionally, you can choose to encrypt these configurations and therefore make it secrets by using the KMS service.
- 019_Parameter Store.txt:13: For example, your EC2 instance role or you can have encrypted configuration.
- 019_Parameter Store.txt:14: In that case the SSM parameter store is going to encrypt it with KMS.
- 019_Parameter Store.txt:18: So for example, you can define my department as a path and underneath the My-app and then the Dev and then we have the Dev DB-URL and then the DB-password within that folder.
- 019_Parameter Store.txt:26: For example, if you want to find the latest AMI for the Amazon Index 2 in your specific region.
- 019_Parameter Store.txt:28: So if you take an application, for example our Dev Lambda function is going to have an IAM roll that allows it to access the DB-URL and DB-password within the Dev of my app.
- 020_Secrets Manager.txt:5: For example, using a Lambda function.
- 020_Secrets Manager.txt:7: And for other databases or services that you want to rotate automatically, you would have to write a custom Lambda function that would generate these secrets, and then insert it into Secrets Manager.
- 020_Secrets Manager.txt:36: And then, we create a resource-based policy on our Secrets Manager's secrets, which is similar, for example, to an S3 bucket policy.
- 020_Secrets Manager.txt:43: Then, of course, you need to encrypt your secrets with KMS.
- 020_Secrets Manager.txt:52: So in terms of rotation, if you look at Secrets Manager, there is, for example, deep integration with RDS.
- 022_SSL Encryption, SNI & MITM.txt:1: So here is a lecture about how SSL works, and how to protect yourself against Man-in-the-Middle attacks.
- 022_SSL Encryption, SNI & MITM.txt:4: So, SSL refers to Secure Socket Layer, and it's used to encrypt connections.
- 022_SSL Encryption, SNI & MITM.txt:11: And when a certificate is issued to you, it has an expiration date that you will set, and then you must renew it before it expires to keep your service up and running.
- 022_SSL Encryption, SNI & MITM.txt:62: And next, extremely important, how to protect yourself against SSL Man-in-the-Middle attacks.
- 022_SSL Encryption, SNI & MITM.txt:84: Well, when a DNS server is hacked, or is possible for a pirate server to forge a DNS response, and to send your clients to the wrong target server.
- 022_SSL Encryption, SNI & MITM.txt:89: You could alternatively run a custom DNS server on EC2, for example.
- 023_AWS Certificate Manager - ACM.txt:27: So, you will have to have ACM provision a certificate in every single region where you have load-balancers, for example, for this to work.
- 189_[SAA] Secrets Manager.txt:6: And I just showed you Amazon RDS for example, for MySQL, PostgreSQL, SQL or Aurora.
- 189_[SAA] Secrets Manager.txt:17: Number one, in case there is a problem with US East 1, you're able, for example, to promote a replica Secret as a standalone secret.
- 190_[SAA] Secrets Manager - Hands On.txt:9: And if you go for example, for other type of secrets, here we can store anything we want.
- 190_[SAA] Secrets Manager - Hands On.txt:10: So for example, I can say MySecretKey, and then MyVerySecretValue, and this would be a secret stored in here.
- 190_[SAA] Secrets Manager - Hands On.txt:11: And another one could be, for example, API_KEY, and then would be as well like a secret API key, so you would enter some text in here.
- 190_[SAA] Secrets Manager - Hands On.txt:19: So prod/my-secret for example, and a description but I don't need it.
- 190_[SAA] Secrets Manager - Hands On.txt:29: And when do we want to rotate it, and if we do enable rotation, then we need to specify a rotation function.
- 190_[SAA] Secrets Manager - Hands On.txt:41: And if you wanted to rotate it, then automatically the database also gets updated.
- 190_[SAA] Secrets Manager - Hands On.txt:43: Then you would configure the secrets as well if you wanted to have for example some kind of multi-region replication.
- 191_Secrets Manager - Advanced.txt:2: First one, we can use KMS to encrypt and decrypt every version of every secret value.
- 191_Secrets Manager - Advanced.txt:4: So Secret Manager internally is going to use the generate data key API call to get a data key and is going to encrypt, for example, a secret value, a database password, and then you're going to get the encrypted value and that's how it works in the reverse mechanism for decryption.
- 191_Secrets Manager - Advanced.txt:9: You must have access, of course, to the secret in Secret Manager, but also have access to the underlying KMS key to be able to encrypt or decrypt that secret.
- 191_Secrets Manager - Advanced.txt:12: So for some databases you have automated password rotation for example, RDS, Redshift, Document DB or other databases.
- 191_Secrets Manager - Advanced.txt:13: What's going to happen is that Secrets Manager, if this is enabled, every 30 day is going to invoke a Lambda function that you create yourself or that is provided by the service when there isn't already in existing integration such as RDS.
- 191_Secrets Manager - Advanced.txt:15: So no matter what the secret you have, Secrets Manager will use a Lambda function to rotate the secrets.
- 191_Secrets Manager - Advanced.txt:17: Now, in the use case of you're using a Lambda function to rotate an Amazon RDS database, you must make sure that this Lambda function has access to both the Secrets Manager Service and your database.
- 191_Secrets Manager - Advanced.txt:21: For example, say we want to connect to an RDS database and the password of this RDS database is within Secrets Manager.
- 191_Secrets Manager - Advanced.txt:23: So for this, we're going to reference the secret from Lambda, which, when the Lambda function boots up, is going to fetch that secret and then access the RDS database.
- 191_Secrets Manager - Advanced.txt:34: So the use case is to grant access to a single secret for multiple users managing this from a secret perspective.
- 191_Secrets Manager - Advanced.txt:35: And forcing provisions, for example, we can add an explicit deny to a secret for whatever use case you have, or sharing a secret between AWS accounts.
- 212_[SAA_DVA_SOA] ELB SSL Certificates.txt:10: So, SSL refers to Secure Sockets Layer and it's used to encrypt transfer connections.
- 212_[SAA_DVA_SOA] ELB SSL Certificates.txt:16: And using this public SSL certificate attached to our load balancer, we're able to encrypt the connection between the clients and the load balancer.
- 212_[SAA_DVA_SOA] ELB SSL Certificates.txt:17: So whenever you go to a website, for example google.com or anything, any other website, and you have a lock or a green lock that means that your traffic is encrypted.
- 212_[SAA_DVA_SOA] ELB SSL Certificates.txt:31: And when you set you an HTTPS listener, you must specify a default certificate.
- 212_[SAA_DVA_SOA] ELB SSL Certificates.txt:41: So it only works when you use the application load balancer and the network load balancer, so the newer generations, or CloudFront.
- 212_[SAA_DVA_SOA] ELB SSL Certificates.txt:43: And it does not work when you use the classic load balancer because it is older generation.
- 213_ELB - SSL Certificates - Advanced.txt:3: In which case, while our users will access our ELB using an encrypted connection for example, HTTPS, but there is going to be a termination because then the ELB will just send HTTP traffic over your prior VPC into your EC2 instances.
- 213_ELB - SSL Certificates - Advanced.txt:15: And so therefore the hostname when indicated will be served by the right target group.
- 213_ELB - SSL Certificates - Advanced.txt:18: What's going to happen is that a client when it connects to your ALB, will indicate the server name, the hostname.
- 213_ELB - SSL Certificates - Advanced.txt:38: That is when your client is connecting to your server and establishing a secure connection.
- 213_ELB - SSL Certificates - Advanced.txt:39: So you can use some predefined security policies for example, the ELBSecurityPolicy-2016-08 and then apply it to your load balancer.
- 213_ELB - SSL Certificates - Advanced.txt:51: And this is when you require Forward Secrecy.
- 214_Network Load Balancer - TLS Listeners.txt:7: The client, for example, talks to the TLS listener on port 443 of your network load balancer, which has TLS termination enabled because it has a certificate.
- 214_Network Load Balancer - TLS Listeners.txt:17: And when you have the setting, you support mutual TLS because well, the NLB will pass the traffic as is and then the mutual TLS authentication can be implemented directly on your EC2 instances as targets.
- 215_AWS Certificate Manager (ACM).txt:27: So, you will have to have ACM provision a certificate in every single region where you have load-balancers, for example, for this to work.
- 216_[DVA_SOA] AWS Certificate Manager (ACM) - Hands On.txt:42: For example, the first one, and this is defining how strong you want your HTTPS security to be, but we'll just save it.
- 216_[DVA_SOA] AWS Certificate Manager (ACM) - Hands On.txt:77: Well, let's go into, for example, the EC2 console.
- 217_ACM - Advanced.txt:11: For example, for client VPN purposes.
- 217_ACM - Advanced.txt:14: So the use cases of using a private certificate authority is to do encrypted TLS communication from internally to cryptographically signed code to authenticate users, computers, API endpoints, and IoT devices.
- 217_ACM - Advanced.txt:18: So when you have a public certificate, so we're back into the public realm now, you must prove that you own or control the domain because otherwise you cannot have a public certificate.
- 217_ACM - Advanced.txt:26: The admin creates a CNAME record in your DNS, for example, Route 53.
- 217_ACM - Advanced.txt:33: So when you register domain, you have to register an email address, and that's what ACM will send an email to to make sure that, again, the owner of the domain as per the registrar is there, and accept the certificates.
- 217_ACM - Advanced.txt:46: This is when we fail the DNS validation, of course.
- 217_ACM - Advanced.txt:49: So you can use the dig command, for example, to verify the value of the DNS config itself.
- 302_SSM Parameter Store Overview.txt:3: And optionally, you can choose to encrypt these configurations and therefore make it secrets by using the KMS service.
- 302_SSM Parameter Store Overview.txt:13: For example, your EC2 instance role or you can have encrypted configuration.
- 302_SSM Parameter Store Overview.txt:14: In that case the SSM parameter store is going to encrypt it with KMS.
- 302_SSM Parameter Store Overview.txt:18: So for example, you can define my department as a path and underneath the My-app and then the Dev and then we have the Dev DB-URL and then the DB-password within that folder.
- 302_SSM Parameter Store Overview.txt:26: For example, if you want to find the latest AMI for the Amazon Index 2 in your specific region.
- 302_SSM Parameter Store Overview.txt:28: So if you take an application, for example our Dev Lambda function is going to have an IAM roll that allows it to access the DB-URL and DB-password within the Dev of my app.
- 303_SSM Parameter Store Hands On (CLI).txt:20: But we'll use Text, and for the string, I will have for example, dev.database.stephantheteacher.com.
- 303_SSM Parameter Store Hands On (CLI).txt:29: So DB Password for Dev, and as you guessed it, we're going to have a SecureString this time, and because it's a password, we're going to encrypt it with a KMS key, so it could belong in my account or another account.
- 303_SSM Parameter Store Hands On (CLI).txt:32: For example, you may have created, for example, KMS, a key called Tutorial or whatever you want to create it.
- 303_SSM Parameter Store Hands On (CLI).txt:46: So I can have, for example, my dev/db-url as well as my dev password, db-password.
- 303_SSM Parameter Store Hands On (CLI).txt:55: But you can do something more now, you can do, for example, my-app as a whole, and as you can see, I get nothing, but if I use the flag and it's a flag called Recursion, so it's going to be recursive, then you have access to all the parameters recursively under that namespace.
- 304_AWS Secrets Manager - Overview.txt:6: And I just showed you Amazon RDS for example, for MySQL, PostgreSQL, SQL or Aurora.
- 304_AWS Secrets Manager - Overview.txt:17: Number one, in case there is a problem with US East 1, you're able, for example, to promote a replica Secret as a standalone secret.
- 305_AWS Secrets Manager - Hands On.txt:9: And if you go for example, for other type of secrets, here we can store anything we want.
- 305_AWS Secrets Manager - Hands On.txt:10: So for example, I can say MySecretKey, and then MyVerySecretValue, and this would be a secret stored in here.
- 305_AWS Secrets Manager - Hands On.txt:11: And another one could be, for example, API_KEY, and then would be as well like a secret API key, so you would enter some text in here.
- 305_AWS Secrets Manager - Hands On.txt:19: So prod/my-secret for example, and a description but I don't need it.
- 305_AWS Secrets Manager - Hands On.txt:29: And when do we want to rotate it, and if we do enable rotation, then we need to specify a rotation function.
- 305_AWS Secrets Manager - Hands On.txt:41: And if you wanted to rotate it, then automatically the database also gets updated.
- 305_AWS Secrets Manager - Hands On.txt:43: Then you would configure the secrets as well if you wanted to have for example some kind of multi-region replication.
- 306_AWS Certificate Manager (ACM).txt:6: You know, when you go to websites and it says HTTPS, the S stands for secure, and therefore this is where you know that there is a TLS certificate involved in the transaction.
- 306_AWS Certificate Manager (ACM).txt:7: So how does that work while you have an ALB, for example, connected to your Auto Scaling group but you want to expose your application balancer as an HTTPS endpoint.
- 306_AWS Certificate Manager (ACM).txt:13: For example, the Classic one, the Application Balancer or the Network Load Balancer.
- 306_AWS Certificate Manager (ACM).txt:20: So there could be a fully qualified domain name FQDN such as corp.example.com, or it could be a wildcard domain, for example, star.example.com.
- 306_AWS Certificate Manager (ACM).txt:24: And for automation purposes, when it comes to automatically renewing your SSL certificates, DNS validation is going to be a preferred method.
- 306_AWS Certificate Manager (ACM).txt:27: And so if you have Route 53, for example, then it's automatically integrated with ACM to do this for you.
- 306_AWS Certificate Manager (ACM).txt:31: So when it comes to ACM, what if you import a public certificates?
- 306_AWS Certificate Manager (ACM).txt:35: And how do you know when a certificate is going to expire?
- 306_AWS Certificate Manager (ACM).txt:59: This is when your clients are global and the requests are going to be routed first through CloudFront Edge locations to improve the latency and then sent to an API gateway that still lives in only one region.
- 307_AWS CloudHSM.txt:9: So that means that you can have, for example, SSL and TLS keys on top of it.
- 307_AWS CloudHSM.txt:12: CloudHSM is a really, really good candidate if you want to implement SSE-C type of encryption on top of S3, for example, because you are managing your own encryption keys and you are storing them into this CloudHSM.

### 5. Constraints / Limitations
- 019_Parameter Store.txt:36: And this is only for advanced parameters. (mouse clicks) Well, this allows you to assign a time to live to a parameter, that means an expiration date.
- 019_Parameter Store.txt:40: So this is an expiration policy to delete a parameter and you say, "Hey, on this time stamp you must delete these parameter." And then through the EventBridge integration, EventBridge is going to get notifications of it.
- 020_Secrets Manager.txt:34: The KMS via service, which allows to use the kms:Decrypt operation only if it's invoked via, so through, the Service Secrets Manager.
- 022_SSL Encryption, SNI & MITM.txt:6: And nowadays, even though it's almost only TLS certificates, people still refer, including me, of it as SSL.
- 022_SSL Encryption, SNI & MITM.txt:11: And when a certificate is issued to you, it has an expiration date that you will set, and then you must renew it before it expires to keep your service up and running.
- 022_SSL Encryption, SNI & MITM.txt:18: But SSL is only for asymmetric.
- 022_SSL Encryption, SNI & MITM.txt:19: So the idea is that during the asymmetric handshake, which is the first connection between the client and the server, they're going to use an exchange, a symmetric key that it will commonly share for this communication.
- 022_SSL Encryption, SNI & MITM.txt:20: And from that point forward, they will only use the symmetric key to talk to one another.
- 022_SSL Encryption, SNI & MITM.txt:38: So the idea is that SNI, will solve the problem of loading multiple SSL certificates onto one web server only.
- 022_SSL Encryption, SNI & MITM.txt:45: Very important to note.
- 022_SSL Encryption, SNI & MITM.txt:55: So SNI is extremely important.
- 022_SSL Encryption, SNI & MITM.txt:59: Then we cannot use one CLB behind multiple applications.
- 022_SSL Encryption, SNI & MITM.txt:62: And next, extremely important, how to protect yourself against SSL Man-in-the-Middle attacks.
- 023_AWS Certificate Manager - ACM.txt:15: First of all, you can create your own public certificates, and you need to verify the public DNS, and you must be issued by a trusted public certificate authority.
- 023_AWS Certificate Manager - ACM.txt:17: That's for your internal applications, so you can have your own private CA, and your applications must be set up to trust your private CA.
- 023_AWS Certificate Manager - ACM.txt:22: Finally, very, very, very, very important, ACM is a regional service.
- 023_AWS Certificate Manager - ACM.txt:24: So, you cannot use ACM as a global service.
- 023_AWS Certificate Manager - ACM.txt:26: And you cannot copy certificates across regions.
- 190_[SAA] Secrets Manager - Hands On.txt:14: So, this will be kept secret so that only person with the correct IAM permissions can access these secrets.
- 191_Secrets Manager - Advanced.txt:6: It only works with symmetric KMS keys and all the encryption process will happen within the service.
- 191_Secrets Manager - Advanced.txt:9: You must have access, of course, to the secret in Secret Manager, but also have access to the underlying KMS key to be able to encrypt or decrypt that secret.
- 191_Secrets Manager - Advanced.txt:17: Now, in the use case of you're using a Lambda function to rotate an Amazon RDS database, you must make sure that this Lambda function has access to both the Secrets Manager Service and your database.
- 191_Secrets Manager - Advanced.txt:19: Then we must, of course, deploy our Lambda function within the same VPC, then is going to be able to access Amazon RDS privately, but also we need to make sure we have a VPC endpoint to access back Secrets Manager or a NAT Gateway in place, again, to get network connectivity into Secrets Manager.
- 191_Secrets Manager - Advanced.txt:25: So for this to happen your Lambda function must be configured to access the secrets in Secrets Manager and must have the proper IAM policy.
- 191_Secrets Manager - Advanced.txt:29: And this can happen only if we have the proper IAM policy in place and we've configured our ECS task properly with an IAM role.
- 212_[SAA_DVA_SOA] ELB SSL Certificates.txt:9: So that means the data as it goes through a network is going to be encrypted and only going to be able to be decrypted by the sender and the receiver.
- 212_[SAA_DVA_SOA] ELB SSL Certificates.txt:20: Don't put your login information because it's not secure." So the SSL certificates, they have an an expiration date that you set and they must be renewed regularly to make sure that they're authentic, okay?
- 212_[SAA_DVA_SOA] ELB SSL Certificates.txt:31: And when you set you an HTTPS listener, you must specify a default certificate.
- 212_[SAA_DVA_SOA] ELB SSL Certificates.txt:33: Now don't worry, I'm going to explain what SNI is in details in the next slide because it is really, really important for you to understand what it means.
- 212_[SAA_DVA_SOA] ELB SSL Certificates.txt:35: Okay, so let's talk about SNI 'cause it is so important.
- 212_[SAA_DVA_SOA] ELB SSL Certificates.txt:36: SNI solves a very important problem, which is how do you load multiple SSL certificates onto one web server in order for that web server to serve multiple websites?
- 212_[SAA_DVA_SOA] ELB SSL Certificates.txt:41: So it only works when you use the application load balancer and the network load balancer, so the newer generations, or CloudFront.
- 212_[SAA_DVA_SOA] ELB SSL Certificates.txt:57: So classic load balancer is yes, you can only support one SSL certificate.
- 213_ELB - SSL Certificates - Advanced.txt:6: For your HTTPS listener, you must specify a default certificate and you can have as well an optional list of certificates if you wanted to support multiple domains.
- 213_ELB - SSL Certificates - Advanced.txt:22: This only works therefore for the newer generations types of load balancer, such as the Application Load Balancer and the Network Load Balancer.
- 213_ELB - SSL Certificates - Advanced.txt:24: So the CLB supports only one SSL certificate.
- 213_ELB - SSL Certificates - Advanced.txt:41: And for backend connections, then you must use the ELBSecurityPolicy-2016-08.
- 213_ELB - SSL Certificates - Advanced.txt:47: So in this case, you must meet compliance and security standards that require to only use certain TLS protocol version.
- 214_Network Load Balancer - TLS Listeners.txt:4: If you wanna create a TLS listener, you must create a certificate in ACM and then you attach it on your NLB.
- 215_AWS Certificate Manager (ACM).txt:15: First of all, you can create your own public certificates, and you need to verify the public DNS, and you must be issued by a trusted public certificate authority.
- 215_AWS Certificate Manager (ACM).txt:17: That's for your internal applications, so you can have your own private CA, and your applications must be set up to trust your private CA.
- 215_AWS Certificate Manager (ACM).txt:22: Finally, very, very, very, very important, ACM is a regional service.
- 215_AWS Certificate Manager (ACM).txt:24: So, you cannot use ACM as a global service.
- 215_AWS Certificate Manager (ACM).txt:26: And you cannot copy certificates across regions.
- 216_[DVA_SOA] AWS Certificate Manager (ACM) - Hands On.txt:35: So this is the important part.
- 217_ACM - Advanced.txt:6: They're end-entities that these certificates cannot be used to issue more certificates.
- 217_ACM - Advanced.txt:7: These certificates are trusted only by your organization, not the public internet, because it's a private certificate authority.
- 217_ACM - Advanced.txt:18: So when you have a public certificate, so we're back into the public realm now, you must prove that you own or control the domain because otherwise you cannot have a public certificate.
- 217_ACM - Advanced.txt:24: So this is the preferred method for automatic renewable purposes because everything is programmatic, and it only takes a few minutes to verify.
- 217_ACM - Advanced.txt:36: This is only relevant for public certificates.
- 217_ACM - Advanced.txt:67: And, of course, because they are imported certificates, we cannot automatically renew them because they've been signed elsewhere.
- 302_SSM Parameter Store Overview.txt:36: And this is only for advanced parameters. (mouse clicks) Well, this allows you to assign a time to live to a parameter, that means an expiration date.
- 302_SSM Parameter Store Overview.txt:40: So this is an expiration policy to delete a parameter and you say, "Hey, on this time stamp you must delete these parameter." And then through the EventBridge integration, EventBridge is going to get notifications of it.
- 303_SSM Parameter Store Hands On (CLI).txt:16: They are four kilobytes in value maximum, and we can't share that with other accounts, but the Advanced parameters, you can have 100,000 of them, they can be eight kilobytes and you can share them with your other accounts.
- 305_AWS Secrets Manager - Hands On.txt:14: So, this will be kept secret so that only person with the correct IAM permissions can access these secrets.
- 306_AWS Certificate Manager (ACM).txt:15: One thing you cannot use the AWS Certificate Manager with is EC2 instances.
- 306_AWS Certificate Manager (ACM).txt:16: So for public certificates and only for public certificates they cannot be extracted.
- 306_AWS Certificate Manager (ACM).txt:17: And so you cannot create public certificates for your EC2 instances through ACM.
- 306_AWS Certificate Manager (ACM).txt:59: This is when your clients are global and the requests are going to be routed first through CloudFront Edge locations to improve the latency and then sent to an API gateway that still lives in only one region.
- 306_AWS Certificate Manager (ACM).txt:62: And then we have the private API gateway endpoints that can only be accessed from within our VPC using an interface VPC endpoint and we need to use a resource policy to define access to this API gateway in a private mode.
- 306_AWS Certificate Manager (ACM).txt:67: And therefore the TLS Certificate must be created in the same region as CloudFront, which is us-east-1.
- 306_AWS Certificate Manager (ACM).txt:68: So therefore your API gateway lives in one region but then everything is distributed through CloudFront and your ACM certificates must live in the us-east-1 region because this is where CloudFront is located.
- 306_AWS Certificate Manager (ACM).txt:71: And the regional endpoints, there for clients in the same region as your API gateway, and therefore, because we only have an API gateway then the TLS certificate must be imported on API gateway in the same region as the API stage.
- 306_AWS Certificate Manager (ACM).txt:72: And therefore, in this example my ACM is only in the ap-southeast-2.
- 307_AWS CloudHSM.txt:18: So they're HA, and this is super important to understand.
- 307_AWS CloudHSM.txt:34: Whereas for CloudHSM, it's only customer-managed CMK because AWS cannot access your HSM device.

### 6. Patterns / Architectures
- 019_Parameter Store.txt:7: You have full integration with CloudFormation.
- 019_Parameter Store.txt:40: So this is an expiration policy to delete a parameter and you say, "Hey, on this time stamp you must delete these parameter." And then through the EventBridge integration, EventBridge is going to get notifications of it.
- 020_Secrets Manager.txt:6: There is a native integration between RDS and Secrets Manager for all DB engines, but also Redshift, DocumentDB and so on.
- 020_Secrets Manager.txt:19: Well, because we have a native integration between ECS and Secrets Manager, what can happen is that at boot time, your ECS task can automatically pull your secrets and inject it as an environment variable within your task.
- 020_Secrets Manager.txt:45: And it has deep integration with CloudFormation.
- 020_Secrets Manager.txt:50: There is deep integration with CloudFormation.
- 020_Secrets Manager.txt:52: So in terms of rotation, if you look at Secrets Manager, there is, for example, deep integration with RDS.
- 020_Secrets Manager.txt:58: But it's up to you to maintain this kind of integration, whereas it's provided by Secrets Manager automatically as a rotation feature.
- 022_SSL Encryption, SNI & MITM.txt:60: You would need to have multiple CLB for multiple target, for multiple ASG, in order to get this architecture working.
- 022_SSL Encryption, SNI & MITM.txt:71: So we have the same kind of architecture, but this time the Pirate Server will try to send a fake SSL certificate to the user.
- 023_AWS Certificate Manager - ACM.txt:4: So, ACM will load SSL certificates onto some following integrations.
- 023_AWS Certificate Manager - ACM.txt:6: So, anywhere, really, there is a need for SSL certificates, there is going to be an integration with ACM for it.
- 023_AWS Certificate Manager - ACM.txt:11: And then, finally, the ALB will be forwarding private, HTTP requests to your EC2 instance, if you set up HTP integration, and your EC2 instance will not have to perform SSL encryption or decryption, so that means that you have less CPU cost on your EC2 instance, thanks to the SSL termination that happens at the load-balancer level.
- 023_AWS Certificate Manager - ACM.txt:12: So, overall, ACM is amazing, because, from my personal experience, SSL certificates are very difficult to maintain manually, and so, having this integration with ACM, this automated provisioning, and this integration with AWS services, makes it really, really easy to deal with SSL certificates in AWS, and so, you have no reason not to use them nowadays.
- 189_[SAA] Secrets Manager.txt:10: And so anytime in the exam you see Secrets, or integration for RDS, or for Aurora of Secrets, really think Secrets Manager.
- 189_[SAA] Secrets Manager.txt:11: There's one more feature we need to know about which is the concept of multi-region Secrets.
- 190_[SAA] Secrets Manager - Hands On.txt:3: So, it's similar to the SSM parameter store because you can store secret things, but it's going to be different from it because while you have rotation, management, and tight integrations with databases such as MySQL, PostgreSQL, Amazon Aurora, and RDS and so on.
- 190_[SAA] Secrets Manager - Hands On.txt:7: Now, over time, it's very possible that this gets increased in terms of the capability of integrations, but we have Amazon RDS, we have Amazon DocumentDB, Amazon Redshift, other databases, or other type of secrets.
- 190_[SAA] Secrets Manager - Hands On.txt:24: And this is good if you want to have multi-region setups which as multi-region apps or multi-region databases.
- 190_[SAA] Secrets Manager - Hands On.txt:40: And the cool thing about it is that thanks to the integration between RDS and Secrets Manager, then this username and this password would be used to be able to login into the database.
- 190_[SAA] Secrets Manager - Hands On.txt:43: Then you would configure the secrets as well if you wanted to have for example some kind of multi-region replication.
- 191_Secrets Manager - Advanced.txt:13: What's going to happen is that Secrets Manager, if this is enabled, every 30 day is going to invoke a Lambda function that you create yourself or that is provided by the service when there isn't already in existing integration such as RDS.
- 212_[SAA_DVA_SOA] ELB SSL Certificates.txt:5: I'm going to talk about SNI and I'm going to talk about the integrations with load balancers.
- 213_ELB - SSL Certificates - Advanced.txt:2: So this is our classic architecture, and the idea is that you could have termination at the ELB level by having an SSL or TLS certificate loaded onto it.
- 215_AWS Certificate Manager (ACM).txt:4: So, ACM will load SSL certificates onto some following integrations.
- 215_AWS Certificate Manager (ACM).txt:6: So, anywhere, really, there is a need for SSL certificates, there is going to be an integration with ACM for it.
- 215_AWS Certificate Manager (ACM).txt:11: And then, finally, the ALB will be forwarding private, HTTP requests to your EC2 instance, if you set up HTP integration, and your EC2 instance will not have to perform SSL encryption or decryption, so that means that you have less CPU cost on your EC2 instance, thanks to the SSL termination that happens at the load-balancer level.
- 215_AWS Certificate Manager (ACM).txt:12: So, overall, ACM is amazing, because, from my personal experience, SSL certificates are very difficult to maintain manually, and so, having this integration with ACM, this automated provisioning, and this integration with AWS services, makes it really, really easy to deal with SSL certificates in AWS, and so, you have no reason not to use them nowadays.
- 216_[DVA_SOA] AWS Certificate Manager (ACM) - Hands On.txt:9: There is a direct integration between ACM and Route 53.
- 216_[DVA_SOA] AWS Certificate Manager (ACM) - Hands On.txt:84: But this is good, we've seen the integration between ACM and Elastic Beanstalk and your load balancers.
- 217_ACM - Advanced.txt:8: It has deep integration with services such as Amazon EKS and really any service that is integrated with ACM.
- 217_ACM - Advanced.txt:70: And then you can have Lambda functions, SNS notifications, SQS messages, whatever you want for your integration.
- 302_SSM Parameter Store Overview.txt:7: You have full integration with CloudFormation.
- 302_SSM Parameter Store Overview.txt:40: So this is an expiration policy to delete a parameter and you say, "Hey, on this time stamp you must delete these parameter." And then through the EventBridge integration, EventBridge is going to get notifications of it.
- 304_AWS Secrets Manager - Overview.txt:10: And so anytime in the exam you see Secrets, or integration for RDS, or for Aurora of Secrets, really think Secrets Manager.
- 304_AWS Secrets Manager - Overview.txt:11: There's one more feature we need to know about which is the concept of multi-region Secrets.
- 305_AWS Secrets Manager - Hands On.txt:3: So, it's similar to the SSM parameter store because you can store secret things, but it's going to be different from it because while you have rotation, management, and tight integrations with databases such as MySQL, PostgreSQL, Amazon Aurora, and RDS and so on.
- 305_AWS Secrets Manager - Hands On.txt:7: Now, over time, it's very possible that this gets increased in terms of the capability of integrations, but we have Amazon RDS, we have Amazon DocumentDB, Amazon Redshift, other databases, or other type of secrets.
- 305_AWS Secrets Manager - Hands On.txt:24: And this is good if you want to have multi-region setups which as multi-region apps or multi-region databases.
- 305_AWS Secrets Manager - Hands On.txt:40: And the cool thing about it is that thanks to the integration between RDS and Secrets Manager, then this username and this password would be used to be able to login into the database.
- 305_AWS Secrets Manager - Hands On.txt:43: Then you would configure the secrets as well if you wanted to have for example some kind of multi-region replication.
- 306_AWS Certificate Manager (ACM).txt:11: We will see this in a second on other slides and you have integrations with many AWS services.
- 307_AWS CloudHSM.txt:11: There is an integration between Redshift and CloudHSM if you wanted to leverage CloudHSM for your database encryption and key managements.
- 307_AWS CloudHSM.txt:22: Well, there is an integration between CloudHSM and KMS.

## Step 3 â€” Deep Expansion (Core Data Security Concepts)

### AWS KMS
- What it is: Managed cryptographic key service for encryption operations and key governance.
- Why it exists: Centralizes key lifecycle, policy controls, auditability, and service-integrated encryption.
- Internal working: API-based encrypt/decrypt/key generation with strict policy evaluation and CloudTrail audit events.
- Architecture: Data producer -> KMS key operation -> encrypted artifact -> controlled decrypt path.
- Key components: CMKs/keys, aliases, key policies, grants, rotation, multi-region keys, asymmetric keys.

### Secrets and Configuration Protection
- What it is: Managed storage for sensitive configuration values and credentials.
- Why it exists: Removes plaintext secrets from code and standardizes retrieval/rotation workflows.
- Internal working: Secrets stored encrypted at rest, access mediated by IAM/KMS policies.
- Architecture: Application identity -> secret retrieval API -> runtime secret consumption.
- Key components: Versioning, rotation workflows, access policies, integration SDK/CLI patterns.

### Amazon S3 Security
- What it is: Object storage security model combining encryption, identity/resource policies, and bucket-level controls.
- Why it exists: Secures data at scale while supporting granular access and lifecycle immutability needs.
- Internal working: Request authorization path evaluates IAM, bucket policies, ACL/public-block settings, and encryption defaults.
- Architecture: Client principal -> S3 policy evaluation -> object operation with encryption/retention enforcement.
- Key components: SSE options, bucket policies, Access Points, Object Lock, lifecycle and logging controls.

## Cross-Cloud Mapping (Concept-First)

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| Cloud key management | KMS | Azure Key Vault (keys) + Managed HSM | Cloud KMS + Cloud HSM |
| Secret storage and retrieval | Secrets Manager / Parameter Store | Azure Key Vault (secrets) | Secret Manager |
| Certificate lifecycle management | ACM | Azure Key Vault Certificates + App Gateway/Front Door | Certificate Manager + CAS patterns |
| Object storage encryption and controls | S3 encryption + policies + Access Points | Blob Storage encryption + SAS + immutability policies | Cloud Storage CMEK + IAM + retention locks |
| Immutable retention controls | S3 Object Lock / Glacier Vault Lock | Immutable Blob (WORM) | Bucket lock/retention policies |

### Trade-offs and Decision Notes
- AWS KMS integrates deeply with most AWS data-plane services with low operational friction.
- Azure Key Vault unifies keys/secrets/certs in enterprise identity-centric operations.
- GCP offers strong CMEK integration and clean KMS + Secret Manager workflows for cloud-native systems.
- For regulated workloads, pair encryption controls with immutable retention and auditable key/secrets lifecycle operations.

## Phase-wise Architect-Level Organization

### Phase 1 â€” Foundations
- Cryptography and data-protection primitives for storage, secrets, and certificates.
- Access-control interplay with encryption and retrieval paths.

### Phase 2 â€” Core Services
- Implement key, secret, certificate, and object-level controls based on workload sensitivity.
- Enforce default encryption and least-privilege retrieval paths.

### Phase 3 â€” Advanced Patterns
- Multi-account, cross-region replication and key governance; immutable retention controls.
- Automated secret rotation and cert renewal with failure-safe rollback.

### Phase 4 â€” System Design
- Enterprise data protection architecture: key hierarchy, secret domains, and storage trust boundaries.
- Scaling considerations: key/secret sprawl, policy complexity, and operational blast radius.
- Cost considerations: API call volume, managed service pricing, and retention/replication spend.

## Deduped Consolidation Snapshot

This additive section keeps original extraction untouched and provides duplicate-clean views for faster review.

### Concepts (Deduped)
- Access Control Enforcement
- Certificate and TLS Security
- Cross-Account and Multi-Region Security
- Data Security Operational Context
- Encryption Fundamentals
- Key Management Lifecycle
- Secrets Management
- Storage Data Protection

### Services (Deduped)
- AWS Certificate Manager
- AWS CloudHSM
- AWS KMS
- AWS Secrets Manager
- Amazon EBS
- Amazon RDS
- Amazon S3
- Elastic Load Balancing
- SSM Parameter Store

### Features (Deduped)
- asymmetric
- certificate
- envelope encryption
- kms
- rotation
- sni
- symmetric

### Use Cases (Deduped)
- 019_Parameter Store.txt:3: And optionally, you can choose to encrypt these configurations and therefore make it secrets by using the KMS service.
- 019_Parameter Store.txt:13: For example, your EC2 instance role or you can have encrypted configuration.
- 019_Parameter Store.txt:14: In that case the SSM parameter store is going to encrypt it with KMS.
- 019_Parameter Store.txt:18: So for example, you can define my department as a path and underneath the My-app and then the Dev and then we have the Dev DB-URL and then the DB-password within that folder.
- 019_Parameter Store.txt:26: For example, if you want to find the latest AMI for the Amazon Index 2 in your specific region.
- 019_Parameter Store.txt:28: So if you take an application, for example our Dev Lambda function is going to have an IAM roll that allows it to access the DB-URL and DB-password within the Dev of my app.
- 020_Secrets Manager.txt:5: For example, using a Lambda function.
- 020_Secrets Manager.txt:7: And for other databases or services that you want to rotate automatically, you would have to write a custom Lambda function that would generate these secrets, and then insert it into Secrets Manager.
- 020_Secrets Manager.txt:36: And then, we create a resource-based policy on our Secrets Manager's secrets, which is similar, for example, to an S3 bucket policy.
- 020_Secrets Manager.txt:43: Then, of course, you need to encrypt your secrets with KMS.
- 020_Secrets Manager.txt:52: So in terms of rotation, if you look at Secrets Manager, there is, for example, deep integration with RDS.
- 022_SSL Encryption, SNI & MITM.txt:1: So here is a lecture about how SSL works, and how to protect yourself against Man-in-the-Middle attacks.
- 022_SSL Encryption, SNI & MITM.txt:4: So, SSL refers to Secure Socket Layer, and it's used to encrypt connections.
- 022_SSL Encryption, SNI & MITM.txt:11: And when a certificate is issued to you, it has an expiration date that you will set, and then you must renew it before it expires to keep your service up and running.
- 022_SSL Encryption, SNI & MITM.txt:62: And next, extremely important, how to protect yourself against SSL Man-in-the-Middle attacks.
- 022_SSL Encryption, SNI & MITM.txt:84: Well, when a DNS server is hacked, or is possible for a pirate server to forge a DNS response, and to send your clients to the wrong target server.
- 022_SSL Encryption, SNI & MITM.txt:89: You could alternatively run a custom DNS server on EC2, for example.
- 023_AWS Certificate Manager - ACM.txt:27: So, you will have to have ACM provision a certificate in every single region where you have load-balancers, for example, for this to work.
- 189_[SAA] Secrets Manager.txt:6: And I just showed you Amazon RDS for example, for MySQL, PostgreSQL, SQL or Aurora.
- 189_[SAA] Secrets Manager.txt:17: Number one, in case there is a problem with US East 1, you're able, for example, to promote a replica Secret as a standalone secret.
- 190_[SAA] Secrets Manager - Hands On.txt:9: And if you go for example, for other type of secrets, here we can store anything we want.
- 190_[SAA] Secrets Manager - Hands On.txt:10: So for example, I can say MySecretKey, and then MyVerySecretValue, and this would be a secret stored in here.
- 190_[SAA] Secrets Manager - Hands On.txt:11: And another one could be, for example, API_KEY, and then would be as well like a secret API key, so you would enter some text in here.
- 190_[SAA] Secrets Manager - Hands On.txt:19: So prod/my-secret for example, and a description but I don't need it.
- 190_[SAA] Secrets Manager - Hands On.txt:29: And when do we want to rotate it, and if we do enable rotation, then we need to specify a rotation function.
- 190_[SAA] Secrets Manager - Hands On.txt:41: And if you wanted to rotate it, then automatically the database also gets updated.
- 190_[SAA] Secrets Manager - Hands On.txt:43: Then you would configure the secrets as well if you wanted to have for example some kind of multi-region replication.
- 191_Secrets Manager - Advanced.txt:2: First one, we can use KMS to encrypt and decrypt every version of every secret value.
- 191_Secrets Manager - Advanced.txt:4: So Secret Manager internally is going to use the generate data key API call to get a data key and is going to encrypt, for example, a secret value, a database password, and then you're going to get the encrypted value and that's how it works in the reverse mechanism for decryption.
- 191_Secrets Manager - Advanced.txt:9: You must have access, of course, to the secret in Secret Manager, but also have access to the underlying KMS key to be able to encrypt or decrypt that secret.
- 191_Secrets Manager - Advanced.txt:12: So for some databases you have automated password rotation for example, RDS, Redshift, Document DB or other databases.
- 191_Secrets Manager - Advanced.txt:13: What's going to happen is that Secrets Manager, if this is enabled, every 30 day is going to invoke a Lambda function that you create yourself or that is provided by the service when there isn't already in existing integration such as RDS.
- 191_Secrets Manager - Advanced.txt:15: So no matter what the secret you have, Secrets Manager will use a Lambda function to rotate the secrets.
- 191_Secrets Manager - Advanced.txt:17: Now, in the use case of you're using a Lambda function to rotate an Amazon RDS database, you must make sure that this Lambda function has access to both the Secrets Manager Service and your database.
- 191_Secrets Manager - Advanced.txt:21: For example, say we want to connect to an RDS database and the password of this RDS database is within Secrets Manager.
- 191_Secrets Manager - Advanced.txt:23: So for this, we're going to reference the secret from Lambda, which, when the Lambda function boots up, is going to fetch that secret and then access the RDS database.
- 191_Secrets Manager - Advanced.txt:34: So the use case is to grant access to a single secret for multiple users managing this from a secret perspective.
- 191_Secrets Manager - Advanced.txt:35: And forcing provisions, for example, we can add an explicit deny to a secret for whatever use case you have, or sharing a secret between AWS accounts.
- 212_[SAA_DVA_SOA] ELB SSL Certificates.txt:10: So, SSL refers to Secure Sockets Layer and it's used to encrypt transfer connections.
- 212_[SAA_DVA_SOA] ELB SSL Certificates.txt:16: And using this public SSL certificate attached to our load balancer, we're able to encrypt the connection between the clients and the load balancer.
- 212_[SAA_DVA_SOA] ELB SSL Certificates.txt:17: So whenever you go to a website, for example google.com or anything, any other website, and you have a lock or a green lock that means that your traffic is encrypted.
- 212_[SAA_DVA_SOA] ELB SSL Certificates.txt:31: And when you set you an HTTPS listener, you must specify a default certificate.
- 212_[SAA_DVA_SOA] ELB SSL Certificates.txt:41: So it only works when you use the application load balancer and the network load balancer, so the newer generations, or CloudFront.
- 212_[SAA_DVA_SOA] ELB SSL Certificates.txt:43: And it does not work when you use the classic load balancer because it is older generation.
- 213_ELB - SSL Certificates - Advanced.txt:3: In which case, while our users will access our ELB using an encrypted connection for example, HTTPS, but there is going to be a termination because then the ELB will just send HTTP traffic over your prior VPC into your EC2 instances.
- 213_ELB - SSL Certificates - Advanced.txt:15: And so therefore the hostname when indicated will be served by the right target group.
- 213_ELB - SSL Certificates - Advanced.txt:18: What's going to happen is that a client when it connects to your ALB, will indicate the server name, the hostname.
- 213_ELB - SSL Certificates - Advanced.txt:38: That is when your client is connecting to your server and establishing a secure connection.
- 213_ELB - SSL Certificates - Advanced.txt:39: So you can use some predefined security policies for example, the ELBSecurityPolicy-2016-08 and then apply it to your load balancer.
- 213_ELB - SSL Certificates - Advanced.txt:51: And this is when you require Forward Secrecy.
- 214_Network Load Balancer - TLS Listeners.txt:7: The client, for example, talks to the TLS listener on port 443 of your network load balancer, which has TLS termination enabled because it has a certificate.
- 214_Network Load Balancer - TLS Listeners.txt:17: And when you have the setting, you support mutual TLS because well, the NLB will pass the traffic as is and then the mutual TLS authentication can be implemented directly on your EC2 instances as targets.
- 215_AWS Certificate Manager (ACM).txt:27: So, you will have to have ACM provision a certificate in every single region where you have load-balancers, for example, for this to work.
- 216_[DVA_SOA] AWS Certificate Manager (ACM) - Hands On.txt:42: For example, the first one, and this is defining how strong you want your HTTPS security to be, but we'll just save it.
- 216_[DVA_SOA] AWS Certificate Manager (ACM) - Hands On.txt:77: Well, let's go into, for example, the EC2 console.
- 217_ACM - Advanced.txt:11: For example, for client VPN purposes.
- 217_ACM - Advanced.txt:14: So the use cases of using a private certificate authority is to do encrypted TLS communication from internally to cryptographically signed code to authenticate users, computers, API endpoints, and IoT devices.
- 217_ACM - Advanced.txt:18: So when you have a public certificate, so we're back into the public realm now, you must prove that you own or control the domain because otherwise you cannot have a public certificate.
- 217_ACM - Advanced.txt:26: The admin creates a CNAME record in your DNS, for example, Route 53.
- 217_ACM - Advanced.txt:33: So when you register domain, you have to register an email address, and that's what ACM will send an email to to make sure that, again, the owner of the domain as per the registrar is there, and accept the certificates.
- 217_ACM - Advanced.txt:46: This is when we fail the DNS validation, of course.
- 217_ACM - Advanced.txt:49: So you can use the dig command, for example, to verify the value of the DNS config itself.
- 302_SSM Parameter Store Overview.txt:3: And optionally, you can choose to encrypt these configurations and therefore make it secrets by using the KMS service.
- 302_SSM Parameter Store Overview.txt:13: For example, your EC2 instance role or you can have encrypted configuration.
- 302_SSM Parameter Store Overview.txt:14: In that case the SSM parameter store is going to encrypt it with KMS.
- 302_SSM Parameter Store Overview.txt:18: So for example, you can define my department as a path and underneath the My-app and then the Dev and then we have the Dev DB-URL and then the DB-password within that folder.
- 302_SSM Parameter Store Overview.txt:26: For example, if you want to find the latest AMI for the Amazon Index 2 in your specific region.
- 302_SSM Parameter Store Overview.txt:28: So if you take an application, for example our Dev Lambda function is going to have an IAM roll that allows it to access the DB-URL and DB-password within the Dev of my app.
- 303_SSM Parameter Store Hands On (CLI).txt:20: But we'll use Text, and for the string, I will have for example, dev.database.stephantheteacher.com.
- 303_SSM Parameter Store Hands On (CLI).txt:29: So DB Password for Dev, and as you guessed it, we're going to have a SecureString this time, and because it's a password, we're going to encrypt it with a KMS key, so it could belong in my account or another account.
- 303_SSM Parameter Store Hands On (CLI).txt:32: For example, you may have created, for example, KMS, a key called Tutorial or whatever you want to create it.
- 303_SSM Parameter Store Hands On (CLI).txt:46: So I can have, for example, my dev/db-url as well as my dev password, db-password.
- 303_SSM Parameter Store Hands On (CLI).txt:55: But you can do something more now, you can do, for example, my-app as a whole, and as you can see, I get nothing, but if I use the flag and it's a flag called Recursion, so it's going to be recursive, then you have access to all the parameters recursively under that namespace.
- 304_AWS Secrets Manager - Overview.txt:6: And I just showed you Amazon RDS for example, for MySQL, PostgreSQL, SQL or Aurora.
- 304_AWS Secrets Manager - Overview.txt:17: Number one, in case there is a problem with US East 1, you're able, for example, to promote a replica Secret as a standalone secret.
- 305_AWS Secrets Manager - Hands On.txt:9: And if you go for example, for other type of secrets, here we can store anything we want.
- 305_AWS Secrets Manager - Hands On.txt:10: So for example, I can say MySecretKey, and then MyVerySecretValue, and this would be a secret stored in here.
- 305_AWS Secrets Manager - Hands On.txt:11: And another one could be, for example, API_KEY, and then would be as well like a secret API key, so you would enter some text in here.
- 305_AWS Secrets Manager - Hands On.txt:19: So prod/my-secret for example, and a description but I don't need it.
- 305_AWS Secrets Manager - Hands On.txt:29: And when do we want to rotate it, and if we do enable rotation, then we need to specify a rotation function.
- 305_AWS Secrets Manager - Hands On.txt:41: And if you wanted to rotate it, then automatically the database also gets updated.
- 305_AWS Secrets Manager - Hands On.txt:43: Then you would configure the secrets as well if you wanted to have for example some kind of multi-region replication.
- 306_AWS Certificate Manager (ACM).txt:6: You know, when you go to websites and it says HTTPS, the S stands for secure, and therefore this is where you know that there is a TLS certificate involved in the transaction.
- 306_AWS Certificate Manager (ACM).txt:7: So how does that work while you have an ALB, for example, connected to your Auto Scaling group but you want to expose your application balancer as an HTTPS endpoint.
- 306_AWS Certificate Manager (ACM).txt:13: For example, the Classic one, the Application Balancer or the Network Load Balancer.
- 306_AWS Certificate Manager (ACM).txt:20: So there could be a fully qualified domain name FQDN such as corp.example.com, or it could be a wildcard domain, for example, star.example.com.
- 306_AWS Certificate Manager (ACM).txt:24: And for automation purposes, when it comes to automatically renewing your SSL certificates, DNS validation is going to be a preferred method.
- 306_AWS Certificate Manager (ACM).txt:27: And so if you have Route 53, for example, then it's automatically integrated with ACM to do this for you.
- 306_AWS Certificate Manager (ACM).txt:31: So when it comes to ACM, what if you import a public certificates?
- 306_AWS Certificate Manager (ACM).txt:35: And how do you know when a certificate is going to expire?
- 306_AWS Certificate Manager (ACM).txt:59: This is when your clients are global and the requests are going to be routed first through CloudFront Edge locations to improve the latency and then sent to an API gateway that still lives in only one region.
- 307_AWS CloudHSM.txt:9: So that means that you can have, for example, SSL and TLS keys on top of it.
- 307_AWS CloudHSM.txt:12: CloudHSM is a really, really good candidate if you want to implement SSE-C type of encryption on top of S3, for example, because you are managing your own encryption keys and you are storing them into this CloudHSM.

### Constraints / Limitations (Deduped)
- 019_Parameter Store.txt:36: And this is only for advanced parameters. (mouse clicks) Well, this allows you to assign a time to live to a parameter, that means an expiration date.
- 019_Parameter Store.txt:40: So this is an expiration policy to delete a parameter and you say, "Hey, on this time stamp you must delete these parameter." And then through the EventBridge integration, EventBridge is going to get notifications of it.
- 020_Secrets Manager.txt:34: The KMS via service, which allows to use the kms:Decrypt operation only if it's invoked via, so through, the Service Secrets Manager.
- 022_SSL Encryption, SNI & MITM.txt:6: And nowadays, even though it's almost only TLS certificates, people still refer, including me, of it as SSL.
- 022_SSL Encryption, SNI & MITM.txt:11: And when a certificate is issued to you, it has an expiration date that you will set, and then you must renew it before it expires to keep your service up and running.
- 022_SSL Encryption, SNI & MITM.txt:18: But SSL is only for asymmetric.
- 022_SSL Encryption, SNI & MITM.txt:19: So the idea is that during the asymmetric handshake, which is the first connection between the client and the server, they're going to use an exchange, a symmetric key that it will commonly share for this communication.
- 022_SSL Encryption, SNI & MITM.txt:20: And from that point forward, they will only use the symmetric key to talk to one another.
- 022_SSL Encryption, SNI & MITM.txt:38: So the idea is that SNI, will solve the problem of loading multiple SSL certificates onto one web server only.
- 022_SSL Encryption, SNI & MITM.txt:45: Very important to note.
- 022_SSL Encryption, SNI & MITM.txt:55: So SNI is extremely important.
- 022_SSL Encryption, SNI & MITM.txt:59: Then we cannot use one CLB behind multiple applications.
- 022_SSL Encryption, SNI & MITM.txt:62: And next, extremely important, how to protect yourself against SSL Man-in-the-Middle attacks.
- 023_AWS Certificate Manager - ACM.txt:15: First of all, you can create your own public certificates, and you need to verify the public DNS, and you must be issued by a trusted public certificate authority.
- 023_AWS Certificate Manager - ACM.txt:17: That's for your internal applications, so you can have your own private CA, and your applications must be set up to trust your private CA.
- 023_AWS Certificate Manager - ACM.txt:22: Finally, very, very, very, very important, ACM is a regional service.
- 023_AWS Certificate Manager - ACM.txt:24: So, you cannot use ACM as a global service.
- 023_AWS Certificate Manager - ACM.txt:26: And you cannot copy certificates across regions.
- 190_[SAA] Secrets Manager - Hands On.txt:14: So, this will be kept secret so that only person with the correct IAM permissions can access these secrets.
- 191_Secrets Manager - Advanced.txt:6: It only works with symmetric KMS keys and all the encryption process will happen within the service.
- 191_Secrets Manager - Advanced.txt:9: You must have access, of course, to the secret in Secret Manager, but also have access to the underlying KMS key to be able to encrypt or decrypt that secret.
- 191_Secrets Manager - Advanced.txt:17: Now, in the use case of you're using a Lambda function to rotate an Amazon RDS database, you must make sure that this Lambda function has access to both the Secrets Manager Service and your database.
- 191_Secrets Manager - Advanced.txt:19: Then we must, of course, deploy our Lambda function within the same VPC, then is going to be able to access Amazon RDS privately, but also we need to make sure we have a VPC endpoint to access back Secrets Manager or a NAT Gateway in place, again, to get network connectivity into Secrets Manager.
- 191_Secrets Manager - Advanced.txt:25: So for this to happen your Lambda function must be configured to access the secrets in Secrets Manager and must have the proper IAM policy.
- 191_Secrets Manager - Advanced.txt:29: And this can happen only if we have the proper IAM policy in place and we've configured our ECS task properly with an IAM role.
- 212_[SAA_DVA_SOA] ELB SSL Certificates.txt:9: So that means the data as it goes through a network is going to be encrypted and only going to be able to be decrypted by the sender and the receiver.
- 212_[SAA_DVA_SOA] ELB SSL Certificates.txt:20: Don't put your login information because it's not secure." So the SSL certificates, they have an an expiration date that you set and they must be renewed regularly to make sure that they're authentic, okay?
- 212_[SAA_DVA_SOA] ELB SSL Certificates.txt:31: And when you set you an HTTPS listener, you must specify a default certificate.
- 212_[SAA_DVA_SOA] ELB SSL Certificates.txt:33: Now don't worry, I'm going to explain what SNI is in details in the next slide because it is really, really important for you to understand what it means.
- 212_[SAA_DVA_SOA] ELB SSL Certificates.txt:35: Okay, so let's talk about SNI 'cause it is so important.
- 212_[SAA_DVA_SOA] ELB SSL Certificates.txt:36: SNI solves a very important problem, which is how do you load multiple SSL certificates onto one web server in order for that web server to serve multiple websites?
- 212_[SAA_DVA_SOA] ELB SSL Certificates.txt:41: So it only works when you use the application load balancer and the network load balancer, so the newer generations, or CloudFront.
- 212_[SAA_DVA_SOA] ELB SSL Certificates.txt:57: So classic load balancer is yes, you can only support one SSL certificate.
- 213_ELB - SSL Certificates - Advanced.txt:6: For your HTTPS listener, you must specify a default certificate and you can have as well an optional list of certificates if you wanted to support multiple domains.
- 213_ELB - SSL Certificates - Advanced.txt:22: This only works therefore for the newer generations types of load balancer, such as the Application Load Balancer and the Network Load Balancer.
- 213_ELB - SSL Certificates - Advanced.txt:24: So the CLB supports only one SSL certificate.
- 213_ELB - SSL Certificates - Advanced.txt:41: And for backend connections, then you must use the ELBSecurityPolicy-2016-08.
- 213_ELB - SSL Certificates - Advanced.txt:47: So in this case, you must meet compliance and security standards that require to only use certain TLS protocol version.
- 214_Network Load Balancer - TLS Listeners.txt:4: If you wanna create a TLS listener, you must create a certificate in ACM and then you attach it on your NLB.
- 215_AWS Certificate Manager (ACM).txt:15: First of all, you can create your own public certificates, and you need to verify the public DNS, and you must be issued by a trusted public certificate authority.
- 215_AWS Certificate Manager (ACM).txt:17: That's for your internal applications, so you can have your own private CA, and your applications must be set up to trust your private CA.
- 215_AWS Certificate Manager (ACM).txt:22: Finally, very, very, very, very important, ACM is a regional service.
- 215_AWS Certificate Manager (ACM).txt:24: So, you cannot use ACM as a global service.
- 215_AWS Certificate Manager (ACM).txt:26: And you cannot copy certificates across regions.
- 216_[DVA_SOA] AWS Certificate Manager (ACM) - Hands On.txt:35: So this is the important part.
- 217_ACM - Advanced.txt:6: They're end-entities that these certificates cannot be used to issue more certificates.
- 217_ACM - Advanced.txt:7: These certificates are trusted only by your organization, not the public internet, because it's a private certificate authority.
- 217_ACM - Advanced.txt:18: So when you have a public certificate, so we're back into the public realm now, you must prove that you own or control the domain because otherwise you cannot have a public certificate.
- 217_ACM - Advanced.txt:24: So this is the preferred method for automatic renewable purposes because everything is programmatic, and it only takes a few minutes to verify.
- 217_ACM - Advanced.txt:36: This is only relevant for public certificates.
- 217_ACM - Advanced.txt:67: And, of course, because they are imported certificates, we cannot automatically renew them because they've been signed elsewhere.
- 302_SSM Parameter Store Overview.txt:36: And this is only for advanced parameters. (mouse clicks) Well, this allows you to assign a time to live to a parameter, that means an expiration date.
- 302_SSM Parameter Store Overview.txt:40: So this is an expiration policy to delete a parameter and you say, "Hey, on this time stamp you must delete these parameter." And then through the EventBridge integration, EventBridge is going to get notifications of it.
- 303_SSM Parameter Store Hands On (CLI).txt:16: They are four kilobytes in value maximum, and we can't share that with other accounts, but the Advanced parameters, you can have 100,000 of them, they can be eight kilobytes and you can share them with your other accounts.
- 305_AWS Secrets Manager - Hands On.txt:14: So, this will be kept secret so that only person with the correct IAM permissions can access these secrets.
- 306_AWS Certificate Manager (ACM).txt:15: One thing you cannot use the AWS Certificate Manager with is EC2 instances.
- 306_AWS Certificate Manager (ACM).txt:16: So for public certificates and only for public certificates they cannot be extracted.
- 306_AWS Certificate Manager (ACM).txt:17: And so you cannot create public certificates for your EC2 instances through ACM.
- 306_AWS Certificate Manager (ACM).txt:59: This is when your clients are global and the requests are going to be routed first through CloudFront Edge locations to improve the latency and then sent to an API gateway that still lives in only one region.
- 306_AWS Certificate Manager (ACM).txt:62: And then we have the private API gateway endpoints that can only be accessed from within our VPC using an interface VPC endpoint and we need to use a resource policy to define access to this API gateway in a private mode.
- 306_AWS Certificate Manager (ACM).txt:67: And therefore the TLS Certificate must be created in the same region as CloudFront, which is us-east-1.
- 306_AWS Certificate Manager (ACM).txt:68: So therefore your API gateway lives in one region but then everything is distributed through CloudFront and your ACM certificates must live in the us-east-1 region because this is where CloudFront is located.
- 306_AWS Certificate Manager (ACM).txt:71: And the regional endpoints, there for clients in the same region as your API gateway, and therefore, because we only have an API gateway then the TLS certificate must be imported on API gateway in the same region as the API stage.
- 306_AWS Certificate Manager (ACM).txt:72: And therefore, in this example my ACM is only in the ap-southeast-2.
- 307_AWS CloudHSM.txt:18: So they're HA, and this is super important to understand.
- 307_AWS CloudHSM.txt:34: Whereas for CloudHSM, it's only customer-managed CMK because AWS cannot access your HSM device.

### Patterns / Architectures (Deduped)
- 019_Parameter Store.txt:7: You have full integration with CloudFormation.
- 019_Parameter Store.txt:40: So this is an expiration policy to delete a parameter and you say, "Hey, on this time stamp you must delete these parameter." And then through the EventBridge integration, EventBridge is going to get notifications of it.
- 020_Secrets Manager.txt:6: There is a native integration between RDS and Secrets Manager for all DB engines, but also Redshift, DocumentDB and so on.
- 020_Secrets Manager.txt:19: Well, because we have a native integration between ECS and Secrets Manager, what can happen is that at boot time, your ECS task can automatically pull your secrets and inject it as an environment variable within your task.
- 020_Secrets Manager.txt:45: And it has deep integration with CloudFormation.
- 020_Secrets Manager.txt:50: There is deep integration with CloudFormation.
- 020_Secrets Manager.txt:52: So in terms of rotation, if you look at Secrets Manager, there is, for example, deep integration with RDS.
- 020_Secrets Manager.txt:58: But it's up to you to maintain this kind of integration, whereas it's provided by Secrets Manager automatically as a rotation feature.
- 022_SSL Encryption, SNI & MITM.txt:60: You would need to have multiple CLB for multiple target, for multiple ASG, in order to get this architecture working.
- 022_SSL Encryption, SNI & MITM.txt:71: So we have the same kind of architecture, but this time the Pirate Server will try to send a fake SSL certificate to the user.
- 023_AWS Certificate Manager - ACM.txt:4: So, ACM will load SSL certificates onto some following integrations.
- 023_AWS Certificate Manager - ACM.txt:6: So, anywhere, really, there is a need for SSL certificates, there is going to be an integration with ACM for it.
- 023_AWS Certificate Manager - ACM.txt:11: And then, finally, the ALB will be forwarding private, HTTP requests to your EC2 instance, if you set up HTP integration, and your EC2 instance will not have to perform SSL encryption or decryption, so that means that you have less CPU cost on your EC2 instance, thanks to the SSL termination that happens at the load-balancer level.
- 023_AWS Certificate Manager - ACM.txt:12: So, overall, ACM is amazing, because, from my personal experience, SSL certificates are very difficult to maintain manually, and so, having this integration with ACM, this automated provisioning, and this integration with AWS services, makes it really, really easy to deal with SSL certificates in AWS, and so, you have no reason not to use them nowadays.
- 189_[SAA] Secrets Manager.txt:10: And so anytime in the exam you see Secrets, or integration for RDS, or for Aurora of Secrets, really think Secrets Manager.
- 189_[SAA] Secrets Manager.txt:11: There's one more feature we need to know about which is the concept of multi-region Secrets.
- 190_[SAA] Secrets Manager - Hands On.txt:3: So, it's similar to the SSM parameter store because you can store secret things, but it's going to be different from it because while you have rotation, management, and tight integrations with databases such as MySQL, PostgreSQL, Amazon Aurora, and RDS and so on.
- 190_[SAA] Secrets Manager - Hands On.txt:7: Now, over time, it's very possible that this gets increased in terms of the capability of integrations, but we have Amazon RDS, we have Amazon DocumentDB, Amazon Redshift, other databases, or other type of secrets.
- 190_[SAA] Secrets Manager - Hands On.txt:24: And this is good if you want to have multi-region setups which as multi-region apps or multi-region databases.
- 190_[SAA] Secrets Manager - Hands On.txt:40: And the cool thing about it is that thanks to the integration between RDS and Secrets Manager, then this username and this password would be used to be able to login into the database.
- 190_[SAA] Secrets Manager - Hands On.txt:43: Then you would configure the secrets as well if you wanted to have for example some kind of multi-region replication.
- 191_Secrets Manager - Advanced.txt:13: What's going to happen is that Secrets Manager, if this is enabled, every 30 day is going to invoke a Lambda function that you create yourself or that is provided by the service when there isn't already in existing integration such as RDS.
- 212_[SAA_DVA_SOA] ELB SSL Certificates.txt:5: I'm going to talk about SNI and I'm going to talk about the integrations with load balancers.
- 213_ELB - SSL Certificates - Advanced.txt:2: So this is our classic architecture, and the idea is that you could have termination at the ELB level by having an SSL or TLS certificate loaded onto it.
- 215_AWS Certificate Manager (ACM).txt:4: So, ACM will load SSL certificates onto some following integrations.
- 215_AWS Certificate Manager (ACM).txt:6: So, anywhere, really, there is a need for SSL certificates, there is going to be an integration with ACM for it.
- 215_AWS Certificate Manager (ACM).txt:11: And then, finally, the ALB will be forwarding private, HTTP requests to your EC2 instance, if you set up HTP integration, and your EC2 instance will not have to perform SSL encryption or decryption, so that means that you have less CPU cost on your EC2 instance, thanks to the SSL termination that happens at the load-balancer level.
- 215_AWS Certificate Manager (ACM).txt:12: So, overall, ACM is amazing, because, from my personal experience, SSL certificates are very difficult to maintain manually, and so, having this integration with ACM, this automated provisioning, and this integration with AWS services, makes it really, really easy to deal with SSL certificates in AWS, and so, you have no reason not to use them nowadays.
- 216_[DVA_SOA] AWS Certificate Manager (ACM) - Hands On.txt:9: There is a direct integration between ACM and Route 53.
- 216_[DVA_SOA] AWS Certificate Manager (ACM) - Hands On.txt:84: But this is good, we've seen the integration between ACM and Elastic Beanstalk and your load balancers.
- 217_ACM - Advanced.txt:8: It has deep integration with services such as Amazon EKS and really any service that is integrated with ACM.
- 217_ACM - Advanced.txt:70: And then you can have Lambda functions, SNS notifications, SQS messages, whatever you want for your integration.
- 302_SSM Parameter Store Overview.txt:7: You have full integration with CloudFormation.
- 302_SSM Parameter Store Overview.txt:40: So this is an expiration policy to delete a parameter and you say, "Hey, on this time stamp you must delete these parameter." And then through the EventBridge integration, EventBridge is going to get notifications of it.
- 304_AWS Secrets Manager - Overview.txt:10: And so anytime in the exam you see Secrets, or integration for RDS, or for Aurora of Secrets, really think Secrets Manager.
- 304_AWS Secrets Manager - Overview.txt:11: There's one more feature we need to know about which is the concept of multi-region Secrets.
- 305_AWS Secrets Manager - Hands On.txt:3: So, it's similar to the SSM parameter store because you can store secret things, but it's going to be different from it because while you have rotation, management, and tight integrations with databases such as MySQL, PostgreSQL, Amazon Aurora, and RDS and so on.
- 305_AWS Secrets Manager - Hands On.txt:7: Now, over time, it's very possible that this gets increased in terms of the capability of integrations, but we have Amazon RDS, we have Amazon DocumentDB, Amazon Redshift, other databases, or other type of secrets.
- 305_AWS Secrets Manager - Hands On.txt:24: And this is good if you want to have multi-region setups which as multi-region apps or multi-region databases.
- 305_AWS Secrets Manager - Hands On.txt:40: And the cool thing about it is that thanks to the integration between RDS and Secrets Manager, then this username and this password would be used to be able to login into the database.
- 305_AWS Secrets Manager - Hands On.txt:43: Then you would configure the secrets as well if you wanted to have for example some kind of multi-region replication.
- 306_AWS Certificate Manager (ACM).txt:11: We will see this in a second on other slides and you have integrations with many AWS services.
- 307_AWS CloudHSM.txt:11: There is an integration between Redshift and CloudHSM if you wanted to leverage CloudHSM for your database encryption and key managements.
- 307_AWS CloudHSM.txt:22: Well, there is an integration between CloudHSM and KMS.

## Deduped Consolidation Snapshot End

<!-- BEGIN PRACTICE_ENHANCEMENTS -->

## Hands-On Practice (Kid-Friendly Step-by-Step)

### Safety First
- Use a sandbox account only.
- Set a budget alert before creating resources.
- Delete resources after practice to avoid surprise cost.

### Hands-On Signals Found In This KB
- Signal 1: This is the kind of template that would create a secret with Secrets Manager within CloudFormation.
- Signal 2: And then, in the third part, we create what's called a "secret attachment", which is going to link the secrets to the RDS DB instance.
- Signal 3: And then, we create a resource-based policy on our Secrets Manager's secrets, which is similar, for example, to an S3 bucket policy.
- Signal 4: Transcript signals that this is the kind of template that would create a secret with Secrets Manager within CloudFormation.
- Signal 5: Rotation without compatibility planning can create production outages.
- Signal 6: Key Insights: This is the kind of template that would create a secret with Secrets Manager within CloudFormation.
- Signal 7: Key Insights: And then, in the third part, we create what's called a "secret attachment", which is going to link the secrets to the RDS DB instance.
- Signal 8: Key Insights: And then, we create a resource-based policy on our Secrets Manager's secrets, which is similar, for example, to an S3 bucket policy.
- Signal 9: Key Insights: There is no secret rotation, although we'll see in the next slide how you can actually create some kind of rotation mechanism using EventBridge and Lambda.
- Signal 10: Key Insights: Well, you would need to create an Amazon EventBridge rule to invoke a Lambda function every 30 days that would change the password and change the value.

### Service-Specific Lab Paths
### Activity 1: IAM Lab for SSM Parameter Store, Secrets Manager, ACM, SSL/TLS, cert operations
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

### Activity 2: Amazon S3 Lab for SSM Parameter Store, Secrets Manager, ACM, SSL/TLS, cert operations
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

### Activity 3: Amazon VPC Lab for SSM Parameter Store, Secrets Manager, ACM, SSL/TLS, cert operations
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

### Activity 4: Amazon CloudWatch Lab for SSM Parameter Store, Secrets Manager, ACM, SSL/TLS, cert operations
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

Use this lens to study SSM Parameter Store, Secrets Manager, ACM, SSL/TLS, cert operations in a cloud-agnostic way: focus on capability first, provider name second.

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
| Amazon S3 | Amazon S3 | Azure Blob Storage | Cloud Storage |
| Amazon VPC | Amazon VPC | Azure Virtual Network | VPC Network |
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

