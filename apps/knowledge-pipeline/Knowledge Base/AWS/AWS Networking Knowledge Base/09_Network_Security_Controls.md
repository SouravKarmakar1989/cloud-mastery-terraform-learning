# 09_Network_Security_Controls.md

## Scope
- Topic: Security groups, NACLs, AWS WAF, Shield, Network Firewall, GWLB, ACM, Firewall Manager
- Files processed: 21
- Extracted non-empty transcript lines: 1912
- Processing mode: line-by-line (sentence-level), zero-loss

## Real Material - Architect Learning Build (Domain 9: Network Security Controls)

This section is the study-first architecture guide for layered filtering, edge defense, certificate trust, and centralized network-policy enforcement.

### Phase 1 - Foundations

#### Module 1: Network Security Mental Model
- Network security controls exist at multiple layers and should not be collapsed into one service choice.
- Workload filtering, web filtering, DDoS defense, and inline inspection solve different threat classes.
- Good architecture places each control where it has the best signal and enforcement power.




##### Source Transcript Details
- Module focus: Network Security Mental Model
- Primary transcript files:
- outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/229_Hands On_ Gateway Load Balancer.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/226_Hands On_ AWS Network Firewall.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/225_AWS Network Firewall Components & Rule groups.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/232_AWS Certificate Manager (ACM).txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/218_Introduction to AWS Network Security Services.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/221_Hands On_ Cross-Site Scripting (XSS) attack simulation and prevention with WAF.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/228_Gateway Load Balancer and Traffic flow.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/27_Networking - VPC/331_NACL & Security Groups.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/219_Recap - Security Groups and Network ACL.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/222_AWS Shield and Shield Advanced (DDoS protection).txt
- Top concept clusters from transcript metadata:
- Network Security Operational Context
- Stateful and Stateless Filtering
- Transport Trust and Certificates
- Inline Network Inspection
- DDoS and Edge Defense
- Layer 7 Threat Protection
- Centralized Policy Governance
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 21
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 1912
- Key insights inside selected files: 1356
- Unique concept tags in selected files: 7

##### Transcript-Enriched Learning Notes
- And then Security Group.
- Now you have to think what security group you are going to put here.
- So that's what my security group looks like.
- Now by launching EC2 machine, I also need to provide the security group, but I will just allow everything in the security group so that I know that traffic is not really getting blocked at the security group level and...
- So, the behavior of stateful rule group is similar to security group, but as you might have understood already, it's much more intelligent than the security groups.
- It's not like a security group that there is no inbound rule by default, but for example, you just create the stateful rule groups and you don't add any rule.
- So, that's different than the security group.
- Now if you ever heard about the SSL that is secure socket layer or the TLS Transport Layer Security, they provide the security to the layer seven traffic.
- And to be honest, the deep dive of ACM should be part of AWS security certification than the network certification.
- Hello, and welcome to this section, AWS Network Security.
- Now, if you talk about the security in AWS, then I guess there are more than 50 AWS services which are related to the security.
- But in this section, we will primarily focus on the security services with respect to the networking.
- Now, if you look at the AWS Network Security services, then there is a journey to this, right?
- When AWS first launched EC2 machines, after a while, AWS launched security groups, right?
- Because security is a broader thing, it's not just about restricting certain IP addresses, right?
- But broadly, there are two kinds of security services, one which you call preventive services, another, you can call it detective services.
- Okay, so it all started with security group.
- As you know, security groups are attached to the EC2 machines, and then you can define the allow rules where you can say the traffic is only allowed from certain IP ranges and for certain ports.

##### Polished Architect Notes
- Transcript signals that then Security Group.
- Transcript signals that you have to think what security group you are going to put here.
- Transcript signals that that's what my security group looks like.
- Transcript signals that by launching EC2 machine, I also need to provide the security group, but I will just allow everything in the security group so that I know that traffic is not really getting blocked at the security group level and...
- Transcript signals that the behavior of stateful rule group is similar to security group, but as you might have understood already, it's much more intelligent than the security groups.
- Transcript signals that it's not like a security group that there is no inbound rule by default, but for example, you just create the stateful rule groups and you don't add any rule.
- Transcript signals that that's different than the security group.
- Transcript signals that if you ever heard about the SSL that is secure socket layer or the TLS Transport Layer Security, they provide the security to the layer seven traffic.
- Transcript signals that to be honest, the deep dive of ACM should be part of AWS security certification than the network certification.
- Transcript signals that and welcome to this section, AWS Network Security.
- Transcript signals that if you talk about the security in AWS, then I guess there are more than 50 AWS services which are related to the security.
- Transcript signals that in this section, we will primarily focus on the security services with respect to the networking.

##### Architect Synthesis (Transcript-Derived)
- Treat Network Security Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Stateful and Stateless Filtering as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Transport Trust and Certificates as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Inline Network Inspection as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat DDoS and Edge Defense as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: then Security Group.
- Design implication: you have to think what security group you are going to put here.
- Design implication: that's what my security group looks like.
#### Module 2: Boundary Layers
- Security groups protect workloads with stateful rules close to the target.
- NACLs provide stateless subnet-boundary filtering.
- WAF, Shield, and Network Firewall address different layers of internet and network-path risk.




##### Source Transcript Details
- Module focus: Boundary Layers
- Primary transcript files:
- outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/229_Hands On_ Gateway Load Balancer.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/226_Hands On_ AWS Network Firewall.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/225_AWS Network Firewall Components & Rule groups.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/232_AWS Certificate Manager (ACM).txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/218_Introduction to AWS Network Security Services.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/221_Hands On_ Cross-Site Scripting (XSS) attack simulation and prevention with WAF.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/228_Gateway Load Balancer and Traffic flow.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/27_Networking - VPC/331_NACL & Security Groups.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/219_Recap - Security Groups and Network ACL.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/222_AWS Shield and Shield Advanced (DDoS protection).txt
- Top concept clusters from transcript metadata:
- Network Security Operational Context
- Stateful and Stateless Filtering
- Transport Trust and Certificates
- Inline Network Inspection
- DDoS and Edge Defense
- Layer 7 Threat Protection
- Centralized Policy Governance
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 21
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 1912
- Key insights inside selected files: 1356
- Unique concept tags in selected files: 7

##### Transcript-Enriched Learning Notes
- And then Security Group.
- Now you have to think what security group you are going to put here.
- So that's what my security group looks like.
- Now by launching EC2 machine, I also need to provide the security group, but I will just allow everything in the security group so that I know that traffic is not really getting blocked at the security group level and...
- So, the behavior of stateful rule group is similar to security group, but as you might have understood already, it's much more intelligent than the security groups.
- It's not like a security group that there is no inbound rule by default, but for example, you just create the stateful rule groups and you don't add any rule.
- So, that's different than the security group.
- Now if you ever heard about the SSL that is secure socket layer or the TLS Transport Layer Security, they provide the security to the layer seven traffic.
- And to be honest, the deep dive of ACM should be part of AWS security certification than the network certification.
- Hello, and welcome to this section, AWS Network Security.
- Now, if you talk about the security in AWS, then I guess there are more than 50 AWS services which are related to the security.
- But in this section, we will primarily focus on the security services with respect to the networking.
- Now, if you look at the AWS Network Security services, then there is a journey to this, right?
- When AWS first launched EC2 machines, after a while, AWS launched security groups, right?
- Because security is a broader thing, it's not just about restricting certain IP addresses, right?
- But broadly, there are two kinds of security services, one which you call preventive services, another, you can call it detective services.
- Okay, so it all started with security group.
- As you know, security groups are attached to the EC2 machines, and then you can define the allow rules where you can say the traffic is only allowed from certain IP ranges and for certain ports.

##### Polished Architect Notes
- Transcript signals that then Security Group.
- Transcript signals that you have to think what security group you are going to put here.
- Transcript signals that that's what my security group looks like.
- Transcript signals that by launching EC2 machine, I also need to provide the security group, but I will just allow everything in the security group so that I know that traffic is not really getting blocked at the security group level and...
- Transcript signals that the behavior of stateful rule group is similar to security group, but as you might have understood already, it's much more intelligent than the security groups.
- Transcript signals that it's not like a security group that there is no inbound rule by default, but for example, you just create the stateful rule groups and you don't add any rule.
- Transcript signals that that's different than the security group.
- Transcript signals that if you ever heard about the SSL that is secure socket layer or the TLS Transport Layer Security, they provide the security to the layer seven traffic.
- Transcript signals that to be honest, the deep dive of ACM should be part of AWS security certification than the network certification.
- Transcript signals that and welcome to this section, AWS Network Security.
- Transcript signals that if you talk about the security in AWS, then I guess there are more than 50 AWS services which are related to the security.
- Transcript signals that in this section, we will primarily focus on the security services with respect to the networking.

##### Architect Synthesis (Transcript-Derived)
- Treat Network Security Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Stateful and Stateless Filtering as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Transport Trust and Certificates as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Inline Network Inspection as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat DDoS and Edge Defense as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: then Security Group.
- Design implication: you have to think what security group you are going to put here.
- Design implication: that's what my security group looks like.
#### Module 3: Trust and Governance
- ACM defines certificate lifecycle and transport trust posture.
- Firewall Manager centralizes policy only if organizational standards already exist.
- Inspection paths are part of network architecture, not just security tooling.






##### Source Transcript Details
- Module focus: Trust and Governance
- Primary transcript files:
- outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/226_Hands On_ AWS Network Firewall.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/218_Introduction to AWS Network Security Services.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/225_AWS Network Firewall Components & Rule groups.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/232_AWS Certificate Manager (ACM).txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/233_AWS Firewall Manager.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/229_Hands On_ Gateway Load Balancer.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/221_Hands On_ Cross-Site Scripting (XSS) attack simulation and prevention with WAF.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/228_Gateway Load Balancer and Traffic flow.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/222_AWS Shield and Shield Advanced (DDoS protection).txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/223_Introduction to AWS Network Firewall.txt
- Top concept clusters from transcript metadata:
- Network Security Operational Context
- Transport Trust and Certificates
- Stateful and Stateless Filtering
- Inline Network Inspection
- Centralized Policy Governance
- DDoS and Edge Defense
- Layer 7 Threat Protection
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 21
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 1912
- Key insights inside selected files: 1286
- Unique concept tags in selected files: 7

##### Transcript-Enriched Learning Notes
- Now by launching EC2 machine, I also need to provide the security group, but I will just allow everything in the security group so that I know that traffic is not really getting blocked at the security group level and...
- Hello, and welcome to this section, AWS Network Security.
- Now, if you talk about the security in AWS, then I guess there are more than 50 AWS services which are related to the security.
- But in this section, we will primarily focus on the security services with respect to the networking.
- Now, if you look at the AWS Network Security services, then there is a journey to this, right?
- When AWS first launched EC2 machines, after a while, AWS launched security groups, right?
- Because security is a broader thing, it's not just about restricting certain IP addresses, right?
- But broadly, there are two kinds of security services, one which you call preventive services, another, you can call it detective services.
- Okay, so it all started with security group.
- As you know, security groups are attached to the EC2 machines, and then you can define the allow rules where you can say the traffic is only allowed from certain IP ranges and for certain ports.
- Later, AWS launched network access control list, which are applied at the sub-net level, and there is a fundamental difference between how security group and network ACL works.
- Now Firewall Manager itself is not a firewall service or a preventive service, but it can manage other AWS security services.
- For example, you can manage AWS WAF rules, or Shield Advanced, or Security Group, or Network Firewall, which AWS launched recently.
- So these are all the AWS security services which are preventive services.
- If somebody has modified say a security group, that API call will be captured in CloudTrail.
- And CloudFront itself brings some additional security layer on top of your existing application.
- Now if you want to secure your EC2 machines, you'll apply the security group at the EC2 instance level.
- Now, if I talk about application level security, I had talked about AWS WAF, which can protect your CloudFront as well as application load balancer.

##### Polished Architect Notes
- Transcript signals that by launching EC2 machine, I also need to provide the security group, but I will just allow everything in the security group so that I know that traffic is not really getting blocked at the security group level and...
- Transcript signals that and welcome to this section, AWS Network Security.
- Transcript signals that if you talk about the security in AWS, then I guess there are more than 50 AWS services which are related to the security.
- Transcript signals that in this section, we will primarily focus on the security services with respect to the networking.
- Transcript signals that if you look at the AWS Network Security services, then there is a journey to this, right?
- Transcript signals that when AWS first launched EC2 machines, after a while, AWS launched security groups, right?
- Transcript signals that because security is a broader thing, it's not just about restricting certain IP addresses, right?
- Transcript signals that broadly, there are two kinds of security services, one which you call preventive services, another, you can call it detective services.
- Transcript signals that so it all started with security group.
- Transcript signals that as you know, security groups are attached to the EC2 machines, and then you can define the allow rules where you can say the traffic is only allowed from certain IP ranges and for certain ports.
- Transcript signals that later, AWS launched network access control list, which are applied at the sub-net level, and there is a fundamental difference between how security group and network ACL works.
- Transcript signals that firewall Manager itself is not a firewall service or a preventive service, but it can manage other AWS security services.

##### Architect Synthesis (Transcript-Derived)
- Treat Network Security Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Transport Trust and Certificates as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Stateful and Stateless Filtering as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Inline Network Inspection as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Centralized Policy Governance as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: by launching EC2 machine, I also need to provide the security group, but I will just allow everything in the security group so that I know that traffic is not really getting blocked at the security group level and...
- Design implication: and welcome to this section, AWS Network Security.
- Design implication: if you talk about the security in AWS, then I guess there are more than 50 AWS services which are related to the security.
### Phase 2 - Core Services

#### SGs, NACLs, and Baseline Segmentation
- Use SGs as the primary least-privilege network boundary for workloads.
- Use NACLs deliberately for explicit subnet-wide denies or coarse controls.
- Avoid redundant controls that add noise without adding safety.

#### WAF, Shield, and Edge Protection
- WAF handles HTTP(S)-layer filtering and request-aware controls.
- Shield handles DDoS posture at the edge and perimeter.
- Edge controls should be tied to actual exposure and application behavior.

#### Network Firewall, GWLB, and ACM
- Network Firewall centralizes inline network-layer enforcement through managed constructs.
- GWLB supports appliance insertion when managed inspection is not the whole answer.
- ACM keeps certificate lifecycle operationally sane across entry points and services.

### Phase 3 - Advanced Patterns

#### Pattern 1: Layered Defense by Function
- Put the right control at the right layer instead of overloading one service.
- Pair workload boundaries with edge filtering and inspection only where needed.
- Keep security architecture readable under incident pressure.

#### Pattern 2: Centralized Security VPC
- Use inspection and policy-centralization patterns when organization scale justifies them.
- Tie routing, inspection, and exception workflows together deliberately.
- Centralization without ownership creates policy sprawl, not security.

#### Pattern 3: Certificate and Policy Governance
- Standardize certificate issuance and rotation processes.
- Govern shared policies with clear exception handling and change control.
- Treat security policy drift as an architectural problem, not just an audit problem.

### Phase 4 - System Design (Production)

#### Reference Network Security Architecture
- Layered defense stack spanning workload boundaries, web entry, DDoS posture, and optional inline inspection.
- Central certificate lifecycle and organization-aware policy orchestration.
- Security controls aligned with exposure model, not sprayed across every path blindly.

#### Scaling Considerations
- Rule growth, false positives, and inspection complexity all rise with scale.
- Centralized enforcement needs strong delegation and exception discipline.
- Security layers become hard to debug when path ownership is unclear.

#### Cost Considerations
- Managed inspection and advanced protection tiers cost money, but so does weak containment.
- Over-instrumented security paths can add latency and operations burden.
- The cheapest control is often the one that is well-placed and easy to maintain.

### Cross-Cloud Concept Mapping (Network Security Controls)

#### Underlying Concept: Layered Traffic Filtering
- AWS: SGs, NACLs, WAF, Network Firewall, and GWLB patterns
- Azure: NSGs, WAF, Firewall, and NVA insertion patterns
- GCP: VPC firewall rules, Cloud Armor, and NGFW patterns
- Trade-off: layered filtering exists everywhere, but the boundary model differs between providers.

#### Underlying Concept: Centralized Security Governance
- AWS: Firewall Manager and organization-centric policy orchestration
- Azure: Policy and Defender-driven network governance patterns
- GCP: centralized policy and security center patterns
- Trade-off: governance portability is lower than filtering intent portability.

### Real-World Use Cases from Transcript Signals
- Protect workloads with SG-first least-privilege segmentation and selective subnet guardrails.
- Filter web attacks and edge threats with WAF and Shield aligned to real exposure.
- Centralize inspection and policy only where organizational scale and risk justify it.

### Constraints and Exam-Relevant Traps Captured
- SGs, NACLs, WAF, Shield, and Network Firewall do not overlap cleanly; they solve different layers.
- Centralization is not automatically better if routing and exception governance are weak.
- Certificate lifecycle is a network and security architecture concern, not just a PKI footnote.
## Step 1 â€” Line-by-Line Extraction

Every non-empty line from every source transcript is preserved below with extraction fields.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/08_High Availability and Scalability_ ELB & ASG/080_Elastic Load Balancer - SSL Certificates.txt

Line 1:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: Okay, so now let's talk about SSL and TLS Certificates.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 2:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this is a dumb down version of how this works.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 3:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: This is obviously way more complicated but I want to introduce you to the concepts in case you don't know it.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 4:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: And even if you do know SSL and TLS, please watch this lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 5:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I'm going to talk about SNI and I'm going to talk about the integrations with load balancers.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 6:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So bear with me please.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 7:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: So an SSL certificate allows the traffic between your clients and your load balancer to be encrypted while in transit.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 8:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: This is called in-flight encryption.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 9:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So that means the data as it goes through a network is going to be encrypted and only going to be able to be decrypted by the sender and the receiver.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 10:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: So, SSL refers to Secure Sockets Layer and it's used to encrypt transfer connections.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 11:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: And TLS is the newer version of SSL and it refers to Transport Layer Security.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 12:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: But the thing is, nowadays, TLS certificates are the one that are mainly used, but people, including myself, I will still refer this as SSL.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 13:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So I'm making a mistake, but I'm making it on purpose, okay?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 14:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: So it's better to say a TLS certificate than SSL certificates, but for many reasons, I'm still gonna say it's SSL because it's easier to understand.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 15:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: So public SSL certificates are issued by Certificate Authorities, and they include something like Comodo, Symantec, GoDaddy, GlobalSign, Digicert, Letsencrypt, and so on.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 16:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: And using this public SSL certificate attached to our load balancer, we're able to encrypt the connection between the clients and the load balancer.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 17:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So whenever you go to a website, for example google.com or anything, any other website, and you have a lock or a green lock that means that your traffic is encrypted.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 18:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And if traffic is not encrypted, you'll have a red sign saying, "Hey, traffic is not encrypted.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 19:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Don't put your credit card details.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 20:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: Don't put your login information because it's not secure." So the SSL certificates, they have an an expiration date that you set and they must be renewed regularly to make sure that they're authentic, okay?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 21:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So how does it work from a load balancer perspective?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 22:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: So users connect over HTTPS, and it's S because it's using SSL certificates and it's encrypted.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 23:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It's secure, and it connects over the public internet to your load balancer.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 24:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: And internally, your load balancer does something called SSL certificate termination.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 25:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And in the backend, it can talk to your EC2 instance using HTTP, so not encrypted, but the traffic goes over your VPC, which is private traffic network.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 26:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And that is somewhat secure.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 27:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: So the load balancer will load an X.509 certificate, which is called a SSL or TLS server certificate.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 28:
- Concepts: Transport Trust and Certificates
- Services: AWS Certificate Manager
- Key Insights: And you can manage these SSL certificates in AWS using ACM, meaning AWS Certificate Manager.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 29:
- Concepts: Transport Trust and Certificates
- Services: AWS Certificate Manager
- Key Insights: So we're not going to view ACM in that lecture but just to get an idea of what it is.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 30:
- Concepts: Transport Trust and Certificates
- Services: AWS Certificate Manager
- Key Insights: Now, you can also upload your own certificates to ACM if you wanted to.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 31:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: And when you set you an HTTPS listener, you must specify a default certificate.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 32:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Then you can add an optional list of certs to support multiple domains, and clients can use something called SNI or Server Name Indication to specify the hostname they reach.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 33:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now don't worry, I'm going to explain what SNI is in details in the next slide because it is really, really important for you to understand what it means.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 34:
- Concepts: Centralized Policy Governance, Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: That means that, and you can also, finally for HTTPS, set a specific security policy if you wanted to support all their versions of SSL and TLS, called also legacy clients.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 35:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so let's talk about SNI 'cause it is so important.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 36:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: SNI solves a very important problem, which is how do you load multiple SSL certificates onto one web server in order for that web server to serve multiple websites?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 37:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: And there's a newer protocol that now requires the client to indicate the hostname of the target server in the initial SSL handshake.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 38:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: So the client will say, "I want to connect to this website." And the server will know what certificate to load.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 39:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And so, this is a newer protocol and this is something new.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 40:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Not every client supports this.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 41:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So it only works when you use the application load balancer and the network load balancer, so the newer generations, or CloudFront.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 42:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And we'll see what CloudFront is later in this course.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 43:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And it does not work when you use the classic load balancer because it is older generation.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 44:
- Concepts: Transport Trust and Certificates
- Services: Elastic Load Balancing
- Key Insights: So anytime you see multiple SSL certificates onto your load balancer, think ALB or NLB.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 45:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So as a diagram, what does it look like?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 46:
- Concepts: Network Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: We have our ALB here and we have two target groups.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 47:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: The first one is www.mycorp.com, and the second one is Domain1.example.com.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 48:
- Concepts: Network Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: So the ALB will be routing to these target groups based on some rules and the rules may be directly linked, in this case to the hostname.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 49:
- Concepts: Transport Trust and Certificates
- Services: Elastic Load Balancing
- Key Insights: So the ALB will have two SSL certificates: Domain1.example.com and www.mycorp.com, which corresponds to the corresponding target groups.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 50:
- Concepts: Network Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: Now the clients connects to our ALB and says, "I would like www.mycorp.com", and that is part of server name indication.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 51:
- Concepts: Network Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: And the ALB says, "Okay, I've seen that you want mycorp.com.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 52:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: Let me use the correct SSL certificates to fill that request." So it's going to take the right SSL certificates, encrypt the traffic, and then thanks to the routes, it's going to know to redirect to the correct target group, mycorp.com.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 53:
- Concepts: Transport Trust and Certificates
- Services: Elastic Load Balancing
- Key Insights: And obviously, if you have another client connecting to your ALB for Domain1.example.com, then you will be able to pull the right SSL certificate again and connect to the right target group.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 54:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: So using SNI or server name indication, you are able to have multiple target groups for different websites using different SSL certificates.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 55:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Excellent.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 56:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: So finally, what is supported for SSL certificates?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 57:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: So classic load balancer is yes, you can only support one SSL certificate.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 58:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: And if you want multiple hostnames with multiple SSL certificates, the best way is to use multiple classic load balancer.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 59:
- Concepts: Transport Trust and Certificates
- Services: Elastic Load Balancing
- Key Insights: For ALB, the v2, you need to, you can support multiple listeners with multiple SSL certificates.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 60:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And that's the great part of it, and it uses SNI to make it work.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 61:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And we just saw what it is.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 62:
- Concepts: Transport Trust and Certificates
- Services: Elastic Load Balancing
- Key Insights: And for the NLB or network load balancer, it supports, again, multiple listeners with multiple SSL certificates, and it will use SNI again to make it work.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/08_High Availability and Scalability_ ELB & ASG/081_Elastic Load Balancer - SSL Certificates - Hands On.txt

Line 1:
- Concepts: Transport Trust and Certificates
- Services: Elastic Load Balancing
- Key Insights: So let's have a look at how we can enable SSL certificates on both the ALB and the NLB.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 2:
- Concepts: Network Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: So if I look at the ALB, I just have to add one listener, for example, I will add a listener, and the protocol will be HTTPS and the ports by default will be 443.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 3:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And then we can say, okay if the clients are using the port 403 for HTTPS protocol, then forward to a specific target group.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 4:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And then we can also have secure listener settings.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 5:
- Concepts: Centralized Policy Governance, Transport Trust and Certificates
- Services: AWS Certificate Manager
- Key Insights: So we can say, we can actually set a SSL security policy to see how to negotiate the certificates itself, and this is based on if you need, for example, previous compatibility with older version of SSL or TLS and so on, so you can leave this as default and then you need to say where this SSL or TLS certificate is located and so it can be in ACM, Amazon Certificate Manager, but I currently don't have any, so I won't see here one or from IAM, but this is not recommended as domain method.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 6:
- Concepts: Transport Trust and Certificates
- Services: AWS Certificate Manager
- Key Insights: Or you can import it by just pasting the private key, the body and the certificate chain here if need be and then this will import the certificate itself into ACM directly.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 7:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So it's a similar process for the network cloud balancer.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 8:
- Concepts: Centralized Policy Governance, Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: So if I go in the network balancer right here, and have a look at the listeners, I can add a listener of it being TLS, and then we can forward to a demo target group right here and then for security policy, we can set whatever policy we want, as well as choose where the certificate is from so from SCM, IAM, or import, and finally we can set an application layer protocol negotiation, which I won't go over but this is a pretty advanced setting for TLS.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 9:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: So that's it, you've seen how to use SSL or TLS certificates on your load balancers.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 10:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

### File: outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/218_Introduction to AWS Network Security Services.txt

Line 1:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Hello, and welcome to this section, AWS Network Security.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 2:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, if you talk about the security in AWS, then I guess there are more than 50 AWS services which are related to the security.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 3:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: But in this section, we will primarily focus on the security services with respect to the networking.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 4:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: That means the services which can help you maybe restrict some traffic, or identify some attacks, or secure your network connection.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 5:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So all those services we'll cover in this section.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 6:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, if you look at the AWS Network Security services, then there is a journey to this, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 7:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: When AWS first launched EC2 machines, after a while, AWS launched security groups, right?
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 8:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: That's the full service AWS launched.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 9:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: But over the time, over these 12 years, AWS has then launched many other services to solve a particular problem, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 10:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Because security is a broader thing, it's not just about restricting certain IP addresses, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 11:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It is much more than that, and we'll learn about that as we go through this section.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 12:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: But broadly, there are two kinds of security services, one which you call preventive services, another, you can call it detective services.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 13:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, preventive services, which you can protect your infrastructure at the network layer, and detective means it can detect by analyzing the traffic which is flowing through.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 14:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It can detect certain patterns and can see if it is a malicious user trying to access something or somebody's attacking your system.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 15:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now that will fall into the detective services.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 16:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So first let's look at which all AWS services falls into these categories and understand purpose of those services.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 17:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: Okay, so it all started with security group.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 18:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: As you know, security groups are attached to the EC2 machines, and then you can define the allow rules where you can say the traffic is only allowed from certain IP ranges and for certain ports.
- Hidden/Implicit Meaning: Constraint or limitation signal; Boundary filtering and segmentation signal.

Line 19:
- Concepts: Stateful and Stateless Filtering
- Services: Network ACL, Security Group
- Key Insights: Later, AWS launched network access control list, which are applied at the sub-net level, and there is a fundamental difference between how security group and network ACL works.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 20:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: We have already covered that, and we'll revisit that again shortly after this lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 21:
- Concepts: Layer 7 Threat Protection
- Services: AWS WAF
- Key Insights: Then AWS WAF was launched in 2015.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 22:
- Concepts: Layer 7 Threat Protection
- Services: AWS WAF
- Key Insights: WAF is a web application firewall.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 23:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: As the name suggests, it protects your application.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 24:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So typically it works at layer seven, and then it can prevent you from the attacks like cross-site scripting, or SQL injections, or top OS vulnerabilities.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 25:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, what is OS vulnerabilities?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 26:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It is like defined set of vulnerabilities, which your application should always be protected from.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 27:
- Concepts: Layer 7 Threat Protection
- Services: AWS WAF
- Key Insights: Now, WAF can be applied to different AWS services, including load balancers, CloudFront, API gateways, or if you're heard about Absinthe, which is a GraphQL APIs again.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 28:
- Concepts: Layer 7 Threat Protection
- Services: AWS WAF
- Key Insights: So WAF works at application layer.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 29:
- Concepts: Transport Trust and Certificates
- Services: AWS Certificate Manager
- Key Insights: And then, in 2016 around, AWS launched ACM.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 30:
- Concepts: Transport Trust and Certificates
- Services: AWS Certificate Manager
- Key Insights: ACM is Amazon Certificate Manager.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 31:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: Now, if you heard about SSL and TLS connection, you have to make sure your server has the X.509 certificate, and then client gets the certificate, it validates that certificate has been signed by the right certification authority, so AWS itself is a certification authority, which gives you this certificate, which you can apply to different AWS services, again, like a load balancer, or API gateways, or CloudFront, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 32:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: And then your connection is TLS enabled, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 33:
- Concepts: Transport Trust and Certificates
- Services: AWS Certificate Manager
- Key Insights: So either you can import your own certificate, or you can get this certificate from the ACM, and we'll learn more about what all things is employed shortly in this section.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 34:
- Concepts: DDoS and Edge Defense
- Services: AWS Shield
- Key Insights: Then in 2017, AWS launched AWS Shield.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 35:
- Concepts: Layer 7 Threat Protection
- Services: AWS WAF
- Key Insights: Now, as I said, WAF works at application layer, layer seven, but then it doesn't protect you from the layer three, layer four attacks.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 36:
- Concepts: DDoS and Edge Defense
- Services: (none explicit)
- Key Insights: And typically these attacks are DDoS attacks, right?
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 37:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Distributed denial-of-service attacks.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 38:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: That means attackers will overwhelm your servers with so many requests that the legitimate users won't be able to access your system.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 39:
- Concepts: DDoS and Edge Defense
- Services: AWS Shield
- Key Insights: Now in order to protect your servers or infrastructure from these kinds of attacks, AWS Shield service is there, which comes again in two flavors, Shield Standard and Shield Advanced, and there are advantages using Shield Advanced, and we'll see what those are in this section as well.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 40:
- Concepts: Centralized Policy Governance
- Services: AWS Firewall Manager
- Key Insights: Then in 2018 around, AWS launched AWS Firewall Manager.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 41:
- Concepts: Centralized Policy Governance
- Services: AWS Firewall Manager
- Key Insights: Now Firewall Manager itself is not a firewall service or a preventive service, but it can manage other AWS security services.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 42:
- Concepts: DDoS and Edge Defense, Inline Network Inspection, Layer 7 Threat Protection, Stateful and Stateless Filtering
- Services: AWS Network Firewall, AWS Shield, AWS WAF, Security Group
- Key Insights: For example, you can manage AWS WAF rules, or Shield Advanced, or Security Group, or Network Firewall, which AWS launched recently.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal; Inline inspection and network enforcement signal; Boundary filtering and segmentation signal.

Line 43:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So basically you can apply all these rules from a single console across your AWS account.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 44:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: Later on in 2020, AWS launched Gateway Load Balancer.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 45:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: Now, Gateway Load Balancer has a special reason because a lot of AWS customer still use the third party IPS and IDS and network monitoring tool.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 46:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And there was a problem.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 47:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: If you want to monitor every packet that goes in or out of your VPC, you had an option to land this traffic to one machine, and from there, you have to send it to the right destination, but then you had a problem scaling that infrastructure as well as the traffic increases.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 48:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: Now, Gateway Load Balancer solves that problem, right?
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 49:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: And we'll learn more about that in a separate section of Gateway Load Balancer, because this is also an important AWS service for your networking exam.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Inline inspection and network enforcement signal.

Line 50:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: So with Gateway Load Balancer, you can put IPS ideas as well as network monitoring appliances.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 51:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: And then all the traffic will be routed through a single entry and exit point via this Gateway Load Balancer.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 52:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall
- Key Insights: And towards the end of 2020, AWS launched AWS Network Firewall.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 53:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now it is an advanced intrusion prevention system and intrusion detection system where you can write Suricata compatible tools.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 54:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall
- Key Insights: And we'll learn about all those rules, what you can write, but this is really, really, you know, a deep, intelligent network firewall that AWS launched.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 55:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall
- Key Insights: And we'll have a dedicated section, which will cover AWS Network Firewall as well as the hands-on exercises around that.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 56:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And finally, there is something called DNSSEC validation at Route 53, so earlier, whatever Route 53 request and response was there, it wasn't really signed.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 57:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now with DNSSEC validation, the client can verify that the response is legitimate and it is coming from the AWS Route 53 service.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 58:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So Route 53 will sign the response so that client is sure that whatever DNS response I'm getting is from the legitimate AWS service.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 59:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And this prevents you from the attacks like DNS poisoning, in which case the attacker may send you the wrong IP address for the DNS that you have asked for and then ultimately will hit the wrong IP address.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 60:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So signing the DNS requests will save you from these kinds of attacks.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 61:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So these are all the AWS security services which are preventive services.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 62:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And we'll talk about all those in this section.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 63:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And now if you go down to the detective services, you know the CloudWatch, right, most of the AWS services will emit the logs, which can capture by the CloudWatch.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 64:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And then you can monitor these logs.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 65:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: You can also create alerts and you can also monitor the metrics, and then, you know what I'm saying, the notifications.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 66:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 67:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Then CloudTrail, which captures all your API activities in AWS.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 68:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So whatever you do in AWS, that API layer is captured through CloudTrail, so you can monitor, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 69:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: If somebody has modified say a security group, that API call will be captured in CloudTrail.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 70:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So you can again take that CloudTrail logs and you can find out who did what at what time.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 71:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So these are, again, the detective services in case something goes wrong.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 72:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Then VPC Flow Logs, as you know, whatever traffic flows inside and outside VPCs can be captured using VPC Flow Logs.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 73:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: We have already covered what flow logs are.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 74:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So you can, again, analyze these VPC flow logs, and you can find out where the traffic coming from or where the traffic is going to.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 75:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Then GuardDuty, now GuardDuty is an interesting service because it's a machine learning based service.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 76:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: What it does is it analyzes your VPC flow log, your CloudTrail management event logs, or CloudTrail for S3 data events or DNS logs.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 77:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And it uses the threat intelligence such as list of malicious IP addresses or domains, and also applies machine learning to identify unexpected and potentially unauthorized and malicious activities within your AWS account.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 78:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And we'll learn more about what kind of jigs GuardDuty perform.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 79:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: There are 70 plus jigs that that duty does, and then it applies machine learning to find out those behaviors.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 80:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So that's, again, a very intelligent threat detection service.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 81:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Then comes the traffic mirroring.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 82:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: If you want to capture all the traffic and then analyze it separately, you can always do that with a traffic mirroring feature.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 83:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And we already covered that in the last section.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 84:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And then finally we have Route 53 resolver query logs.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 85:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So far, whatever Route 53 resolves the domain name to IP addresses, the logs were not getting captured, but now with this new feature, all these logs can be captured.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 86:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So Route 53 query log lets you log the DNS queries that originate in your VPCs.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 87:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now with this query logging enabled, you can see which domain names have been created.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 88:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 89:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And the AWS resources from which the queries have been originated, including, the IP address and instance IDs.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 90:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Accordingly, you can see, you know, what's really happening in your AWS account and inside your VPC.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 91:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So these are what the query logs can enable you, and these logs you can store to S3 or CloudWatch or Kinesis Firehose.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 92:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So overall, this is a portfolio of services, which secure AWS network.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 93:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And then we will now see all these services in action.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 94:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, if you talk about any architecture and where the services fit, then let's try to imagine that.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 95:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this is a VPC and you have a simple application with EC2 machines and load balancing in front and internet users will access over the internet through internet gateway, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 96:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: These are very familiar architecture to you.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 97:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, if you want to apply some additional AWS services to maybe optimize the performance or to secure it, then you can always use CloudFront, which is a CDN service, as you know, right, so that the content can be cached and locations can be used.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 98:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And CloudFront itself brings some additional security layer on top of your existing application.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 99:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Then for domain name to IP addresses, you would use Route 53 and then DNS squared is really called to the Route 53.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 100:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this is kind of simple architecture, I would say.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 101:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: Now if you want to secure your EC2 machines, you'll apply the security group at the EC2 instance level.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 102:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And in order to protect your application sub-net, you will apply the network ACLs.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 103:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 104:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And you will maybe only allow certain ports there.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 105:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall
- Key Insights: Then if you want to apply the additional firewall rules, then you can use network firewall.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 106:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall
- Key Insights: As I said, it includes the Suricata based rules you can write into the network firewall.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 107:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: There are stateful and stateless rules, which we'll cover in a different section.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 108:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: But then now this becomes your entry and exit point for all the traffic inside your VPC.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 109:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall, Gateway Load Balancer
- Key Insights: Now, if you want to use your own third party appliances, rather than using AWS Network Firewall, then you can always use Gateway Load Balancer and your own network appliances and third party IPS and IDS systems.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Inline inspection and network enforcement signal.

Line 110:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: But in that case, your entry and exit point will be the Gateway Load Balancer.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 111:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so far so good.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 112:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: You understand where these services are used.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 113:
- Concepts: Layer 7 Threat Protection
- Services: AWS WAF
- Key Insights: Now, if I talk about application level security, I had talked about AWS WAF, which can protect your CloudFront as well as application load balancer.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 114:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 115:
- Concepts: Layer 7 Threat Protection
- Services: AWS WAF
- Key Insights: And any attacks like cross-site scripting, SQL injections can be protected with AWS WAF service.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 116:
- Concepts: DDoS and Edge Defense
- Services: AWS Shield
- Key Insights: And finally, if you want to protect your complete infrastructure from the distributed denial-of-service attack, that is a DDoS attack, you will put AWS Shield.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 117:
- Concepts: DDoS and Edge Defense
- Services: AWS Shield
- Key Insights: Now Shield natively protects a lot of AWS services like CloudFront and Route 53.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 118:
- Concepts: DDoS and Edge Defense
- Services: AWS Shield
- Key Insights: But if you want to protect other AWS resources like your EC2 machines as well, then you can use AWS Shield Advanced.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 119:
- Concepts: DDoS and Edge Defense
- Services: AWS Shield
- Key Insights: And that we'll cover more in a specific lecture about AWS Shield.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 120:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So overall, this is how your architecture looks like if you want to integrate AWS security services into your architecture.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 121:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So with that, we'll stop here.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 122:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And now we'll get into every service that we just talked about.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 123:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So I hope that it's clear, and let's move forward.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 124:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Thanks for watching.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

### File: outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/219_Recap - Security Groups and Network ACL.txt

Line 1:
- Concepts: Inline Network Inspection, Stateful and Stateless Filtering
- Services: AWS Network Firewall, Security Group
- Key Insights: So in this section, as we are talking about the security, I thought, uh, it would be good to recap the security group and network ACL first before we move to the other, uh, network firewall that AWS provides.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal; Boundary filtering and segmentation signal.

Line 2:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: So quickly, let's, uh, revisit what security group and network ACL has to offer.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 3:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: So security group, it can be applied to EC2 instances.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 4:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: And these security group allows you to have the allow rules.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 5:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 6:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And security groups are actually associated with the Enis right.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 7:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Whether that Eni is for EC2 or RDS instance or Lambda function inside a VPC.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 8:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: Now security groups are stateful.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 9:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: That means any traffic that is coming in the outbound traffic is allowed automatically, and the other way round, if any traffic is going out of your Eni, then the return traffic from the destination will also be allowed automatically.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 10:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: And that's what the stateful means.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 11:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: Now security Group can reference the Cidr notation when you provide the source IP address range in inbound rules or destination address range in the outbound rules, and additionally it can also refer to another security group.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 12:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And this is a typical scenario where.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 13:
- Concepts: Network Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: Suppose you have the Alb and your EC2 instance is behind the Alb.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 14:
- Concepts: Network Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: Then you want to allow all the traffic from Alb to reach to the EC2 machine.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 15:
- Concepts: Stateful and Stateless Filtering
- Services: Elastic Load Balancing, Security Group
- Key Insights: In that case, in EC2 security group, you will allow the you know the traffic from security group of your Alb.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 16:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: Also, security group can be referenced across VPC peering.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 17:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: So if there is a VPC peering connection and EC2 instances are launched across this VPC peering connections, then one EC2 instance security group can refer to other EC2 instance security group in another VPC.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 18:
- Concepts: Network Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: Now similar use case like Alb that I just explained.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 19:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: Now by default there is no inbound rule in the security group and all outbound traffic is allowed.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 20:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: Now this is true when you create a security group and you don't add any rule by yourself, right?
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 21:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: That's a default behavior.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 22:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now in case of network ACL, as you know they operate at the subnet level right.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 23:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: And they are stateless.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 24:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: That means you have to define the rule for both inbound and outbound traffic as well.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 25:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: So it's not like a security group again.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 26:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Um you can reference a Cidr range but not the host name.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 27:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now by default it denies all inbound and denies all outbound traffic.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 28:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now when we say default, which means when you create a new network ACL, then there are no inbound and outbound rules.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 29:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: That means the traffic cannot really flow.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 30:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Because at the end there is a deny rule in the network ACL.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 31:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 32:
- Concepts: Network Security Operational Context
- Services: Network ACL
- Key Insights: So that's the basics about security groups and network access control list.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 33:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: And just thing to remember is that the security groups are stateful and network ACL are stateless.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 34:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: And other important thing is that security group only have allow rules, whereas network ACL also supports the Deny rules, which also means that if you want to block a traffic from certain IP address, then you cannot use security group.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal; Boundary filtering and segmentation signal.

Line 35:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: But you would have to use network ACL because imagine a case that your server is experiencing some attacks from some malicious IPS.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 36:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: Then if you want to only block those particular IPS, there is no provision in the security group because there you only have allow rules.
- Hidden/Implicit Meaning: Constraint or limitation signal; Boundary filtering and segmentation signal.

Line 37:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Right now with that context, let's look at some of the architectures that may come up when you use security groups and network ACLs together, and primarily in the case where you want to block those malicious IP addresses.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 38:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 39:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this is a simple use case where there is a EC2 instance with public IP.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 40:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And this is being accessed over the internet.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 41:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 42:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: And EC2 has a security group.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 43:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: And now if you want to block a particular malicious IP, you know that security group cannot do that.
- Hidden/Implicit Meaning: Constraint or limitation signal; Boundary filtering and segmentation signal.

Line 44:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And hence in that case, you would have to add a rule into the network ACL inbound rules and deny the traffic from that malicious IP.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 45:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this is very simple use case.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 46:
- Concepts: Network Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: Now another use case when you have Alb in front of your EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 47:
- Concepts: Network Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: Now in this case again because EC2 receives the traffic from the Alb.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 48:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: In that case, if you want to block traffic at EC2 subnet level, it is not going to help, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 49:
- Concepts: Network Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: So having the network ACL at this subnet is useless, which means if you want to block again traffic from the malicious IP addresses from the client side, then you would have to put the network ACL at the Alb subnet level, right.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 50:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So I hope it is understood.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 51:
- Concepts: Stateful and Stateless Filtering
- Services: Elastic Load Balancing, Security Group
- Key Insights: And further, if you want to make sure that this EC2 only receives the traffic from the application load balancer, then in the EC2 security group, you will allow the traffic only from the Alb security group.
- Hidden/Implicit Meaning: Constraint or limitation signal; Boundary filtering and segmentation signal.

Line 52:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So you are sure that EC2 doesn't get traffic from anywhere else.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 53:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: But otherwise for blocking the traffic you would have to use network ACL, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 54:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So I hope it is understood.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 55:
- Concepts: Network Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: Now what if you have the NLB right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 56:
- Concepts: Network Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: So when you have the NLB things are quite similar.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 57:
- Concepts: Network Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: But you know that NLB also does client IP preservations.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 58:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: If the target is for example, EC2 instances, which means that EC2 instance directly sees the client IP address, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 59:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So in this case, if there is a client IP preservation, then you can also apply the network ACL at this EC2 subnet level.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 60:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And you can block that traffic.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 61:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this is very much possible.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 62:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: But one downside is that all that traffic will still flow through the network load balancer.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 63:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And there will be cost for that traffic as well.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 64:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 65:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: So while this is possible, what you could also do is of course you can also have the security Group for network load balancer.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 66:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: Now this was released in summer 2023, but otherwise earlier network Load Balancer did not have the security group.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 67:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: But in this scenario, as we discussed, security Group won't help to block the traffic and it is ideal to block this traffic at the network load balancer subnet level.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 68:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 69:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So again very similar to what we did for the application load balancer.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 70:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 71:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So I hope that is also understood.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 72:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And now just one more scenario.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 73:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: What if you have Amazon CloudFront in front of your application load balancer right now.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 74:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Because application load balancer now receives the traffic from CloudFront IP addresses.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 75:
- Concepts: Network Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: Again you cannot use the network ACL at the Alb subnet level because in that you would have to block particular IP address.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 76:
- Concepts: Network Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: But Alb is only seeing the IP address of CloudFront distribution, right?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 77:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So even if you put the network ACL and add the deny rules.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 78:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It is not going to help, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 79:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So what do you do in this case?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 80:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So in this case generally what you will do you will use different AWS firewall service.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 81:
- Concepts: Layer 7 Threat Protection
- Services: AWS WAF
- Key Insights: And that is AWS WAF web Application firewall.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 82:
- Concepts: DDoS and Edge Defense
- Services: AWS Shield
- Key Insights: Or there is also AWS shield which is used for DDoS protection.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 83:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And in the following lectures we are going to talk in depth about this additional AWS firewall services.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 84:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 85:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So before we stop for this lecture, there might be one question that might be coming to you is how do you really make sure that this application instance only receives the traffic from this particular path.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 86:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 87:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: So in this particular scenario, what you can do is you can use security group rules, as we discussed earlier, where EC2 security group will have the inbound rule and the source will be the application load balancer security group.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 88:
- Concepts: Network Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: So this makes sure that EC2 only receives the traffic from the Alb.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 89:
- Concepts: Network Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: But how do you make sure that this Alb only receives the traffic from the CloudFront, and you take care of the scenario where end client or say, malicious IPS are directly hitting the Alb?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 90:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: How do you really block that traffic?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 91:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 92:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: So in that case, because this network ACL is not useful anyways, what we would have to do is in the application load balancer security group, we would have to whitelist or allow CloudFront public IP addresses.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 93:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now again CloudFront is not a, you know, small service.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 94:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It might have hundreds and thousands of IP addresses.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 95:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 96:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: So you can't, you know, list all those IPS into the security group inbound rule.
- Hidden/Implicit Meaning: Constraint or limitation signal; Boundary filtering and segmentation signal.

Line 97:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: But for that we have already discussed AWS has something called IP prefix list.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 98:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So there are specific prefix list for different AWS services including CloudFront.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 99:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And it is mentioned in IPS JSON file.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 100:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So I think we have covered this somewhere else right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 101:
- Concepts: Stateful and Stateless Filtering
- Services: Elastic Load Balancing, Security Group
- Key Insights: So in this case, what we would have to do is in the Alb security Group, we would have to add the allow rule with the CloudFront prefix list.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 102:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And the prefix list for CloudFront IP addresses is identified with this particular name.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 103:
- Concepts: Layer 7 Threat Protection
- Services: AWS WAF, Elastic Load Balancing
- Key Insights: Now once you do that and once you have this AWS WAF with CloudFront which blocks the malicious IP, this is end to end secure, because now Alb is only receiving the traffic from CloudFront and EC2 is only receiving the traffic from the Alb.
- Hidden/Implicit Meaning: Constraint or limitation signal; Application-edge and DDoS defense signal.

Line 104:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 105:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: So this is how you basically use the security group and the network ACLs together to either allow or block the traffic.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 106:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 107:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 108:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And in the rest of the section we are going to talk about other AWS networking security services.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 109:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And we will see what they offer.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 110:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 111:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So we'll stop here.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 112:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And with that let's go to the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 113:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Thank you.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

### File: outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/220_AWS Web Application Firewall (WAF).txt

Line 1:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Hello, and welcome to this lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 2:
- Concepts: Layer 7 Threat Protection
- Services: AWS WAF
- Key Insights: Now, in this lecture, we'll cover the web application firewall, that is WAF.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 3:
- Concepts: Layer 7 Threat Protection
- Services: AWS WAF
- Key Insights: Now, you already understood that WAF is one of the networking security service that AWS provides, and it protects your applications for, typically, layer seven attacks.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 4:
- Concepts: Layer 7 Threat Protection
- Services: AWS WAF
- Key Insights: Now, if you look at the history of the WAF, it was originally launched in 2015, and then, again, AWS released the new version of WAF in 2019.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 5:
- Concepts: Layer 7 Threat Protection
- Services: AWS WAF
- Key Insights: So, the older version used to be called WAF Classic, but now the newer version is called just AWS WAF, or web application firewall.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 6:
- Concepts: Layer 7 Threat Protection
- Services: AWS WAF
- Key Insights: So, if I talk about the new changes and benefits of using the latest WAF, it's that AWS also provides manage rules.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 7:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, you don't have do really import any rule or write your rules on your own, but you can use AWS manage rules itself.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 8:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, it is easy and quick to get started.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 9:
- Concepts: Layer 7 Threat Protection
- Services: AWS WAF
- Key Insights: Also, there are certain differences, in the sense that now the capacity of WAF is decided by using the web ACL capacity units, WCU.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 10:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Earlier, then, it was based on the rules, irrespective of how many rules are evaluated.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 11:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: But now, it is based on the WCU count.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 12:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Also, now you can write these rules in the form of JSON document.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 13:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: That means you don't really have to use the web UI or APS to write the rule, you can just import your JSON document there.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 14:
- Concepts: Layer 7 Threat Protection
- Services: AWS WAF
- Key Insights: And, finally, one important change, again, is that, earlier, you couldn't combine multiple rules together, but now, with the new WAF, you can create logical conditions, like A and B, not C kind of combination.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Application-edge and DDoS defense signal.

Line 15:
- Concepts: Layer 7 Threat Protection
- Services: AWS WAF
- Key Insights: So, these are all the new things that came with the newer WAF, so if you're already using the older version of WAF, that is WAF classic, then AWS always advise you to migrate to the newer version of the WAF.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Application-edge and DDoS defense signal.

Line 16:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so, with that, let's get started.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 17:
- Concepts: Layer 7 Threat Protection
- Services: AWS WAF
- Key Insights: As I said, AWS WAF protects you from layer seven attacks.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 18:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, these attacks would typically have various categories.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 19:
- Concepts: Layer 7 Threat Protection
- Services: AWS WAF
- Key Insights: Now, very first thing is you can decide which IP is to whitelist and which IP is to blacklist, so you can keep on updating also this list, so WAF will block that traffic or only allow that traffic.
- Hidden/Implicit Meaning: Constraint or limitation signal; Application-edge and DDoS defense signal.

Line 20:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Then, you can also filter the traffic based on a lot of things; it's not just about the IP addresses, but whatever packet is coming, if it's an HTTP traffic, you can look at the HTTP headers as well, or HTTP request body as well, or HTTP URL as well.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 21:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And, based on the patterns that you define, you can filter that traffic, and you can say, "I want to block this traffic "if I see a particular string in that URL string," right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 22:
- Concepts: Layer 7 Threat Protection
- Services: AWS WAF
- Key Insights: So, that is all WAF can do.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 23:
- Concepts: Layer 7 Threat Protection
- Services: AWS WAF
- Key Insights: Now, AWS WAF is really very easy to deploy.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 24:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And then, of course, you can deploy it on CloudFront or Application Load Balancer, or API Gateway, or even AppSync, which is a graph QL API.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 25:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And there is no additional software to put in front of this AWS services, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 26:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: You don't have to do any DNS configuration, or you don't have to put any SSL or TLS certificates, or you don't have to do any reverse proxy kind of setup, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 27:
- Concepts: Layer 7 Threat Protection
- Services: AWS WAF
- Key Insights: It is just enable the WAF, and associate that with respect to AWS resources, like CloudFront or Load Balancer, or API Gateway, and then that's it, right?
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 28:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: You don't have to do much thereafter.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 29:
- Concepts: Layer 7 Threat Protection
- Services: AWS WAF
- Key Insights: And, as I said, with newer WAF, AWS also provide manage rules for your WAF, and that's where you can just get started really very quickly.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 30:
- Concepts: Layer 7 Threat Protection
- Services: AWS WAF
- Key Insights: Now, one thing about the WAF is that you can select from many rules.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 31:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: You can even get the rules from third-party vendors on AWS Marketplace, but, if you go with the core rules that AWS provide, it already takes care of top 10 security risks from the OWAS.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 32:
- Concepts: Layer 7 Threat Protection
- Services: (none explicit)
- Key Insights: OWAS a web application security project.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 33:
- Concepts: Layer 7 Threat Protection
- Services: AWS WAF
- Key Insights: It is a very known top 10 vulnerabilities it covers, and then WAF will cover all those vulnerabilities for you.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 34:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: But, apart from that, it also protects you from the emerging common vulnerabilities and exposures, we call it CVEs, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 35:
- Concepts: Layer 7 Threat Protection
- Services: AWS WAF
- Key Insights: Now, benefit of using WAF is that, if there is a new CVE detected, then that WAF rules will be automatically updated, and then you will get the benefit of your application being protected from the new vulnerabilities that has been recently detected, right?
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 36:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And you don't have to do anything for that.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 37:
- Concepts: Layer 7 Threat Protection
- Services: AWS WAF
- Key Insights: Finally, if there are, say, bots kind of thing, which are flooding the traffic to your web application, then bot can be detected using the WAF by using something called a rate-based rules that you can apply.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 38:
- Concepts: Layer 7 Threat Protection
- Services: AWS WAF
- Key Insights: Say if particular IP is sending so many requests in, say, last five minutes, then WAF will block that traffic.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 39:
- Concepts: Layer 7 Threat Protection
- Services: AWS WAF
- Key Insights: So, this is all possible with the AWS WAF, and that's where it is essential, if your application is really very critical and sensitive, and you have to make sure it is highly available all the time, then it is advisable to use AWS WAF for protecting your application from layer seven attacks.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 40:
- Concepts: Layer 7 Threat Protection
- Services: AWS WAF
- Key Insights: Okay, with that, let's look at some of the features of the WAF.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 41:
- Concepts: Layer 7 Threat Protection
- Services: (none explicit)
- Key Insights: So, as you might have understood, it protects web application from common web exploits at layer seven.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 42:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It can be deployed in front of Application Load Balancer, API Gateway, AppSync, or CloudFront.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 43:
- Concepts: Layer 7 Threat Protection
- Services: AWS WAF
- Key Insights: Then, in order to use the WAF, you have to define something called Web ACL, that is Web Access Control List, which is nothing but a collection of rules, WAF rules.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 44:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And then you can define conditions in those rules.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 45:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, conditions could be like I want be inspect IP addresses, I want to inspect HTTP headers, HTTP body, or URL string, or I want to put size constraint that any request can be of this size only, I want to avoid or block any other request larger than that request, and then you want to make sure that requests are coming from particular country, and then request contains specific string only, and you can also match the regular expression with your request as well.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 46:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, Web ACL also supports rate-based rules.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 47:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: As I said, that means it counts the number of requests from a particular IP address, and then you can block, if one IP is sending, say, hundreds of requests in one second, probably that is a bot which is trying to do something, and then you can block that IP address.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 48:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, when you evaluate the body of a request, as I said, when the request comes, you can look at the HTTP headers or HTTP body as well, but then, the limitation is, as of now, you can only evaluate first 8192 bytes out of that request.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 49:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, if your HTTP request is too large, then only first eight KB of the data will be looked or inspected for any vulnerabilities.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 50:
- Concepts: DDoS and Edge Defense, Layer 7 Threat Protection
- Services: AWS WAF
- Key Insights: Finally, on blocking the malicious traffic, WAF returns 403 status score, that is forbidden, and we'll also do a demo of this, where you see that, when WAF is applied, and if it detects some kind of attack, for example, cross-site scripting or SQL injection, it will give you that kind of error, that is HTTP 403.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 51:
- Concepts: Layer 7 Threat Protection
- Services: AWS WAF
- Key Insights: And then, applying WAF rule doesn't take long.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 52:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Within a minute, if you write a new rule and add it to Web ACL, it will be in the action within one minute.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 53:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And, if you are using CloudFront, you know that CloudFront uses eight locations across the globe.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 54:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: That means your routes will be propagated worldwide within that one minute.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 55:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, now, let's look at those conditions that you can write on the Web ACL more closely, like which all attacks can be prevented using the Web ACL.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 56:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, very first thing that you can do is you can write a code or a rule for protecting your application from cross-site scripting.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 57:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, what is cross-sex scripting?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 58:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, in case of web applications, sometimes what attackers can do is, whether you insert some fields, for example, there is a username or password, one can send the script.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 59:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, if you heard about the HTML, you know the script code is typically executed on the server.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 60:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, imagine that, in that script, someone writes that select star from database.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 61:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: No, that is typically an SQL injection, but then script could be send an alert, or pop up, or display all the cookies of the users, anything of that sort, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 62:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, if your application is not really protected by this kind of scripts in the input fields, and input fields are not validated well, then the script will get executed on the server, and then you will get the data which is not supposed to be exposed.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 63:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, that is a cross-site scripting, and we'll also see one example of that as a demo, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 64:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, these cross-site scripting scripts can be looked into the HTTP methods, or headers, or query string, or even the URI, or the HTTP request body.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 65:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, that's about the cross-site scripting.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 66:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Further, you can also whitelist and blacklist the IP addresses, and this could be IPv4 or IPv6 addresses.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 67:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: Now, this is a very similar to security group and network cases, but, then, these IP addresses list could be dynamic.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 68:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: You can automatically update that, and then that will take care if there are new IPs detected.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 69:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Further, you can also define the size of the request, and size with the maximum size you can define, and then any request coming more than that means, probably, there is something wrong, because you know that your APIs probably have a certain length, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 70:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: The URI string, as well as the parameters.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 71:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, you don't want to accept any API calls bigger than that size, and that's where the size limitations can be applied to your request.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 72:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, SQL injection, as I said, in your input fields, again, you can send the SQL, and if it has not been validated well in your code, then that SQL code can get executed on the server, and you can probably get all the database entries, sensitive data, all that can happen.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 73:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Geographic match now allow or block the request based on the country from which the request originates.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 74:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, if you know that all your users are from a particular country, then you don't want to allow any other users from the other geographies.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 75:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Finally, you can write a rule in which you can, again, match any part of HTTP request; header or body, right, to match a particular string, or even the regular expression match as well.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 76:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, if you know some kind of words which should not be there in the request, then you can, of course, write a rule, and then those requests will be allowed or blocked based on how you write your condition.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 77:
- Concepts: Layer 7 Threat Protection
- Services: AWS WAF
- Key Insights: So, at high level, these are all the conditions that you can write under the Web ACLs, and then your WAF rules will be in action.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 78:
- Concepts: Layer 7 Threat Protection
- Services: AWS WAF
- Key Insights: Okay, with that, we talked about the WAF.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 79:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: As you know, it protects your application at layer seven, and typically it protects from all these attacks, like cross-site scripting and SQL injections, and then rest of others.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 80:
- Concepts: Layer 7 Threat Protection
- Services: AWS WAF
- Key Insights: Okay, so, with that, we covered WAF at high level, and you now understand what the WAF is.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 81:
- Concepts: Layer 7 Threat Protection
- Services: AWS WAF
- Key Insights: Now, in the next lecture, we will see WAF in action.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

### File: outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/221_Hands On_ Cross-Site Scripting (XSS) attack simulation and prevention with WAF.txt

Line 1:
- Concepts: Layer 7 Threat Protection
- Services: AWS WAF
- Key Insights: Now, let's see WAF in action.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 2:
- Concepts: Layer 7 Threat Protection
- Services: (none explicit)
- Key Insights: Now, in this case, what we are going to do is we are going to just launch a simple web application, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 3:
- Concepts: DDoS and Edge Defense, Layer 7 Threat Protection
- Services: (none explicit)
- Key Insights: In that case, what we will do is we'll just create one simple, easy to machine install the HTTP server, which is a simple web server, and then we'll copy the content from this Git repository, XSS example, and then we will just start the HTTPD server, and see how an XSS attack happen, right?
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 4:
- Concepts: DDoS and Edge Defense, Layer 7 Threat Protection
- Services: (none explicit)
- Key Insights: Now, this is a very simple example, where XSS is not attacking other users, but the one who is really sending that XSS request, but, in real world, maybe if you have a more sophisticated attack, then you can also get data from other users, right?
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 5:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, this is a simple example we'll now get into.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 6:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so I'm into my AWS console, and I already launched EC2 instance with Amazon Linux machine.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 7:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I'm sure you know how to do that.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 8:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And what I did is, after I launched this instance, I just SSH into it, and just installed the HTTPD server as well as I installed Git in order to clone the repository that I just told you.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 9:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, let me take you to my SSH session.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 10:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so this is my SSH.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 11:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, let me just change myself to sudo, and then I will just do cd /var/www/html, and here you can see that I have index.html.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 12:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, this one is the other one.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 13:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I just need to move this to new, and just move this to the original one.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 14:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, when you copy, you will actually see style.css, index.html, app.js.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 15:
- Concepts: Layer 7 Threat Protection
- Services: (none explicit)
- Key Insights: Under this XSS example repository, you just have to move under the /var/www/html directory.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 16:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, I'm sure you know how to do that.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 17:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Once you do that, make sure that your HTTPD service is running. sudo service httpd status Yes, it is running.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 18:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And then, let's get to the browser, get the IP address of EC2 machine, and see what it looks like.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 19:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so IP is this.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 20:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I'm just opening another tab now.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 21:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, I got the server IP.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 22:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I'm just putting that.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 23:
- Concepts: Layer 7 Threat Protection
- Services: (none explicit)
- Key Insights: And this is a simple web application.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 24:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: What I can do is I can say just, "My car," and, for the image, I can provide some random image, and I just got one image there.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 25:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: From the internet, I just put it there, and just sent the message.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 26:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, what this application is doing, just showing my comment and image there in this.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 27:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, this is so far so good.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 28:
- Concepts: DDoS and Edge Defense
- Services: (none explicit)
- Key Insights: Now, if we want to just reproduce the cross-site scripting attack, what you can do is, if you look at the code of this app, you will understand why this is cross-site scripting is reproducible, because everything that we enter here is interpreted as HTML text.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 29:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, now what we are doing is, instead of giving that URL, we are just trying to close this example.com/any-image.jpg, and then we are saying, on error, you have to execute this script, which is, "Alert, this computer is hacked." Now, the code is written in such a way that everything that you provide as image is taken as HTML, and that's where, if you do that, say, "My car2," and send the message, you see this pop up here.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 30:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, this is because the browser is executing this as a JavaScript, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 31:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Because not a proper input validation has been done for this code.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 32:
- Concepts: DDoS and Edge Defense
- Services: (none explicit)
- Key Insights: Now, this is not very sophisticated attack, because this is something you are entering, and then you are getting affected by this.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 33:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: But imagine that, instead of this script, you put something like, get me all the cookies of the users currently logged in, and probably it displays it here.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 34:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, for that, we need to write a different code, but we don't want to get into that level of depth here as of now.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 35:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: But now, this is how you understand how the cross-site scripting attacks are done.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 36:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, with that, let's move to another example, where we'll see how the Web ACL can prevent these kind of attacks.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 37:
- Concepts: Layer 7 Threat Protection
- Services: (none explicit)
- Key Insights: Now, for that, I'm going to the same EC2 machine, but I'm just putting a very simple webpage instead of this, because, otherwise, we would have to just play around a lot with the code here, but let's make a simple single page web application, which just says, "Hello world." So, let's go to our EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 38:
- Concepts: Layer 7 Threat Protection
- Services: (none explicit)
- Key Insights: And, in this directory, I have just made another HTML file, so I'm just backing up the earlier one as .xss, and I'm just making another file, which, if you open, has nothing very interesting, right?
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 39:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: This is a sample sample, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 40:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: This is a sample website, and that's it.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 41:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, if I refresh my page in the browser, then I should see this.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 42:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so far so good.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 43:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, what if you put something in the URL string, something like, say, script and alert again, say hacked, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 44:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Something like this and this, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 45:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: As of now, we don't expect anything to happen, because there is no resource under this URL, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 46:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, not found, but the request has reached the server, and it tried to find that resource.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 47:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, if you want to play with this, we can probably put a Web ACL in front of our EC2 machine, but, for that, we have to use Application Load Balancer.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 48:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, we'll create Application Load Balancer and add EC2 instance behind that.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 49:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: But, before that, let's just make sure we are using the right availability zone and right VPC, so this has been created in this VPC, 0a3, and then it is in 1a availability zone.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 50:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, let's go to the Load Balancer and just create a Application Load Balancer.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 51:
- Concepts: Layer 7 Threat Protection
- Services: (none explicit)
- Key Insights: Let's call it, say, xss-lb, internet phasing, IPv4, the right VPC has been selected, and we'll use same AC as our EC2 machine.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 52:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: And then, for the security group, let's create a new security group.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 53:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And for that, we'll just allow traffic on port 80.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 54:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, let's do that.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 55:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, it's lb-sg, and this is in this VPC, and we'll say HTTP traffic to be allowed on port 80 from anywhere.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 56:
- Concepts: Layer 7 Threat Protection
- Services: (none explicit)
- Key Insights: And that's it. xss-lb as the description, and let's just create that.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 57:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: Okay, so security group has been created.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 58:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: We can just take its ID and go here, just refresh it, and we will just pick the same one.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 59:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, we'll remove the default one.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 60:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And now, listener is port 80, and we want to forward it to one target group.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 61:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: As you know, we need to create the target group first, so let's do that.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 62:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And, for that, let's go here and create one new target group.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 63:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, the target is instances.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 64:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It is also sending the traffic to port 80 in the default VPC.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 65:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: HTTP1 traffic, health check on slash, that is okay.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 66:
- Concepts: Layer 7 Threat Protection
- Services: (none explicit)
- Key Insights: And then we are just going to give some name, xss-tg, and we are going to add this instance into the target group.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 67:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: That's it, we'll just create the target group.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 68:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: We'll go back to the load balancer, and then we'll just refresh this, and select the right target.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 69:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I think we are done with the settings.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 70:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: This is what we have to do, and just create the load balancer.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 71:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: We have to select at least two ACs for load balancer, you know that.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 72:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I missed that.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 73:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, that's it.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 74:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: The load balancer has been created.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 75:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It will take maybe a minute or so for load balancer to be active, and then we'll just check if we can access the application through the load balancer URL.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 76:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so load balancer is active.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 77:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Just let's grab the DNS name, and try to hit that.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 78:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so it is working.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 79:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: My website is visible.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 80:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, as you know, if you put some kind of script there, again, the same result I'm expecting, where it will say the resource not found, and this is expected, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 81:
- Concepts: DDoS and Edge Defense
- Services: (none explicit)
- Key Insights: But this is not really preventing any kind of attack as of now.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 82:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It is reaching to the server, and then it's not finding the right resource.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 83:
- Concepts: Layer 7 Threat Protection
- Services: AWS WAF
- Key Insights: Now, let's find the web application firewall service.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 84:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Here it is, and let's open that.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 85:
- Concepts: Layer 7 Threat Protection
- Services: AWS WAF
- Key Insights: Make sure you are using the latest version of the firewall, which is WAF v2, and now let's create the Web ACL.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 86:
- Concepts: Layer 7 Threat Protection
- Services: AWS WAF
- Key Insights: Okay, let's give it name xss-waf, or anything.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 87:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And then we want to have it applied to the Application Load Balancer, that's where we'll select that, and the region we want to put is in AP South 1, that is Mumbai.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 88:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, Web ACLs are global in that sense, but then you can apply it to the particular region, as you can see here.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 89:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, our names are gone for some reason, but that's okay.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 90:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And now, here, you have to associate that with a particular AWS service.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 91:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, we are just going to select the Application Load Balancer, and this is what our load balancer is.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 92:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, I'm just adding that.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 93:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, once that is done, we have to define the rules.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 94:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And, as of now, we will just add the existing rule.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 95:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, manage rule groups, which are owned by AWS.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 96:
- Concepts: Layer 7 Threat Protection
- Services: (none explicit)
- Key Insights: So, let's select the core rule group, which contains the XSS as well.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 97:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, AWS manage rule groups, and, under that, we will select the core rule set, right, which has 700 plus rules already, and it covers the OWAS vulnerabilities as well.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 98:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, I think this is sufficient for our Web ACL as of now.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 99:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: We'll just say add rules, and that's it.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 100:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: We will just give the right IM rule, and we'll just go with the rest of the things as default.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 101:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, everything is done.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 102:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Let's create the Web ACL.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 103:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, as I said, once you create the Web ACL, it takes up to one minute for the Web ACLs to be active.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 104:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And let's pause this video for one minute.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 105:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so my Web ACL is active now.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 106:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: You can see here, if you click here, it will also show you which rules it matches, and it collects a lot of metrics from the CloudWatch.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 107:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, here you can see that I tried just once this rule, and it has matched, but then, let's see it again, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 108:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, as of now, let's go to our EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 109:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I pinned this script, as you know, this will still give the resource not found, because it is not going through the Web ACL, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 110:
- Concepts: Layer 7 Threat Protection
- Services: AWS WAF
- Key Insights: Because we applied Web ACL or a WAF rule to the load balancer.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 111:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, in that case, let's get to the load balancer, let's pick the IP address, and just put it here.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 112:
- Concepts: DDoS and Edge Defense
- Services: (none explicit)
- Key Insights: So, as of now, you can access it, because this is not a cross-site scripting attack.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 113:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: But, as soon as you try to do something like this with the URI string here, and append this string here, you should get the forbidden error.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 114:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: That's what it does, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 115:
- Concepts: DDoS and Edge Defense, Layer 7 Threat Protection
- Services: (none explicit)
- Key Insights: 403 forbidden, because Web ACL has found that there is some kind of XSS attack.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 116:
- Concepts: Layer 7 Threat Protection
- Services: AWS WAF
- Key Insights: And what you can do is you can go here into the WAF overview, and just refresh these metrics once, and it will show you that you are trying to execute this URI, which it detected as blocked, because it detected as an XSS.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 117:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, this is what the Web ACL can do, and this is a very simple example.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 118:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: In real life, you can do a lot more.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 119:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: You can match actual string, or Regex, SQLs, everything, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 120:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, we'll stop here with these demos, and now we'll move to the next security service.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 121:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, thanks for watching.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

### File: outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/222_AWS Shield and Shield Advanced (DDoS protection).txt

Line 1:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Hi.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 2:
- Concepts: DDoS and Edge Defense
- Services: AWS Shield
- Key Insights: So in this lecture let's talk about another firewall that is AWS shield.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 3:
- Concepts: Layer 7 Threat Protection
- Services: AWS WAF
- Key Insights: Now earlier we talked about web application firewall which works at layer seven.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 4:
- Concepts: Layer 7 Threat Protection
- Services: AWS WAF
- Key Insights: But then the purpose of WAF is to protect your resources from unauthorized access from the user or protecting your data so that user can't run, say, cross site scripting and those kind of attacks.
- Hidden/Implicit Meaning: Constraint or limitation signal; Application-edge and DDoS defense signal.

Line 5:
- Concepts: DDoS and Edge Defense
- Services: AWS Shield
- Key Insights: But the purpose of AWS shield service is to protect your resources from the DDoS attack.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 6:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: That is denial of service.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 7:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So again, the purpose is not to have the unauthorized access, but to affect the availability of your application.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 8:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So for an example, if your users are using your application, your website, then the attacker will just send too many requests to your application server so that your application is overwhelmed with respect to the CPU, memory and the network, and your legitimate users cannot access your application.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 9:
- Concepts: DDoS and Edge Defense
- Services: (none explicit)
- Key Insights: So that is called denial of service attack.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 10:
- Concepts: DDoS and Edge Defense
- Services: (none explicit)
- Key Insights: And very common denial of service attack is called DDoS attack that is distributed denial of service attack, which is much larger in volume.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 11:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So on the right side you have application server and there are normal users who are accessing your application.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 12:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now attacker will come in and then attacker will just have few controllers.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 13:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now this controllers can then amplify these attacks by using the bots.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 14:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So there will be thousands of bots.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 15:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And all these are making requests to your application server at the same time.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 16:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So your application server will be too busy to, you know, serve all these requests and your legitimate users may not be able to, you know, access your application or it will be very, very slow.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 17:
- Concepts: DDoS and Edge Defense
- Services: (none explicit)
- Key Insights: So that's the DDoS attack.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 18:
- Concepts: DDoS and Edge Defense
- Services: (none explicit)
- Key Insights: And typically DDoS attacks happens at layer three and layer four or layer six and seven of the OSI network layer.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 19:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So layer three and four are called the infrastructure layer attacks.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 20:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And six and seven are called application layer attacks.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 21:
- Concepts: DDoS and Edge Defense
- Services: (none explicit)
- Key Insights: And just for your information, what are the common type of the DDoS attacks?
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 22:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So there are something called syn flood attacks.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 23:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: In this case, client sends the TCP handshake request to the server but never completes that request.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 24:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So server sends back the Syn acknowledgement request and then client never sends back the Ack signal back to the server.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 25:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So those TCP connections are kept open.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 26:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And if there are millions of such connections, then of course server has to maintain those many open TCP connections and it can't accept any more, so your users can't access your application server.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 27:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Similarly, clients send the UDP request to scan your ports or ICMP requests to your server, and if there are millions of such requests, then server is again overwhelmed.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 28:
- Concepts: DDoS and Edge Defense
- Services: (none explicit)
- Key Insights: Then there is UDP reflection attack.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 29:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: In this case, client spoofs your IP as if you are sending requests to the internet server, and all these internet server will send you back the response.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 30:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Even though you haven't initiated those requests.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 31:
- Concepts: DDoS and Edge Defense
- Services: (none explicit)
- Key Insights: So that's called UDP reflection attack.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 32:
- Concepts: DDoS and Edge Defense
- Services: (none explicit)
- Key Insights: Then there is DNS flood attack, which targets your DNS server.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 33:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And you know that DNS are like phone books.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 34:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So if you don't have DNS resolution for your DNS query, you don't get the IP address of the application server and no one can reach to your server.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 35:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So it is very important that your DNS can handle all these attacks.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 36:
- Concepts: DDoS and Edge Defense
- Services: (none explicit)
- Key Insights: And finally, there is a slow loris attack.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 37:
- Concepts: DDoS and Edge Defense
- Services: (none explicit)
- Key Insights: And this is a very common attack and very difficult to detect.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 38:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: This is because all the traffic that comes to your server looks very legitimate.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 39:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So for example, if you provide the login pages, the client will ask for the login page but will just not respond with the next step.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 40:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So they are very, very slow and they will try to be as slow as possible.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 41:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So your server thinks that it is a legitimate traffic, but then has to keep all those connections open.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 42:
- Concepts: DDoS and Edge Defense
- Services: (none explicit)
- Key Insights: So that's a slow loris attack.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 43:
- Concepts: DDoS and Edge Defense
- Services: AWS Shield
- Key Insights: And as you might have guessed, in order to protect your AWS resources and services from this attack, you need AWS shield service.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 44:
- Concepts: DDoS and Edge Defense
- Services: AWS Shield
- Key Insights: So there is AWS shield and there is a variation to that.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 45:
- Concepts: DDoS and Edge Defense
- Services: AWS Shield
- Key Insights: That is shield advance, which you put in the front of the traffic.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 46:
- Concepts: DDoS and Edge Defense, Layer 7 Threat Protection
- Services: AWS Shield, AWS WAF
- Key Insights: And then all your AWS resources sit behind this firewall and you can use AWS WAF as well along with the shield.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 47:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So these are not mutually exclusive service, but you can use them together.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 48:
- Concepts: DDoS and Edge Defense
- Services: AWS Shield
- Key Insights: So what is shield and shield advanced?
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 49:
- Concepts: DDoS and Edge Defense
- Services: AWS Shield
- Key Insights: So of course AWS shield is the standard service and it comes free.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 50:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: That means it is enabled for all AWS customers automatically.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 51:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: You don't have to do anything.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 52:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So shields typically protect you from the layer three and layer four infrastructure layer attacks.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 53:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: That is sin and UDP floods reflection attacks likewise.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 54:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And these are automatically enabled if you are using AWS services like Application Load Balancer, CloudFront or route 53.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 55:
- Concepts: DDoS and Edge Defense
- Services: AWS Shield
- Key Insights: But AWS shield doesn't protect your resources from all types of the DDoS attacks.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 56:
- Concepts: DDoS and Edge Defense
- Services: AWS Shield
- Key Insights: So if you need protection from layer seven attacks as well, then you should use AWS Shield Advanced.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Application-edge and DDoS defense signal.

Line 57:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And of course it's a paid service.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 58:
- Concepts: Centralized Policy Governance, DDoS and Edge Defense
- Services: AWS Shield
- Key Insights: For this, you have to pay $3,000 per month at AWS organization level, so all the accounts within AWS organization will be protected by AWS Shield Advance.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 59:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now it protects all your resources, whether they are EC2 machines with public IPS, Load Balancer, CloudFront Global Accelerator, or AWS route 53.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 60:
- Concepts: DDoS and Edge Defense
- Services: AWS Shield
- Key Insights: And additionally, you get access to AWS SRT team that is Shield Response Team.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 61:
- Concepts: DDoS and Edge Defense
- Services: (none explicit)
- Key Insights: So if there is a possible attack on your resources, then you can engage with this SRT team of AWS and they will help you identify the attack, identify the root cause, and also apply the mitigations on your behalf.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 62:
- Concepts: DDoS and Edge Defense
- Services: AWS Shield
- Key Insights: And one more benefit of using the shield advance is that generally you have auto scaling configured in your application, which means if your CPU reaches, say, 70%, you might scale out, right?
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 63:
- Concepts: DDoS and Edge Defense
- Services: (none explicit)
- Key Insights: And if there is a DDoS, then also your application will scale because it will think that it's a legitimate traffic.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 64:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So your application will just go on scaling.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 65:
- Concepts: DDoS and Edge Defense
- Services: (none explicit)
- Key Insights: That means due to DDoS attack, you are going to pay extra money because there is a scaling happening now.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 66:
- Concepts: DDoS and Edge Defense
- Services: AWS Shield
- Key Insights: AWS Shield Advance also protect you from this kind of additional cost when there is a DDoS attack on your AWS resources.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 67:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So in this case, AWS will provide you AWS credit, which is nothing but AWS usage fees that you pay so that you can handle this kind of spikes.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 68:
- Concepts: DDoS and Edge Defense
- Services: AWS Shield
- Key Insights: So that's another benefit of using the shield advance.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 69:
- Concepts: DDoS and Edge Defense
- Services: AWS Shield
- Key Insights: So that's AWS Shield Advanced.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 70:
- Concepts: DDoS and Edge Defense
- Services: AWS Shield
- Key Insights: Now for your exam you just need to know that there is this service AWS shield.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 71:
- Concepts: DDoS and Edge Defense
- Services: (none explicit)
- Key Insights: And it protects you from the DDoS attack.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 72:
- Concepts: DDoS and Edge Defense
- Services: AWS Shield
- Key Insights: So just to summarize, AWS Shield Advanced provides the protection against more sophisticated DDoS attacks.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 73:
- Concepts: Network Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: And it protects your resources like route 53, CloudFront, ELB, Global Accelerator, and any resources which are using the elastic IP addresses.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 74:
- Concepts: DDoS and Edge Defense
- Services: AWS Shield
- Key Insights: Then for using the shield, advanced customer has to subscribe to business or enterprise support plan so that they can engage with AWS Shield Response team that is called SRT.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 75:
- Concepts: Layer 7 Threat Protection
- Services: AWS WAF
- Key Insights: Now SRT team helps you to identify layer seven attacks and patterns, and they can also automatically deploy the corresponding web application firewall that is WAF rules, so that all these application layer attacks can be protected.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 76:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now for that they need to use IAM role in your account.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 77:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So you have to grant that permission to the SRT team.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 78:
- Concepts: DDoS and Edge Defense, Layer 7 Threat Protection
- Services: AWS Shield, AWS WAF
- Key Insights: Now we haven't specifically talked about this, but when you enable the AWS shield advance, you also get some of the features of AWS Web Application Firewall as free, which are related to DDoS attacks.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 79:
- Concepts: Layer 7 Threat Protection
- Services: AWS WAF
- Key Insights: So you don't have to pay separately for all these WAF rules.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 80:
- Concepts: DDoS and Edge Defense
- Services: (none explicit)
- Key Insights: Now, as you engage with the SRT team, you also get the complete forensic report of the attack from this SRT.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 81:
- Concepts: DDoS and Edge Defense
- Services: (none explicit)
- Key Insights: And as I said, you get AWS credits against any spike usage due to the DDoS attack, right?
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 82:
- Concepts: DDoS and Edge Defense
- Services: AWS Shield
- Key Insights: So I think these are the important things that you need to know about the DDoS protection using AWS shield and for your projects.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Application-edge and DDoS defense signal.

Line 83:
- Concepts: DDoS and Edge Defense
- Services: (none explicit)
- Key Insights: If you are interested to know more to apply this in real life, then I would encourage to read this white paper which talks about all the best practices for DDoS protection.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Application-edge and DDoS defense signal.

Line 84:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: But for your exam?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 85:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I don't think so.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 86:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: You need to read this white paper.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 87:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So that's it about this lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 88:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Thanks for watching and stay tuned.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

### File: outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/223_Introduction to AWS Network Firewall.txt

Line 1:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall
- Key Insights: Hello and welcome to this lecture, AWS Network Firewall.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 2:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, as of now we have seen a couple of firewalls already.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 3:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: You know how security group works and you know how the network ACL works.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 4:
- Concepts: DDoS and Edge Defense, Layer 7 Threat Protection
- Services: AWS Shield, AWS WAF
- Key Insights: And we briefly talked about AWS WAF and AWS shield as well.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 5:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall
- Key Insights: Now, considering that we have so many firewalls already in AWS, then you must be wondering why this new firewall, that is AWS Network Firewall.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Inline inspection and network enforcement signal.

Line 6:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall
- Key Insights: Now, before we really jump into the details of AWS Network Firewall, I want to let you know that there are two types of firewalls typically, right?
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 7:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And we also talked about this in context of security groups and network ACL.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 8:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: So, one is the stateful firewalls.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 9:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: Now what the stateful firewall means?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 10:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It means that it filters the traffic based on network packet context, as well as connection state.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 11:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: But what does that mean, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 12:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So the context means that it involves the metadata of the packet including the IP addresses, ports, packet length, information about, you know, reassembly and defragmentation flags, TCP sequence number.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 13:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So it's not just about source IP addresses, source port destination IP addresses, destination port, and protocol, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 14:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It is much more than that.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 15:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It actually looks at your connection, its state, if you're using say ICMP then, is your packet allowed to be defragmented, and similar things.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 16:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So that's a context of the packet.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 17:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And state refers to the connection of the state.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 18:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: For example, during the TCP handshake, you know that there are SYN flags and acknowledgement flags are set, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 19:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And then the handshake complete.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 20:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: So stateful firewalls can also look at these flags and can decide whether you want to allow that traffic or not.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 21:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: And opposite of the stateful is stateless firewall.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 22:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: So when we talked about network ACL, we said that network ACL is a stateless because network ACL rules operate in isolation.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 23:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: That means it doesn't care whether it's a traffic, is a part of a connection, which is already approved.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 24:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It always looks at the packet in isolation and apply all the rules that you write there.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 25:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So at high-level, these are the two types of the firewall that you will find.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 26:
- Concepts: Inline Network Inspection, Stateful and Stateless Filtering
- Services: AWS Network Firewall
- Key Insights: And if you talk about AWS Network Firewall, it supports both stateful rules as well as stateless rule.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 27:
- Concepts: Inline Network Inspection, Stateful and Stateless Filtering
- Services: AWS Network Firewall
- Key Insights: But overall, you can consider the AWS Network Firewall as a stateful network firewall, and which is also an intelligent intrusion detection and prevention service for your VPC, right?
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 28:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So if you look at this architecture, you know that inside VPC you have subnets and then you launch EC2 machines, and then you want to put a firewall.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 29:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: The first thing you will use is a security group, which works at an ENI level.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 30:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And if you want a subnet level protection, then you will put network ACL.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 31:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, this is very simple.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 32:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: The traffic which is coming from or going to the EC2 instance, it has to pass through both these firewalls.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 33:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this works well.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 34:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: But if you look at these two firewalls, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 35:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: Network ACL and security group, they just allow you to, you know, provide the source IP address range or a destination IP address range for outbound rules and then the port numbers, right?
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 36:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: The ports of the EC2 machine where the traffic can reach, or the port number of the destination machine, where the outbound traffic can reach.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 37:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It doesn't really consider, you know, the payload of the data, the header information, all this is not checked by these two firewalls.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 38:
- Concepts: Inline Network Inspection
- Services: (none explicit)
- Key Insights: And that's where you can't really do the deep packet inspection with these two firewalls.
- Hidden/Implicit Meaning: Constraint or limitation signal; Inline inspection and network enforcement signal.

Line 39:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall
- Key Insights: So the solution to that is of course, AWS Network Firewall.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 40:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall
- Key Insights: The way it works is you provision the network firewall endpoint inside your VPC.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 41:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And when you say VPC, that means again, there are subnets and then all the traffic which is going to your machines inside your VPC, it should be routed through this firewall endpoint.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 42:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall
- Key Insights: So first the traffic will land into firewall endpoint, it will then go to AWS Network Firewall.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 43:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It will inspect your packet as per the rules that you have written, and finally, the traffic will reach to your instance.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 44:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And same applies for the return traffic as well, or the outbound traffic, which initiates from your EC2 instances, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 45:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall
- Key Insights: So this is how the network firewall works at very, very high-level.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 46:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And now let's try to answer the question, why one more firewall, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 47:
- Concepts: Inline Network Inspection, Layer 7 Threat Protection
- Services: AWS Network Firewall, AWS WAF
- Key Insights: So you already have security groups, you already have network ACL, you already have WAF, but then what is different about AWS network firewall?
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal; Inline inspection and network enforcement signal; Boundary filtering and segmentation signal.

Line 48:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: So first thing protection at, at which level it provides the protection, security group, EC2 instance level, or you can say at ENI level, network ACL provides the protection at subnet level.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 49:
- Concepts: Layer 7 Threat Protection
- Services: AWS WAF
- Key Insights: WAF is an endpoint which protects you at load balancer and CloudFront and you know that it works at layer seven.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 50:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall
- Key Insights: However, network firewall will provide the protection for all inbound and outbound traffic to and from your VPC, right?
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 51:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: Stateful or stateless, you know that security groups are stateful, which means that any traffic which is coming in it allows the return traffic and in case of network ACL, you have to look at the packet in isolation.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 52:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: That means it's stateless.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 53:
- Concepts: Inline Network Inspection, Layer 7 Threat Protection, Stateful and Stateless Filtering
- Services: AWS Network Firewall, AWS WAF
- Key Insights: WAF is also stateless and network firewall allows both stateless and stateful rules.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal; Inline inspection and network enforcement signal.

Line 54:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: So, OSI layer security group and network ACL works at layer three and layer four.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 55:
- Concepts: Layer 7 Threat Protection
- Services: AWS WAF
- Key Insights: WAF works at layer seven.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 56:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall
- Key Insights: Network firewall will work from layer three to layer seven.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 57:
- Concepts: Layer 7 Threat Protection, Stateful and Stateless Filtering
- Services: AWS WAF, Security Group
- Key Insights: Now if you talk about the features, again, security group allows you to filter traffic based on the IP port and protocol, same with the network ACL, and in case of WAF, you can write various rules, right?
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal; Boundary filtering and segmentation signal.

Line 58:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall
- Key Insights: Whether cross-site scripting or blocking particular IP address or rate-limiting rules, but in case of network firewall, it is much more intelligent.
- Hidden/Implicit Meaning: Constraint or limitation signal; Inline inspection and network enforcement signal.

Line 59:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: So you can write a stateless rules or stateful rules.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 60:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: You can block access to a particular domain, or you can detect the protocols like whether it's a TLS connection or not.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 61:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And it can also allow you to have a large IP blocks to be, you know, whitelisted or blacklisted.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 62:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall
- Key Insights: So network firewall will give you all this protection.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 63:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: Now with respect to the flows, security group allows, or you can apply the security group for both ingress and egress traffic, same with the network ACL.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 64:
- Concepts: Layer 7 Threat Protection
- Services: AWS WAF
- Key Insights: In case of WAF, as I said, only the ingress traffic is filtered.
- Hidden/Implicit Meaning: Constraint or limitation signal; Application-edge and DDoS defense signal.

Line 65:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall
- Key Insights: And in case of network firewall, again, you can apply the firewall rules in both the directions and it is applied at the perimeter of VPC.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 66:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: That means whether traffic is flowing through internet gateway or virtual private gateway, or whether DX or VPN, or between the VPC to VPC communication, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 67:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall
- Key Insights: So if you look at this network firewall has much larger scope than the other firewalls.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 68:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so I hope that is clear.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 69:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall
- Key Insights: And now let's look at quickly, what are the features of network firewall?
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 70:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So it filters the traffic at the perimeter of the VPC, such as the traffic going to or coming from the internet gateway, NAT gateway, over a VPN or a Direct Connect.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 71:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: And for stateful rules specifically, you can use something called Suricata which is an open source rule set, which has been developed by the community.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 72:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So Suricata is an open source-based intrusion detection system and intrusion prevention system, in short IDS and IPS.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 73:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall
- Key Insights: And you can use all the Suricata rules into your network firewall.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 74:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It also allows you to filter the domain names.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 75:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall
- Key Insights: That means if you don't want to allow access to any other domain than to aws.amazon.com, you can do that with the network firewall.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 76:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Also it can block access to the bad domain.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 77:
- Concepts: Inline Network Inspection
- Services: (none explicit)
- Key Insights: You can also use wildcard into a domain name, and it also allows you to do the deep packet inspection.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 78:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So what that means is it does not only just look at the packet header, but it can also look at the packet payload and maybe edit out information about the packet, right?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 79:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall
- Key Insights: So that kind of deep packet inspection you can do with the network firewall.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 80:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, next is about the protocol detection.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 81:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall
- Key Insights: So you know that when the traffic is going over 443, then you assume that it's an HTTPS protocol, but that isn't necessarily that you can run different services also on the 443, but the network firewall can intelligently detect that the protocol is really an HTTPS and that's where you can say any other traffic than the HTTPS you want to drop it, right?
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 82:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: You don't want to allow that.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 83:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall
- Key Insights: So this is possible with network firewall.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 84:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall
- Key Insights: And finally, you can import your rules which are written in a common open source rule format like Suricata, as well as, if there are third party partners, you can also integrate network firewall with them and you can, you know, import those rules from those solutions as well.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 85:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall
- Key Insights: So in short, that is what the network firewall is.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 86:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And now let's look at the firewall components, routing, VPC architecture and how to write those rules.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 87:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, thanks for watching.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

### File: outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/224_AWS Network Firewall - VPC and Route tables.txt

Line 1:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Hello and welcome to this lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 2:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall
- Key Insights: So, now let's look at the VPC setup for Network Firewall.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 3:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall
- Key Insights: And how would you configure your Route table so that traffic can be inspected using the Network Firewall.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 4:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, we have VPC and then we have multiple AZs.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 5:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And for simplicity, I'm just using one availability zone here.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 6:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And then you would have your machines, your databases inside your protected subnet.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 7:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, this could be a public subnet or a private subnet, but we are just calling it protected as of now.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 8:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall
- Key Insights: Now, for using the Network Firewall, you would also need a Firewall Subnet in which you will provision the Firewall endpoint, which ultimately has the connection with your AWS Network Firewall in your AWS region.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 9:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, when your traffic is coming from, say internet, then you how to make sure that now all the traffic lands into a Firewall endpoint first, and from there, then it goes to your machines, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 10:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So for Inbound traffic, for example, whatever traffic coming from the internet, you have to tell that if traffic is going to the workload subnet, which you have protected, the traffic has to go through something called the endpoint for your firewall, which has a syntax like vpce- some number.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 11:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, once you do that, your traffic goes to the Firewall endpoint.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 12:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, you must be wondering that how you can have the Route table for the Internet gateway?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 13:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: BUt Internet gateway does provide something called Ingress routing Route table, where you can define these routes.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 14:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now second, when the traffic lands into the Firewall endpoint, it has to make sure that traffic ultimately goes to your target machines, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 15:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: That's where you will see that any local traffic will be routed through the local VPC router and this IP is a part of that.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 16:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: But any outgoing traffic, from firewall will go through the Internet gateway, and this is essentially for the return traffic from your machines, or the outbound originating traffic from your machines.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 17:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And finally your protected subnet would again have the local route entry, as well as the entry for any outbound traffic, which is say 0.0.0.0.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 18:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It will always go through the Firewall endpoint and then Firewall endpoint further will forward this traffic to the internet, through the Internet gateway.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 19:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And this is how the end to end traffic will look like.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 20:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this is the Inbound flow.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 21:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And if you talk about the sequence, you get the request from internet.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 22:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It goes to the Internet gateway.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 23:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall
- Key Insights: It will be routed through Firewall endpoint, Firewall endpoint will talk to actual AWS Network Firewall, and then it will get response from there, and finally, traffic will be routed to your machine.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 24:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall
- Key Insights: Now, this machine will also respond, and the traffic will go to your Network Firewall, and from there, again, the traffic will go to the Internet gateway to the internet back.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 25:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this is how Inbound flow would look like.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 26:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now if you talk about the Outbound flow, things are similar.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 27:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Same Route tables.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 28:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And in this case, traffic will be originated at your machine, goes to the Firewall endpoint.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 29:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall
- Key Insights: From there goes to the AWS Network Firewall.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 30:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It will respond.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 31:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: From there, it will go to the Internet gateway, to the internet.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 32:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall
- Key Insights: And then you'll get a response from the internet, Traffic will again land into the Network Firewall endpoint, again to the Network Firewall, and back to your machine.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 33:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall
- Key Insights: So, you see, whether it's an Inbound or Outbound traffic, every time it has been intercepted by your Network Firewall endpoint.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 34:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall
- Key Insights: And that's the whole purpose of using the AWS Network Firewall.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 35:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall
- Key Insights: So, that's it about the Inbound and Outbound flow, and the route tables for your VPC that you'll design for using the Network Firewall.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 36:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, thanks for watching.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

### File: outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/225_AWS Network Firewall Components & Rule groups.txt

Line 1:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall
- Key Insights: Hello and welcome to this lecture, network firewall components.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 2:
- Concepts: Centralized Policy Governance, Inline Network Inspection, Stateful and Stateless Filtering
- Services: AWS Network Firewall
- Key Insights: And in this lecture, we will see everything about a firewall policy, rules, the stateless rules, stateful rules that AWS network firewall provides.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 3:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall
- Key Insights: So, this is the important lecture, if you want to really understand how network firewall works.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Inline inspection and network enforcement signal.

Line 4:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall
- Key Insights: So, at very high level network firewall contains the firewall.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 5:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, again, it's a regional service that you can create.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 6:
- Concepts: Centralized Policy Governance
- Services: (none explicit)
- Key Insights: So, ultimately firewall connects the VPC that you want to protect to the protection behavior that you define using the firewall policy.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 7:
- Concepts: Centralized Policy Governance
- Services: (none explicit)
- Key Insights: So, firewall will come with firewall policy.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 8:
- Concepts: Centralized Policy Governance
- Services: (none explicit)
- Key Insights: And in firewall policy, basically, you configure what are the rule groups that you want to include in this firewall policy, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 9:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: And this rule groups could be a stateless as well as stateful rule groups.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 10:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: And then there are some other settings, for example, in case of stateless rule groups, what is the default action if there is no match for, you know, incoming packets, if none of the rule matches, then what action it should be taken, whether traffic should be allowed or dropped, or it should be forwarded to a stateful rule group?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 11:
- Concepts: Centralized Policy Governance
- Services: (none explicit)
- Key Insights: So, you can define that kind of configurations for firewall policy.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 12:
- Concepts: Centralized Policy Governance
- Services: (none explicit)
- Key Insights: And remember that you can associate each firewall with just one firewall policy.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 13:
- Concepts: Centralized Policy Governance
- Services: (none explicit)
- Key Insights: However, one firewall policy can be attached to multiple firewalls.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 14:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And the third component is of course rule groups.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 15:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: And rule groups are nothing but a collection of stateless and stateful rules that define how to inspect and handle network traffic.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 16:
- Concepts: Centralized Policy Governance
- Services: (none explicit)
- Key Insights: So, at high level, there is a firewall, firewall policy, and the collection of the rule groups.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 17:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: If I want to show that in a diagram, this is how it would look like.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 18:
- Concepts: Centralized Policy Governance
- Services: (none explicit)
- Key Insights: You would have firewall, you would have firewall policy.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 19:
- Concepts: Centralized Policy Governance, Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: And inside policy, you will define the stateless rule groups as well as stateful rule groups.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 20:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: Now here, if you look at this, the incoming traffic that you want to inspect, first, the stateless rule groups will be applied and we'll see if there is any match.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 21:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: Now, if there is a match, then it can take further action whether the packet has to be dropped, or it has to be passed, or it has to be forwarded to the stateful rule groups.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 22:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And we'll understand more about this.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 23:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: Now, one more thing to understand, that in case of stateful rule groups that are just standard 5-tuple rules, like you know, source address, destination address, source port destination address, and a protocol, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 24:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: Because they are the stateless rules.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 25:
- Concepts: Centralized Policy Governance
- Services: (none explicit)
- Key Insights: And in case there is no match for any of these tech lists rule groups and the rules inside those, then there is a default action that you can set inside your firewall policy.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 26:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: It says if traffic doesn't match any stateless rule group, what actions should be taken, whether the packet should be dropped, or it should be passed, or it should be forwarded to the stateful rule groups?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 27:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: So, ideally you would want to for only to stateful rule groups as well, so that, then you can apply, you know, IPS and IDS rules.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 28:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: And once it reaches the stateful firewall rule groups then you can define multiple types of the rules, the standard 5-tuple rules similar to the stateless rule group.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 29:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And then you can also define domain list rules where you can whitelist or blacklist particular domain.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 30:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And then most important is Suricata based rules that you can define.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 31:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And we'll learn about these rules as well.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 32:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: Now, for stateful rules as well, there is action like you can drop the packet if it matches or pass the packet, or you can just send an alert which can be logged into the firewall logs.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 33:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, this is how the flow of the packet will look like while using the firewall and the firewall policies.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 34:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, I hope that it's clear.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 35:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: Now, let's understand what stateless rule groups offer.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 36:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: So, it inspects the each packet in isolation that we learned about the stateless firewalls already.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 37:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And it does not take into consideration factors such as direction of the traffic, or whether the packet is a part of an existing or approved connections.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 38:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And it provides the standard 5-tuple connection criteria, like, what should be the protocol?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 39:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: What is in source IP address range?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 40:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: What is a source port range, destination IP address range, and destination port range?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 41:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And if there is a match then appropriate action is taken.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 42:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: The packet can be passed, or dropped, or it can be forwarded to the stateful rule groups, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 43:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: And when you write the multiple rules in the stateless rule groups, you can prioritize the rules.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 44:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: The lower the number, the higher the priority of the number.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 45:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And they'll be evaluated in that priority order.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 46:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: The action it supports is a pass, drop, or forward to stateless.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 47:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And it also allows some custom actions.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 48:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: If you want to just send CloudWatch metrics regarding your rule match, you can also do that.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 49:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: So, you can consider this stateless rule group similar to the behavior of network ACL because network ACL's are also stateless.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 50:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: They don't consider the flow or the direction of the traffic it's flowing through.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 51:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: So, in short, that's a stateless rule group.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 52:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: Now, how the rules in stateless rule group look like.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 53:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: There are 5-tuple as I said.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 54:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: There is a priority.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 55:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: There is an action.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 56:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And then rule match setting should have protocol, source IP, source port range, destination IP, and destination port range.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 57:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Optionally, there is also a TCP flags.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 58:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: That means, if you know the TCP flags, like for example, in a handshake there is a syn and acknowledge, and RSD kind of flags.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 59:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Those are set.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 60:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: You can also try to match those flags in your packet.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 61:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: So, this is what does stateless rules look like.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 62:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: Now, let's understand the stateful rule groups.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 63:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: As I said, it takes into the consideration the context of the flow and the state of the connection as well.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 64:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And it supports the Suricata compatible rules, which is an opensource intrusion prevention system.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 65:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And it also supports the domain list filtering rules as well.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 66:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: Also, about the order of the processing, it's not like a stateless rule, but, first, it looks at the actions.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 67:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, pass rule will get the highest priority followed by the drop rules, and then alert rules.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 68:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And then within every rule groups, like for example, you have five pass rules, then the priority of those rules will be looked at, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 69:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, it's a two level of the, you know, the ordering that it follows.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 70:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: So, the behavior of stateful rule group is similar to security group, but as you might have understood already, it's much more intelligent than the security groups.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 71:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: So, one thing to understand, by default, the stateful rule groups engine allows all traffic to pass.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 72:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: It's not like a security group that there is no inbound rule by default, but for example, you just create the stateful rule groups and you don't add any rule.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 73:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Ultimately, that traffic will be allowed, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 74:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: So, that's different than the security group.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 75:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: Now, let's look at the stateful rule groups.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 76:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: 5-tuple rule you already know it's similar to the stateless.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 77:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And there is also a domain list rules.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 78:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Or it means that you can write both allow and deny list of the domain names.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 79:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, you can actually whitelist or blacklist the domain names using these rules.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 80:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, if you allow rules, and if none of the specification matches the domain name, ultimately, the traffic is denied.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 81:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And deny is for blocking the particular domain name.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 82:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And match settings, you can provide the domain list.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 83:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: For example, example.com, or you can use wildcard as a forced character.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 84:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: That means .example.com, but you cannot use example.something.com, right?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 85:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: The dot should be the first character.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 86:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And protocol, it supports its HTTP and HTTPS.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 87:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, for HTTPS traffic, as you know, it's an encrypted traffic.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 88:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, it uses the SNI, server name indication, so that it knows that what is the domain name it is using as a part of SNI.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 89:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, this is how it works.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 90:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And in case of HTTP traffic, it uses just plain headers to get the domain name.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 91:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Next is the Suricata rule that it supports.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 92:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, this is the most important one.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 93:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, understanding Suricata rules in detail is out of scope for this course.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 94:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And I would request to just go to this open source document and read more about it.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 95:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: But ultimately, every rule consist of the signature.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 96:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Signature means you are writing the rules to, you know, avoid some attacks, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 97:
- Concepts: DDoS and Edge Defense
- Services: (none explicit)
- Key Insights: So, what's that attack signature, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 98:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: That you define in the rule.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 99:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, again, in Suricata rules, you have actions which tells what to do when the packet matches that signature.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 100:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: The action could be again pass, or drop, or alert.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 101:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, signature would also have header which defines which protocol it is, IP addresses, ports, and direction of the traffic.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 102:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And then also there is a additional options that you can define in this rules.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 103:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, just an example, this is one of the rule.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 104:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And if you look at this rule, there are various components.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 105:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, the first in red that you see is basically an action.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 106:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Then comes the header, that's all this green part, and it defines the protocol, the source IP address range, source port range, destination IP address range, and destination.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 107:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Then there is an options.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 108:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, if you look at this very closely, the protocol is here, TCP.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 109:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And then you see these two things, $HOME_Net and $EXTERNAL_NET.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 110:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, these are basically the variables that you can use in your configuration file of Suricata rules so that you don't have to really modify your rules directly, but you just add those IP address ranges to this two variables, and then it will automatically dissolve runtime.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 111:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And then there is port as well.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 112:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: You can define any, or you can define those specific port range here.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 113:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And finally, there is a direction which says in which direction we want to apply this rule into and only supported arrows are right arrow.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 114:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And you know, both these arrows that use the rule will be evaluated for both the traffic coming in and going out, or a written traffic.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 115:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, this is how the Suricata rule signature looks like.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 116:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall
- Key Insights: And finally, if you look at the evaluation order of your rule, you understood that incoming packet will be forced intercepted by network firewall endpoint.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 117:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: If it allows, then it is passed.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 118:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Otherwise, the packet will be dropped.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 119:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And same applies to the outbound traffic from your machine to the outside world.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 120:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: Now, if you look at closely to the rule engine consists of two types of the rule as you understood, the stateless rule groups and the stateful rule groups.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 121:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: The same has been shown here.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 122:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: Incoming packet will first get into the stateless rule engine.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 123:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And then according to the priority of your rules, they will be evaluated.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 124:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Any matching rule, it will take an action.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 125:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Action can define on the rule level, whether you want to pass that traffic.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 126:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: In that case, rest of the rules are skipped, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 127:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: Then it doesn't go into the stateful firewall or any other rules if there is a match.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 128:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And if the action is pass, the packet will be directly go into your VPC.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 129:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: But if the action is dropped then packet will be dropped there, and then no further evaluation would happen.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 130:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: And in certain cases, you want to just pass it to the stateful firewall.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 131:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: In that case, it will be routed here.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 132:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: Now, in stateful firewall as well, rule processing will happen according to the action force.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 133:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: That means force the pass rules will be evaluated then the drop rules and then all alert rules, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 134:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And if there are multiple rules inside the pass action, then of course the rule priority will be looked at again.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 135:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: And in case of stateful engine, again, the action could be pass, or drop, or alert.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 136:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: Now, alert is something like, you know, you can log that entry so that later you can analyze what traffic was, you know, dropped or passed in my stateful rule engine.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 137:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall
- Key Insights: So, this is how the traffic flow looks like while using the AWS network firewall.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 138:
- Concepts: Inline Network Inspection, Stateful and Stateless Filtering
- Services: AWS Network Firewall
- Key Insights: And now, we will see AWS network firewall in action, where we'll set up few rules in the form of stateless and stateful rules.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 139:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And we'll see how the traffic is allowed or denied in that case.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 140:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, thanks for watching.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

### File: outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/226_Hands On_ AWS Network Firewall.txt

Line 1:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Hello, and welcome to this lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 2:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall
- Key Insights: Now that you understood how AWS network firewall works, let's try to implement this on our own.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 3:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall
- Key Insights: And you know that network firewall works differently and you have to modify route tables for your subnet as well as for internet gateway and all these we'll see in this lab.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 4:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So what is the objective of this lab?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 5:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: We want to host a web server on EC2 instance, that's the basic requirement.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 6:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall
- Key Insights: And then using the network firewall, we want to implement few rules.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 7:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: For example, we want to add stateless rule block to block the ICMP that is a ping requests to our web server, right.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 8:
- Concepts: Stateful and Stateless Filtering, Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: And then we also want to add the stateful rules so that from my web server I can only go to a certain domain name for example, aws.amazon.com, that's my outbound request, and that's to only using the TLS connection.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 9:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So I shouldn't be able to use a plain HTTP outbound connection to this domain name and then all other traffic should be blocked, of course.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 10:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now this scenario is based on the AWS block, which is here.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 11:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I just slightly modified this requirement here and accordingly I also modified my rules.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 12:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So I'll talk about that as we proceed with the labs.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 13:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this is high-level requirement.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 14:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And now if you look at the architecture that we want to build to achieve this, it should look something like this, right.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 15:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: You should have a VPC, in that VPC you would have to subnets in one subnet, which is here, it's a public subnet in which you would have public web server.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 16:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall
- Key Insights: And then there will be a firewall subnet in which you will provision the AWS network firewall endpoint.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 17:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And there will also be internet gateway, of course.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 18:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, if you look at the route tables for this three components, of course, for the public subnet, all the outbound internet traffic will go through the firewall endpoint.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 19:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, in case of firewall endpoint, all the traffic will go through the internet gateway and for the internet gateway ingress traffic for the web server, the traffic should also be routed through the firewall endpoint.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 20:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And this is an ingress traffic because your internet gateway will do the knotting.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 21:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It will map the public IP of FIPs over to the private IP and this private IP is from this subnet and that's where you see this entry.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 22:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall
- Key Insights: So at high level, these are the route tables that you need to configure for your network firewall to be able to intercept that traffic.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 23:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: So I hope that it's clear and now let's understand which rules you want to add here in case of stateless and stateful rules.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 24:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: So for stateless, I will add one rule which will drop the ICMP traffic, and then rest of the traffic, I want to route through the stateful rule groups, right.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 25:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: Because then I want to take decision in the stateful rule groups where I want to allow the TCP traffic or not.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 26:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: And here in case of stateless rules, I will attach the priority as 10 and 20 so that the first rule that is a drop traffic will be evaluated first.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 27:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: Now, in case of stateful rules, I have added four rules.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 28:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: The very first rule is for allowing the SSH, that is because from this web server, we want to test the outbound connectivity so I also want to SSH to this machine.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 29:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Second, I'm only allowing the HTTP traffic, that means I have a web server so I should be able to reach to web server over port 80, that is an HTTP traffic, and I should only be able to access my web server using the AWS provided DNS name.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal.

Line 30:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And that's where you see that, you know, the DNS name ends in dot amazonaws.com.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 31:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: That means I cannot access my web server using the public IP of the web server but only through the DNS name.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 32:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Third, I will add this entry which allows the outbound request from this web server to only the domain name that is aws.amazon.com.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 33:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: And additionally, the traffic will only be the TLS traffic.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 34:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: That means I cannot use plain HTTP traffic or a TCP traffic to reach to this aws.amazon.com domain name.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 35:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And finally, I have the rule which is drop all other TCP traffic so that there is no other traffic that can flow in and out of my web server.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 36:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now you'll be wondering if that is the case then how you are allowing the, you know, this HTTPS traffic to the aws.amazon.com.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 37:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Because when the PCP handshake happens at that moment, the traffic is not DLS, right, it starts with TCP.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 38:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, in that case, this drop rule should be applied and your traffic will be stopped.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 39:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: But for handling this use case, we have added this flow.established as a parameter, which allows the traffic to be dropped only when it is not an established traffic, that means for this TLS the TCP handshake has already happened and that's where it won't use this route to drop that traffic.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 40:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: But any other traffic, which does not meet this requirement will be dropped by this fourth rule.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 41:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So overall, these are our requirements for firewall rules.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 42:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, if I want to set this up, I need a basic setup to start with, right.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 43:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: That means I will need a VPC, I will need EC2 machines and all.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 44:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, if you follow AWS blogs, everything can be set up using a cloud formation template, but here I have done that manually.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 45:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So if you want to start, this is very simple.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 46:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: There is no AWS firewall, right, I'm just creating two subnets and one subnet would be public in which I launch a web server and then there will be a route table where the traffic goes to the internet gateway.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 47:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So there is nothing fancy here, right, it's all, you know how to create this setup.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 48:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Just remember one more thing that enabled the DNS hostname and DNS resolution on your VPC, because otherwise AWS won't locate the public DNS name for your EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 49:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So in order to handle that, please enable these two settings because in our firewall rules, as you have seen, we are allowing HTTP traffic only for the web server where the DNS name ends in amazonaws.com.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 50:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so for simplicity, what I've done is I already created this VPC and this subnets and internet gateway and I'll start from there.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 51:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, once I have that set up, I will just SSH into this web server because there is no web server, as of now, it's just an EC2 instance, and I will install the HTTPD web server there and we'll start the HTTPD service.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 52:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: Now by launching EC2 machine, I also need to provide the security group, but I will just allow everything in the security group so that I know that traffic is not really getting blocked at the security group level and I'm not touching the network ACL as well.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 53:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now then verify that you are able to access the web server or a browser using the EC2 instance IP and our public DNS.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 54:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Then also verify that you are able to ping to EC2 instance using the public IP or the public DNS.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 55:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall
- Key Insights: Now, this is a simple setup where there is no network firewall.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 56:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall
- Key Insights: Then we will create the network firewall in its designated subnet.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 57:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: And then we will also add corresponding stateful rule groups as well as stateless rule groups.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 58:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Finally, once the firewall has been added, we need to modify the route tables, right.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 59:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: As I said to you, a route table has to, you know, take all this traffic through the firewall whether, you know, going to the internet or coming from the internet.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 60:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And finally, once that is done, we will test the ping to the web server from local machine, it shouldn't work.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 61:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: And then we'll SSH to the web server, which should be successful because we have added that in our stateful rule.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 62:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And from there, we will try to get some data from say, aws.amazon.com or HTTPS, which we should succeed, but any other domain names shouldn't work, right.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 63:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: That would be our final test.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 64:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So if this works, that means our firewalls are working well.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 65:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, as I said, for route tables you need to have the route table, something like this for your public subnet where your web server site, you will have the route table entry.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 66:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: You'll say is all the internet traffic will go through the firewall endpoint, for firewall subnet, all the traffic will be routed through the internet gateway and for internet gateway, any traffic that is going to your protected subnet here, it will go through the firewall endpoint.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 67:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, as of now we haven't seen the route table for the internet.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 68:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now this is an ingress route table for the internet.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 69:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And how you do that is you have to first go to the route table, you have to create the route table, and then when you associate the route table, there is an additional entry there which is age association, and at that moment, you can sell it internet gateway there and then that route table is associated with the internet gateway.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 70:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Otherwise, if you go to the AWS console and go to internet gateway, you don't see an option to add a route table to the internet gateway, right, so just remember that.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 71:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So with that, let's get started and now I'll just jump to my console.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 72:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay then, you can see that I already created this demo VPC with DCIDR 10.0.0/16.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 73:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And in this, I created two subnets, one subnet for the firewall and one subnet for the web.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 74:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And this CIDRs are 10.0.100.0 and 10.0.0.0.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 75:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, for the subnet for the web server I just modified the route table to add entry for internet gateway and this is very simple, I'm not adding the firewall as of now, as I told you, right.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 76:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So it's a public subnet, and I haven't touched this firewall sub-net as of now.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 77:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And then if you see the route tables, I have two route tables, one for the web server and I have the route to internet gateway and then I also attached to the corresponding subnet.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 78:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now for the firewall, also I created a route table and I just also need to attach it to the firewall subnet here.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 79:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So I'm just doing that.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 80:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, I'm not really launching anything in the firewall subnet as of now, so it doesn't really matter, but the setup is really very simple.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 81:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Then what I additionally did is I launched a web server inside my VPC in the web server subnet and I associated the public IP as well.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 82:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And on the VPC level, I also have the enable DNS resolution and the hostname setting steps where it also got this public DNS.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 83:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, what I did is I just connected to this instance or an SSH and now I'll just install the web server.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 84:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So let's do that and then also let's start the web server. (keyboard clacking) And finally, let's just create one dummy file so that we can access this web server and some web pages displayed.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 85:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: This is my web server, that's it.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 86:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And now if I access this web server or an IP address, it should work.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 87:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Right, it works.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 88:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And similarly, if I get it public DNS name, it should also work.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 89:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So using this DNS name I can also access my web server.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 90:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so that's the test that we did.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 91:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, our setup is ready with the starting point and now let's get into the, you know, mood where we want to set up everything else, right.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 92:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So we want to create now firewalls and corresponding group tables and everything.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 93:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So let's do that now.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 94:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall
- Key Insights: So I'm going back to my console and AWS network firewall is part of the VPC console, so let's go there.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 95:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: There's already one firewall, I'm not going to use that, so let's create a new firewall and let's give it a demo as the name and VPC, we want to choose the one that we created, which is demo one, the easy, I want to just have one easy and the subnet we have 10.0.100.0, this one.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 96:
- Concepts: Centralized Policy Governance
- Services: (none explicit)
- Key Insights: Okay, and we want to create a firewall policy which is empty.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 97:
- Concepts: Centralized Policy Governance
- Services: (none explicit)
- Key Insights: To start with, let's give it a name demo firewall policy and also just let's change the name to demo firewall here, that's it and let's create the firewall.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 98:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So it will take a couple of minutes for this firewall to be ready, by the time I'm just pausing this video.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 99:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall
- Key Insights: Okay, you can see that the firewall status is ready and now let's go to the network firewall rule groups.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 100:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And there're older rule groups, I'm not going to use those.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 101:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: Let's create the stateless rule group, and let's call it demo stateless.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 102:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And you have to mention some capacity, how many rules you want, so let's keep it 100.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 103:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So you can add a priority, as you know, the lowest the priority the rule will be evaluated in that order.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 104:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, first we want to have the rule with ICMP and here let's give the priority as 10 so that we can insert a rules later as well.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 105:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And the source is anything and the destination is anything.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 106:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And I want to drop all this traffic, right.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 107:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: So I'm just adding this rule and then I'll add another rule, which say priority 20 and all protocols for any IP address, I want to just forward this traffic to my stateful rule groups, and let me just add that.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 108:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: So just this two rules for the stateless rule group and we are just creating that now.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 109:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: And now also let's create the stateful rule groups, and in that case, let's select the stateful, let's call it demo stateful, define the capacity as 100.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 110:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, in this case, we are not using the 5-tuple format, we are not using the domain list, but we are using the Suricata compatible IPS rules.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 111:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And you can grab this from the downloadable content or you can also just type it here.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 112:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So let me get this rules from my presentation.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 113:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So I have this four rules here I'm just copying those and I'll just put it here.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 114:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, you can see that first rule is about allowing the SSH.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 115:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Second is for allowing the HTTP traffic so that I can access my web server or the browser.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 116:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And third rule is for connecting to aws.amazon.com from my web server.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 117:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And fourth is to drop anything else, which is our TCP traffic.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 118:
- Concepts: Centralized Policy Governance
- Services: (none explicit)
- Key Insights: So let's create this and now I have this two rule groups, but understand that as of now, we haven't added these rule groups to our firewall policy.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 119:
- Concepts: Centralized Policy Governance
- Services: (none explicit)
- Key Insights: So let's go to the firewall policy and let's add this two rule groups.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 120:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: So the first one is the stateless, so let's select that.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 121:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: And similarly, let's also add this stateful rule group here.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 122:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: So I'm just adding the demo stateful rule group here.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 123:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so on the firewall side, we are good, everything is set up and now what's remaining, if you know, is our route tables, right, we need to modify all these three root table so that traffic can flow through this firewall endpoint.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 124:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So first let's modify the route table for a public subnet.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 125:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, in this case, all the traffic to internet should go through the firewall endpoint.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 126:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, for that, we need to first get the firewall endpoint.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 127:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So if you go to the firewall and go to it's details, you will find the firewall endpoint there, and we will need this firewall endpoint for our route table so I'm just copying this firewall endpoint.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 128:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Right, now let's go to the route tables and the web route table, routes and I'm just now modifying this.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 129:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now this is a public subnet when we created earlier, but here instead of internet gateway, I want to use my firewall endpoint and just save the changes, so that is done.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 130:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now for the firewall route table, I want to have all the traffic going through the internet gateway, right.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 131:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So let's do that and save the changes.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 132:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: If you're confused, just look at this architecture and you should be able to understand what I'm doing.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 133:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, the third thing which is new to you is having the route table for the internet gateway.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 134:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, in order to do that, let's create a new route table first.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 135:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So let's go to the route table and create a route table, say demo igw route table in the VPC, and just create that route table and then as in routes, we will again add, if the traffic is going to the web server subnet, which is $10.0.0.0/24, again it has to take the route through the firewall endpoint and save the changes.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 136:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: But as of now, this route table is not associated with the internet gateway.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 137:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: In order to do that, as I said, you need to go to the age association and then you need to attach this to the internet gateway.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 138:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So remember, this is important step, right, and save the changes.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 139:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so I think we are done with the architecture that we want to try.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 140:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, let's verify what's happening here, right.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 141:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: First of all, let's verify if we are able to access the web server using the IP address.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 142:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: If you just refresh, this is not working.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 143:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: Now, this is because in the stateful rules, we said that only HTTP traffic for the domain name which ends in amazonaws.com should be allowed.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal.

Line 144:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: Now, if I refresh this page, ideally it should work, I can also test this like this and this is working, right, that means our stateful rule groups are working.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 145:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Also let's verify if ping is working or not.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 146:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: We had blocked all the ping requests so let's go to the command prompt and let's say ping to the IP address and it is not working.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 147:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: Also, let's ping to this public DNS and you can see this is also not working because in a stateless rule group we have defined that block the ping request.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 148:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: Now, one more thing we want to try is we want to log into this website or our SSH and then we want to see if we can reach to, you know, aws.amazon.com or our TLS connection.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 149:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: So let's go to this session, I'm just going to duplicate this and you can see I'm able to log into the web server or SSH that's because I have allowed that in our stateful rule groups.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 150:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so I'm here, now let's try to do something like this curl, first let's try, http://aws.amazon.com.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 151:
- Concepts: Stateful and Stateless Filtering, Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: Now, even though it's an aws.amazon.com DNS that we have white listed in those stateful rule groups this one work, because we said the condition has to be the TLS.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 152:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: That means it should be an HTTPS connection.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 153:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And if I do that, I get the page of aws.amazon.com.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 154:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And at the same time, if I do something different, maybe let's try to do https://google.com.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 155:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So it won't work because we are white listing only the domain name that we are interested in.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 156:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this is what we wanted to achieve and I think this is working perfectly as we expected.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 157:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And that's it about the Network Firewalls.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 158:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So I hope you enjoyed this lecture and you understood how these things work.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 159:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, make sure that when you do this exercise, you delete all your resources because everything is charged, right.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 160:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall
- Key Insights: There is an EC2 instance, there's a network firewall everything has a price.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 161:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So make sure you delete all those resources.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 162:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So thanks for watching and stay tuned for more exciting stuff.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 163:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Thank you.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

### File: outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/227_The legacy way of using the Network appliances.txt

Line 1:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: Hello and welcome to this lecture, gateway load balancer.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 2:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, this is one of the most important service that AWS launched recently in the networking domain and this service was launched during the re:Invent 2020.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 3:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: Now, before gateway load balancer, there wasn't a standard way or a good way to really deploy third party virtual network appliances in AWS and then the ability to route all ingress or egress traffic through that third party virtual appliances.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 4:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: There are some architectures that we are going to talk throughout this lecture but then there wasn't a very good way which will give you the high availability as well as scaling capability and that is what exactly the problems, this gateway load balancer that solves.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 5:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So whether your traffic is a north-south, that means it's going to the internet or coming from the internet or the traffic between multiple VPCs, which we typically call east-west traffic.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 6:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: You can put a gateway load balancer as a transparent gateway in between and then all the traffic can be then inspected using the gateway load balancer endpoints.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 7:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, when we say traffic can be inspected, it is not just about, say a firewall or IPS or IDS system but maybe you want to do some analysis of that traffic, or you want to mirror that traffic.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 8:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: So there are so many use cases that you can implement using the gateway load balancer.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 9:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: So with that, let's get started and see why gateway load balancer was introduced and what problems it solves.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 10:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 11:
- Concepts: Centralized Policy Governance, Inline Network Inspection
- Services: (none explicit)
- Key Insights: So if you go a few years back, we had hardware-based network appliances and typically any organization wanted to have the same policies or same network traffic inspection policies whether they're operating on premises or in AWS Cloud.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 12:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Then the only option was to host this network appliances in on-premise data centers.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 13:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, in this case, if you look at this architecture, there needs to be a VPN connection between a cloud and your on-premise network.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 14:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And then any traffic that lands into your cloud application first has to get routed back to your on-premise network appliances, do whatever analysis you want to do, and then the packet comes back to the applications.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 15:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this is an architecture that people use to implement because one, the appliances were hardware-based.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 16:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: They were not virtualized.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 17:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And second, the companies wanted to have same policies across both the networks.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 18:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, if you look at this architecture, it's complex, there is a lot of routing and re-routing involved here because as the traffic lands here, you have to force this traffic to on-premise data center network appliances then you have to route that back to your applications.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 19:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So you can imagine, you know, there are very complex routing policies involved there.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 20:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And of course, there would be a high latency because packet has to flow from AWS to your on-premise data center and come back, so this clearly is inefficient.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 21:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And in order to solve some part of this problem, what AWS did in 2019, again, launched something called ingress routing for your VPC.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 22:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now what does that mean is, from internet gateway, if there is an ingress traffic that is coming to an internet gateway from outside, you can route that traffic to your on-premises via your virtual private gateway.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 23:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So you can associate the route table to internet gateway and you can say if the traffic is for your application server, it has to first go through VGW and in VGW, you have already an VPN connection which will take that all the traffic to on-premises and from there, traffic will come back to the VGW and to your application server.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 24:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this is, again, the same problem of latency is there but now routing is becoming simple for you at the AWS end because you are using the VPC ingress routing.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 25:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So in this case, routing is simple but still is the high latency.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 26:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So how do you solve that problem?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 27:
- Concepts: Inline Network Inspection
- Services: (none explicit)
- Key Insights: So the partners of AWS or that are known companies which operates in the appliance world for the network, like Cisco Juniper and so many there are checkpoints, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 28:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: They virtualize their network appliances which means that now you could have the network appliances running on the virtual machine inside your VPC on EC2 machine, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 29:
- Concepts: Inline Network Inspection
- Services: (none explicit)
- Key Insights: So now instead of having hardware-based network suppliers, you could have EC2 based network appliance and now as you learnt about the VPC ingress routing, you can configure the internet gateway route table and say, if the traffic is going to your application subnet, it has to go first to the ENA of your network appliances.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 30:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this is what VPC ingress routing can do, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 31:
- Concepts: Inline Network Inspection
- Services: (none explicit)
- Key Insights: Now, you host your network appliance on this EC2 instance and then if you look at, say an ingress traffic flow, as the traffic comes from the internet, it looks at this route table and if the traffic is for your application.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 32:
- Concepts: Inline Network Inspection
- Services: (none explicit)
- Key Insights: So, you know, that internet gateway also does the natting and it would send the traffic to 10,0,10,0,24 subnet because application is there and it is having a public IP of itself and before sending it to this, it will directly send it to the ENA of network appliance and then once it lands into the network appliance, it knows how to send this traffic to the application because it has the destination IP, application would receive the packet and then it will respond.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 33:
- Concepts: Inline Network Inspection
- Services: (none explicit)
- Key Insights: While responding, it will also look at its own route table and here the ingresses, if the traffic is going out, it has to again go through the network appliance ENI.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 34:
- Concepts: Inline Network Inspection
- Services: (none explicit)
- Key Insights: Now that ENI is of this network appliance here and the traffic comes back.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 35:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Again, it looks at its own route table, it says traffic is going to the internet, it has to go through the internet gateway and that's where the data and traffic also goes out.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 36:
- Concepts: Inline Network Inspection
- Services: (none explicit)
- Key Insights: So with VPC in this routing, you can see that you can use network appliance for any ingress or egress traffic, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 37:
- Concepts: Inline Network Inspection
- Services: (none explicit)
- Key Insights: So you can inspect the traffic centrally via this network appliance.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 38:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this is a good solution and a lot of companies are using this on AWS.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 39:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: But do you see a problem with this architecture?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 40:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, if you go to the AWS documentation or best practices, it always says that your application architecture should be highly available and this architecture isn't highly available for the reason that there are no multiple AZs.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 41:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: We are still talking about single AZ or availability zone.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 42:
- Concepts: Inline Network Inspection
- Services: (none explicit)
- Key Insights: Now, if you bring in another network appliance in another AZ, typically what you would have to do is to add one more route table into here in the ingress routing table and say the traffic has to go through another ENI.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 43:
- Concepts: Inline Network Inspection
- Services: (none explicit)
- Key Insights: But if one of the network appliance goes down, the route table will still send traffic to the same ENI which doesn't exist.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 44:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: That means your traffic will be dropped.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 45:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now this is not what you want, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 46:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And that was the problem.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 47:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: That means with this architecture, you cannot have a change, neither you can scale your network appliances.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 48:
- Concepts: Inline Network Inspection
- Services: (none explicit)
- Key Insights: If there is so much traffic coming to your application and suppose there is a bandwidth limit of this network appliance, or say a packet processing limit appliance then you are bound by the highest capacity, right?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 49:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: You can't horizontally scale this network appliances.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 50:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: So that is what exactly the problem was and in order to solve this problem, AWS introduced the gateway load balancer.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 51:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: So in the next lecture, let's see how gateway load balancers solve this problem and how the architecture and traffic for gateway load balancer looks like.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 52:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, stay tuned.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 53:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Thank you.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

### File: outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/228_Gateway Load Balancer and Traffic flow.txt

Line 1:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: Okay so, now let's see how Gateway load balancer solves these problems, right.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 2:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: Now here we are showing two VPCs because this is what the ideal architecture would be, but you can very well have just single VPC and you could have Gateway load balancer and endpoint and applications and firewalls in the same VPC as well.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 3:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: Bare minimum, it is required that your application sub-net and Gateway load balancer endpoint subnet should be different.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal; Inline inspection and network enforcement signal.

Line 4:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And what that means, I will explain that shortly.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 5:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: But to have better architecture, I'm showing here the two separate VPC for application VPC and network appliances with VPC.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 6:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And I hope that is fine.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 7:
- Concepts: Layer 7 Threat Protection
- Services: (none explicit)
- Key Insights: So on the left side, you have application VPC, which obviously would have your application, typically a web application, probably running in a public subnet. but let's not go into the details at the sub-net level as of now.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 8:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: Let's try to understand how Gateway load balancer architecture looks like.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 9:
- Concepts: Inline Network Inspection
- Services: (none explicit)
- Key Insights: So on the right side, you have a network appliance VPC, which means there will be multiple network appliances.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 10:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: And obviously as the name suggests Gateway load balancer should be able to balance the load across this network appliances.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Inline inspection and network enforcement signal.

Line 11:
- Concepts: Inline Network Inspection
- Services: Gateway Load Balancer
- Key Insights: So in the network appliance VPC, you would have the Gateway load balancer provisioned, which ultimately sends traffic to this network appliances.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 12:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: Now, in order for the application VPC to send the traffic to the Gateway load balancer, you need something called Gateway load balancer endpoint.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 13:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: This is very similar to the VPC endpoint.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 14:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So you might recall from the VPC private link lecture, where you could host your own VPC and point services.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 15:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And then in order to access these services, you have to provision the VPC endpoint into your consumer VPC.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 16:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: Now, similar architecture here, in that case, you have Gateway load balancer endpoint in the application VPC.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 17:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: And this sets up the private link with the Gateway load balancer.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 18:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: There is one difference though between the Gateway load balancer endpoint and other VPC endpoint.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 19:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: You can add the Gateway load balancer endpoint as a next half in the route table.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 20:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Which you can't do with the VPC endpoints otherwise.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 21:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: And that's where it allows you to, you know, redirect traffic from internet to the Gateway load balancer directly.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 22:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And we'll talk about that flow shortly, but this is one difference that you will notice here.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 23:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: Now, if you look at the traffic flow, as the ingress traffic hits the Internet Gateway, somehow you will modify the route table and will redirect all this traffic to the Gateway load balancer endpoint, instead of directly sending it to the application.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 24:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: And then Gateway load balancer endpoint, will send that traffic by default to the Gateway load balancer, and then Gateway load balancer will forward that traffic to the network appliances.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 25:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: And once the traffic is returned from the Gateway load balancer to the Gateway load balancer endpoint, then it will hit the application.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 26:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And that's where every packet will be, go through this network appliances.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 27:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: Now, one thing to understand, that Gateway load balancer uses something called Geneva protocol to send traffic to the network appliances.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 28:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, if you've never heard about the Geneva protocol, it is basically Generic Network Virtualization Encapsulation protocol, which is a wrapper over L3 traffic.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 29:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So as you get the packet at L3 level, right, it encapsulates that traffic and puts its own header on top of it.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 30:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And the benefit is that your packet is unchanged.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 31:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: That means the source and destination address of the packet remains the same.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 32:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So your network appliances actually knows that the traffic is coming from a particular IP address.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 33:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It can remove those encapsulation headers and actually can see the source and destination traffic IP's and the ports for your packet, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 34:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So that's a Geneva protocol.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 35:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, there is some history to why Geneva protocol was made.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 36:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Earlier there were other protocols or maybe a different vendors have their own protocol like Cisco developed GRE, that is Generic Routing Encapsulation.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 37:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It's a tunneling protocol, as you know.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 38:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And there are certain wide variety of the, you know, such internet protocol for Encapsulations.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 39:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So in order to really have a standardized way of this encapsulation, Generic Network Virtualization Encapsulation, that is Geneva protocol was developed.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 40:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, back to the original flow of the traffic.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 41:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: The network appliances will send the traffic back to the Gateway load balancer.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 42:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: It will come back to the Gateway load balancer endpoint, and then it will again hit your application.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 43:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: And application will then return the traffic to the Gateway load balancer endpoint.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 44:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And the similar flow will apply now.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 45:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: Instead of directly going to the internet Gateway, the traffic again, will go to the Gateway load balancer to the network appliances, will come back and finally Gateway load balancer will send it to the internet via this internet Gateway.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 46:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So if I talk about this architecture, it's simple, low-latency, scalable, because here there is a fleet of network appliances and HA as well.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 47:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: HA because Gateway load balancer supports the health checks.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 48:
- Concepts: Inline Network Inspection
- Services: (none explicit)
- Key Insights: And if one of the network appliance is not healthy, it will automatically send that traffic to another network appliance.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 49:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: Now, good thing about the Gateway load balancer is that. it does what other protocols cannot.
- Hidden/Implicit Meaning: Constraint or limitation signal; Inline inspection and network enforcement signal.

Line 50:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: For example, you know ECMP, right.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 51:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Equal cost multi-part.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 52:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now the problem with ECMP is that it cannot really maintain the symmetric flow of the traffic.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 53:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: That means if the traffic is going through one of the tunnel, it may come back from another tunnel, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 54:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It's asymmetric routing typically.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 55:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: But Gateway load balancer maintains the symmetric flow.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 56:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It knows the source of the flow.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 57:
- Concepts: Inline Network Inspection
- Services: (none explicit)
- Key Insights: And it will send the traffic to a particular network appliance only.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 58:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And we'll send the response back to the same flow.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 59:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this allows sending the bi-directional traffic transparently over the same consistent route, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 60:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And this is similar to, you know, bumping the wire target.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 61:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Like it also keeps the stickiness with the network appliances and that's where it makes it a great choice when you have to maintain the symmetric flow and the stickiness.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 62:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: And which also means you could have multiple VPCs say multiple spoke VPCs, all sending to the traffic to the same Gateway load balancer, but the traffic will be routed back to the VPC, which originated that traffic.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 63:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: So this is what Gateway load balancer provides you.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 64:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now let's see how the traffic flow looks like.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 65:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now I am using here one availability zone, but for high availability, as you know, that should be multiple availability zones.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 66:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: So Gateway load balancer endpoint should be provision across multiple EC because scope is as EC level, right.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Inline inspection and network enforcement signal.

Line 67:
- Concepts: Inline Network Inspection
- Services: (none explicit)
- Key Insights: On the right side, you have network appliance VPC.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 68:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Here I have shown two EC's and then network appliances are across multiple EC's.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 69:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: And then Gateway load balancer will send traffic to this network appliances or port 6, 0, 8, 1 using the Geneva protocol.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 70:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 71:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So there are users here and they want to access your application here in this EC2 machine.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 72:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now let's look at the route tables, how they should be look like, right.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 73:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now user will hit the Internet Gateway.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 74:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Internet Gateway knows where my EC2 instance is and it converts your public IP traffic to the private IP.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 75:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And it typically redirects that traffic to your EC2 instances having the public IP, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 76:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: But in this case, you want to modify that behavior and say, if the traffic is going to the EC2 instances, it should first go to the Gateway load balancer endpoint.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Inline inspection and network enforcement signal.

Line 77:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And that's where you would have an ingress routing table for your internet Gateway.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 78:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: And you will say if the traffic is going to this particular sub-net, it should go to the Gateway load balancer endpoint first.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Inline inspection and network enforcement signal.

Line 79:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, now let's look at the other route tables.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 80:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: So there is a route table for your Gateway load balancer endpoint, subnet as well.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 81:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now in this sub-net, there is an route table entry which says the traffic going to the internet should go through the Internet Gateway.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 82:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now this will be used for the return traffic.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 83:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: As the ingress traffic will hit the load balancer.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 84:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: We'll come back, we'll go to the EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 85:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And then the return traffic will come back.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 86:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Then it knows how the traffic should go back to the users via this internet Gateway.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 87:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And that's where this entry is.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 88:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, if you talk about the application server route tables, you need to think right, how the traffic will go back to the internet.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 89:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It shouldn't directly go back.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 90:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: It should again go back through this Gateway load balancer endpoint.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Inline inspection and network enforcement signal.

Line 91:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: And in that case again, you would have entry, which says if the traffic is going to the internet, it should go to the Gateway load balancer endpoint, right?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Inline inspection and network enforcement signal.

Line 92:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this is how the route table should look like for your application server subnet as well.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 93:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, if you look at the traffic flow, there will be users, who will be hitting the public IP off your EC2 application.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 94:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It will hit the internet Gateway.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 95:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: Internet Gateway will redirect that traffic to Gateway load balancer endpoint, and it will further take this traffic to the Gateway load balancer.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 96:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It will distribute that traffic to the network, with your appliances.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 97:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It will get the traffic from there.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 98:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: Now Gateway load balancer, we'll look at the route table and we'll see the traffic is the destination for the EC2 instances.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 99:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It will send the traffic EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 100:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: EC2 instances will response back to the Gateway load balancer because there is this entry.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 101:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: And in this point, a key in the Gateway load balancer will send traffic to the Gateway load balancer.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 102:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It will return the traffic.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 103:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And now this route table will be used to send the traffic back to the user.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 104:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this is how N2 inflow look for the ingress traffic.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 105:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: Now you must be wondering why the Gateway load balancer endpoint will only apply this particular entry for the return traffic, right?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal; Inline inspection and network enforcement signal.

Line 106:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Why not for the incoming traffic?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 107:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: Now Gateway load balancer endpoint understand that the traffic has been originated within the VPC, or it's been originated by the Gateway load balancer.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 108:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: If it's a Gateway load balancer, then only it applies this route table.
- Hidden/Implicit Meaning: Constraint or limitation signal; Inline inspection and network enforcement signal.

Line 109:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: Otherwise the direct traffic, which is coming to the Gateway load balancer, which is not a return traffic, will, it will directly send it to the Gateway load balancer.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 110:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I know this could be a little confusing, but if you look at this architecture and understand this flow, I hope it will be clear to you.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 111:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this is how the ingress traffic flow works.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 112:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, if EC2 machine wants to access the internet, that is an ingress traffic for this, similar flow would apply.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 113:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: So in this case, the EC2 instances will send the traffic to the Gateway load balancer endpoint because there is this route table entry.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 114:
- Concepts: Inline Network Inspection
- Services: Gateway Load Balancer
- Key Insights: Now Gateway load balancer will then again, send the traffic to Gateway load balancer to the network appliance.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 115:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: It will come back to the Gateway load balancer endpoint, and finally it will apply this route table and we'll send the traffic to Internet Gateway and out the internet, right?
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 116:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And then the reverse flow for the return traffic will apply.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 117:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: That we just talked about for the ingress traffic.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 118:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: So this is how the overall architecture should look like for your Gateway load balancer.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Inline inspection and network enforcement signal.

Line 119:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So I hope that is clear.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 120:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: And with that, now we will look into some of the properties of the Gateway load balancer and then we'll also do some labs around it.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 121:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So thanks for watching.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

### File: outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/229_Hands On_ Gateway Load Balancer.txt

Line 1:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so based on what we discussed so far, let's try to do the lab now.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 2:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now I know that this is a little early to get into the labs, but essentially what we just looked at the flow, we are going to implement the same, and this is not a simple lab because it involves a lot of route tables, as you already saw.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 3:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It also involves traffic re-directions, and therefore it is recommended that you really watch this carefully and try to then implement on your own.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 4:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, in order to set up this lab, I have a similar setup that I just explained in the earlier lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 5:
- Concepts: Inline Network Inspection
- Services: (none explicit)
- Key Insights: That means we would have Application VPC, and then we would have Network Appliance VPC.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 6:
- Concepts: Inline Network Inspection
- Services: Gateway Load Balancer
- Key Insights: And in Application VPC, we will have Gateway Load Balancer endpoint, which talks to the Gateway Load Balancer in the Network Appliance VPC, which further talks to the Network Appliances.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 7:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now you might be having multiple questions at this moment.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 8:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: The first one is what about this Network Appliances, from where we'll get it?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 9:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So for Network Appliances, AWS already has so many partners who can provide the ec2 base Network Appliances.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 10:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: And for that, you have to just go to AWS Marketplace, search for the Network Appliances, which are compatible with the Gateway Load Balancer, and then you will find a list of the providers.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 11:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So for this exercise, I'm using Check Point as one of the Network Appliances.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 12:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, if you drill down into this architecture, you know that we need multiple subnets and then we need to have corresponding group tables that we discussed in the last lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 13:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this is how my architecture will look like for this lab.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 14:
- Concepts: Inline Network Inspection
- Services: (none explicit)
- Key Insights: Now I'm having Application VPC with the CIDR 10.0.0.0/16 and Network Appliance VPC with the CIDR range of 192.168.0.0/16.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 15:
- Concepts: Inline Network Inspection
- Services: Gateway Load Balancer
- Key Insights: Now in the Application VPC, ultimate goal is to reach to this Application from the internet, as well as this Application should be able to go to the internet, but all this traffic should be routed through my Gateway Load Balancer and to my Check Point Network Appliance.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Inline inspection and network enforcement signal.

Line 16:
- Concepts: Inline Network Inspection
- Services: (none explicit)
- Key Insights: Now in the Application VPC, I have three subnets and I'll explain why, and in the Network Appliance VPC I have again three subnets, out of which two subnets are private, and one subnet that is public, which is for the Jump host.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 17:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now in both these VPCs, I have Jump host and Jump host needs to be in a public subnet as you know.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 18:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, why do I have Jump host here?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 19:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Because say my Application can be reached directly from the internet because it's in a public subnet.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 20:
- Concepts: Inline Network Inspection
- Services: Gateway Load Balancer
- Key Insights: But as soon as you change the traffic to go through the Gateway Load Balancer instead, your Network Appliance might block your SSH traffic.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 21:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And that's where I won't be able to go to the Application server directly.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 22:
- Concepts: Inline Network Inspection
- Services: (none explicit)
- Key Insights: Instead, I'm using Jump host to just bypass this Network Appliance all together and I'll directly from Jump host can go to the Application, and then from Application, I test my connectivity, Say from this Application, being to say, google.com is my traffic going actually through this Check Point Network Appliance.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 23:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I should be able to check that.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 24:
- Concepts: Inline Network Inspection
- Services: Gateway Load Balancer
- Key Insights: Similarly, on the right side, you have two private subnets, one for Gateway Load Balancer and another for Network Appliance.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 25:
- Concepts: Inline Network Inspection
- Services: (none explicit)
- Key Insights: Now here, you don't need internet to be honest, but in order to configure the Check Point and also check whether traffic is actually flowing through this Check Point Network Appliance, you need to SSH to this machine and in order to SSH, I'm having this Jump host here.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 26:
- Concepts: Inline Network Inspection
- Services: (none explicit)
- Key Insights: So these are redundant, but then for this exercise and to actually see the traffic is flowing, we need these Jump hosts so that we can lock into the Application instance, as well as your Network Appliance instance.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 27:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And as usual there is internet gateway.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 28:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: And as of now, I'm doing this exercise in a single availability zone, but for production, it is recommended that you always use multiple availability zones for your Gateway Load Balancers, for your Network Appliances, as well as for your Gateway Load Balancer endpoint.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Inline inspection and network enforcement signal.

Line 29:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So I hope that is clear.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 30:
- Concepts: Inline Network Inspection
- Services: (none explicit)
- Key Insights: Now for consistency, I'm using the subnets with the CIDR 10.0.0.0/24 for Jump host here and similarly, 192.168.0.0/24 for Jump host in Network Appliance VPC as well.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 31:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: For Gateway Load Balancer endpoint, I'm using 10.0.10.0, and for the Gateway Load Balancer itself, I'm using 192.168.10.0.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 32:
- Concepts: Inline Network Inspection
- Services: (none explicit)
- Key Insights: For Application, I'm using 10.0.20.0, and for Checkpoint or Network Appliance, I'm using 192.168.20.0, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 33:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: This is a sub-net.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 34:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So I hope this architecture is clear, and to be honest, based on just this architecture, you should be able to set this up and that's what we are going to do.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 35:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now to save some time, what I have already done is that I already created these subnets.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 36:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: I haven't created anything like Gateway Load Balancer endpoint or this or this, but I just set up the network.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 37:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: That means I created these two VPCs.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 38:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I created three public subnets here, two private subnets here, one public subnet here, and then I launched these two Jump hosts in respect to public subnet, and one Application host.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 39:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I haven't installed anything on that Application host.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 40:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It is just plain Linux box there.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 41:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And what I have done is from this Jump host, I have SSH to this Application instance.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 42:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this is what my start state is, and next I want to do other things.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 43:
- Concepts: Inline Network Inspection
- Services: Gateway Load Balancer
- Key Insights: For example, I want to launch this Network Appliance using Check Point AMI from the Marketplace, and then I should be able to create Gateway Load Balancer, Gateway Load Balancer endpoint, and then finally I will change my route tables.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Inline inspection and network enforcement signal.

Line 44:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now why I'm changing route tables at the end, because if I do that right away, then I won't be able to probably reach to the respective host because my Check Point might be blocking all my traffic, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 45:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: That's where I'm first setting up everything, and then I will change the route table.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 46:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So let's go to the AWS Console and see what I have already done, and then let's follow the next step.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 47:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I have already given all these steps in this lecture as well.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 48:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So if you want to just do it on yourself, you can also follow those steps on your own.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 49:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to my AWS Console now.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 50:
- Concepts: Inline Network Inspection
- Services: (none explicit)
- Key Insights: Here, you can see, I have two VPCs: Application VPC and Network Appliance VPC, and you can see the CIDRs here.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 51:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And if you go to the subnets, I have multiple subnets here for Application VPC.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 52:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I have one public subnet for Application itself.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 53:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: You can see these route table and there is a route to the internet gateway.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 54:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: That means it's a public subnet.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 55:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: For Gateway Load Balancer endpoint also, it's a public subnet and for Jump hosts also, it's a public subnet.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 56:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So I haven't done anything.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 57:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: This is a very standard VPC that you have been seeing so far in the other lectures as well.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 58:
- Concepts: Inline Network Inspection
- Services: (none explicit)
- Key Insights: Similarly Network Appliance side, I have Appliance subnet, which is again, private.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 59:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: Gateway Load Balancer, which is also private, and then for Jump host, I'm having this public subnet right?
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 60:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this is what I have already done.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 61:
- Concepts: Inline Network Inspection
- Services: (none explicit)
- Key Insights: And then I have already launched three (inaudible) instances two Jump host into VPCs, and one Application host in the Application VPC, and then from my terminal, I logged into Jump host using the public IP, and from there I logged into the Application host over an SSH, so that from Application host, I can try to go out to the internet and see if traffic is flowing through the Check Point Network Appliance.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 62:
- Concepts: Inline Network Inspection
- Services: (none explicit)
- Key Insights: Now I don't have Check Point Network Appliance as of now.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 63:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to the AWS Marketplace.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 64:
- Concepts: Inline Network Inspection
- Services: (none explicit)
- Key Insights: I already subscribed to this particular Check Point Appliance, and if you haven't, you can also subscribe to that, and once you subscribe, you just go and say, "Launch new instance." Now you will go with whatever is default.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 65:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: As the region, I'm using Mumbai.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 66:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So make sure you use proper region there as well.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 67:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It's ap-south-1, and then it will ask you to launch the instance with the regular steps, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 68:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So it will ask you to select the (inaudible) instance.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 69:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So it allows at bare minimum, the c5 size of the instance.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 70:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So I'm using c5 large, which will be the smallest one.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 71:
- Concepts: Inline Network Inspection
- Services: (none explicit)
- Key Insights: Now on the instance details, I'll be using my Network Appliance VPC, and I want to have that in an Appliance subnet, and I don't want public IP.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 72:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Rest of the things I want to keep as it is.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 73:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And here I will go with the default storage.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 74:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this checkpoint instance required a hundred GB of minimum storage.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 75:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Add Tags.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 76:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Let me add some tag.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 77:
- Concepts: Inline Network Inspection
- Services: (none explicit)
- Key Insights: Network Appliance.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 78:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: And then Security Group.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 79:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: Now you have to think what security group you are going to put here.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 80:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I want to allow SSH from my Jump host, so I will keep 192.168.0.0/16.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 81:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Similarly, I want to do the health check on Port 443, because this checkpoint allows health check on 443, so that my load balancer marks it as healthy, and the most important is I want to have the new protocol enabled, and for that, I will have Custom UDP traffic on Port 6081.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 82:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And again, this will come from my load balancer so I can put the CIDR range.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 83:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: So that's what my security group looks like.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 84:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Let's review and let's launch.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 85:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so it will take some time for this instance to be up and running.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 86:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So by that time, let's do some other stuff.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 87:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so now we have this instance running here.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 88:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It will come up in some time.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 89:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: Now let's create this Gateway Load Balancer and attach this Check Point as in target, and then we will create the Gateway Load Balancer endpoint.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 90:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: But for that, we also need to create Gateway Load Balancer Service first.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 91:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: So let's first get Gateway Load Balancer itself.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 92:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, for this, I'm going to ec2 Console.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 93:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I'm going to my load balancers.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 94:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And here in the load balancer, I will just create a load balancer.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 95:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: And this time Gateway Load Balancer, You can give it a name, say, Gateway Load Balancer.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 96:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: That's the simplest name I can think of.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 97:
- Concepts: Inline Network Inspection
- Services: (none explicit)
- Key Insights: And in the VPC, you want to have it in a Network Appliance VPC in ap-south-1a, because that's the only subnet we have in this AC.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 98:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: And you should select the Gateway Load Balancer subnet accordingly.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Inline inspection and network enforcement signal.

Line 99:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And finally you have to send this traffic to the target group, but we don't have any target groups.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 100:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So let's just create a new target group.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 101:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, this is similar to any other load balancer, with some differences, which I'll talk about.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 102:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, you can send the traffic to IP addresses or instances.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 103:
- Concepts: Inline Network Inspection
- Services: (none explicit)
- Key Insights: In this case, you want to send it to our appliance instance.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 104:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: Target group name will be Gateway Load Balancer Target Group and protocol is GENEVE that's what you can't change.
- Hidden/Implicit Meaning: Constraint or limitation signal; Inline inspection and network enforcement signal.

Line 105:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: That's the only protocol is supported.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 106:
- Concepts: Inline Network Inspection
- Services: (none explicit)
- Key Insights: VPC is Network Appliance VPC.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 107:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Health check is TCP.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 108:
- Concepts: Inline Network Inspection
- Services: (none explicit)
- Key Insights: Now, in this case, the checkpoint appliance listens on Port 443.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 109:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: That's where I'm keeping it, 443.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 110:
- Concepts: Inline Network Inspection
- Services: (none explicit)
- Key Insights: Now, depending on your Network Appliance, you should know where you can reach for the health check.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 111:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Rest I'm keeping as default.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 112:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now it shows two instances.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 113:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I'm adding the checkpoint one, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 114:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And the rest of the things already there.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 115:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So let's include.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 116:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this is pending and let's create the target group.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 117:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, while target group is in creation, let's go back to the load balancer.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 118:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Let's refresh this and see if target group appears there.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 119:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Yes, it is there, and I think we are all set to create this load balancer.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 120:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, load balancer is created, and it also gives you hint, what's the next step, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 121:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So you can't directly access the load balancer from the previous VPC because this load balancer is private.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 122:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: Now, remember that Gateway Load Balancer are not public.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 123:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: They are private.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 124:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: That means you would have to create the Gateway Load Balancer endpoint service first, and then you have to create endpoint in your consumer VPC.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 125:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So let's do that now.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 126:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this is load balancer for creating the endpoint service.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 127:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Of course, you need to go to the VPC console and let's go to the endpoint services.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 128:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And here let's create endpoint service.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 129:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: Now endpoint service name is, let's call it Gateway Load Balancer Endpoint Service.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 130:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: This is a gateway.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 131:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It will automatically populate your load balancer name and acceptance, we don't need to be because we are just doing the kind of test setup, but in production, always tick this box.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 132:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: What it means is that if you un-tick this box, anybody can create an endpoint in their consumer VPC and they can connect to your load balancer.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 133:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now you don't want that by default, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 134:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So in production, make sure you tick this box.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 135:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's it.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 136:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: The service is being created.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 137:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now out of this service, what we want is this service name, because we want to create the particular endpoint for this endpoint service.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 138:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, if you're not sure about what I'm talking about, endpoint and endpoint services, please go back and visit the private link session in the earlier sections, okay?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 139:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So now we have this endpoint service and what we want to do is to create endpoint in a consumer VPC.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 140:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: Now for me, the consumer VPC is this, where I want to create this Gateway Load Balancer endpoint.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 141:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So let's do that.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 142:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to the endpoint now and let's create endpoint.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 143:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now this endpoint is not for AWS service, but it is for our own service.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 144:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So let's find the service by name.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 145:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Let's give this service name that we just created.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 146:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It says that service name found.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 147:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: I want to create this in a Application VPC and in the subnet of Gateway Load Balancer endpoint.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 148:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: That's it and just create the endpoint.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 149:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so this will again take a couple of minutes for this endpoint to be enabled.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 150:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: By that time, let's go back to our architecture and see what is there.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 151:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so we created everything possibly, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 152:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: We created Gateway Load Balancer, service, Gateway Load Balancer endpoint, the checkpoint as well.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 153:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: Let's see if Gateway Load Balancer shows this checkpoint as a healthy instance or not.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 154:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And now let's go back to the target groups and see if the instance is healthy.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 155:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Yes, it is.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 156:
- Concepts: Inline Network Inspection
- Services: Gateway Load Balancer
- Key Insights: That means Gateway Load Balancer is successfully able to connect to the Network Appliance.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 157:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And please, pardon the background noise.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 158:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I couldn't find the quiet place this time and sorry about that.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 159:
- Concepts: Inline Network Inspection
- Services: (none explicit)
- Key Insights: Okay, now we have done most of it, and one thing that we want to do is to monitor the traffic that flows through this Network Appliance.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 160:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And for that, if you look at this architecture, I had this Jump host here and I should be SSH into this checkpoint so that I can do a TCP dump on Port 6081 to check if any traffic is flowing through it or not.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 161:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: As of now, we haven't really configured our route tables, so I don't expect traffic to be flowing, but at least let's try to get to the checkpoint instance and observe that traffic through TCP dump.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 162:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, I already have this Jump host and I locked in there.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 163:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And on this Jump host, I also configured the SSH key, with which I created this checkpoint.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 164:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So I just copied the SSH key on this machine and using that SSH key, I will now SSH to this checkpoint instance.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 165:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So let's do that.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 166:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so this is my Jump host and I already have the key here.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 167:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I created it just now, and I want to do SSH using this key, and the username for this checkpoint is admin, and the IP address, you should get the private IP address from AWS console.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 168:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So let's do that.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 169:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to the instances again, or I already have this instance here and let's go to the details, and this is my private IP.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 170:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I'm just putting private IP here and I'm connecting.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 171:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, Check Point has its own console, and in order to run the Linux command, you have to get into the expert mode.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 172:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now this is very specific to the checkpoint and the Network Appliances might have something different, and I had already logged into this with expert mode.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 173:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: The first time you change it to the expert mode, it will ask you to set the password for expert.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 174:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And I already did that, but otherwise you can just fire the command set expert password, and it will ask you the password two times.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 175:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So let me change the mode to the expert and now I get the shell here.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 176:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now let's see if the Port 443 is running so that the health check is successful.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 177:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: We know that already, and you can see the checkpoint 443 port is running and that's where the health check was successful.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 178:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And now let's observe the Port 6081 with the TCP dump.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 179:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So the command will be TCP dump minus nvv and then port number 6081 for the GENEVE protocol.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 180:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And it has started, you know, dumping the traffic for this port.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 181:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: As of now there is no traffic flowing through 6081, and that's where it makes sense that there is no traffic here.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 182:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So leave this console open and see when we do the routing configuration, does the traffic flow through this or not?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 183:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's what our objective is.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 184:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, now comes the most important part of setting up the right routes for this architecture, right?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 185:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: We already have all this set up that you look at, but now let's try to update the route tables.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 186:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now in case of route table, you know that this is a public subnet for Jump host.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 187:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: We don't need to change anything because we are not going to send the Jump host traffic through this Gateway Load Balancer or through a checkpoint.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 188:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So no need to change that, and similarly, on the right side, also, we are not going to touch these two subnets, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 189:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Also, if you talk about the private subnets, we are not going to touch here.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 190:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: There is no need to change here, as well as for the checkpoint also.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 191:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: We don't need to change anything.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 192:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So that means all this two tables are typically on the Application VPC site.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 193:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Very first thing we need to have Ingress route table for your internet gateway, as of now, internet gateway is not attached to any route table.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 194:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And that's where let's first create the Ingress route table for your internet gateway and understand this right, you have to have the entry for this subnet as a destination, and the target should be VPC endpoint.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 195:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: That is this right.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 196:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So let's do that.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 197:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So I'm into my VPC console and let me go to the route tables.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 198:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Let me create a new route table and let me call it Application Ingress Routing and VPC would be Application, that's it.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 199:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: And as in route, I want to add a new route, and I'll say if the traffic is for the 10.0.20.0/24 which is my Application subnet, it should go through the Gateway Load Balancer endpoint, and it automatically gets populated here.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Inline inspection and network enforcement signal.

Line 200:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Just creating route table doesn't help.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 201:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: You have to also associate that with the internet gateway.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 202:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, in this case, it's not subnet association, but it's age association.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 203:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So let's go to the age association, edit that, and just click this internet gateway and save the changes.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 204:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so our Ingress routing has been set up.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 205:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: Let's go back to the architecture and next we want to update the route table for Gateway Load Balancer endpoint.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 206:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And here we have to make change that if the traffic is going to the internet, it has to go through the internet gateway.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 207:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: But I think this is already there because we had anyways created this subnet as a public subnet, but let's just verify that.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 208:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So I'm into the subnet.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 209:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: Let me go to the Gateway Load Balancer endpoint subnet, and let me check the route table, and there is already this route table through internet gateway.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 210:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Understand that this is used for the return traffic, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 211:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I had explained that earlier.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 212:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, now let's go back to the architecture again.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 213:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And this time we have one more route table, which is for the Application, and this is the most important one.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 214:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Here, all the traffic should be routed through VPC endpoint, which is an outbound traffic for this application.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 215:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So let's do that as well.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 216:
- Concepts: Inline Network Inspection
- Services: (none explicit)
- Key Insights: So this is my Appliance, not this one.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 217:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this is my Application subnet and I have got a bonding entry for internet gateway, but I will change that.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 218:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: For that, I will go to this route table of my application subnet and if you look at the routes, it has a route for internet gateway, but let's modify that.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 219:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: And instead of internet gateway, it should be the Gateway Load Balancer endpoint.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Inline inspection and network enforcement signal.

Line 220:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Just select that and save the changes.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 221:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: That's it.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 222:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I think we are good with the route tables and now let's do the final test.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 223:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Let me get into the Application instance.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 224:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: For this, I have already SSH to this Jump host and from the Jump host, I got the SSH key of this application machine here and using that SSH key, I already SSH'd into this application instance.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 225:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, I'm into the application host, and now from here, let me try to ping to amazon.com, and I just threw that.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 226:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now traffic is not getting back to me because maybe firewall is blocking that, but let's see if checkpoint is intercepting this traffic or not.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 227:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So I can see here that the traffic already started showing up here, and you can also verify the source IP, which is 10.0.20.113, which was my application IP.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 228:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And we can very well verify that from AWS console as well.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 229:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So I'm into the AWS console and this is my application, ec2 machine, and this is the IP address, and that's where you can see now the traffic is going from my ec2 instance to the checkpoint, but it is not going out because checkpoint is dropping that.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 230:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now you have to do that configurations on the checkpoint on a cloud guard, ec2 machine that all the traffic for the pin should be allowed, but that is out of scope of this particular exercise, and if you know how to configure checkpoint, then go ahead and do those configuration by yourself.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 231:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So that's it about this lab.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 232:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: In this lab, we could successfully set up the Gateway Load Balancer, and we then saw how the traffic flows through.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 233:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, if you're to implement this on your own, I have also given these steps at very high level, and I'm sure you will be able to set this up by yourself.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 234:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So these steps are already documented here with this presentation, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 235:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: So I hope things are clear to you now, and with that, we will move towards now few additional details about the Gateway Load Balancer that you should know for your exam, and we will now cover that.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Inline inspection and network enforcement signal.

Line 236:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So thanks for watching and stay tuned.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

### File: outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/230_Summary_ Gateway Load Balancer.txt

Line 1:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 2:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: Let's look at the quick summary of the Gateway Load Balancer So the Gateway Load Balancer is used to deploy, scale and manage the fleet of third party network appliances in AWS.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 3:
- Concepts: Inline Network Inspection
- Services: (none explicit)
- Key Insights: And this network appliances could be Firewalls, Intrusion Detection and Prevention Systems, Deep Packet Inspection Systems, or payload manipulation softwares.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 4:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And you very well know this, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 5:
- Concepts: Network Security Operational Context
- Services: Elastic Load Balancing, Gateway Load Balancer
- Key Insights: And Gateway Load Balancer operates at Layer 3, that is at Network Layer, as opposed to the Application Load Balancer, which operates at Layer seven of OSI model or NLB which operates at layer four.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 6:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: And you know that Gateway Load Balancer uses the Layer 3 encapsulation protocol that is GENEVE protocol.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 7:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now it's a transparent network gateway, which acts as a single entry and exit point for all the traffic.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 8:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: It also load balances the traffic and scales virtual appliances on demand which wasn't possible earlier because there was no provision to load balance the traffic across network appliances, but then Gateway Load Balancers solve that problem And Gateway Load Balancer integrates with industry leading partners, like Aviatrix, Cisco Systems, Fortinet, Palo Alto Networks, Checkpoints.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 9:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And you can check the list of all the partners here in this URL.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 10:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: Which also means that these partners have modified their virtual appliances to integrate with Gateway Load Balancer so that they support the GENEVE protocol as well.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 11:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: So that's about the Gateway Load Balancer in short and next let's look at some important points you need to remember for your exam.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Inline inspection and network enforcement signal.

Line 12:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So thanks for watching.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

### File: outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/231_Gateway Load Balancer - Exam Essentails.txt

Line 1:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: Okay, so now let's look at some important points with respect to the exam for Gateway Load Balancer.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Inline inspection and network enforcement signal.

Line 2:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: So as you know, Gateway Load Balancer has a listener and it listens for all traffic and all ports.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 3:
- Concepts: Network Security Operational Context
- Services: Elastic Load Balancing, Gateway Load Balancer
- Key Insights: That means you can't really change that unlike ALB or Network Load Balancer, you could configure your listener and configure the port on which the load balancer will listen, but in case of Gateway Load Balancer, it listens for all packet across all ports and you can't even specify the protocol or port there.
- Hidden/Implicit Meaning: Constraint or limitation signal; Inline inspection and network enforcement signal.

Line 4:
- Concepts: Network Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: And you can only specify the rule for routing the request to the target group, that means there are URL best routing or host based routing like in ALB and finally, the listener cannot be deleted.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 5:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: That means it comes along with your Gateway Load Balancer.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 6:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Further you have the target groups like other load balancers and this target groups could have targets as EC2 instances, which can be managed by auto scaling group or this could be applied with IP addresses.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 7:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: Now the traffic between Gateway Load Balancer and its targets are exchanged using the GENEVE protocol that you know and this happens over UDP port 6081.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 8:
- Concepts: Inline Network Inspection
- Services: (none explicit)
- Key Insights: And that means the network appliance must support the UDP traffic on port 6081.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 9:
- Concepts: Inline Network Inspection
- Services: Gateway Load Balancer
- Key Insights: Now Gateway Load Balancer also maintains the stickiness of flow to a specific target appliance using 5-tuple for TCP and UDP flow.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 10:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: 5-tuple means the source IP address, the source port, destination IP address, destination port, and the protocol.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 11:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: But if it is not a TCP or UDP flows, then it only does the stickiness using 3-tuple, that means source IP, destination IP, and the protocol.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 12:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And you know that it also supports the health check.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 13:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And for health check, you can have HTTP or HTTPS or TCP traffic.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 14:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, in case of our exercise, we had used TCP port 443.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 15:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: Moving on the Gateway Load Balancer doesn't support the public load balancer.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 16:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: That means they are internal only and there is no public DNS (indistinct).
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 17:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: And that's why you can't really reach to the Gateway Load Balancer directly, instead you have to first create the Gateway Load Balancer endpoint service, and then you have to create endpoint to send the traffic to the Gateway Load Balancer.
- Hidden/Implicit Meaning: Constraint or limitation signal; Inline inspection and network enforcement signal.

Line 18:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It doesn't also support the dual stack mode, as of now, it is only supported for IPv4 traffic only.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 19:
- Concepts: Stateful and Stateless Filtering
- Services: Gateway Load Balancer, Security Group
- Key Insights: And there is no security group as you'll see while creating the Gateway Load Balancer we never set up the security group.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Inline inspection and network enforcement signal; Boundary filtering and segmentation signal.

Line 20:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: So there are no security groups and ultimately that means the target which are the receiving the traffic should have the security groups which allows the traffic to come from the Gateway Load Balancer itself.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Inline inspection and network enforcement signal; Boundary filtering and segmentation signal.

Line 21:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: If you talk about the MTU, the Gateway Load Balancer supports the MTU of 8500 byte, and which means that you can send larger packet through this Gateway Load Balancer thereby improving the network performance.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 22:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: So that's it about the Gateway Load Balancer that you need to know.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 23:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, just one more thing I want to add here is that we have seen a lot of services.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 24:
- Concepts: Network Security Operational Context
- Services: Elastic Load Balancing, Gateway Load Balancer
- Key Insights: Now, Gateway Load Balancer is different to ALB or NLB.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 25:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It is specifically used to send the traffic to a network appliances.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 26:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall
- Key Insights: Now you might also ask, we also have AWS Network Firewall then what's the use of it?
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 27:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall, Gateway Load Balancer
- Key Insights: Now understand that Network Firewall is a fully managed firewall by AWS, but in case of Gateway Load Balancer, you are using third-party network firewalls or appliances.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 28:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So that's the difference between these two that you need to remember.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 29:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall, Gateway Load Balancer
- Key Insights: So according to the scenario, you should be able to choose whether it's a Gateway Load Balancer you will be using or the AWS Network Firewall you will be using or other load balancer that you will be using.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Inline inspection and network enforcement signal.

Line 30:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So I hope that is clear.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 31:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And with that, let's wrap this session.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 32:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Thank you.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

### File: outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/232_AWS Certificate Manager (ACM).txt

Line 1:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Hi.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 2:
- Concepts: Transport Trust and Certificates
- Services: AWS Certificate Manager
- Key Insights: In this lecture let's try to understand what is ACM and how does it help you to secure the network communication.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 3:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: Now if you ever heard about the SSL that is secure socket layer or the TLS Transport Layer Security, they provide the security to the layer seven traffic.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 4:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 5:
- Concepts: Transport Trust and Certificates
- Services: AWS Certificate Manager
- Key Insights: And to enable the SSL or TLS you need SSL X509 certificates and ACM provides those certificates.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 6:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So I hope you already aware of these concepts.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 7:
- Concepts: Transport Trust and Certificates
- Services: AWS Certificate Manager
- Key Insights: If not, I will just quickly talk about that and then we will see more about the ACM.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 8:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So very basic example I can give is the Http traffic.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 9:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And you know that you shouldn't transact if your bank website is Http or other, you shouldn't access any website which is over Http.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 10:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: That's because Http sends the traffic over the plaintext.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 11:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So if you are doing some transaction, your credentials can be easily hacked.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 12:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 13:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this is not the great situation to be in.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 14:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So what do you do.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 15:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: You turn to Https.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 16:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: Now when you turn to Https it underlying using the SSL or TLS protocol to protect your communication.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 17:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So once you do that, all the communication goes over the encrypted channel.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 18:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And to make this communication secure there are three basic principle the authenticity the integrity and the privacy of the communication.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 19:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: But here let's just try to understand the authenticity because it is helpful to understand the concept of SSL TLS certificates.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 20:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So authenticity means that client is talking to the right server.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 21:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So server has to prove that it is a legitimate server.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 22:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So how that happens.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 23:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: So that happens through something called SSL or TLS certificate.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 24:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: So server has that certificate.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 25:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And server also has corresponding private key which never leaves the server.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 26:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: And the first time when client connects to the server the server will send this certificate back to the client.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 27:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: So now the question is client has the certificate.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 28:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: And that certificate tells the client that it is communicating with the some bank.com.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 29:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: But the question is why will client trust that certificate?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 30:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: And for exactly that reason, this certificate has to be signed by someone to which this client also trust.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 31:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: And that's where certificate authority comes into the play.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 32:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: So this some bank.com will first get this certificate signed by the certificate authority and now send it to the client.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 33:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And client already trusts this CA.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 34:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now how this happens and what all other steps are there to have the integrity and privacy in the communication.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 35:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I have explained this in very, very detail in my one of the video on the YouTube.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 36:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So if interested please go and watch that.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 37:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: There is also link in the description of this channel for this YouTube video.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 38:
- Concepts: Transport Trust and Certificates
- Services: AWS Certificate Manager
- Key Insights: But as of now, our focus is only on this SSL certificate which ACM can provide you.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 39:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: Okay, so what's the typical process to get these SSL certificates.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 40:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So very first thing is you need to have your own domain name.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 41:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And you can buy this domain name from anyone like Globalsign or GoDaddy or even from Amazon route 53.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 42:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: Once you buy the domain name, you need to request a certificate.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 43:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now for that.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 44:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: Typically, you will create a public key and a private key pair using open SSL, and then you will submit the certificate signing request to the CA that is certificate authority.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 45:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: The certificate authority will validate that you own the domain name and will sign that request and issue you a certificate.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 46:
- Concepts: Transport Trust and Certificates
- Services: AWS Certificate Manager
- Key Insights: Now there are well known certificate authorities, but we will be talking about AWS Certificate Manager here.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 47:
- Concepts: Transport Trust and Certificates
- Services: AWS Certificate Manager
- Key Insights: Now as you use AWS Certificate Manager, it's much simpler to get the certificate.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 48:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: Basically you just request a public certificate and it will validate your domain ownership and it will issue you the certificate.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 49:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: Now one thing to understand here is that here we are talking about the public SSL or TLS certificate, which means certificate which are trusted by all the clients, which connects to your application over the internet.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 50:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: But many a times you need the internal communication to be made secure.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 51:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: For example, within your AWS VPCs there are a lot of machines like application server is talking to the database or all other application server talking to each other.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 52:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now this is all internal communication to the VPC.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 53:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: Now in that case, you don't need to have the public SSL certificate, but rather you can have your self-signed SSL certificate.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 54:
- Concepts: Transport Trust and Certificates
- Services: AWS Certificate Manager
- Key Insights: Or you can get this private certificate from AWS private CA, which is a different offering than the ACM.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 55:
- Concepts: Transport Trust and Certificates
- Services: AWS Certificate Manager
- Key Insights: And in this lecture we are primarily focusing on the ACM.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 56:
- Concepts: Transport Trust and Certificates
- Services: AWS Certificate Manager
- Key Insights: That is public certificate part of the Amazon Certificate Manager.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 57:
- Concepts: Transport Trust and Certificates
- Services: AWS Certificate Manager
- Key Insights: So just to reiterate, there are two parts of the AWS Certificate Manager the ACM, which issues the public certificate.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 58:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And this certificates can be deployed on AWS managed services, for example load balancers or CloudFront or API gateways.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 59:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Likewise.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 60:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: But for internal use you can use AWS private CA where you get much more control with respect to the certificate validity.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 61:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: The domain names the root CA, the subordinate CA, the revocation of the certificate, all that is handled by you using AWS private CA and this is typically called the PKI.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 62:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: That is public key infrastructure.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 63:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: You can also use this private certificate as a client certificate.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 64:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: That means you can issue this certificate into the smartcard.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 65:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And then employee can log in with their smart card into their system.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 66:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: Or if you have IoT devices and you have mQTT endpoints, then also you can deploy this private certificate to your IoT devices.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 67:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now all these are the use cases of the private CA.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 68:
- Concepts: Transport Trust and Certificates
- Services: AWS Certificate Manager
- Key Insights: But in this lecture we are focusing on the ACM which issues the public certificate for your AWS managed services.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 69:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So I hope this distinction is clear.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 70:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so in general when we talk about the AWS services where you can deploy these certificates.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 71:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: So let's see that now the first one is you directly want to deploy your certificate on the EC2 machines.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 72:
- Concepts: Transport Trust and Certificates
- Services: AWS Certificate Manager
- Key Insights: Now ACM which provides a public certificate doesn't allow that because you can't export the ACM certificate and deploy it on EC2 machines or ECS cluster.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 73:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: If you want to do that, you have to use your self-signed certificates.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 74:
- Concepts: Transport Trust and Certificates
- Services: AWS Certificate Manager
- Key Insights: So this is out of scope for the ACM public certificates.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 75:
- Concepts: Transport Trust and Certificates
- Services: AWS Certificate Manager
- Key Insights: But if your workloads are behind the load balancer or API gateway or CloudFront or Beanstalk, and there are more services which are called integrated services with the ACM, then you can get these certificates and deploy that on any of these resources.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 76:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: Now in this case, you can see the SSL termination happens over the load balancer.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 77:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And from the load balancer to the back end the traffic can be over simple Http.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 78:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It need not be encrypted because all these resources sits within the VPC.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 79:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 80:
- Concepts: Transport Trust and Certificates
- Services: AWS Certificate Manager
- Key Insights: So let's quickly talk about few features of the ACM.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 81:
- Concepts: Transport Trust and Certificates
- Services: AWS Certificate Manager
- Key Insights: And to be honest, the deep dive of ACM should be part of AWS security certification than the network certification.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 82:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: But let's here cover what is important for your network certification exam.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 83:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 84:
- Concepts: Transport Trust and Certificates
- Services: AWS Certificate Manager
- Key Insights: So ACM as you know, provides the SSL TLS certificates which you can deploy on this supported AWS services.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 85:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And this is very seamless.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 86:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: For example, if you are using application load balancer you have to just create the Https listener.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 87:
- Concepts: Transport Trust and Certificates
- Services: AWS Certificate Manager
- Key Insights: And there it will show an option to import the certificate, which is created in the ACM.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 88:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: You just apply that and that's it right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 89:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Nothing else needs to be done.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 90:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Same for the CloudFront or API gateways.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 91:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: Now you can also request the wildcard certificate.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 92:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: For example you have your company domain name and then you can say API dot example.com or say web dot example.com.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 93:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Instead of having multiple certificates, you can just have star dot example.com.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 94:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: And same certificate can be applied for all those endpoints.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 95:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: And just one thing that you need to remember is that whenever you are using your certificate for the CloudFront service, which is a global service, you have to create this certificate in the US East, one that is Northern Virginia region.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 96:
- Concepts: Transport Trust and Certificates
- Services: AWS Certificate Manager
- Key Insights: ACM is a regional service.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 97:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: That means if you are using it for the load balancer, you have to create that certificate in that particular region.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 98:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 99:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So just remember this small bit here.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 100:
- Concepts: Transport Trust and Certificates
- Services: AWS Certificate Manager
- Key Insights: And as you can see here, you have administrator who can issue the certificate through the ACM.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 101:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: And then this certificate can be deployed to different AWS services.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 102:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: And then users terminate their SSL connection on that endpoint.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 103:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 104:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So I hope that is clear.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 105:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now a few more things and then we will wrap this session up.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 106:
- Concepts: Transport Trust and Certificates
- Services: AWS Certificate Manager
- Key Insights: So with ACM you know that you can have wild card certificate.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 107:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: But wild card cannot be in the middle of the domain name.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 108:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So app dot star dot example.com is not allowed.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 109:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: But star dot app dot example.com is allowed.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 110:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So remember this further all these certificates.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 111:
- Concepts: Transport Trust and Certificates
- Services: AWS Certificate Manager
- Key Insights: And here again we are talking about the public ACM certificates not the private CA.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 112:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: All the certificates are signed by the AWS Trust Services CA.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 113:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: So AWS has a well known certificate authority which is trusted by most of our browsers and the devices.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 114:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And that's where all these certificates, which are signed by the AWS root CAS, are automatically trusted by all leading browsers like Chrome and Microsoft.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 115:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: So you don't get that small warning that your certificate is not trusted because it is signed by AWS Trusted Root CAS.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 116:
- Concepts: Transport Trust and Certificates
- Services: AWS Certificate Manager
- Key Insights: Further, the public certificate issued through ACM are valid for 13 months, but in case you need higher validity or customize the certificates, then of course you need to go with the private CA which is totally different entity.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 117:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And there is a lot of cost for the private CA.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 118:
- Concepts: Transport Trust and Certificates
- Services: AWS Certificate Manager
- Key Insights: The public certificate through ACM are free to use with all those supported AWS services.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 119:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now for the renewal of the certificates.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 120:
- Concepts: Transport Trust and Certificates
- Services: AWS Certificate Manager
- Key Insights: ACM will automatically do that if you are using it on the Elbe and the CloudFront.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 121:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Likewise.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 122:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 123:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: And it automatically renews that if you are using the domain validation method, if you are using email validation, then it will start sending you the email about your expiration around 45 days before the actual expiration of the certificate.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 124:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: Then you have to take certain actions to renew your certificate.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 125:
- Concepts: Transport Trust and Certificates
- Services: AWS Certificate Manager
- Key Insights: But again here ACM will renew that just that you need to tell ACM to renew your certificate.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 126:
- Concepts: Transport Trust and Certificates
- Services: (none explicit)
- Key Insights: And finally you can also import your own certificate.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 127:
- Concepts: Transport Trust and Certificates
- Services: AWS Certificate Manager
- Key Insights: For example, you already got a certificate which is signed by some well-known uh CA then you can import that certificate along with its private key, so that ACM can then associate that with the AWS resources and can handle the TLS termination.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 128:
- Concepts: Transport Trust and Certificates
- Services: AWS Certificate Manager
- Key Insights: But otherwise, for the certificates which are issued by the ACM, it never gives you the private key it keeps with itself.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 129:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 130:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So that's the difference.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 131:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So I hope that is clear.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 132:
- Concepts: Transport Trust and Certificates
- Services: AWS Certificate Manager
- Key Insights: And you now know what is ACM and where to use ACM certificates.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 133:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So with that we'll stop here for this lecture and see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 134:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Thank you.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

### File: outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/233_AWS Firewall Manager.txt

Line 1:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Hi.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 2:
- Concepts: DDoS and Edge Defense, Inline Network Inspection, Layer 7 Threat Protection, Stateful and Stateless Filtering
- Services: AWS Network Firewall, AWS Shield, AWS WAF, Gateway Load Balancer, Security Group
- Key Insights: So in this section so far we talked about different firewalls starting with security group network ACLs, then AWS Network firewall, Web Application Firewall, and then AWS Shield and Shield Advance, and also Gateway Load Balancer through which you can use third party firewalls.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal; Inline inspection and network enforcement signal; Boundary filtering and segmentation signal.

Line 3:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So it works well when you have, say, 1 or 2 AWS accounts where you can go and configure these firewalls.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 4:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: But imagine a situation where there are hundreds of AWS accounts, and then you have to have consistent network security policies or firewalls deployed across those AWS accounts.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 5:
- Concepts: Centralized Policy Governance
- Services: (none explicit)
- Key Insights: And as you might have guessed, in that case, you need a centralized service which can manage this firewall across all these accounts.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 6:
- Concepts: Centralized Policy Governance
- Services: AWS Firewall Manager
- Key Insights: And that's where AWS Firewall Manager is used.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 7:
- Concepts: Centralized Policy Governance
- Services: AWS Firewall Manager
- Key Insights: So AWS Firewall Manager is a security management tool which simplifies the security, administration and maintenance tasks across AWS accounts and resources.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 8:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: When I say resources, that means which AWS resource you are protecting.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 9:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Uh, using the firewall.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 10:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall
- Key Insights: For example, security groups of EC2 instances or network load balancer or particular route 53 hosted zones or particular instance behind the network firewall.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal; Boundary filtering and segmentation signal.

Line 11:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Likewise.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 12:
- Concepts: Centralized Policy Governance, DDoS and Edge Defense, Inline Network Inspection, Layer 7 Threat Protection
- Services: AWS Firewall Manager, AWS Network Firewall, AWS Shield, AWS WAF
- Key Insights: So AWS Firewall Manager can manage the rules for AWS WAF shield, advanced VPC Security Groups, Network Firewall, and route 53 resolver DNS firewall.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal; Inline inspection and network enforcement signal; Boundary filtering and segmentation signal.

Line 13:
- Concepts: Centralized Policy Governance
- Services: (none explicit)
- Key Insights: Now it works at AWS organization level.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 14:
- Concepts: Centralized Policy Governance
- Services: (none explicit)
- Key Insights: That means if you are adding new AWS account to AWS organization, then all the policies are automatically applied to that new account as well.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 15:
- Concepts: Centralized Policy Governance
- Services: AWS Firewall Manager
- Key Insights: So if you are aware of the concept of AWS landing zone, this is kind of goes well with the landing zone concept, where you can centrally manage the firewall policies through the AWS Firewall Manager.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 16:
- Concepts: Centralized Policy Governance, DDoS and Edge Defense
- Services: AWS Firewall Manager
- Key Insights: And additionally, Firewall Manager also provides you the centralized dashboard for monitoring the DDoS attacks.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 17:
- Concepts: Centralized Policy Governance
- Services: (none explicit)
- Key Insights: Now again, this is across all your accounts within the AWS organization.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 18:
- Concepts: Centralized Policy Governance
- Services: AWS Firewall Manager
- Key Insights: So in order to use firewall manager, you have to do some prerequisites.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 19:
- Concepts: Centralized Policy Governance
- Services: (none explicit)
- Key Insights: For example, you have to enable the AWS organization.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 20:
- Concepts: Centralized Policy Governance
- Services: (none explicit)
- Key Insights: That is all features of AWS organization.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 21:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: You have to enable the AWS config service, which is basically, you know, inventory of your all AWS resources, and it tracks the changes to your AWS resources.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 22:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: For example, if you change the security group, it is recorded in AWS Config service.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 23:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So you have to enable this service as well.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 24:
- Concepts: Centralized Policy Governance
- Services: (none explicit)
- Key Insights: And then you have to enable the sharing of AWS resources across your AWS organization.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 25:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And that is done through AWS Resource Access Manager.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 26:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: That is Ram.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 27:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 28:
- Concepts: Centralized Policy Governance
- Services: AWS Firewall Manager
- Key Insights: So once you have the AWS Firewall Manager, then what you do, you write the policies and rules.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 29:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: In this.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 30:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: You define that what kind of firewall I want to deploy in which all AWS accounts and for which all AWS resources.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 31:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So you define the scope and then once scope is defined, you can also define the actions if there are any compliance violations.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 32:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: For example, if you define the rules, say none of the security group in your AWS account should have port 22 open to the internet.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Boundary filtering and segmentation signal.

Line 33:
- Concepts: Centralized Policy Governance, Stateful and Stateless Filtering
- Services: AWS Firewall Manager, Security Group
- Key Insights: So if you now create a new security group which has the port 22 open, then firewall manager will detect that and one it will trigger the notification saying that there is a compliance violation.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 34:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: And second, it can automatically remove that rule from the security group.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 35:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now it really depends on you whether you want to implement the automated remediation or not or otherwise.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 36:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: You can definitely have the detection mechanism in place.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 37:
- Concepts: Centralized Policy Governance
- Services: AWS Firewall Manager
- Key Insights: So this is how Firewall Manager works okay.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 38:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So again with respect to the services that it supports.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 39:
- Concepts: DDoS and Edge Defense, Inline Network Inspection, Layer 7 Threat Protection, Stateful and Stateless Filtering
- Services: AWS Network Firewall, AWS Shield, AWS WAF, Security Group
- Key Insights: So it supports VPC security Group, Web Application Firewall, AWS shield Advanced Network Firewall and AWS route 53 resolver DNS firewall.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal; Inline inspection and network enforcement signal; Boundary filtering and segmentation signal.

Line 40:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now we will see resolver DNS firewall in the route 53 section.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 41:
- Concepts: Centralized Policy Governance, Inline Network Inspection
- Services: AWS Network Firewall
- Key Insights: But essentially that means network firewall can manage all the rules and policy for all these AWS services.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 42:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now additionally, you can also use third party firewall.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 43:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: For example, you can subscribe to AWS marketplace and you will see a lot of firewall options in there.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 44:
- Concepts: Centralized Policy Governance
- Services: AWS Firewall Manager
- Key Insights: So if you want to manage, say, Palo Alto Cloud, Next Generation firewall or Fortigate Cloud Native firewall, then they can also be managed centrally using the firewall manager.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 45:
- Concepts: Centralized Policy Governance
- Services: AWS Firewall Manager
- Key Insights: And as I said, firewall manager can detect the any violation to the compliances.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 46:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And it can also perform the action to remediate that.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 47:
- Concepts: Centralized Policy Governance
- Services: AWS Firewall Manager
- Key Insights: So all this can be recorded in AWS Security Hub through the notifications from the firewall manager.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 48:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And then in the security hub you can further integrate with your ticketing system.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 49:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: For example, you will automatically create a JIRA ticket or you can centrally, you know, view all the violations in the dashboard that Security Hub provides.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 50:
- Concepts: Centralized Policy Governance
- Services: AWS Firewall Manager
- Key Insights: So this is how you typically work with AWS Firewall Manager.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 51:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 52:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So in this section we talked about a lot of things.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 53:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And many a times it is overwhelming with respect to all the AWS security services out there.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 54:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And we haven't still talked about few of the other AWS services.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 55:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: But often the question comes when to use what.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 56:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So I just try to, you know, put some guidelines here.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 57:
- Concepts: Layer 7 Threat Protection
- Services: AWS WAF
- Key Insights: So for example, if you want to have a quick and easy way to deploy the firewall for protecting the web application at layer seven, then you should rather use AWS Web Application Firewall, that is WAF.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Application-edge and DDoS defense signal.

Line 58:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now the keyword here is easy and quick.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 59:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And layer seven attacks, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 60:
- Concepts: DDoS and Edge Defense
- Services: AWS Shield
- Key Insights: Similarly, if you want to do that for the DDoS attacks, you might have guessed it should be AWS Shield Advance.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Application-edge and DDoS defense signal.

Line 61:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall
- Key Insights: And if you need more sophisticated firewall for your VPCs for IPS and IDs systems, then you should use AWS Network Firewall.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Inline inspection and network enforcement signal.

Line 62:
- Concepts: Network Security Operational Context
- Services: Gateway Load Balancer
- Key Insights: And if you need any third party IPS and IDs systems so that you can bring in into your VPC and you can route your traffic through those third party firewalls, then you should be using AWS Gateway Load Balancer.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Inline inspection and network enforcement signal.

Line 63:
- Concepts: Centralized Policy Governance
- Services: AWS Firewall Manager
- Key Insights: And if you want to manage everything at one place centrally, then you should be using AWS Firewall Manager.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 64:
- Concepts: Centralized Policy Governance
- Services: AWS Firewall Manager
- Key Insights: So Firewall manager itself doesn't provide you the firewall.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 65:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It is just a management of firewall, which means all these AWS services that you see are not mutually exclusive, but you can typically use them together in different architecture because the purpose is different.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 66:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 67:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So I hope this short summary also helps you build that mental model around different AWS network security services.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 68:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And you should be able to.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 69:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Use right answer in your exam based on what we covered in this section.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 70:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 71:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So with that we'll stop for this lecture and let's see what's next there for us.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 72:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Thanks for watching and stay tuned.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/27_Networking - VPC/331_NACL & Security Groups.txt

Line 1:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so let's go for a very long lecture on Security Groups and Network ACLs or NACLs.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 2:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: So let's take an example of a subnet and we know when you have an EC2 instance that we attach a security group to it.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 3:
- Concepts: Stateful and Stateless Filtering
- Services: Network ACL
- Key Insights: But there is an extra level of protection on the subnet that we haven't seen yet, which is your network ACL or NACL.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 4:
- Concepts: Stateful and Stateless Filtering
- Services: Network ACL
- Key Insights: And let's take an example to really understand the role of a NACL in an incoming request.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 5:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So a request goes to your EC2 instance, now what is happening from a network perspective?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 6:
- Concepts: Stateful and Stateless Filtering
- Services: Network ACL
- Key Insights: Well, first the request is going to make it to the NACL before going into the subnets.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 7:
- Concepts: Stateful and Stateless Filtering
- Services: Network ACL
- Key Insights: And so there are going to be some inbound rules on the NACL that are going to be defined.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 8:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And if the request is not allowed, then the request doesn't go in.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 9:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And if it is allowed, then it will go in, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 10:
- Concepts: Stateful and Stateless Filtering
- Services: Network ACL
- Key Insights: So the NACL is stateless.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 11:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So we'll see what that means in a second.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 12:
- Concepts: Stateful and Stateless Filtering
- Services: Network ACL, Security Group
- Key Insights: So the first request goes through the NACL and then it reaches inside the subnets and it goes through the security group inbound rules, okay.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 13:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So we know how this works.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 14:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So again, if the request is not allowed explicitly then it is denied.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 15:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: Now something about security group is that they are stateful.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 16:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: So remember NACLs are stateless and security groups are stateful.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 17:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So what does that mean?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 18:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: That means that if the request makes it through the inbound rules of the security group and makes it to the EC2 instance, the EC2 instance will then reply with whatever reply there is to do for the application perspective.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 19:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: And then the outbound is automatically going to be accepted at the security group level.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 20:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: This is because the security group is stateful.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 21:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: That means whatever is accepted in can go also out.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 22:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So here, there is no rules being evaluated.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 23:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: And the security group outbound rules are not mattering in this example.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 24:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: So now that we know that the outbound at the security group level is always allowed because it's stateful, what happens still?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Boundary filtering and segmentation signal.

Line 25:
- Concepts: Stateful and Stateless Filtering
- Services: Network ACL
- Key Insights: Well the NACL is not stateful, it is stateless, and therefore, because it is stateless then the NACL outbound rules are going to be evaluated.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 26:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And again, if they are not passing, then the request will not make it through.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 27:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this is for an incoming request.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 28:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: Now let's go through the same scenario, but for an outgoing request, and you can try doing this on your own by pausing the video, just to see if you understand the difference between stateful and stateless.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 29:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 30:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Did you try?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 31:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, let's go.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 32:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: So the security group this time, so the EC2 instance is making an outbound request.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 33:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So it's doing a request to the outside.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 34:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: And so the EC2 instance will first maybe use, for example, connect to www.google.com, and so therefore the first rules that are going to be evaluated are the security group outbound rules.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 35:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So is the traffic allowed out from the EC2 instance to the web?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 36:
- Concepts: Stateful and Stateless Filtering
- Services: Network ACL
- Key Insights: Then if the rules are good and the request is allowed, then the request goes through the NACL outbound rules as well.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 37:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So they're evaluated.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 38:
- Concepts: Stateful and Stateless Filtering
- Services: Network ACL
- Key Insights: Then the request reaches www.google.com, it comes back to Amazon web services, and obviously the NACL is stateless and therefore the NACL inbound rules are going to be evaluated.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 39:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: And finally, while the inbound within the subnet at the security level is also going to be allowed no matter what, because of the statefulness of your security group rules.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 40:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: So here the inbound rules of your security group do not make a difference because the admin roles was already accepted and your security group is stateful.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 41:
- Concepts: Stateful and Stateless Filtering
- Services: (none explicit)
- Key Insights: So hopefully that is a very clear explanation between stateful and stateless.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 42:
- Concepts: Network Security Operational Context
- Services: Network ACL
- Key Insights: So what are Network Access Control List, NACLs?
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 43:
- Concepts: Stateful and Stateless Filtering
- Services: Network ACL
- Key Insights: Well they're like a firewall that control the traffic to and from the subnet level, and you have one NACL per subnet, and each new subnet will be assigned the default NACL.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 44:
- Concepts: Stateful and Stateless Filtering
- Services: Network ACL
- Key Insights: We'll have a look at the default NACL in the next slide.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 45:
- Concepts: Stateful and Stateless Filtering
- Services: Network ACL
- Key Insights: So you define NACL rules and rules have a number from one to 32,000 and so.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 46:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And there's a higher precedence with a lower number, so one is the highest priority and the latest is 32,000 and so on.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 47:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And the first rule match will drive the decision, okay.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 48:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So for example, if you define allow on this CIDR and deny on the same CIDR, so a specific IP, but the allow is 100 and the deny is 200, the IP address will be allowed because 100 as a higher precedence over 200.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 49:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: In that case, the first rule match will drive the decision.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 50:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: The less rule is an asterisk and will deny any request in case of no rules match.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 51:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, AWS recommends adding rules by increments of 100.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 52:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And the reason is that if you want to add rules in between then, you are fine.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 53:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so newly created NACLs will deny everything by default.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 54:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And NACLs have a very, very good use case.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 55:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: They're great for blocking a specific IP address at the subnet level.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 56:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So NACLs in this diagram, where are they?
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 57:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So we have this diagram we know about, but NACLs again are at the subnet level.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 58:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And so we can have NACLs at the public subnet, private subnet level and so on.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 59:
- Concepts: Stateful and Stateless Filtering
- Services: Network ACL
- Key Insights: So the default NACL is super important because it can come up in the exam.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Boundary filtering and segmentation signal.

Line 60:
- Concepts: Stateful and Stateless Filtering
- Services: Network ACL
- Key Insights: And the default NACL has this one specificity that it accepts everything inbound and outbound with the subnets it's associated with.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 61:
- Concepts: Stateful and Stateless Filtering
- Services: Network ACL
- Key Insights: So this is what the default NACL looks like for the IPv4.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 62:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It allows everything out and everything in.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 63:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And that makes sense, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 64:
- Concepts: Stateful and Stateless Filtering
- Services: Network ACL
- Key Insights: Because if the NACL was not allowing everything in and everything out then we would have do some serious debugging to do when we get started with AWS.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 65:
- Concepts: Stateful and Stateless Filtering
- Services: Network ACL
- Key Insights: But the default NACL is very open.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 66:
- Concepts: Stateful and Stateless Filtering
- Services: Network ACL
- Key Insights: Now my recommendation is to not modify the default NACL.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 67:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Instead, if you want to have some custom Network ACLs, then create a custom one.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 68:
- Concepts: Stateful and Stateless Filtering
- Services: Network ACL
- Key Insights: Okay, but if the exam mentions to you, that there is a default NACL, just know that by default this NACL will disassociate it with subnets.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 69:
- Concepts: Stateful and Stateless Filtering
- Services: Network ACL
- Key Insights: If this NACL is associated with subnets, sorry, then it will allow everything in and everything out.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 70:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so now let's go into the important concept of Ephemeral Ports.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 71:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So when you have a client and a server connecting together, they must use port.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 72:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So we have IP address and ports, and the clients connect to the server on the defined port.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 73:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So we know for example, that the HTTP port is 80, the HTTPS port is four, four, three, the SSH port is 22 and so on.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 74:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So when we have a server that exposes a service, then the client connects to a defined ports, except though that the clients needs a reply back from the server.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 75:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So the server also needs to connect to the clients to send a response.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 76:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And the client does not have any open port by default.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 77:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So what it does that when the client is connecting to a server, the client will open a specific ports on itself.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 78:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And this port is ephemeral because it's just a port that will be as long lived as the connection is between the clients and the server.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 79:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And so what is that ephemeral ports?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 80:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Well, based on the OS you have, the operating system you have, you have different port ranges, for example, if you're using Windows 10, for example, then you get to 49,152 all the way through 65,535, the port ranges that will be chosen for a random ephemeral ports.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 81:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: If you use Linux, then a good range will be 32,768 to 60,999, okay.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 82:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So based on the different OS, you have different port ranges.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 83:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So let's go through concrete example to understand how that works.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 84:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So the clients connects to a web server, the web server has a fixed IP and a fixed ports.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 85:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So the client is saying, hey, here's my IP, and I will open for this one request or this one connection, an ephemeral port of five, zero, one, zero, five.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 86:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So the request sent from the client to the server is, Hey, here is the destination IP, here is the destination port of the server that you connect to, here's the payload of my request, so what I'm requesting, and here is my source IP, by the way, for the reply, and here is my source ephemeral ports for the replay as well, which is five, zero, one, zero, five.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 87:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And then the web server, when connecting back to the client to send back of the response, will send the response and say, Hey, so here's the source IP, here's a source port.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 88:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, the server port, and then the destination IP is 11.22.33.44, here is the response payload.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 89:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And finally, where we'll also need a port it will reuse the ephemeral port that the client has sent.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 90:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And this is why it's called ephemeral port it's because it's a random port that is assigned just for the connection life.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 91:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So now, why do I mention ephemeral ports?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 92:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Well, because they're very important in terms of NACLs.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Boundary filtering and segmentation signal.

Line 93:
- Concepts: Stateful and Stateless Filtering
- Services: Network ACL
- Key Insights: So if you consider a client's connecting to a database and we have a private subnet and a public subnet, we have one NACL associated with each subnet.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 94:
- Concepts: Stateful and Stateless Filtering
- Services: Network ACL
- Key Insights: So a web NACL and a DB NACL.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 95:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, when the client initiates a connection to the database instance, what are the rules that need to be allowed when you think about it, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 96:
- Concepts: Stateful and Stateless Filtering
- Services: Network ACL
- Key Insights: Well, if you consider the first NACL we need to allow outbound TCP on port three, three, zero six to the database subnet CIDR, that makes sense.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 97:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Otherwise, the request will not leave the subnets.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 98:
- Concepts: Stateful and Stateless Filtering
- Services: Network ACL
- Key Insights: And then from a database perspective, then the DB NACL says, Hey, I need to allow inbound TCP on port three, three, zero, six from the web submit CIDR.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 99:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: All this makes sense, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 100:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, here's the tricky part.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 101:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: When the database sends back the request to the clients, what do you think needs to happen?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 102:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Well, the client has an ephemeral port, right?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 103:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And so as such, they will be a random ports being assigned for this request.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 104:
- Concepts: Stateful and Stateless Filtering
- Services: Network ACL
- Key Insights: And so therefore, the DB NACL must allow outbound TCP on ports and, on ephemeral port, so, maybe from 1024 to 65,535 to web subnet CIDR, and then the web NACL also needs to allow inbound TCP on this range of ephemeral ports from the DB subnet CIDR.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Boundary filtering and segmentation signal.

Line 105:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And this is why ephemeral ports are super important to configure well.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 106:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So if you want to learn more, there's a link to the documentation.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 107:
- Concepts: Stateful and Stateless Filtering
- Services: Network ACL
- Key Insights: Another thing about NACLs you need to know is that if you have multiple NACLs and multiple subnets, then each NACL combination needs to be allowed within the NACL, because you're using CIDRs and each subnet will have its own CIDR.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 108:
- Concepts: Stateful and Stateless Filtering
- Services: Network ACL
- Key Insights: So it's super important for you to realize that, if you add subnets into a NACL, you need to also update all the NACL rules to make sure that the combination of connections is possible.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Boundary filtering and segmentation signal.

Line 109:
- Concepts: Stateful and Stateless Filtering
- Services: Network ACL, Security Group
- Key Insights: So to summarize, what is the difference between a security group and a NACL?
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 110:
- Concepts: Stateful and Stateless Filtering
- Services: Network ACL, Security Group
- Key Insights: Well the security group operates at the instance level, whereas the NACL is at the subnet level.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 111:
- Concepts: Stateful and Stateless Filtering
- Services: Network ACL, Security Group
- Key Insights: The security group supports allow rules only, whereas NACL supports allow and deny rules, this is why you can deny a specific IP address in a NACL.
- Hidden/Implicit Meaning: Constraint or limitation signal; Boundary filtering and segmentation signal.

Line 112:
- Concepts: Stateful and Stateless Filtering
- Services: Network ACL
- Key Insights: Security groups are stateful, so automatically return traffic is allowed regardless of the rules, whereas NACL is stateless, that means that every time the inbound and outbound rules will be evaluated and think of ephemeral ports as a reminder.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 113:
- Concepts: Stateful and Stateless Filtering
- Services: Network ACL, Security Group
- Key Insights: Now for security group, all rules are going to be evaluated to decide whether or not to allow traffic, whereas for a NACL, the ones that will be having the highest priority will be evaluated first, and the first match wins.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 114:
- Concepts: Stateful and Stateless Filtering
- Services: Network ACL, Security Group
- Key Insights: Security group applies to an EC2 instance when specified by someone, whereas NACL applies to all EC2 instances in a subnet that it's associated with.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 115:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So that sits for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 116:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Hopefully that makes sense and I will see you in the next lecture for some practice.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/27_Networking - VPC/332_NACL & Security Groups Hands On.txt

Line 1:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 2:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, let's have a look at our network ACL's.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 3:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: To do so, I will go on the left hand side and there's network ACL's.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 4:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And for our sub for VPC, we have a network ACL here.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 5:
- Concepts: Stateful and Stateless Filtering
- Services: Network ACL
- Key Insights: This is the default, NACL.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 6:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, it's very important to notice this.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 7:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And currently it's default.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 8:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, it's associated with four subnets.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 9:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, we have inbound rules and outbound rules.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 10:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And then if we look at the inbound rules, we allow all traffic on all parts everywhere.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 11:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And then there's the last row which was denied, but it doesn't ever get to effect because this one goes into effect before.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 12:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And then for the outbound rules the same.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 13:
- Concepts: Stateful and Stateless Filtering
- Services: Network ACL
- Key Insights: So, remember the default, NACL, always has all traffic, inbound and outbound authorized, and the default is going to be associated with any subnets you're going to create, hence the name default NACL.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Boundary filtering and segmentation signal.

Line 14:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, now let's go ahead and have a place or to do so, I'm going to go into my EC2 instances, my NAT instance.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 15:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Sorry, my Bastion host.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 16:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And I'm going to start a HTTP server on it to connect to it.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 17:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, to do so let's connect into our instance, let's connect, and I'm going to install HTTPD.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 18:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So sudo, yum, install, minus Y, HTTPD.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 19:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Then we're going to start the web server.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 20:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So I will do, system, CTL, sudo, system CTL, enable HTTPD, and then sudo, system CTL, start HTTPD.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 21:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Let's clear the screen.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 22:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And then we're going to echo "hello world" into our var/www/html/index.html and we'll have sudo for this command.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 23:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So let's do sudo, su, echo, hello world into again, this file.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 24:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, this should work right now, so let's try it.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 25:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 26:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: So, now the other thing we have to do is we need to make sure that the Bastion host has this public instance has HTTP enabled for the security group.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 27:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, right now we only have 4 22.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 28:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: So, therefore in the security group rules, I'm going to edit the inbound rules and I'm going to add a rule for HTTP and then from anywhere, save this rule.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 29:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Perfect.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 30:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So back into our instance, this is our bastion host, and I can just click on this IP address right here.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 31:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Copy it, open it in a new tab and I get, "hello world." So, this is good.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 32:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: We are able to connect into our server and it replies "hello world" to us.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 33:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, let's have a look at network ACL's now.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 34:
- Concepts: Stateful and Stateless Filtering
- Services: Network ACL
- Key Insights: So, if I look into this default NACL, and look at the inbound rules, what I'm going to do is I'm going to edit these rules.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 35:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And currently we allow all traffic from anywhere, okay, but we're going to add a new rule.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 36:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And the rule number is going to be rule 80 and the type is going to be HTTP, and it's going to come from anywhere and we are going to deny it.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 37:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, let's save these changes and we can sort them by rule number.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 38:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, as you can see, this rule has precedence over that rule.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 39:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, what do you think is going to happen?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 40:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Well, now that we have enabled this inbound rule, that blocks HTTP traffic.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 41:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: If I go back to my EC2 instance and refresh this page, I'm getting, you see, an infinite loading.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 42:
- Concepts: Stateful and Stateless Filtering
- Services: Network ACL
- Key Insights: So, that means that yes, there's a timeout and the NACL acted as a firewall and blocked my request.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 43:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: But if I edit my inbound rules and now the rule number is 140.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 44:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, and save this again.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 45:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And look again at the inbound rules, as you can see now, rule 140 happens after rule 100 and there's a denial.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 46:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, what do think is going to happen?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 47:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Well, if I go back and refresh, I'm accessing my EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 48:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, what's happening is that even though there was an explicit deny rule, happening here, because the rule number 100 had higher precedence and allowed that specific traffic in, then it works.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 49:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 50:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, as we can see, this shows the very important aspects around the rule numbers.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 51:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 52:
- Concepts: Stateful and Stateless Filtering
- Services: Network ACL
- Key Insights: And similarly, I want to show the statelessness of the NACL.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 53:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, if I go into outbound rules and there's this rule right here, that allows everything right now, if I edit it and instead do deny, well, what is going to happen?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 54:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: The inbound rule is going to allow my traffic, but the outbound rule shouldn't.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 55:
- Concepts: Stateful and Stateless Filtering
- Services: Network ACL
- Key Insights: So, let's go back into my instance, refresh this, and you can see I'm getting this infinite loading, because well, my NACL does not allow return traffic, because it was not explicitly specified in my NACL, that return traffic was allowed.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 56:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: So, what's really important to notice is that this is true, regardless of if the security group of my EC2 instance did, in fact, allow port 80 in, okay.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Boundary filtering and segmentation signal.

Line 57:
- Concepts: Stateful and Stateless Filtering
- Services: Network ACL
- Key Insights: So, NACL's and security groups work hand-in-hand together.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 58:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: And if the security group rules look fine, that doesn't mean that the network ACL's are fine.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 59:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, this is something else to check in case of network issues.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 60:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, let me revert this to allow and do another demo.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 61:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so I'm back into my instance.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 62:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: This is working now.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 63:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: And so if we look at the security group rules here, as we can see, port 80 is allowed on everywhere.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 64:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: And for outbound rules, it says allow from everywhere as well, but let's edit this security group.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 65:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, for the inbound rules, I will not change them.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 66:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, I will keep HTTP on, but for the outbound rules, I'm going to edit this rule and I'm going to just remove it.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 67:
- Concepts: Stateful and Stateless Filtering
- Services: Security Group
- Key Insights: And as you can see, now, we don't allow any outbound from the security group, but the security group is stateful.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 68:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: That means that if the traffic is initiated from the outside and is allowed inbound, then the return traffic will be authorized as well.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 69:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, let's prove it, even though there is no outbound rule.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 70:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: If I refresh this page, as you can see, this is working, I can access my EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 71:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: But if my EC2 instance was trying to initiate a connection, for example, not here.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 72:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: If my EC2 instance was trying to initiate a connection to Google account, for example, it would be denied because, well, there's no outbound rule that specifically allows it.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 73:
- Concepts: Stateful and Stateless Filtering
- Services: Network ACL
- Key Insights: But if it did allow it, then the return traffic would be allowed because again, security groups are stateful, whereas NACL's are stateless.
- Hidden/Implicit Meaning: Boundary filtering and segmentation signal.

Line 74:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, to make things, everything work again.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 75:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And once you have all HTTP from anywhere allowed, and this is going to restore these outbound rules on my EC2 instance, okay.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 76:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, it's very important for you to notice the difference between EC2 security groups and network ACL's.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Boundary filtering and segmentation signal.

Line 77:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: But hopefully this was a good demo.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 78:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 79:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/27_Networking - VPC/352_AWS Network Firewall.txt

Line 1:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So let's summarize the kind of ways you can protect your network on AWS that we know about so far.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 2:
- Concepts: Layer 7 Threat Protection
- Services: AWS WAF
- Key Insights: So we've seen Network Access Control Lists, we've seen Amazon VPC security groups, we've seen AWS WAF.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal; Boundary filtering and segmentation signal.

Line 3:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It protect against malicious requests made through HTP on specific services that we have.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 4:
- Concepts: Centralized Policy Governance, DDoS and Edge Defense, Layer 7 Threat Protection
- Services: AWS Firewall Manager, AWS Shield, AWS WAF
- Key Insights: We've seen AWS Shield and Shield Advance to protect against DDoS, and we've seen AWS Firewall Manager to manage them all, your rules for WAF and Shield and so on, across multiple accounts.
- Hidden/Implicit Meaning: Application-edge and DDoS defense signal.

Line 5:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so we know about this, but what if we want to protect our entire VPC in a sophisticated way?
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 6:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall
- Key Insights: Introducing the AWS Network Firewall.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 7:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this is used to protect your entire VPC with a firewall.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 8:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So here's my VPC and the firewall is going to be all around it.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 9:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall
- Key Insights: And so this AWS Network Firewall protects it from the layer 3 to the layer 7 protection.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 10:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So you can inspect any kind of traffic in any direction.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 11:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So you can expect VPC to VPC traffic, outbound to internet, inbound from internet, and to and from Direct Connect and Site-to-Site VPN connections.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 12:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So every representative there, so here we protect anything coming in and out of the internet, in and out of a peered VPC and in and out of Direct Connect or a Site-to-Site VPN connection.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 13:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So we define rules and then we can control anything that happens.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 14:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall, Gateway Load Balancer
- Key Insights: So internally, the network firewall uses the AWS Gateway Load Balancer, but instead of us setting up a third party appliance to inspect the traffic, we just have AWS manage it with its own appliances.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 15:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And so therefore, we have our own rules on the firewall.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 16:
- Concepts: Centralized Policy Governance
- Services: AWS Firewall Manager
- Key Insights: And these rules can be centrally managed as well across multiple accounts and many VPCs on the AWS Firewall Manager service.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 17:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall
- Key Insights: So with the network firewall, we have fine grained controls over all kind of network traffic.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 18:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So we support thousands of rules at our VPC level.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 19:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: We can filter by IP and by port with tens of thousands of IPs.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 20:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: We can filter by protocol.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 21:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: For example, we can disable the SMB protocol for outbound communication.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 22:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: We can filter at the domain level.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 23:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So we say, hey, you only allow outbound traffic from our VPC into our mycorp domain or any third party software repository that we only allow.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 24:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: We can do general pattern matching with regex and so on.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 25:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And we can choose to allow, drop or get alerted on the traffic that will match the rules that we've set up.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 26:
- Concepts: Inline Network Inspection
- Services: Gateway Load Balancer
- Key Insights: And we also have active flow inspection, so we can actually have an intrusion prevention capability just like we have with the Gateway Load Balancer, but all managed by AWS.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 27:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And all the rule matches can also be sent to Amazon S3, CloudWatch Logs, and Kinesis Data Firehose for analysis.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 28:
- Concepts: Inline Network Inspection
- Services: AWS Network Firewall
- Key Insights: So that's it for the network firewall.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 29:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: This is a firewall that you do at the VPC level.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 30:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Remember this.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

Line 31:
- Concepts: Inline Network Inspection
- Services: (none explicit)
- Key Insights: And you can do traffic filtering and flow inspection.
- Hidden/Implicit Meaning: Inline inspection and network enforcement signal.

Line 32:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security control detail.

## Step 2 â€” Consolidation

### 1. Concepts List
- Centralized Policy Governance
- DDoS and Edge Defense
- Inline Network Inspection
- Layer 7 Threat Protection
- Network Security Operational Context
- Stateful and Stateless Filtering
- Transport Trust and Certificates

### 2. Services List
- AWS Certificate Manager
- AWS Firewall Manager
- AWS Network Firewall
- AWS Shield
- AWS WAF
- Elastic Load Balancing
- Gateway Load Balancer
- Network ACL
- Security Group

### 3. Features List
- acm
- certificate
- firewall manager
- gateway load balancer
- nacl
- network firewall
- rule group
- security group
- shield
- waf

### 4. Use Cases
- 080_Elastic Load Balancer - SSL Certificates.txt:10: So, SSL refers to Secure Sockets Layer and it's used to encrypt transfer connections.
- 080_Elastic Load Balancer - SSL Certificates.txt:17: So whenever you go to a website, for example google.com or anything, any other website, and you have a lock or a green lock that means that your traffic is encrypted.
- 080_Elastic Load Balancer - SSL Certificates.txt:31: And when you set you an HTTPS listener, you must specify a default certificate.
- 080_Elastic Load Balancer - SSL Certificates.txt:41: So it only works when you use the application load balancer and the network load balancer, so the newer generations, or CloudFront.
- 080_Elastic Load Balancer - SSL Certificates.txt:43: And it does not work when you use the classic load balancer because it is older generation.
- 081_Elastic Load Balancer - SSL Certificates - Hands On.txt:2: So if I look at the ALB, I just have to add one listener, for example, I will add a listener, and the protocol will be HTTPS and the ports by default will be 443.
- 081_Elastic Load Balancer - SSL Certificates - Hands On.txt:5: So we can say, we can actually set a SSL security policy to see how to negotiate the certificates itself, and this is based on if you need, for example, previous compatibility with older version of SSL or TLS and so on, so you can leave this as default and then you need to say where this SSL or TLS certificate is located and so it can be in ACM, Amazon Certificate Manager, but I currently don't have any, so I won't see here one or from IAM, but this is not recommended as domain method.
- 218_Introduction to AWS Network Security Services.txt:7: When AWS first launched EC2 machines, after a while, AWS launched security groups, right?
- 218_Introduction to AWS Network Security Services.txt:39: Now in order to protect your servers or infrastructure from these kinds of attacks, AWS Shield service is there, which comes again in two flavors, Shield Standard and Shield Advanced, and there are advantages using Shield Advanced, and we'll see what those are in this section as well.
- 218_Introduction to AWS Network Security Services.txt:42: For example, you can manage AWS WAF rules, or Shield Advanced, or Security Group, or Network Firewall, which AWS launched recently.
- 218_Introduction to AWS Network Security Services.txt:97: Now, if you want to apply some additional AWS services to maybe optimize the performance or to secure it, then you can always use CloudFront, which is a CDN service, as you know, right, so that the content can be cached and locations can be used.
- 218_Introduction to AWS Network Security Services.txt:101: Now if you want to secure your EC2 machines, you'll apply the security group at the EC2 instance level.
- 218_Introduction to AWS Network Security Services.txt:102: And in order to protect your application sub-net, you will apply the network ACLs.
- 218_Introduction to AWS Network Security Services.txt:116: And finally, if you want to protect your complete infrastructure from the distributed denial-of-service attack, that is a DDoS attack, you will put AWS Shield.
- 218_Introduction to AWS Network Security Services.txt:118: But if you want to protect other AWS resources like your EC2 machines as well, then you can use AWS Shield Advanced.
- 219_Recap - Security Groups and Network ACL.txt:11: Now security Group can reference the Cidr notation when you provide the source IP address range in inbound rules or destination address range in the outbound rules, and additionally it can also refer to another security group.
- 219_Recap - Security Groups and Network ACL.txt:18: Now similar use case like Alb that I just explained.
- 219_Recap - Security Groups and Network ACL.txt:20: Now this is true when you create a security group and you don't add any rule by yourself, right?
- 219_Recap - Security Groups and Network ACL.txt:28: Now when we say default, which means when you create a new network ACL, then there are no inbound and outbound rules.
- 219_Recap - Security Groups and Network ACL.txt:34: And other important thing is that security group only have allow rules, whereas network ACL also supports the Deny rules, which also means that if you want to block a traffic from certain IP address, then you cannot use security group.
- 219_Recap - Security Groups and Network ACL.txt:37: Right now with that context, let's look at some of the architectures that may come up when you use security groups and network ACLs together, and primarily in the case where you want to block those malicious IP addresses.
- 219_Recap - Security Groups and Network ACL.txt:39: So this is a simple use case where there is a EC2 instance with public IP.
- 219_Recap - Security Groups and Network ACL.txt:43: And now if you want to block a particular malicious IP, you know that security group cannot do that.
- 219_Recap - Security Groups and Network ACL.txt:45: So this is very simple use case.
- 219_Recap - Security Groups and Network ACL.txt:46: Now another use case when you have Alb in front of your EC2 instances.
- 219_Recap - Security Groups and Network ACL.txt:48: In that case, if you want to block traffic at EC2 subnet level, it is not going to help, right?
- 219_Recap - Security Groups and Network ACL.txt:49: So having the network ACL at this subnet is useless, which means if you want to block again traffic from the malicious IP addresses from the client side, then you would have to put the network ACL at the Alb subnet level, right.
- 219_Recap - Security Groups and Network ACL.txt:56: So when you have the NLB things are quite similar.
- 219_Recap - Security Groups and Network ACL.txt:58: If the target is for example, EC2 instances, which means that EC2 instance directly sees the client IP address, right?
- 219_Recap - Security Groups and Network ACL.txt:67: But in this scenario, as we discussed, security Group won't help to block the traffic and it is ideal to block this traffic at the network load balancer subnet level.
- 219_Recap - Security Groups and Network ACL.txt:75: Again you cannot use the network ACL at the Alb subnet level because in that you would have to block particular IP address.
- 220_AWS Web Application Firewall (WAF).txt:21: And, based on the patterns that you define, you can filter that traffic, and you can say, "I want to block this traffic "if I see a particular string in that URL string," right?
- 220_AWS Web Application Firewall (WAF).txt:45: Now, conditions could be like I want be inspect IP addresses, I want to inspect HTTP headers, HTTP body, or URL string, or I want to put size constraint that any request can be of this size only, I want to avoid or block any other request larger than that request, and then you want to make sure that requests are coming from particular country, and then request contains specific string only, and you can also match the regular expression with your request as well.
- 220_AWS Web Application Firewall (WAF).txt:48: Now, when you evaluate the body of a request, as I said, when the request comes, you can look at the HTTP headers or HTTP body as well, but then, the limitation is, as of now, you can only evaluate first 8192 bytes out of that request.
- 220_AWS Web Application Firewall (WAF).txt:50: Finally, on blocking the malicious traffic, WAF returns 403 status score, that is forbidden, and we'll also do a demo of this, where you see that, when WAF is applied, and if it detects some kind of attack, for example, cross-site scripting or SQL injection, it will give you that kind of error, that is HTTP 403.
- 220_AWS Web Application Firewall (WAF).txt:58: So, in case of web applications, sometimes what attackers can do is, whether you insert some fields, for example, there is a username or password, one can send the script.
- 221_Hands On_ Cross-Site Scripting (XSS) attack simulation and prevention with WAF.txt:14: So, when you copy, you will actually see style.css, index.html, app.js.
- 222_AWS Shield and Shield Advanced (DDoS protection).txt:4: But then the purpose of WAF is to protect your resources from unauthorized access from the user or protecting your data so that user can't run, say, cross site scripting and those kind of attacks.
- 222_AWS Shield and Shield Advanced (DDoS protection).txt:5: But the purpose of AWS shield service is to protect your resources from the DDoS attack.
- 222_AWS Shield and Shield Advanced (DDoS protection).txt:39: So for example, if you provide the login pages, the client will ask for the login page but will just not respond with the next step.
- 222_AWS Shield and Shield Advanced (DDoS protection).txt:43: And as you might have guessed, in order to protect your AWS resources and services from this attack, you need AWS shield service.
- 222_AWS Shield and Shield Advanced (DDoS protection).txt:66: AWS Shield Advance also protect you from this kind of additional cost when there is a DDoS attack on your AWS resources.
- 222_AWS Shield and Shield Advanced (DDoS protection).txt:78: Now we haven't specifically talked about this, but when you enable the AWS shield advance, you also get some of the features of AWS Web Application Firewall as free, which are related to DDoS attacks.
- 223_Introduction to AWS Network Firewall.txt:18: For example, during the TCP handshake, you know that there are SYN flags and acknowledgement flags are set, right?
- 223_Introduction to AWS Network Firewall.txt:22: So when we talked about network ACL, we said that network ACL is a stateless because network ACL rules operate in isolation.
- 223_Introduction to AWS Network Firewall.txt:41: And when you say VPC, that means again, there are subnets and then all the traffic which is going to your machines inside your VPC, it should be routed through this firewall endpoint.
- 223_Introduction to AWS Network Firewall.txt:81: So you know that when the traffic is going over 443, then you assume that it's an HTTPS protocol, but that isn't necessarily that you can run different services also on the 443, but the network firewall can intelligently detect that the protocol is really an HTTPS and that's where you can say any other traffic than the HTTPS you want to drop it, right?
- 224_AWS Network Firewall - VPC and Route tables.txt:9: Now, when your traffic is coming from, say internet, then you how to make sure that now all the traffic lands into a Firewall endpoint first, and from there, then it goes to your machines, right?
- 224_AWS Network Firewall - VPC and Route tables.txt:10: So for Inbound traffic, for example, whatever traffic coming from the internet, you have to tell that if traffic is going to the workload subnet, which you have protected, the traffic has to go through something called the endpoint for your firewall, which has a syntax like vpce- some number.
- 224_AWS Network Firewall - VPC and Route tables.txt:14: Now second, when the traffic lands into the Firewall endpoint, it has to make sure that traffic ultimately goes to your target machines, right?
- 225_AWS Network Firewall Components & Rule groups.txt:6: So, ultimately firewall connects the VPC that you want to protect to the protection behavior that you define using the firewall policy.
- 225_AWS Network Firewall Components & Rule groups.txt:10: And then there are some other settings, for example, in case of stateless rule groups, what is the default action if there is no match for, you know, incoming packets, if none of the rule matches, then what action it should be taken, whether traffic should be allowed or dropped, or it should be forwarded to a stateful rule group?
- 225_AWS Network Firewall Components & Rule groups.txt:15: And rule groups are nothing but a collection of stateless and stateful rules that define how to inspect and handle network traffic.
- 225_AWS Network Firewall Components & Rule groups.txt:20: Now here, if you look at this, the incoming traffic that you want to inspect, first, the stateless rule groups will be applied and we'll see if there is any match.
- 225_AWS Network Firewall Components & Rule groups.txt:43: And when you write the multiple rules in the stateless rule groups, you can prioritize the rules.
- 225_AWS Network Firewall Components & Rule groups.txt:58: That means, if you know the TCP flags, like for example, in a handshake there is a syn and acknowledge, and RSD kind of flags.
- 225_AWS Network Firewall Components & Rule groups.txt:68: And then within every rule groups, like for example, you have five pass rules, then the priority of those rules will be looked at, right?
- 225_AWS Network Firewall Components & Rule groups.txt:72: It's not like a security group that there is no inbound rule by default, but for example, you just create the stateful rule groups and you don't add any rule.
- 225_AWS Network Firewall Components & Rule groups.txt:83: For example, example.com, or you can use wildcard as a forced character.
- 225_AWS Network Firewall Components & Rule groups.txt:99: So, again, in Suricata rules, you have actions which tells what to do when the packet matches that signature.
- 226_Hands On_ AWS Network Firewall.txt:7: For example, we want to add stateless rule block to block the ICMP that is a ping requests to our web server, right.
- 226_Hands On_ AWS Network Firewall.txt:8: And then we also want to add the stateful rules so that from my web server I can only go to a certain domain name for example, aws.amazon.com, that's my outbound request, and that's to only using the TLS connection.
- 226_Hands On_ AWS Network Firewall.txt:37: Because when the PCP handshake happens at that moment, the traffic is not DLS, right, it starts with TCP.
- 226_Hands On_ AWS Network Firewall.txt:39: But for handling this use case, we have added this flow.established as a parameter, which allows the traffic to be dropped only when it is not an established traffic, that means for this TLS the TCP handshake has already happened and that's where it won't use this route to drop that traffic.
- 226_Hands On_ AWS Network Firewall.txt:69: And how you do that is you have to first go to the route table, you have to create the route table, and then when you associate the route table, there is an additional entry there which is age association, and at that moment, you can sell it internet gateway there and then that route table is associated with the internet gateway.
- 226_Hands On_ AWS Network Firewall.txt:129: Now this is a public subnet when we created earlier, but here instead of internet gateway, I want to use my firewall endpoint and just save the changes, so that is done.
- 226_Hands On_ AWS Network Firewall.txt:159: Now, make sure that when you do this exercise, you delete all your resources because everything is charged, right.
- 227_The legacy way of using the Network appliances.txt:7: Now, when we say traffic can be inspected, it is not just about, say a firewall or IPS or IDS system but maybe you want to do some analysis of that traffic, or you want to mirror that traffic.
- 227_The legacy way of using the Network appliances.txt:8: So there are so many use cases that you can implement using the gateway load balancer.
- 228_Gateway Load Balancer and Traffic flow.txt:50: For example, you know ECMP, right.
- 228_Gateway Load Balancer and Traffic flow.txt:61: Like it also keeps the stickiness with the network appliances and that's where it makes it a great choice when you have to maintain the symmetric flow and the stickiness.
- 229_Hands On_ Gateway Load Balancer.txt:43: For example, I want to launch this Network Appliance using Check Point AMI from the Marketplace, and then I should be able to create Gateway Load Balancer, Gateway Load Balancer endpoint, and then finally I will change my route tables.
- 229_Hands On_ Gateway Load Balancer.txt:182: So leave this console open and see when we do the routing configuration, does the traffic flow through this or not?
- 232_AWS Certificate Manager (ACM).txt:2: In this lecture let's try to understand what is ACM and how does it help you to secure the network communication.
- 232_AWS Certificate Manager (ACM).txt:16: Now when you turn to Https it underlying using the SSL or TLS protocol to protect your communication.
- 232_AWS Certificate Manager (ACM).txt:26: And the first time when client connects to the server the server will send this certificate back to the client.
- 232_AWS Certificate Manager (ACM).txt:51: For example, within your AWS VPCs there are a lot of machines like application server is talking to the database or all other application server talking to each other.
- 232_AWS Certificate Manager (ACM).txt:58: And this certificates can be deployed on AWS managed services, for example load balancers or CloudFront or API gateways.
- 232_AWS Certificate Manager (ACM).txt:67: Now all these are the use cases of the private CA.
- 232_AWS Certificate Manager (ACM).txt:70: Okay, so in general when we talk about the AWS services where you can deploy these certificates.
- 232_AWS Certificate Manager (ACM).txt:86: For example, if you are using application load balancer you have to just create the Https listener.
- 232_AWS Certificate Manager (ACM).txt:92: For example you have your company domain name and then you can say API dot example.com or say web dot example.com.
- 232_AWS Certificate Manager (ACM).txt:95: And just one thing that you need to remember is that whenever you are using your certificate for the CloudFront service, which is a global service, you have to create this certificate in the US East, one that is Northern Virginia region.
- 232_AWS Certificate Manager (ACM).txt:127: For example, you already got a certificate which is signed by some well-known uh CA then you can import that certificate along with its private key, so that ACM can then associate that with the AWS resources and can handle the TLS termination.
- 233_AWS Firewall Manager.txt:3: So it works well when you have, say, 1 or 2 AWS accounts where you can go and configure these firewalls.
- 233_AWS Firewall Manager.txt:8: When I say resources, that means which AWS resource you are protecting.
- 233_AWS Firewall Manager.txt:10: For example, security groups of EC2 instances or network load balancer or particular route 53 hosted zones or particular instance behind the network firewall.
- 233_AWS Firewall Manager.txt:19: For example, you have to enable the AWS organization.
- 233_AWS Firewall Manager.txt:22: For example, if you change the security group, it is recorded in AWS Config service.
- 233_AWS Firewall Manager.txt:32: For example, if you define the rules, say none of the security group in your AWS account should have port 22 open to the internet.
- 233_AWS Firewall Manager.txt:43: For example, you can subscribe to AWS marketplace and you will see a lot of firewall options in there.
- 233_AWS Firewall Manager.txt:49: For example, you will automatically create a JIRA ticket or you can centrally, you know, view all the violations in the dashboard that Security Hub provides.
- 233_AWS Firewall Manager.txt:55: But often the question comes when to use what.
- 233_AWS Firewall Manager.txt:57: So for example, if you want to have a quick and easy way to deploy the firewall for protecting the web application at layer seven, then you should rather use AWS Web Application Firewall, that is WAF.
- 331_NACL & Security Groups.txt:2: So let's take an example of a subnet and we know when you have an EC2 instance that we attach a security group to it.
- 331_NACL & Security Groups.txt:34: And so the EC2 instance will first maybe use, for example, connect to www.google.com, and so therefore the first rules that are going to be evaluated are the security group outbound rules.
- 331_NACL & Security Groups.txt:48: So for example, if you define allow on this CIDR and deny on the same CIDR, so a specific IP, but the allow is 100 and the deny is 200, the IP address will be allowed because 100 as a higher precedence over 200.
- 331_NACL & Security Groups.txt:54: And NACLs have a very, very good use case.
- 331_NACL & Security Groups.txt:64: Because if the NACL was not allowing everything in and everything out then we would have do some serious debugging to do when we get started with AWS.
- 331_NACL & Security Groups.txt:71: So when you have a client and a server connecting together, they must use port.
- 331_NACL & Security Groups.txt:73: So we know for example, that the HTTP port is 80, the HTTPS port is four, four, three, the SSH port is 22 and so on.
- 331_NACL & Security Groups.txt:74: So when we have a server that exposes a service, then the client connects to a defined ports, except though that the clients needs a reply back from the server.
- 331_NACL & Security Groups.txt:77: So what it does that when the client is connecting to a server, the client will open a specific ports on itself.
- 331_NACL & Security Groups.txt:80: Well, based on the OS you have, the operating system you have, you have different port ranges, for example, if you're using Windows 10, for example, then you get to 49,152 all the way through 65,535, the port ranges that will be chosen for a random ephemeral ports.
- 331_NACL & Security Groups.txt:87: And then the web server, when connecting back to the client to send back of the response, will send the response and say, Hey, so here's the source IP, here's a source port.
- 331_NACL & Security Groups.txt:95: Now, when the client initiates a connection to the database instance, what are the rules that need to be allowed when you think about it, right?
- 331_NACL & Security Groups.txt:101: When the database sends back the request to the clients, what do you think needs to happen?
- 331_NACL & Security Groups.txt:114: Security group applies to an EC2 instance when specified by someone, whereas NACL applies to all EC2 instances in a subnet that it's associated with.
- 332_NACL & Security Groups Hands On.txt:71: But if my EC2 instance was trying to initiate a connection, for example, not here.
- 332_NACL & Security Groups Hands On.txt:72: If my EC2 instance was trying to initiate a connection to Google account, for example, it would be denied because, well, there's no outbound rule that specifically allows it.
- 352_AWS Network Firewall.txt:4: We've seen AWS Shield and Shield Advance to protect against DDoS, and we've seen AWS Firewall Manager to manage them all, your rules for WAF and Shield and so on, across multiple accounts.
- 352_AWS Network Firewall.txt:5: Okay, so we know about this, but what if we want to protect our entire VPC in a sophisticated way?
- 352_AWS Network Firewall.txt:7: So this is used to protect your entire VPC with a firewall.
- 352_AWS Network Firewall.txt:14: So internally, the network firewall uses the AWS Gateway Load Balancer, but instead of us setting up a third party appliance to inspect the traffic, we just have AWS manage it with its own appliances.
- 352_AWS Network Firewall.txt:21: For example, we can disable the SMB protocol for outbound communication.

### 5. Constraints / Limitations
- 080_Elastic Load Balancer - SSL Certificates.txt:9: So that means the data as it goes through a network is going to be encrypted and only going to be able to be decrypted by the sender and the receiver.
- 080_Elastic Load Balancer - SSL Certificates.txt:20: Don't put your login information because it's not secure." So the SSL certificates, they have an an expiration date that you set and they must be renewed regularly to make sure that they're authentic, okay?
- 080_Elastic Load Balancer - SSL Certificates.txt:31: And when you set you an HTTPS listener, you must specify a default certificate.
- 080_Elastic Load Balancer - SSL Certificates.txt:33: Now don't worry, I'm going to explain what SNI is in details in the next slide because it is really, really important for you to understand what it means.
- 080_Elastic Load Balancer - SSL Certificates.txt:35: Okay, so let's talk about SNI 'cause it is so important.
- 080_Elastic Load Balancer - SSL Certificates.txt:36: SNI solves a very important problem, which is how do you load multiple SSL certificates onto one web server in order for that web server to serve multiple websites?
- 080_Elastic Load Balancer - SSL Certificates.txt:41: So it only works when you use the application load balancer and the network load balancer, so the newer generations, or CloudFront.
- 080_Elastic Load Balancer - SSL Certificates.txt:57: So classic load balancer is yes, you can only support one SSL certificate.
- 218_Introduction to AWS Network Security Services.txt:18: As you know, security groups are attached to the EC2 machines, and then you can define the allow rules where you can say the traffic is only allowed from certain IP ranges and for certain ports.
- 218_Introduction to AWS Network Security Services.txt:26: It is like defined set of vulnerabilities, which your application should always be protected from.
- 218_Introduction to AWS Network Security Services.txt:49: And we'll learn more about that in a separate section of Gateway Load Balancer, because this is also an important AWS service for your networking exam.
- 218_Introduction to AWS Network Security Services.txt:104: And you will maybe only allow certain ports there.
- 219_Recap - Security Groups and Network ACL.txt:29: That means the traffic cannot really flow.
- 219_Recap - Security Groups and Network ACL.txt:34: And other important thing is that security group only have allow rules, whereas network ACL also supports the Deny rules, which also means that if you want to block a traffic from certain IP address, then you cannot use security group.
- 219_Recap - Security Groups and Network ACL.txt:36: Then if you want to only block those particular IPS, there is no provision in the security group because there you only have allow rules.
- 219_Recap - Security Groups and Network ACL.txt:43: And now if you want to block a particular malicious IP, you know that security group cannot do that.
- 219_Recap - Security Groups and Network ACL.txt:51: And further, if you want to make sure that this EC2 only receives the traffic from the application load balancer, then in the EC2 security group, you will allow the traffic only from the Alb security group.
- 219_Recap - Security Groups and Network ACL.txt:75: Again you cannot use the network ACL at the Alb subnet level because in that you would have to block particular IP address.
- 219_Recap - Security Groups and Network ACL.txt:76: But Alb is only seeing the IP address of CloudFront distribution, right?
- 219_Recap - Security Groups and Network ACL.txt:85: So before we stop for this lecture, there might be one question that might be coming to you is how do you really make sure that this application instance only receives the traffic from this particular path.
- 219_Recap - Security Groups and Network ACL.txt:88: So this makes sure that EC2 only receives the traffic from the Alb.
- 219_Recap - Security Groups and Network ACL.txt:89: But how do you make sure that this Alb only receives the traffic from the CloudFront, and you take care of the scenario where end client or say, malicious IPS are directly hitting the Alb?
- 219_Recap - Security Groups and Network ACL.txt:96: So you can't, you know, list all those IPS into the security group inbound rule.
- 219_Recap - Security Groups and Network ACL.txt:103: Now once you do that and once you have this AWS WAF with CloudFront which blocks the malicious IP, this is end to end secure, because now Alb is only receiving the traffic from CloudFront and EC2 is only receiving the traffic from the Alb.
- 220_AWS Web Application Firewall (WAF).txt:14: And, finally, one important change, again, is that, earlier, you couldn't combine multiple rules together, but now, with the new WAF, you can create logical conditions, like A and B, not C kind of combination.
- 220_AWS Web Application Firewall (WAF).txt:19: Now, very first thing is you can decide which IP is to whitelist and which IP is to blacklist, so you can keep on updating also this list, so WAF will block that traffic or only allow that traffic.
- 220_AWS Web Application Firewall (WAF).txt:45: Now, conditions could be like I want be inspect IP addresses, I want to inspect HTTP headers, HTTP body, or URL string, or I want to put size constraint that any request can be of this size only, I want to avoid or block any other request larger than that request, and then you want to make sure that requests are coming from particular country, and then request contains specific string only, and you can also match the regular expression with your request as well.
- 220_AWS Web Application Firewall (WAF).txt:48: Now, when you evaluate the body of a request, as I said, when the request comes, you can look at the HTTP headers or HTTP body as well, but then, the limitation is, as of now, you can only evaluate first 8192 bytes out of that request.
- 220_AWS Web Application Firewall (WAF).txt:49: So, if your HTTP request is too large, then only first eight KB of the data will be looked or inspected for any vulnerabilities.
- 220_AWS Web Application Firewall (WAF).txt:71: So, you don't want to accept any API calls bigger than that size, and that's where the size limitations can be applied to your request.
- 220_AWS Web Application Firewall (WAF).txt:76: So, if you know some kind of words which should not be there in the request, then you can, of course, write a rule, and then those requests will be allowed or blocked based on how you write your condition.
- 221_Hands On_ Cross-Site Scripting (XSS) attack simulation and prevention with WAF.txt:41: Now, if I refresh my page in the browser, then I should see this.
- 221_Hands On_ Cross-Site Scripting (XSS) attack simulation and prevention with WAF.txt:113: But, as soon as you try to do something like this with the URI string here, and append this string here, you should get the forbidden error.
- 222_AWS Shield and Shield Advanced (DDoS protection).txt:4: But then the purpose of WAF is to protect your resources from unauthorized access from the user or protecting your data so that user can't run, say, cross site scripting and those kind of attacks.
- 222_AWS Shield and Shield Advanced (DDoS protection).txt:8: So for an example, if your users are using your application, your website, then the attacker will just send too many requests to your application server so that your application is overwhelmed with respect to the CPU, memory and the network, and your legitimate users cannot access your application.
- 222_AWS Shield and Shield Advanced (DDoS protection).txt:26: And if there are millions of such connections, then of course server has to maintain those many open TCP connections and it can't accept any more, so your users can't access your application server.
- 222_AWS Shield and Shield Advanced (DDoS protection).txt:35: So it is very important that your DNS can handle all these attacks.
- 222_AWS Shield and Shield Advanced (DDoS protection).txt:56: So if you need protection from layer seven attacks as well, then you should use AWS Shield Advanced.
- 222_AWS Shield and Shield Advanced (DDoS protection).txt:82: So I think these are the important things that you need to know about the DDoS protection using AWS shield and for your projects.
- 222_AWS Shield and Shield Advanced (DDoS protection).txt:83: If you are interested to know more to apply this in real life, then I would encourage to read this white paper which talks about all the best practices for DDoS protection.
- 223_Introduction to AWS Network Firewall.txt:5: Now, considering that we have so many firewalls already in AWS, then you must be wondering why this new firewall, that is AWS Network Firewall.
- 223_Introduction to AWS Network Firewall.txt:38: And that's where you can't really do the deep packet inspection with these two firewalls.
- 223_Introduction to AWS Network Firewall.txt:41: And when you say VPC, that means again, there are subnets and then all the traffic which is going to your machines inside your VPC, it should be routed through this firewall endpoint.
- 223_Introduction to AWS Network Firewall.txt:58: Whether cross-site scripting or blocking particular IP address or rate-limiting rules, but in case of network firewall, it is much more intelligent.
- 223_Introduction to AWS Network Firewall.txt:64: In case of WAF, as I said, only the ingress traffic is filtered.
- 223_Introduction to AWS Network Firewall.txt:78: So what that means is it does not only just look at the packet header, but it can also look at the packet payload and maybe edit out information about the packet, right?
- 224_AWS Network Firewall - VPC and Route tables.txt:12: Now, you must be wondering that how you can have the Route table for the Internet gateway?
- 225_AWS Network Firewall Components & Rule groups.txt:3: So, this is the important lecture, if you want to really understand how network firewall works.
- 225_AWS Network Firewall Components & Rule groups.txt:10: And then there are some other settings, for example, in case of stateless rule groups, what is the default action if there is no match for, you know, incoming packets, if none of the rule matches, then what action it should be taken, whether traffic should be allowed or dropped, or it should be forwarded to a stateful rule group?
- 225_AWS Network Firewall Components & Rule groups.txt:26: It says if traffic doesn't match any stateless rule group, what actions should be taken, whether the packet should be dropped, or it should be passed, or it should be forwarded to the stateful rule groups?
- 225_AWS Network Firewall Components & Rule groups.txt:27: So, ideally you would want to for only to stateful rule groups as well, so that, then you can apply, you know, IPS and IDS rules.
- 225_AWS Network Firewall Components & Rule groups.txt:30: And then most important is Suricata based rules that you can define.
- 225_AWS Network Firewall Components & Rule groups.txt:38: And it provides the standard 5-tuple connection criteria, like, what should be the protocol?
- 225_AWS Network Firewall Components & Rule groups.txt:56: And then rule match setting should have protocol, source IP, source port range, destination IP, and destination port range.
- 225_AWS Network Firewall Components & Rule groups.txt:84: That means .example.com, but you cannot use example.something.com, right?
- 225_AWS Network Firewall Components & Rule groups.txt:85: The dot should be the first character.
- 225_AWS Network Firewall Components & Rule groups.txt:92: Now, this is the most important one.
- 225_AWS Network Firewall Components & Rule groups.txt:113: And finally, there is a direction which says in which direction we want to apply this rule into and only supported arrows are right arrow.
- 226_Hands On_ AWS Network Firewall.txt:8: And then we also want to add the stateful rules so that from my web server I can only go to a certain domain name for example, aws.amazon.com, that's my outbound request, and that's to only using the TLS connection.
- 226_Hands On_ AWS Network Firewall.txt:9: So I shouldn't be able to use a plain HTTP outbound connection to this domain name and then all other traffic should be blocked, of course.
- 226_Hands On_ AWS Network Firewall.txt:14: And now if you look at the architecture that we want to build to achieve this, it should look something like this, right.
- 226_Hands On_ AWS Network Firewall.txt:15: You should have a VPC, in that VPC you would have to subnets in one subnet, which is here, it's a public subnet in which you would have public web server.
- 226_Hands On_ AWS Network Firewall.txt:19: Now, in case of firewall endpoint, all the traffic will go through the internet gateway and for the internet gateway ingress traffic for the web server, the traffic should also be routed through the firewall endpoint.
- 226_Hands On_ AWS Network Firewall.txt:29: Second, I'm only allowing the HTTP traffic, that means I have a web server so I should be able to reach to web server over port 80, that is an HTTP traffic, and I should only be able to access my web server using the AWS provided DNS name.
- 226_Hands On_ AWS Network Firewall.txt:31: That means I cannot access my web server using the public IP of the web server but only through the DNS name.
- 226_Hands On_ AWS Network Firewall.txt:32: Third, I will add this entry which allows the outbound request from this web server to only the domain name that is aws.amazon.com.
- 226_Hands On_ AWS Network Firewall.txt:33: And additionally, the traffic will only be the TLS traffic.
- 226_Hands On_ AWS Network Firewall.txt:34: That means I cannot use plain HTTP traffic or a TCP traffic to reach to this aws.amazon.com domain name.
- 226_Hands On_ AWS Network Firewall.txt:38: Now, in that case, this drop rule should be applied and your traffic will be stopped.
- 226_Hands On_ AWS Network Firewall.txt:39: But for handling this use case, we have added this flow.established as a parameter, which allows the traffic to be dropped only when it is not an established traffic, that means for this TLS the TCP handshake has already happened and that's where it won't use this route to drop that traffic.
- 226_Hands On_ AWS Network Firewall.txt:49: So in order to handle that, please enable these two settings because in our firewall rules, as you have seen, we are allowing HTTP traffic only for the web server where the DNS name ends in amazonaws.com.
- 226_Hands On_ AWS Network Firewall.txt:60: And finally, once that is done, we will test the ping to the web server from local machine, it shouldn't work.
- 226_Hands On_ AWS Network Firewall.txt:61: And then we'll SSH to the web server, which should be successful because we have added that in our stateful rule.
- 226_Hands On_ AWS Network Firewall.txt:62: And from there, we will try to get some data from say, aws.amazon.com or HTTPS, which we should succeed, but any other domain names shouldn't work, right.
- 226_Hands On_ AWS Network Firewall.txt:86: And now if I access this web server or an IP address, it should work.
- 226_Hands On_ AWS Network Firewall.txt:88: And similarly, if I get it public DNS name, it should also work.
- 226_Hands On_ AWS Network Firewall.txt:125: Now, in this case, all the traffic to internet should go through the firewall endpoint.
- 226_Hands On_ AWS Network Firewall.txt:132: If you're confused, just look at this architecture and you should be able to understand what I'm doing.
- 226_Hands On_ AWS Network Firewall.txt:138: So remember, this is important step, right, and save the changes.
- 226_Hands On_ AWS Network Firewall.txt:143: Now, this is because in the stateful rules, we said that only HTTP traffic for the domain name which ends in amazonaws.com should be allowed.
- 226_Hands On_ AWS Network Firewall.txt:144: Now, if I refresh this page, ideally it should work, I can also test this like this and this is working, right, that means our stateful rule groups are working.
- 226_Hands On_ AWS Network Firewall.txt:152: That means it should be an HTTPS connection.
- 226_Hands On_ AWS Network Firewall.txt:155: So it won't work because we are white listing only the domain name that we are interested in.
- 227_The legacy way of using the Network appliances.txt:2: Now, this is one of the most important service that AWS launched recently in the networking domain and this service was launched during the re:Invent 2020.
- 227_The legacy way of using the Network appliances.txt:12: Then the only option was to host this network appliances in on-premise data centers.
- 227_The legacy way of using the Network appliances.txt:40: Now, if you go to the AWS documentation or best practices, it always says that your application architecture should be highly available and this architecture isn't highly available for the reason that there are no multiple AZs.
- 227_The legacy way of using the Network appliances.txt:47: That means with this architecture, you cannot have a change, neither you can scale your network appliances.
- 227_The legacy way of using the Network appliances.txt:48: If there is so much traffic coming to your application and suppose there is a bandwidth limit of this network appliance, or say a packet processing limit appliance then you are bound by the highest capacity, right?
- 227_The legacy way of using the Network appliances.txt:49: You can't horizontally scale this network appliances.
- 228_Gateway Load Balancer and Traffic flow.txt:3: Bare minimum, it is required that your application sub-net and Gateway load balancer endpoint subnet should be different.
- 228_Gateway Load Balancer and Traffic flow.txt:10: And obviously as the name suggests Gateway load balancer should be able to balance the load across this network appliances.
- 228_Gateway Load Balancer and Traffic flow.txt:20: Which you can't do with the VPC endpoints otherwise.
- 228_Gateway Load Balancer and Traffic flow.txt:49: Now, good thing about the Gateway load balancer is that. it does what other protocols cannot.
- 228_Gateway Load Balancer and Traffic flow.txt:52: Now the problem with ECMP is that it cannot really maintain the symmetric flow of the traffic.
- 228_Gateway Load Balancer and Traffic flow.txt:57: And it will send the traffic to a particular network appliance only.
- 228_Gateway Load Balancer and Traffic flow.txt:65: Now I am using here one availability zone, but for high availability, as you know, that should be multiple availability zones.
- 228_Gateway Load Balancer and Traffic flow.txt:66: So Gateway load balancer endpoint should be provision across multiple EC because scope is as EC level, right.
- 228_Gateway Load Balancer and Traffic flow.txt:72: Now let's look at the route tables, how they should be look like, right.
- 228_Gateway Load Balancer and Traffic flow.txt:76: But in this case, you want to modify that behavior and say, if the traffic is going to the EC2 instances, it should first go to the Gateway load balancer endpoint.
- 228_Gateway Load Balancer and Traffic flow.txt:78: And you will say if the traffic is going to this particular sub-net, it should go to the Gateway load balancer endpoint first.
- 228_Gateway Load Balancer and Traffic flow.txt:81: Now in this sub-net, there is an route table entry which says the traffic going to the internet should go through the Internet Gateway.
- 228_Gateway Load Balancer and Traffic flow.txt:86: Then it knows how the traffic should go back to the users via this internet Gateway.
- 228_Gateway Load Balancer and Traffic flow.txt:89: It shouldn't directly go back.
- 228_Gateway Load Balancer and Traffic flow.txt:90: It should again go back through this Gateway load balancer endpoint.
- 228_Gateway Load Balancer and Traffic flow.txt:91: And in that case again, you would have entry, which says if the traffic is going to the internet, it should go to the Gateway load balancer endpoint, right?
- 228_Gateway Load Balancer and Traffic flow.txt:92: So this is how the route table should look like for your application server subnet as well.
- 228_Gateway Load Balancer and Traffic flow.txt:105: Now you must be wondering why the Gateway load balancer endpoint will only apply this particular entry for the return traffic, right?
- 228_Gateway Load Balancer and Traffic flow.txt:108: If it's a Gateway load balancer, then only it applies this route table.
- 228_Gateway Load Balancer and Traffic flow.txt:118: So this is how the overall architecture should look like for your Gateway load balancer.
- 229_Hands On_ Gateway Load Balancer.txt:15: Now in the Application VPC, ultimate goal is to reach to this Application from the internet, as well as this Application should be able to go to the internet, but all this traffic should be routed through my Gateway Load Balancer and to my Check Point Network Appliance.
- 229_Hands On_ Gateway Load Balancer.txt:23: I should be able to check that.
- 229_Hands On_ Gateway Load Balancer.txt:34: So I hope this architecture is clear, and to be honest, based on just this architecture, you should be able to set this up and that's what we are going to do.
- 229_Hands On_ Gateway Load Balancer.txt:43: For example, I want to launch this Network Appliance using Check Point AMI from the Marketplace, and then I should be able to create Gateway Load Balancer, Gateway Load Balancer endpoint, and then finally I will change my route tables.
- 229_Hands On_ Gateway Load Balancer.txt:74: So this checkpoint instance required a hundred GB of minimum storage.
- 229_Hands On_ Gateway Load Balancer.txt:81: Similarly, I want to do the health check on Port 443, because this checkpoint allows health check on 443, so that my load balancer marks it as healthy, and the most important is I want to have the new protocol enabled, and for that, I will have Custom UDP traffic on Port 6081.
- 229_Hands On_ Gateway Load Balancer.txt:97: And in the VPC, you want to have it in a Network Appliance VPC in ap-south-1a, because that's the only subnet we have in this AC.
- 229_Hands On_ Gateway Load Balancer.txt:98: And you should select the Gateway Load Balancer subnet accordingly.
- 229_Hands On_ Gateway Load Balancer.txt:104: Target group name will be Gateway Load Balancer Target Group and protocol is GENEVE that's what you can't change.
- 229_Hands On_ Gateway Load Balancer.txt:105: That's the only protocol is supported.
- 229_Hands On_ Gateway Load Balancer.txt:110: Now, depending on your Network Appliance, you should know where you can reach for the health check.
- 229_Hands On_ Gateway Load Balancer.txt:121: So you can't directly access the load balancer from the previous VPC because this load balancer is private.
- 229_Hands On_ Gateway Load Balancer.txt:160: And for that, if you look at this architecture, I had this Jump host here and I should be SSH into this checkpoint so that I can do a TCP dump on Port 6081 to check if any traffic is flowing through it or not.
- 229_Hands On_ Gateway Load Balancer.txt:167: I created it just now, and I want to do SSH using this key, and the username for this checkpoint is admin, and the IP address, you should get the private IP address from AWS console.
- 229_Hands On_ Gateway Load Balancer.txt:184: Okay, now comes the most important part of setting up the right routes for this architecture, right?
- 229_Hands On_ Gateway Load Balancer.txt:194: And that's where let's first create the Ingress route table for your internet gateway and understand this right, you have to have the entry for this subnet as a destination, and the target should be VPC endpoint.
- 229_Hands On_ Gateway Load Balancer.txt:199: And as in route, I want to add a new route, and I'll say if the traffic is for the 10.0.20.0/24 which is my Application subnet, it should go through the Gateway Load Balancer endpoint, and it automatically gets populated here.
- 229_Hands On_ Gateway Load Balancer.txt:213: And this time we have one more route table, which is for the Application, and this is the most important one.
- 229_Hands On_ Gateway Load Balancer.txt:214: Here, all the traffic should be routed through VPC endpoint, which is an outbound traffic for this application.
- 229_Hands On_ Gateway Load Balancer.txt:219: And instead of internet gateway, it should be the Gateway Load Balancer endpoint.
- 229_Hands On_ Gateway Load Balancer.txt:230: Now you have to do that configurations on the checkpoint on a cloud guard, ec2 machine that all the traffic for the pin should be allowed, but that is out of scope of this particular exercise, and if you know how to configure checkpoint, then go ahead and do those configuration by yourself.
- 229_Hands On_ Gateway Load Balancer.txt:235: So I hope things are clear to you now, and with that, we will move towards now few additional details about the Gateway Load Balancer that you should know for your exam, and we will now cover that.
- 230_Summary_ Gateway Load Balancer.txt:11: So that's about the Gateway Load Balancer in short and next let's look at some important points you need to remember for your exam.
- 231_Gateway Load Balancer - Exam Essentails.txt:1: Okay, so now let's look at some important points with respect to the exam for Gateway Load Balancer.
- 231_Gateway Load Balancer - Exam Essentails.txt:3: That means you can't really change that unlike ALB or Network Load Balancer, you could configure your listener and configure the port on which the load balancer will listen, but in case of Gateway Load Balancer, it listens for all packet across all ports and you can't even specify the protocol or port there.
- 231_Gateway Load Balancer - Exam Essentails.txt:4: And you can only specify the rule for routing the request to the target group, that means there are URL best routing or host based routing like in ALB and finally, the listener cannot be deleted.
- 231_Gateway Load Balancer - Exam Essentails.txt:8: And that means the network appliance must support the UDP traffic on port 6081.
- 231_Gateway Load Balancer - Exam Essentails.txt:11: But if it is not a TCP or UDP flows, then it only does the stickiness using 3-tuple, that means source IP, destination IP, and the protocol.
- 231_Gateway Load Balancer - Exam Essentails.txt:16: That means they are internal only and there is no public DNS (indistinct).
- 231_Gateway Load Balancer - Exam Essentails.txt:17: And that's why you can't really reach to the Gateway Load Balancer directly, instead you have to first create the Gateway Load Balancer endpoint service, and then you have to create endpoint to send the traffic to the Gateway Load Balancer.
- 231_Gateway Load Balancer - Exam Essentails.txt:18: It doesn't also support the dual stack mode, as of now, it is only supported for IPv4 traffic only.
- 231_Gateway Load Balancer - Exam Essentails.txt:20: So there are no security groups and ultimately that means the target which are the receiving the traffic should have the security groups which allows the traffic to come from the Gateway Load Balancer itself.
- 231_Gateway Load Balancer - Exam Essentails.txt:29: So according to the scenario, you should be able to choose whether it's a Gateway Load Balancer you will be using or the AWS Network Firewall you will be using or other load balancer that you will be using.
- 232_AWS Certificate Manager (ACM).txt:9: And you know that you shouldn't transact if your bank website is Http or other, you shouldn't access any website which is over Http.
- 232_AWS Certificate Manager (ACM).txt:38: But as of now, our focus is only on this SSL certificate which ACM can provide you.
- 232_AWS Certificate Manager (ACM).txt:72: Now ACM which provides a public certificate doesn't allow that because you can't export the ACM certificate and deploy it on EC2 machines or ECS cluster.
- 232_AWS Certificate Manager (ACM).txt:81: And to be honest, the deep dive of ACM should be part of AWS security certification than the network certification.
- 232_AWS Certificate Manager (ACM).txt:82: But let's here cover what is important for your network certification exam.
- 232_AWS Certificate Manager (ACM).txt:107: But wild card cannot be in the middle of the domain name.
- 233_AWS Firewall Manager.txt:32: For example, if you define the rules, say none of the security group in your AWS account should have port 22 open to the internet.
- 233_AWS Firewall Manager.txt:57: So for example, if you want to have a quick and easy way to deploy the firewall for protecting the web application at layer seven, then you should rather use AWS Web Application Firewall, that is WAF.
- 233_AWS Firewall Manager.txt:60: Similarly, if you want to do that for the DDoS attacks, you might have guessed it should be AWS Shield Advance.
- 233_AWS Firewall Manager.txt:61: And if you need more sophisticated firewall for your VPCs for IPS and IDs systems, then you should use AWS Network Firewall.
- 233_AWS Firewall Manager.txt:62: And if you need any third party IPS and IDs systems so that you can bring in into your VPC and you can route your traffic through those third party firewalls, then you should be using AWS Gateway Load Balancer.
- 233_AWS Firewall Manager.txt:63: And if you want to manage everything at one place centrally, then you should be using AWS Firewall Manager.
- 233_AWS Firewall Manager.txt:68: And you should be able to.
- 331_NACL & Security Groups.txt:59: So the default NACL is super important because it can come up in the exam.
- 331_NACL & Security Groups.txt:70: Okay, so now let's go into the important concept of Ephemeral Ports.
- 331_NACL & Security Groups.txt:71: So when you have a client and a server connecting together, they must use port.
- 331_NACL & Security Groups.txt:92: Well, because they're very important in terms of NACLs.
- 331_NACL & Security Groups.txt:104: And so therefore, the DB NACL must allow outbound TCP on ports and, on ephemeral port, so, maybe from 1024 to 65,535 to web subnet CIDR, and then the web NACL also needs to allow inbound TCP on this range of ephemeral ports from the DB subnet CIDR.
- 331_NACL & Security Groups.txt:105: And this is why ephemeral ports are super important to configure well.
- 331_NACL & Security Groups.txt:108: So it's super important for you to realize that, if you add subnets into a NACL, you need to also update all the NACL rules to make sure that the combination of connections is possible.
- 331_NACL & Security Groups.txt:111: The security group supports allow rules only, whereas NACL supports allow and deny rules, this is why you can deny a specific IP address in a NACL.
- 332_NACL & Security Groups Hands On.txt:6: So, it's very important to notice this.
- 332_NACL & Security Groups Hands On.txt:24: So, this should work right now, so let's try it.
- 332_NACL & Security Groups Hands On.txt:27: So, right now we only have 4 22.
- 332_NACL & Security Groups Hands On.txt:50: So, as we can see, this shows the very important aspects around the rule numbers.
- 332_NACL & Security Groups Hands On.txt:54: The inbound rule is going to allow my traffic, but the outbound rule shouldn't.
- 332_NACL & Security Groups Hands On.txt:56: So, what's really important to notice is that this is true, regardless of if the security group of my EC2 instance did, in fact, allow port 80 in, okay.
- 332_NACL & Security Groups Hands On.txt:76: So, it's very important for you to notice the difference between EC2 security groups and network ACL's.
- 352_AWS Network Firewall.txt:23: So we say, hey, you only allow outbound traffic from our VPC into our mycorp domain or any third party software repository that we only allow.

### 6. Patterns / Architectures
- 218_Introduction to AWS Network Security Services.txt:94: Now, if you talk about any architecture and where the services fit, then let's try to imagine that.
- 218_Introduction to AWS Network Security Services.txt:96: These are very familiar architecture to you.
- 218_Introduction to AWS Network Security Services.txt:100: So this is kind of simple architecture, I would say.
- 218_Introduction to AWS Network Security Services.txt:120: So overall, this is how your architecture looks like if you want to integrate AWS security services into your architecture.
- 219_Recap - Security Groups and Network ACL.txt:37: Right now with that context, let's look at some of the architectures that may come up when you use security groups and network ACLs together, and primarily in the case where you want to block those malicious IP addresses.
- 223_Introduction to AWS Network Firewall.txt:28: So if you look at this architecture, you know that inside VPC you have subnets and then you launch EC2 machines, and then you want to put a firewall.
- 223_Introduction to AWS Network Firewall.txt:38: And that's where you can't really do the deep packet inspection with these two firewalls.
- 223_Introduction to AWS Network Firewall.txt:77: You can also use wildcard into a domain name, and it also allows you to do the deep packet inspection.
- 223_Introduction to AWS Network Firewall.txt:79: So that kind of deep packet inspection you can do with the network firewall.
- 223_Introduction to AWS Network Firewall.txt:86: And now let's look at the firewall components, routing, VPC architecture and how to write those rules.
- 226_Hands On_ AWS Network Firewall.txt:14: And now if you look at the architecture that we want to build to achieve this, it should look something like this, right.
- 226_Hands On_ AWS Network Firewall.txt:132: If you're confused, just look at this architecture and you should be able to understand what I'm doing.
- 226_Hands On_ AWS Network Firewall.txt:139: Okay, so I think we are done with the architecture that we want to try.
- 227_The legacy way of using the Network appliances.txt:4: There are some architectures that we are going to talk throughout this lecture but then there wasn't a very good way which will give you the high availability as well as scaling capability and that is what exactly the problems, this gateway load balancer that solves.
- 227_The legacy way of using the Network appliances.txt:11: So if you go a few years back, we had hardware-based network appliances and typically any organization wanted to have the same policies or same network traffic inspection policies whether they're operating on premises or in AWS Cloud.
- 227_The legacy way of using the Network appliances.txt:13: Now, in this case, if you look at this architecture, there needs to be a VPN connection between a cloud and your on-premise network.
- 227_The legacy way of using the Network appliances.txt:15: So this is an architecture that people use to implement because one, the appliances were hardware-based.
- 227_The legacy way of using the Network appliances.txt:18: Now, if you look at this architecture, it's complex, there is a lot of routing and re-routing involved here because as the traffic lands here, you have to force this traffic to on-premise data center network appliances then you have to route that back to your applications.
- 227_The legacy way of using the Network appliances.txt:39: But do you see a problem with this architecture?
- 227_The legacy way of using the Network appliances.txt:40: Now, if you go to the AWS documentation or best practices, it always says that your application architecture should be highly available and this architecture isn't highly available for the reason that there are no multiple AZs.
- 227_The legacy way of using the Network appliances.txt:47: That means with this architecture, you cannot have a change, neither you can scale your network appliances.
- 227_The legacy way of using the Network appliances.txt:51: So in the next lecture, let's see how gateway load balancers solve this problem and how the architecture and traffic for gateway load balancer looks like.
- 228_Gateway Load Balancer and Traffic flow.txt:2: Now here we are showing two VPCs because this is what the ideal architecture would be, but you can very well have just single VPC and you could have Gateway load balancer and endpoint and applications and firewalls in the same VPC as well.
- 228_Gateway Load Balancer and Traffic flow.txt:5: But to have better architecture, I'm showing here the two separate VPC for application VPC and network appliances with VPC.
- 228_Gateway Load Balancer and Traffic flow.txt:8: Let's try to understand how Gateway load balancer architecture looks like.
- 228_Gateway Load Balancer and Traffic flow.txt:16: Now, similar architecture here, in that case, you have Gateway load balancer endpoint in the application VPC.
- 228_Gateway Load Balancer and Traffic flow.txt:46: So if I talk about this architecture, it's simple, low-latency, scalable, because here there is a fleet of network appliances and HA as well.
- 228_Gateway Load Balancer and Traffic flow.txt:110: I know this could be a little confusing, but if you look at this architecture and understand this flow, I hope it will be clear to you.
- 228_Gateway Load Balancer and Traffic flow.txt:118: So this is how the overall architecture should look like for your Gateway load balancer.
- 229_Hands On_ Gateway Load Balancer.txt:12: Now, if you drill down into this architecture, you know that we need multiple subnets and then we need to have corresponding group tables that we discussed in the last lecture.
- 229_Hands On_ Gateway Load Balancer.txt:13: So this is how my architecture will look like for this lab.
- 229_Hands On_ Gateway Load Balancer.txt:34: So I hope this architecture is clear, and to be honest, based on just this architecture, you should be able to set this up and that's what we are going to do.
- 229_Hands On_ Gateway Load Balancer.txt:150: By that time, let's go back to our architecture and see what is there.
- 229_Hands On_ Gateway Load Balancer.txt:160: And for that, if you look at this architecture, I had this Jump host here and I should be SSH into this checkpoint so that I can do a TCP dump on Port 6081 to check if any traffic is flowing through it or not.
- 229_Hands On_ Gateway Load Balancer.txt:184: Okay, now comes the most important part of setting up the right routes for this architecture, right?
- 229_Hands On_ Gateway Load Balancer.txt:205: Let's go back to the architecture and next we want to update the route table for Gateway Load Balancer endpoint.
- 229_Hands On_ Gateway Load Balancer.txt:212: Okay, now let's go back to the architecture again.
- 230_Summary_ Gateway Load Balancer.txt:3: And this network appliances could be Firewalls, Intrusion Detection and Prevention Systems, Deep Packet Inspection Systems, or payload manipulation softwares.
- 233_AWS Firewall Manager.txt:5: And as you might have guessed, in that case, you need a centralized service which can manage this firewall across all these accounts.
- 233_AWS Firewall Manager.txt:16: And additionally, Firewall Manager also provides you the centralized dashboard for monitoring the DDoS attacks.
- 233_AWS Firewall Manager.txt:47: So all this can be recorded in AWS Security Hub through the notifications from the firewall manager.
- 233_AWS Firewall Manager.txt:48: And then in the security hub you can further integrate with your ticketing system.
- 233_AWS Firewall Manager.txt:49: For example, you will automatically create a JIRA ticket or you can centrally, you know, view all the violations in the dashboard that Security Hub provides.
- 233_AWS Firewall Manager.txt:65: It is just a management of firewall, which means all these AWS services that you see are not mutually exclusive, but you can typically use them together in different architecture because the purpose is different.
- 352_AWS Network Firewall.txt:26: And we also have active flow inspection, so we can actually have an intrusion prevention capability just like we have with the Gateway Load Balancer, but all managed by AWS.
- 352_AWS Network Firewall.txt:31: And you can do traffic filtering and flow inspection.

## Step 3 â€” Deep Expansion (Network Security Control Concepts)

### AWS WAF
- What it is: Layer-7 web filtering service for HTTP(S) threat patterns and request controls.
- Why it exists: Blocks common web attacks and enforces request-shaping logic near entry points.
- Internal working: Rules evaluate request attributes and apply allow/block/count decisions.
- Architecture: Attach to CloudFront/ALB/API Gateway with managed and custom rule groups.
- Key components: Web ACL, rule groups, rate limits, managed signatures, logging.

### AWS Network Firewall
- What it is: Managed network-layer firewalling and inspection service for VPC traffic paths.
- Why it exists: Centralizes east-west and north-south network enforcement without self-managed appliances.
- Internal working: Route tables steer traffic through firewall endpoints applying stateless/stateful rules.
- Architecture: Inspection VPC or centralized security VPC pattern with policy-managed rule groups.
- Key components: Firewall endpoints, policies, stateless/stateful groups, route integration.

## Cross-Cloud Mapping (Concept-First)

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| Stateful workload firewall | Security Groups | NSG | VPC firewall rules |
| L7 web protection | AWS WAF | Azure WAF | Cloud Armor |
| DDoS managed protection | AWS Shield | Azure DDoS Protection | Cloud Armor + edge protection patterns |
| Inline managed network firewall | AWS Network Firewall | Azure Firewall / NVA patterns | Cloud NGFW / third-party patterns |
| Central policy orchestration | Firewall Manager | Azure Policy + Defender governance | Organization policy/security center patterns |

### Trade-offs and Decision Notes
- Stateful workload filtering is necessary but not sufficient for internet-facing applications.
- Inline inspection improves control depth but increases path complexity and operational burden.
- Central governance only works when teams standardize enforcement scope and exception handling.

## Phase-wise Architect-Level Organization

### Phase 1 â€” Foundations
- Classify threats by layer: workload, web, edge, and inline network path.
- Decide where prevention, inspection, and certificate trust belong.

### Phase 2 â€” Core Services
- Implement SG/NACL baseline, WAF edge controls, and inline firewalling where needed.
- Standardize certificate issuance and centralized policy enforcement.

### Phase 3 â€” Advanced Patterns
- Centralize policy orchestration with shared security VPC and organization governance.
- Combine edge and network controls to contain different attack paths.

### Phase 4 â€” System Design
- Reference architecture: layered network-defense stack from edge to workload boundary.
- Scaling considerations: rule growth, false positives, inspection bottlenecks, governance exceptions.
- Cost considerations: inspection throughput, advanced protection tiers, and central operations overhead.

<!-- BEGIN PRACTICE_ENHANCEMENTS -->

## Hands-On Practice (Kid-Friendly Step-by-Step)

### Safety First
- Use a sandbox account only.
- Set a budget alert before creating resources.
- Delete resources after practice to avoid surprise cost.

### Hands-On Signals Found In This KB
- Signal 1: It's not like a security group that there is no inbound rule by default, but for example, you just create the stateful rule groups and you don't add any rule.
- Signal 2: Transcript signals that it's not like a security group that there is no inbound rule by default, but for example, you just create the stateful rule groups and you don't add any rule.
- Signal 3: Key Insights: So if I go in the network balancer right here, and have a look at the listeners, I can add a listener of it being TLS, and then we can forward to a demo target group right here and then for security policy, we can set whatever policy we want, as well as choose where the certificate is from so from SCM, IAM, or import, and finally we can set an application layer protocol negotiation, which I won't go over but this is a pretty advanced setting for TLS.
- Signal 4: Key Insights: So basically you can apply all these rules from a single console across your AWS account.
- Signal 5: Key Insights: And we'll have a dedicated section, which will cover AWS Network Firewall as well as the hands-on exercises around that.
- Signal 6: Key Insights: You can also create alerts and you can also monitor the metrics, and then, you know what I'm saying, the notifications.
- Signal 7: Key Insights: Now this is true when you create a security group and you don't add any rule by yourself, right?
- Signal 8: Key Insights: Now when we say default, which means when you create a new network ACL, then there are no inbound and outbound rules.
- Signal 9: Key Insights: And, finally, one important change, again, is that, earlier, you couldn't combine multiple rules together, but now, with the new WAF, you can create logical conditions, like A and B, not C kind of combination.
- Signal 10: Key Insights: Now, AWS WAF is really very easy to deploy.

### Service-Specific Lab Paths
### Activity 1: Elastic Load Balancing Lab for Security groups, NACLs, AWS WAF, Shield, Network Firewall, GWLB, ACM, Firewall Manager
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

### Activity 2: Amazon VPC Lab for Security groups, NACLs, AWS WAF, Shield, Network Firewall, GWLB, ACM, Firewall Manager
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

### Activity 3: Amazon EC2 Lab for Security groups, NACLs, AWS WAF, Shield, Network Firewall, GWLB, ACM, Firewall Manager
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

### Activity 4: Amazon CloudWatch Lab for Security groups, NACLs, AWS WAF, Shield, Network Firewall, GWLB, ACM, Firewall Manager
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

Use this lens to study Security groups, NACLs, AWS WAF, Shield, Network Firewall, GWLB, ACM, Firewall Manager in a cloud-agnostic way: focus on capability first, provider name second.

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
| Elastic Load Balancing | Elastic Load Balancing | Azure Load Balancer or Application Gateway | Cloud Load Balancing |
| Amazon VPC | Amazon VPC | Azure Virtual Network | VPC Network |
| Amazon EC2 | Amazon EC2 | Azure Virtual Machines | Compute Engine |
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

