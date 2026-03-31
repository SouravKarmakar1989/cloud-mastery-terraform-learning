# 11_Transit_CloudWAN_Lattice.md

## Scope
- Topic: Transit Gateway, Cloud WAN, and VPC Lattice for transit control, segmentation, and service-to-service networking
- Files processed: 31
- Extracted non-empty transcript lines: 2912
- Processing mode: line-by-line (sentence-level), zero-loss

## Real Material - Architect Learning Build (Domain 11: Transit, Cloud WAN, and Lattice)

This section is the study-first architecture guide for centralized routing domains, global network policy, and service-to-service networking abstraction.

### Phase 1 - Foundations

#### Module 1: Transit Mental Model
- Transit services exist to replace unmanaged mesh connectivity with controlled route domains.
- Segmentation is the primary design question, not just attachment count.
- Central routing power is useful only if ownership and policy are explicit.




##### Source Transcript Details
- Module focus: Transit Mental Model
- Primary transcript files:
- outputs/AWS Speciality/advanced-networking-specialty/10_Transit Gateway/086_Transit Gateway Multicast.txt
- outputs/AWS Speciality/advanced-networking-specialty/10_Transit Gateway/077_Hands On_ Transit Gateway & VPCs with full routing.txt
- outputs/AWS Speciality/advanced-networking-specialty/10_Transit Gateway/089_TGW Architecture_ Centralized VPC interface endpoints.txt
- outputs/AWS Speciality/advanced-networking-specialty/10_Transit Gateway/081_Transit Gateway AZ affinity & Appliance mode.txt
- outputs/AWS Speciality/advanced-networking-specialty/10_Transit Gateway/078_Hands On_ Transit Gateway & VPCs with restricted routing.txt
- outputs/AWS Speciality/advanced-networking-specialty/10_Transit Gateway/088_TGW Architecture_ Centralized traffic inspection with Gateway Load Balancer.txt
- outputs/AWS Speciality/advanced-networking-specialty/16_VPC Lattice/152_Hands on_ VPC lattice service access with custom domain name.txt
- outputs/AWS Speciality/advanced-networking-specialty/10_Transit Gateway/083_Transit Gateway Connect Attachment.txt
- outputs/AWS Speciality/advanced-networking-specialty/10_Transit Gateway/087_TGW Architecture_ Centralized egress internet.txt
- outputs/AWS Speciality/advanced-networking-specialty/10_Transit Gateway/090_Transit Gateway vs VPC Peering.txt
- Top concept clusters from transcript metadata:
- Transit Operational Context
- Transit and Segmentation
- Service-to-Service Networking
- Centralized Network Governance
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 31
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 2912
- Key insights inside selected files: 1302
- Unique concept tags in selected files: 4

##### Transcript-Enriched Learning Notes
- Hello, and welcome to this lecture, Multicast with Transit Gateway.
- So it's important to just know about what is multicast and what are the features available in Transit Gateway for supporting multicast traffic.
- And then, we'll see how Transit Gateway supports multicast traffic.
- And then, AWS now supports multicast with transit gateways.
- And if you now look at how AWS Transit Gateway supports the multicast, you have to enable the multicast feature while you create the transit gateway.
- That means after you create the transit gateway, you can't enable that.
- So, you could have your sources of the multicast traffic outside of AWS, and then sending all the traffic to EC2 instances in the VPC, which are attached to your transit gateway.
- And then, you have transit gateway which is attached to the VPC.
- And while we created this transit gateway, we also enabled the multicast for this.
- That means you could have multiple VPCs attached to the same transit gateway.
- That means, not necessarily you should have just transit gateway and VPC from the same AWS account.
- So, that's about how the traffic flows in case of transit gateway multicast.
- Now, you could also do another thing, as I said, you can integrate transit gateway with external multicast services.
- Now, in this case, if you directly attach your corporate data center to transit gateway over Direct Connect, it doesn't help.
- Because transit gateway does not support multicast over Direct Connect or Connect attachment, right.
- And once this GRE tunnel is enabled, you can then bring in the transit gateway, and can attach all these EC2 instances inside your VPC, ENIs to this transit gateway and create a multicast domain, and then, can create...
- And now, this multicast router from on-premises can send the traffic to your virtual router, which are part of your multicast group as a source, and then, it'll send this traffic to the transit gateway, and then, tran...
- So, first, transit gateway support routing multicast traffic between subnets of attached VPC.

##### Polished Architect Notes
- Transcript signals that and welcome to this lecture, Multicast with Transit Gateway.
- Transcript signals that it's important to just know about what is multicast and what are the features available in Transit Gateway for supporting multicast traffic.
- Transcript signals that then, we'll see how Transit Gateway supports multicast traffic.
- Transcript signals that then, AWS now supports multicast with transit gateways.
- Transcript signals that if you now look at how AWS Transit Gateway supports the multicast, you have to enable the multicast feature while you create the transit gateway.
- Transcript signals that that means after you create the transit gateway, you can't enable that.
- Transcript signals that you could have your sources of the multicast traffic outside of AWS, and then sending all the traffic to EC2 instances in the VPC, which are attached to your transit gateway.
- Transcript signals that then, you have transit gateway which is attached to the VPC.
- Transcript signals that while we created this transit gateway, we also enabled the multicast for this.
- Transcript signals that that means you could have multiple VPCs attached to the same transit gateway.
- Transcript signals that that means, not necessarily you should have just transit gateway and VPC from the same AWS account.
- Transcript signals that that's about how the traffic flows in case of transit gateway multicast.

##### Architect Synthesis (Transcript-Derived)
- Treat Transit Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Transit and Segmentation as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Service-to-Service Networking as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Centralized Network Governance as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: and welcome to this lecture, Multicast with Transit Gateway.
- Design implication: it's important to just know about what is multicast and what are the features available in Transit Gateway for supporting multicast traffic.
- Design implication: then, we'll see how Transit Gateway supports multicast traffic.
- Design implication: then, AWS now supports multicast with transit gateways.
#### Module 2: Global Network Control
- Cloud WAN extends the idea of segmented transit into a broader managed fabric.
- Policy versioning and segment definition become architecture artifacts.
- Global control planes reduce sprawl only when teams respect shared standards.




##### Source Transcript Details
- Module focus: Global Network Control
- Primary transcript files:
- outputs/AWS Speciality/advanced-networking-specialty/16_VPC Lattice/152_Hands on_ VPC lattice service access with custom domain name.txt
- outputs/AWS Speciality/advanced-networking-specialty/16_VPC Lattice/149_VPC lattice components - Lattice Network, Service, Resource and more.txt
- outputs/AWS Speciality/advanced-networking-specialty/16_VPC Lattice/150_VPC lattice network associations.txt
- outputs/AWS Speciality/advanced-networking-specialty/16_VPC Lattice/148_VPC lattice introduction.txt
- outputs/AWS Speciality/advanced-networking-specialty/16_VPC Lattice/151_VPC lattice traffic flow.txt
- outputs/AWS Speciality/advanced-networking-specialty/16_VPC Lattice/154_VPC lattice common architectures.txt
- outputs/AWS Speciality/advanced-networking-specialty/15_AWS Cloud WAN/146_Connecting Transit Gateway & Direct Connect.txt
- outputs/AWS Speciality/advanced-networking-specialty/16_VPC Lattice/155_VPC lattice section summary.txt
- outputs/AWS Speciality/advanced-networking-specialty/10_Transit Gateway/086_Transit Gateway Multicast.txt
- outputs/AWS Speciality/advanced-networking-specialty/10_Transit Gateway/077_Hands On_ Transit Gateway & VPCs with full routing.txt
- Top concept clusters from transcript metadata:
- Transit Operational Context
- Transit and Segmentation
- Service-to-Service Networking
- Global WAN Control Plane
- Centralized Network Governance
- Connectivity Abstraction
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 31
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 2912
- Key insights inside selected files: 1116
- Unique concept tags in selected files: 6

##### Transcript-Enriched Learning Notes
- Now let's do the exercise for VPC lattice.
- So on the left side we will have the client VPC in which we will have a simple EC2 instance from where we will check the connectivity to the VPC lattice service.
- And then we will have VPC lattice service which will route the traffic to corresponding target group based on the URL path.
- And then we will associate this app service with the VPC lattice network.
- At the same time, we will also associate this client VPC with the VPC lattice network using VPC association.
- So VPC lattice solves the problem of overlapping cidrs right.
- And I want a public IP so that I can connect and then can initiate the request to the VPC lattice later.
- And then we will move towards the VPC lattice configuration.
- Now let's go to the VPC lattice.
- But as soon as we associate this target group with the VPC lattice service, then it will make the health check, which is very similar to the Elastic Load balancer if you remember.
- Now let's go to the next step where we are going to create VPC lattice service.
- So let's go to the lattice services.
- Now we don't have VPC lattice network as of now.
- So VPC lattice service has been created.
- And now we will do the important thing that is creating the VPC lattice network.
- As we are going to create the VPC lattice network there are some prerequisites that we will first implement right.
- When we associate the client VPC with the VPC lattice network.
- Now we can go ahead and create the VPC lattice network.

##### Polished Architect Notes
- Transcript signals that let's do the exercise for VPC lattice.
- Transcript signals that on the left side we will have the client VPC in which we will have a simple EC2 instance from where we will check the connectivity to the VPC lattice service.
- Transcript signals that then we will have VPC lattice service which will route the traffic to corresponding target group based on the URL path.
- Transcript signals that then we will associate this app service with the VPC lattice network.
- Transcript signals that at the same time, we will also associate this client VPC with the VPC lattice network using VPC association.
- Transcript signals that vPC lattice solves the problem of overlapping cidrs right.
- Transcript signals that i want a public IP so that I can connect and then can initiate the request to the VPC lattice later.
- Transcript signals that then we will move towards the VPC lattice configuration.
- Transcript signals that let's go to the VPC lattice.
- Transcript signals that as soon as we associate this target group with the VPC lattice service, then it will make the health check, which is very similar to the Elastic Load balancer if you remember.
- Transcript signals that let's go to the next step where we are going to create VPC lattice service.
- Transcript signals that let's go to the lattice services.

##### Architect Synthesis (Transcript-Derived)
- Treat Transit Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Transit and Segmentation as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Service-to-Service Networking as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Global WAN Control Plane as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Centralized Network Governance as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: let's do the exercise for VPC lattice.
- Design implication: on the left side we will have the client VPC in which we will have a simple EC2 instance from where we will check the connectivity to the VPC lattice service.
- Design implication: then we will have VPC lattice service which will route the traffic to corresponding target group based on the URL path.
#### Module 3: Service-Network Abstraction
- VPC Lattice solves application connectivity problems above raw network plumbing.
- It changes how services are exposed, discovered, and governed across VPCs and accounts.
- Service networking should be treated as a platform concern, not a routing shortcut.






##### Source Transcript Details
- Module focus: Service-Network Abstraction
- Primary transcript files:
- outputs/AWS Speciality/advanced-networking-specialty/16_VPC Lattice/152_Hands on_ VPC lattice service access with custom domain name.txt
- outputs/AWS Speciality/advanced-networking-specialty/16_VPC Lattice/149_VPC lattice components - Lattice Network, Service, Resource and more.txt
- outputs/AWS Speciality/advanced-networking-specialty/16_VPC Lattice/150_VPC lattice network associations.txt
- outputs/AWS Speciality/advanced-networking-specialty/16_VPC Lattice/151_VPC lattice traffic flow.txt
- outputs/AWS Speciality/advanced-networking-specialty/16_VPC Lattice/148_VPC lattice introduction.txt
- outputs/AWS Speciality/advanced-networking-specialty/16_VPC Lattice/154_VPC lattice common architectures.txt
- outputs/AWS Speciality/advanced-networking-specialty/16_VPC Lattice/155_VPC lattice section summary.txt
- outputs/AWS Speciality/advanced-networking-specialty/10_Transit Gateway/086_Transit Gateway Multicast.txt
- outputs/AWS Speciality/advanced-networking-specialty/10_Transit Gateway/089_TGW Architecture_ Centralized VPC interface endpoints.txt
- outputs/AWS Speciality/advanced-networking-specialty/10_Transit Gateway/081_Transit Gateway AZ affinity & Appliance mode.txt
- Top concept clusters from transcript metadata:
- Transit Operational Context
- Service-to-Service Networking
- Transit and Segmentation
- Centralized Network Governance
- Connectivity Abstraction
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 31
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 2912
- Key insights inside selected files: 1166
- Unique concept tags in selected files: 5

##### Transcript-Enriched Learning Notes
- Now let's do the exercise for VPC lattice.
- So on the left side we will have the client VPC in which we will have a simple EC2 instance from where we will check the connectivity to the VPC lattice service.
- And then we will have VPC lattice service which will route the traffic to corresponding target group based on the URL path.
- For example, if you enter say service name slash EC2 then it goes to this target.
- So we will create this app service.
- And then we will associate this app service with the VPC lattice network.
- At the same time, we will also associate this client VPC with the VPC lattice network using VPC association.
- And we want to access these services using the custom domain name.
- So VPC lattice solves the problem of overlapping cidrs right.
- And I want a public IP so that I can connect and then can initiate the request to the VPC lattice later.
- Then sudo systemctl start httpd dot service and you can just create a file.
- We can't access HTTP service from outside.
- And then we will move towards the VPC lattice configuration.
- Now let's go to the VPC lattice.
- But as soon as we associate this target group with the VPC lattice service, then it will make the health check, which is very similar to the Elastic Load balancer if you remember.
- Now let's go to the next step where we are going to create VPC lattice service.
- So let's go to the lattice services.
- Let's create a service.

##### Polished Architect Notes
- Transcript signals that let's do the exercise for VPC lattice.
- Transcript signals that on the left side we will have the client VPC in which we will have a simple EC2 instance from where we will check the connectivity to the VPC lattice service.
- Transcript signals that then we will have VPC lattice service which will route the traffic to corresponding target group based on the URL path.
- Transcript signals that for example, if you enter say service name slash EC2 then it goes to this target.
- Transcript signals that we will create this app service.
- Transcript signals that then we will associate this app service with the VPC lattice network.
- Transcript signals that at the same time, we will also associate this client VPC with the VPC lattice network using VPC association.
- Transcript signals that we want to access these services using the custom domain name.
- Transcript signals that vPC lattice solves the problem of overlapping cidrs right.
- Transcript signals that i want a public IP so that I can connect and then can initiate the request to the VPC lattice later.
- Transcript signals that we can't access HTTP service from outside.
- Transcript signals that then we will move towards the VPC lattice configuration.

##### Architect Synthesis (Transcript-Derived)
- Treat Transit Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Service-to-Service Networking as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Transit and Segmentation as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Centralized Network Governance as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Connectivity Abstraction as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: let's do the exercise for VPC lattice.
- Design implication: on the left side we will have the client VPC in which we will have a simple EC2 instance from where we will check the connectivity to the VPC lattice service.
- Design implication: then we will have VPC lattice service which will route the traffic to corresponding target group based on the URL path.
### Phase 2 - Core Services

#### Transit Gateway Design
- Use TGW when multiple VPCs and hybrid attachments need centralized routing.
- Route-table segmentation is the real design work in TGW, not just attachment creation.
- Shared services, inspection, and environment isolation all depend on deliberate route domains.

#### Cloud WAN Policy Patterns
- Use Cloud WAN when regional and global network policy must be centrally expressed.
- Segments should reflect business trust and traffic intent, not just org-chart labels.
- Policy change discipline matters because Cloud WAN is effectively a network operating model.

#### VPC Lattice Service Networking
- Use Lattice to simplify service-to-service access across complex network topologies.
- Keep service-network boundaries clear so application teams know what they are consuming.
- Authorization and domain exposure belong in the service-network discussion early.

### Phase 3 - Advanced Patterns

#### Pattern 1: Segmented Transit Core
- Separate production, non-production, shared services, and inspection domains clearly.
- Avoid using one flat transit route domain for convenience.
- Segmentation clarity reduces both blast radius and troubleshooting ambiguity.

#### Pattern 2: Global Policy-Driven Networking
- Express network intent as policy instead of attachment-by-attachment improvisation.
- Use versioned policy changes and predictable segment behavior.
- Global consistency is valuable only if exceptions are controlled.

#### Pattern 3: Application-Network Decoupling
- Use Lattice where service exposure should not depend on every team understanding raw VPC plumbing.
- Abstract service connectivity while keeping policy ownership visible.
- This is a platform-enablement pattern, not a substitute for core network design.

### Phase 4 - System Design (Production)

#### Reference Transit and Service Networking Architecture
- Segmented transit core with policy-managed global WAN layer and explicit service-network abstraction for applications.
- Central ownership for route domains, segment policy, and cross-account service exposure.
- Clear separation between network transport concerns and application networking concerns.

#### Scaling Considerations
- Segment and route-table sprawl can become difficult to reason about quickly.
- Cross-account service-networking governance adds another layer of platform coordination.
- Policy drift is dangerous when central networking becomes a shared dependency for many teams.

#### Cost Considerations
- Attachment processing and centralized services are easy to justify only with real scale.
- Operational complexity grows with every exception to the standard transit or service-network model.
- Poor segmentation is expensive in incident response even if service charges look small.

### Cross-Cloud Concept Mapping (Transit, Cloud WAN, and Lattice)

#### Underlying Concept: Centralized Transit Segmentation
- AWS: Transit Gateway and Cloud WAN segments
- Azure: Virtual WAN hub and segmentation patterns
- GCP: NCC and centralized connectivity domains
- Trade-off: transit centralization is common, but policy-expression style varies by provider.

#### Underlying Concept: Managed Service-to-Service Networking
- AWS: VPC Lattice
- Azure: application networking and service-mesh style abstractions
- GCP: service networking and service-connectivity abstractions
- Trade-off: service-network abstractions are less directly portable than transit concepts.

### Real-World Use Cases from Transcript Signals
- Replace flat peering and ad hoc route growth with segmented transit design.
- Govern multi-region network intent through centralized policy models.
- Simplify service-to-service networking across accounts without exposing raw network complexity to every team.

### Constraints and Exam-Relevant Traps Captured
- Central transit without segmentation discipline just centralizes confusion.
- Cloud WAN policy design is an operating-model question, not just a service configuration question.
- Lattice solves service connectivity, not every network architecture problem.
## Step 1 — Line-by-Line Extraction

Every non-empty line from every source transcript is preserved below with extraction fields.

### File: outputs/AWS Speciality/advanced-networking-specialty/10_Transit Gateway/075_Introduction to Transit Gateway.txt

Line 1:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Hello and welcome to this section, AWS Transit Gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 2:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now Transit Gateway is one of the top three sections which are important for your AWS networking certification.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 3:
- Concepts: Transit Operational Context
- Services: Direct Connect
- Key Insights: Other two being AWS Direct Connect and AWS site-to-site VPN.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 4:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, having said that, it doesn't mean that other sections are not important, but most of the questions in your exam will be from these three sections.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 5:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So Transit Gateway is very important, and make sure that you understand everything that we discuss in this section.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 6:
- Concepts: Transit and Segmentation
- Services: Direct Connect, Transit Gateway
- Key Insights: And one more thing that I want to mention at this point is that it is difficult to just understand the Transit Gateway and all its features without understanding the Direct Connect and the site-to-site VPN, because in reality all these three components typically work together to build some architecture.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 7:
- Concepts: Transit and Segmentation
- Services: Direct Connect
- Key Insights: So in this section, I have tried my best to keep the discussion focused on the Transit Gateways, but ultimately you will be able to connect all these dots after you complete your other section, and specifically the VPN and the Direct Connect section.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 8:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So bear with me for this section if you think that we haven't covered the VPN or DX to the right depth in this section.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 9:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: We are going to cover that in the following sections.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 10:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So I hope that is understood.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 11:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Okay, so what is Transit Gateway?
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 12:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now, I hope you already know at this point what is Transit Gateway and why they were introduced.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 13:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: But just to give you a brief history, Transit Gateways were introduced in 2018, and intent was to simplify the AWS networking when it comes to managing the multiple VPCs, and when you have to have the hybrid connectivity between AWS and on-premises network.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 14:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So one of the key benefits of using Transit Gateway is to simplify the inter VPC network.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 15:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And let me show you that with simple example.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 16:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So assuming you have multiple VPCs and you want to have inter VPC communication.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 17:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now without Transit Gateway, you know that you would have to do VPC peering connection and VPC peering connection is one to one, which means you have to attach two VPCs to each other.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 18:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And VPC pairing doesn't provide the transitive routing, which means if VPCA is connected to B, and B is connected to C, then A cannot communicate with the VPC C.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 19:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So in order to enable the communication between VPC A and C, you have to have the VPC pairing connection set up between VPC A and C.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 20:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now that complicates this architecture a lot.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 21:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now imagine that all these six VPCs needs to communicate with each other, then how many pairing connection you would need.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 22:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So the answer isn't simple.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 23:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: If you see this, there are 15 VPC pairing connections that you will need.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 24:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: The point here is that you can't manage the network like this, right?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 25:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: It was very difficult.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 26:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: And that's where AWS introduced Transit Gateway, which greatly simplifies this architecture to as simple as this.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 27:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So you connect all your VPCs to the Transit Gateway and then Transit Gateway can enable the inter VPC communication.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 28:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now in this entire section, we are going to cover a lot about the Transit Gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 29:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So first thing, it allows the communication between VPCs, as well as between AWS and the hybrid on-premises network.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 30:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now, Transit Gateway supports different kinds of attachments.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 31:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: So we just saw the VPC attachment, but Transit Gateway also supports peering connection between the Transit Gateways.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 32:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: Now this is because Transit Gateways are regional routers.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 33:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: That means you can only attach the VPCs in the same region as Transit Gateways.
- Hidden/Implicit Meaning: Constraint or limitation signal; Transit-domain and segmentation signal.

Line 34:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now if you want to enable the communication between VPCs across different region, then rather you can create Transit Gateway in the respective regions, and then you can peer the Transit Gateway in the same way you peer the VPCs across different regions.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 35:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And again, we are going to dive deep into this architecture.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 36:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: So that's the second kind of attachment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 37:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: That is a third attachment type, which is extending your SD-WAN network and connect it AWS network using the Transit Gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 38:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Again, we are going to see that.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 39:
- Concepts: Transit and Segmentation
- Services: Direct Connect, VPC Attachment
- Key Insights: And further there are VPN attachment and Direct Connect Gateway attachment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 40:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now understanding all these attachments is very important and we are going to dive deep into every type of the architecture in this section.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 41:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now, apart from that, in this section, we are going to see a lot of features of Transit Gateway, like how it supports the multi-cast routing, what's the maximum transmission unit size of the Transit Gateways, how you use Appliance mode, AZ consideration, and how can you share the Transit Gateway across different AWS accounts.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 42:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And finally, we are going to cover lots of architecture.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 43:
- Concepts: Centralized Network Governance, Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So Transit Gateway enables you to have the centralized resources to be used across multiple VPCs.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 44:
- Concepts: Centralized Network Governance, Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So for example, you have a lot of spoke VPCs and you want to allow the internet connection through the Transit Gateway, through the centralized VPC.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 45:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And the reason is you can better control than the outgoing traffic.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 46:
- Concepts: Centralized Network Governance, Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now all those kind of scenarios can be implemented using the Transit Gateway centralized architecture.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 47:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And in this section we are going to cover all these architectures.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 48:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: How you can have the centralized internet access, how you can have the centralized packet inspection using the Gateway Load Balancer and virtual appliances.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 49:
- Concepts: Centralized Network Governance, Transit and Segmentation
- Services: (none explicit)
- Key Insights: And also how can you reach to other AWS services using VPC endpoint, which are also centralized through the Transit Gateways.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 50:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now we are covering that because in your exam, you will have questions around those.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 51:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And at the end of this section there are practice questions.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 52:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So make sure that you can get the right answer based on what we learned in this section.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 53:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So with that, just wanted to give you a glimpse of some of these architectures that we are going to see in this.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 54:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: So this is a Transit Gateway peering across the region, and then this is how you connect Transit Gateway to the on-premise network over the VPN attachment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 55:
- Concepts: Transit and Segmentation
- Services: Direct Connect, Transit Gateway
- Key Insights: And similarly, you can have Transit Gateway connecting to your Direct Connect connection or the Direct Connect Gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 56:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: Don't worry, we are going to dive deep into all these attachment types.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 57:
- Concepts: Centralized Network Governance, Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So ultimately, Transit Gateway can connect to all these attachments, and you can also have centralized traffic inspection by putting your virtual appliances into the centralized VPC and enabling the traffic inspection for north, south, or east, west traffic.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 58:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay, so that's what we are going to see in this section.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 59:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So stay tuned and make sure that you understand every part of this section.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 60:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So with that, let's get started.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/10_Transit Gateway/076_Transit Gateway VPC attachments and Routing.txt

Line 1:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Hello, and welcome to this lecture.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 2:
- Concepts: Transit and Segmentation
- Services: Direct Connect, Transit Gateway
- Key Insights: Now that we have seen that transit gateway can be used to connect VPCs, VPN connection, direct connect gateway, as well as you can have the third party softwares, and transit gateways can be peered across the regions as well.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 3:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now, in this lecture, let's look at how to connect VPCs to transit gateway with VPC attachments.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 4:
- Concepts: Transit Operational Context
- Services: Direct Connect
- Key Insights: Now, having said that the connection with the VPN, as well as direct connect, we will cover that in the respective section when we talk about the VPN as well as direct connect.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 5:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So now let's look at how VPCs connect to the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 6:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now the architecture looks very simple.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 7:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: That should be multiple VPCs and then there is transit gateway.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 8:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: And what you do is create an attachment with the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 9:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: While you create that attachment, you decide this attachment is for the VPCs or a VPN and then if it is a VPC attachment, of course you would have to select the corresponding VPCs as well.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 10:
- Concepts: Centralized Network Governance, Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now, in this architecture I'm showing you three attachments and there is a centralized transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 11:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now there are certain restrictions when you connect VPCs to the transit gateway and the obvious one is that VPC CIDR should not be overlapping.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 12:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So you can't connect the VPCs which have the overlapping CIDRs.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 13:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now with that, let's understand now how the routing happens when you connect multiple VPCs.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 14:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now, as I said, with transit gateway, you get full mesh kind of connectivity, right?
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 15:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: That means any VPC can talk to any other VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 16:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So how does it really happens?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 17:
- Concepts: Centralized Network Governance, Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: Now let's take an example there is VPC A, B, and C with non-overlapping CIDRs as shown here, and then you create centralized transit gateway, and then you create three attachment, attachment A, attachment B, and attachment C.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 18:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now when you create a transit gateway, there will be a default route table of that transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 19:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: Now this route table governs how the traffic should flow across the attached networks.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 20:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now in this case the attached networks are VPCs.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 21:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now as soon as you attach your transit gateway to the VPCs, the VPC CIDR route get propagated to this transit gateway route tables.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 22:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So all the routes that means 10.0.0.0/16, and 10.1.0.0/16 and 10.2.0.0/16 will automatically get propagated to the transit gateway route table, something like this.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 23:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now, as it happens, now if the traffic from VPC A reaches to the transit gateway, it will look at the default route table and it will see how to reach to the other VPCs, right?
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 24:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And in that case, it can route traffic from any VPC to any other VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 25:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So that's what transit gateway default route table does.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 26:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now at the same time, you also need to make sure your VPCs and the subnet also have corresponding route tables and those route tables have a route to reach to the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 27:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now what do I mean by that?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 28:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: In this case the VPC CIDRs' routes are automatically propagated to the transit gateway, but then how does VPC know that the traffic which should go to say 10.1.0.0/16 should go through this VPC attachment, right?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 29:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: It doesn't know that.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 30:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now we have seen this all the time whenever you have to connect multiple networks, you also need to manage responding route.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 31:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So the route has to be managed at both end, the transit gateway side as well as the VPC side.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 32:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: So VPC should also have the route tables and those route table could be the VPCs default route table, that is the main route table, or you can have a subnet and the route table could be of that subnet.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 33:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now, if you see there is a route 10.0.0/8, and we are saying that the traffic should go through the transit gateway.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 34:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now this is an entry which we have to make manually.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 35:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: It's a static route.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 36:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: It doesn't automatically understand that the transit gateway supports the routing to all these CIDRs, and that will be propagated to this VPC route table, it doesn't happen like that.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 37:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: Now if you remember, if you're doing a VPN connection or a BGP, in that case you can propagate the routes from the VPN to your VPC route table, but in this case you have to manually add these entries.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 38:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: So if all these VPCs needs to communicate with each other, then of course you need to add this entry into every VPCs' route table or say a subnet's route table.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 39:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now once you do that, now you can see if VPC A wants to communicate with VPC B, then it will send a packet for example, there is say C to machine, and then it will send the packet like this.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 40:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: Now when the traffic goes out, it will check the corresponding route table for say IP address 10.1.0/15 for example, right? then it will first check its own route table.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 41:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: It says the traffic is part of 10.0.0/8 so it will take the transit gateway route.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 42:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: As soon as it reaches the transit gateway, it will follow the transit gateway route table, and it will check is there a route to reach to 10.1.0/15?
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 43:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: And then this address will be matched with the middle route, which says the traffic has to go through the attachment B and then it reaches to the EC2 instance in VPC B.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 44:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: Similarly, if it has to reach to VPC C, then it will take the route via this attachment C.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 45:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now this is how the routing happens when you use transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 46:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now, thing to remember is that transit gateway has a default route table.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 47:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: And in this route table, the routes from the VPCs are propagated automatically.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 48:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now you can control basically how this route propagation happens, but as of now that is what is important to understand.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 49:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: And also remember that every VPC and the subnet route table also should have the entry and this entry has to be static.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 50:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: It doesn't come automatically.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 51:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: So you have to make sure that you add corresponding entries like here in your subnet route tables or a VPC main route table.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 52:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture, to just show you how the routing happens.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 53:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And now next we will actually do the lab where we'll set up this kind of connectivity.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 54:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So stay tuned and thanks for watching.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/10_Transit Gateway/077_Hands On_ Transit Gateway & VPCs with full routing.txt

Line 1:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Hello and welcome to this lecture.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 2:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now, in this lecture, we will see how to actually set up this connectivity that we just talked about, that means we will have multiple VPCs and then we'll see how the communication happens when you use transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 3:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So in this setup, we will look at the same thing that we just saw.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 4:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: We will have three VPCs and then transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 5:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: And as you can see here, transit gateway comes with a default route table and the CIDR of the VPCs automatically gets propagated to this default route table.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 6:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: Now, additionally, as I said, you also need to manage the route table on the subnet side of your VPC and in that you should at least have this static entry created.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 7:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now for this, we need to have a corresponding setup with us and if you really want to map this to actual implementation in AWS, then we need to just modify a few things here.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 8:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: First of all, as we know, we always work with the subnet, when it comes to the route table or when it comes to launching the EC2 machine.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 9:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: That means within the VPC, you should also have the subnet, which is not shown in this architecture.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 10:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's look at the actual lab architecture rather.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 11:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So I have just modified this architecture a little.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 12:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now, ideally we should just have the private subnet in all three VPCs and then all these VPCs would be connected via the transit gateway and the traffic can float across all the VPCs.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 13:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now for testing the connectivity, we first should log into any of EC2 machines, which are in the private subnet.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 14:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now for that, I have taken VPC A as my reference VPC, where I'll first log into the jump host so that I can then log in or add an SSH to the private EC2 instance in this private subnet.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 15:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, once I'm in this private subnet, now I can reach to the VPC B private EC2 machine or VPC C private EC2 machine.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 16:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now, all this communication would happen through the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 17:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So this would be your actual lab setup, VPC A would have both public and private subnet.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 18:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: Of course, there will be internet gateway and then public route table will have the route entry for the internet but the private subnet will not have that entry into to the internet.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 19:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Instead, private subnet will have corresponding route table entry to reach to the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 20:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And similarly, there will be one VPC and one private subnet for the VPC B and VPC C.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 21:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: And then corresponding route table will also have the route table entry for the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 22:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So it will look something like this, right?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 23:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So this is what the architecture would look like, now let's set this up.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 24:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now one thing to understand that when you launch this EC2 machines in the private subnets, you also need to have the security group.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 25:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And in that security group, you have to make sure that you allow the, maybe a ping traffic or SSH traffic from again, the 10.0.0.0/8 CIDR because it's a super set of all these VPCs IP address range.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 26:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So with that, the high-level steps for implementing this would be create three VPCs and corresponding private subnets in every VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 27:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now VPC A would additionally have the public subnet because we need a way to get into the private EC2 machines, so we launch jump host into the public subnet of VPC A and from there, we will SSH to the EC2 instance in a private subnet.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 28:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: Then create a transit gateway and then you have to create three attachment for three VPCs.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 29:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: And then as you know, automatically the VPC CIDR will be propagated to the transit gateway default route table.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 30:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: And then you don't need to do anything there, but on VPC side in the private subnet route table, you need to add corresponding route table entry so that traffic can flow through the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 31:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, ultimately to test the connectivity, you will first log into the jump host from there to the EC2 instance A and then you will try to ping or SSH to the EC2 instance B its using private IP.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 32:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: If that communication happens, that means the transit gateway connectivity is working fine.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 33:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So this is what we are going to do now, now for simplicity, what I have done is let me just show you here.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 34:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: I already have set up this VPC A, B and C.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 35:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: I already created this two subnets, internet gateway here.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 36:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: I created this jump host.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 37:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: I created this private EC2 machines inside all these three subnets.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 38:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: I haven't yet created the transit gateway or these attachment but just to save some time, I'm not going to show you how to create VPCs and the subnet, I hope you already know that.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 39:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let me go to the console and show you my existing state where I am.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 40:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay, I'm into my AWS console and you can see that I'm into the VPC and I have three VPCs here.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 41:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: The CIDR ranges, 10.0.0.0/16, 10.1.0.0/16 and 10.2.0.0/16.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 42:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, if you look at the subnets, VPC A has two subnets, the private one and the public one.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 43:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: However, VPC B and C has just the private subnets.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 44:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now as I said, I created a subnet in VPC A because I need to launch jump host in that subnet so that I can SSH from my machine to that jump host and from there, I can reach to the EC2 instance A which is in a private subnet.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 45:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now this is just for testing the connectivity, otherwise I can't get into any of the private EC2 machine, so I hope that it's clear.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 46:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Let's look at the route tables for the subnets.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 47:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So this is a public subnet, that's where there is a route for the internet but all other private subnet just have the corresponding local route for the VPC CIDR, which gets created automatically.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 48:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So this is how the setup looks like, I have route tables, corresponding route tables for public subnet and the private subnet and for VPC B and C, I just have it for the private subnet.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 49:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So with that, the VPC is set up but you can see, I already logged into jump host and from jump host, I logged into my private EC2 machine of VPC A.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 50:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now from there, if I try to ping to private IP address of VPC B EC2 machine, I cannot of course, because there is no connectivity here.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 51:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So I'm already into this EC2 instance A, from there, I want to reach to EC2 instance B or C.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 52:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So in the security group, I have allowed the ICMP protocol, that means I should be able to ping from any IP from the CIDR range, 10.0.0.0/8.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 53:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So for that, let's create now the transit gateway and let's follow the next steps.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 54:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So very first thing, let's go to the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 55:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: You will find that in the VPC console.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 56:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So I'm here into the transit gateway and I'm creating the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 57:
- Concepts: Transit Operational Context
- Services: Transit Gateway
- Key Insights: The name would be VPC A, B and C and TGW.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 58:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: For the ASN, you can leave it as it is or if you have your own ASN, you can allocate that and rest of the setting, you need to still keep it as default.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 59:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now, DNS support enabled, that means it can enable the DNS resolution or the VPCs attached to the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 60:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And we'll learn more about that shortly, but essentially what it means, you know that AWS automatically allocated as the public DNS for your EC2 instance and that results to the private IP of the EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 61:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now the same DNS can be resolved or from the other VPCs, if they're connected to the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 62:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: VPN ECMP support, if you are dominating your VPN connection on the transit gateway, then you can leverage maximum bandwidth up to 50 GB by using multiple VPN tunnels because as you know, VPN limit has 1.25 gbps per tunnel and without ECMP, that's the maximum limit.
- Hidden/Implicit Meaning: Constraint or limitation signal; Transit-domain and segmentation signal.

Line 63:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: But ECMP allows you the equal cost multi-part support, that means multiple tunnels you can use in parallel, that's where you can enable the maximum bandwidth.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 64:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: The default route table association, that means when you create attachment, the transit gateway's default route table will be associated with your attachment and default route table propagation means the VPC idea will be automatically get propagated to that default group table.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 65:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Finally, there is something called multicast support.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 66:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now multicast, AWS never supported but with transit gateway, it is supported.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 67:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: It means that any machine can send traffic to any other machine which are part of the multicast group.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 68:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now this is altogether different story and we may have another lecture going forward, but as of now, you can just ignore that.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 69:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So with that, we'll just create the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 70:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: We'll leave the settings as it is and here is our transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 71:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So it will take a couple of minutes for transit gateway to be created.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 72:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So let me pause this with you for a couple of minutes, maybe one minute and I will come back and then we'll create the transit gateway attachments.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 73:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Okay, you can see that the transit gateway has been created successfully, now let's look at the transit gateway route table.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 74:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So this is a default route table of the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 75:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And as of now, there are no association because we haven't created any attachments and then there are no routes as well.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 76:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: Now obviously, the next thing is to create the transit gateway attachment as we said.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 77:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: So let's create a transit gateway attachment and we just have one transit gateway, so let's select that and here you select which type of attachment it is.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 78:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: Now in this case, we are creating the VPC attachment and let's call it say, VPC A.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 79:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: We will create three attachment for three VPCs and we'll see like the corresponding VPC here.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 80:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: And then you have to select which subnet this attachment will be created in.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 81:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now this is important.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 82:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: How transit gateway works is that for multiple AZs, you have to select corresponding subnet.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 83:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: That means if you are selecting AZ 1A, all the subnets in that AZ can communicate with the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 84:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: However, if you have the subnets which are in different AZ and you don't select that AZ at this moment, then transit gateway communication cannot happen with those subnets.
- Hidden/Implicit Meaning: Constraint or limitation signal; Transit-domain and segmentation signal.

Line 85:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now this is very important to understand and I'll reiterate over that in the later lectures.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 86:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So as of now, we just have one AZ and one subnet for VPC A that is a private subnet.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 87:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So transit gateway actually creates an ENR in the subnet and that's why we are selecting that.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 88:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: So let's create an attachment and that's it.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 89:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Similarly, we have to create two more attachments, that's for the VCB B and VPC C.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 90:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: So this is my VPC B attachment and I will select that.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 91:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Automatically, it will pick the, there is just one subnet, so automatically it will pick it up and we want to just create that one.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 92:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And now let me create the third one, that is VPC C and that's it.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 93:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay, now if you'll go back to your architecture, you see here, we have done most of it.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 94:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: We created all these three VPCs, which were pre-created by me actually and then we had jump host and EC2 machines and now we created this transit gateway, which created transit gateway route table and then we created this three attachment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 95:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now ping to verify is that whether the transit gateway route table got these three entries automatically propagated, so let's check that.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 96:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: So I'm back to my transit gateway route tables and I can see here that there is as of now, one VPC attachment associated and now there are three.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 97:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: If you see the propagation, you can see that the transit gateway attachments are propagating the routes here in this table.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 98:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: And if you go to the route, you will see all these three routes here, and you'll see route type is propagated, that means from VPCs, these routes are propagated to the default route table.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 99:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now this will allow the communication from any VPC to the any VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 100:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: At this moment if you think, then you can find that the traffic from EC2 instance A will go to the EC2 instance B.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 101:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now let's check that again.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 102:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So I'm just trying this again but this doesn't happen.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 103:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now Why?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 104:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Let's look at the architecture again.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 105:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: So this is my architecture and you'll notice that though I have this route table here and everything set up, my security groups are good, I'm into this EC2 instance A here, but still I'm not able to ping to EC2 instance B.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 106:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: That's because we haven't modified this route table of the private subnets and I told you that you have to manually add those entries.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 107:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So that is the last piece of the puzzle.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 108:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now let's go back to our route tables.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 109:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: There will be three route tables for three private subnets, so let's make sure we are selecting the right one.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 110:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: I'm into the VPC A private route table.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 111:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: I go to the routes there, edit the routes, add the routes and I'll say the traffic is for 10.0.0.0/8.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 112:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now understand why we are using eight because it spans across all these three VPC CICRs.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 113:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Because we are saying A, that means only this is fixed and the rest can change.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 114:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So it's a super super set basically of all these three VPC CIDRs.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 115:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: And here, I will select transit gateway as my target and save it.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 116:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now same thing we are to repeat for other route tables.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 117:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: So let me go to the private route table of B and edit this route table and do the same thing that I did for VPC A.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 118:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Okay, select the transit gateway and save the changes and let's do that for third private subnet of the VPC C.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 119:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay, I saved the changes.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 120:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So if everything is okay, I expect now the traffic should flow and you can see it started flowing to EC2 instance B.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 121:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now let's also check if it can flow to EC2 instance C, for that, I'm going to my EC2 console and just grabbing the private IP of EC2 instance C, which is this and I'm going back to my console.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 122:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Let me try to ping here.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 123:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And I can go there as well, it's working fine.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 124:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: That means from EC2 instance A, I can dish to B and C and the same way it will happen if I log into EC2 instance B directly and from there I try to ping to A or C.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 125:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So this is what transit gateway does, it allows any activity from any VPC to the any VPC.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 126:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: Now this was possible because we were using all default settings with the default route tables and it allows the route propagations from all the attachment and that's why that was possible.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 127:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: But in reality, not all the time, you will need this kind of connectivity.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 128:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let me go back to the architecture.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 129:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So as of now, every VPC can talk to every VPC, but that's not really what you want always.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 130:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Maybe you only want VPC A to talking to the VPC B and no communication should happen between VPC A to the C.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal.

Line 131:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now in that case, what do you do?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 132:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Because if you go with this setup, then you're not restricting that traffic.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 133:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: Now for that, transit gateway gives you more controls in the form of per-attachment route table.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 134:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, how to do that, let's look into the next lab.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 135:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lab.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 136:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: I hope you would be able to implement this on your own just by looking at this architecture, right?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 137:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So, thanks for watching and I hope you enjoyed it.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 138:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Thank you.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/10_Transit Gateway/078_Hands On_ Transit Gateway & VPCs with restricted routing.txt

Line 1:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Hello and welcome to this lecture.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 2:
- Concepts: Centralized Network Governance, Transit and Segmentation
- Services: Transit Gateway
- Key Insights: In the earlier lab, we saw centralized transit gateway and then we attached three VPC to it.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 3:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: And then we routed the traffic among these three VPCs using the transit gateway default route table.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 4:
- Concepts: Centralized Network Governance, Transit and Segmentation
- Services: Transit Gateway
- Key Insights: This is a typical scenarios where you can also connect your on-premise network to the centralized transit gateway and then you get full mesh connectivity between all those networking components.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 5:
- Concepts: Centralized Network Governance, Transit and Segmentation
- Services: Transit Gateway
- Key Insights: This is what we saw in the last lecture, we had VPCs and a centralized route table of the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 6:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: But in this case what's happening is that now from any VPC, I can reach to any other VPC, like from VPC A, I could reach to B or C and the other way around.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 7:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: But maybe in certain scenarios you want to restrict access between certain VPCs, that means maybe you don't want VPC A and VPC C to communicate with each other.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 8:
- Concepts: Centralized Network Governance, Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now, if you use the centralized transit gateway route table, which is a default route table, of course, there will be route to reach from VPC A to VPC C.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 9:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: But then how do you handle this kind of scenarios?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 10:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: And that's where transit gateway supports VRF, that is Virtual Routing and Forwarding, which means that at every attachment level, you can also have the route table.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 11:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: And then you can go on that through this attachment to which all other transit gateway attachment you can reach to.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 12:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: If we want to have this kind of connectivity where all these three VPCs are connected to the transit gateway but then traffic should not go from VPC A to VPC C.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 13:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: However, we want the communication to happen between VPC A to B and also B to C but not between A to C.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 14:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: Here you see that I have a separate route table, which is for attachment A and there is just one route table entry which says, if the traffic is going to 10.1.0.0/16, then it should go through the attachment B.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 15:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: That means A can communicate to the B and of course attachment B should also have corresponding route for attachment A.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 16:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: Once you create attachment specific route table, then this attachment won't follow the transit gateway default route table.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 17:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: This is very similar to VPC main route table and then you create the subnet specific route table, the same concept applies here.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 18:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, what we want to do is we want to have connectivity between A and B but we don't want connectivity between A and C.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 19:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Our lab setup again, let's see how it will look like.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 20:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: We have three VPCs, we have three EC2 instance in three private subnets and then we will have just one jump host an internet gateway in VPC A so that we can log into the jump host and then from there, we can reach to EC2 instance A and from there we can test our connectivity to B and C.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 21:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: But this time, we would have three route tables like attachment A route table would have entry for attachment B, attachment B would have entries for both attachment A and C and then attachment C route table will have entry for attachment B.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 22:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Once you do that, A can communicate with the B, B can communicate with the C but A cannot communicate with the C.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 23:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: This is what we want to do.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 24:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Our steps will be similar to the earlier one, but in this case, we won't use the default route table association for the transit gateway and default route table propagation will be disabled.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 25:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And if you remember while setting up the earlier lab, we had enabled both these settings.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 26:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: And then we will create three transit gateway attachment for VPCs and then we'll create three route tables as well.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 27:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: And then we'll see how you add the route to the route table so that corresponding routes are created for corresponding attachments.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 28:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: With that, let's go to console and see how to set this up.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 29:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay, I'm into my VPC console, you can see here.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 30:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: And then I have three VPCs that I had created earlier, just that I deleted my previous transit gateway and all the attachments, so it's just three VPCs I have.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 31:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: VPC A would have two subnets, one public, one private and VPC B and C would just have the private subnet.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 32:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Similarly, I have four EC2 instance, one jump post in VPC A public subnet and then three private subnet in three VPCs as I had shown in the diagram.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 33:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now, let's go ahead and create the transit gateway again and this time, we have to make sure that we are not enabling the default route propagation.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 34:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Again, let's call it the VPC A, B and C TGW and let's disable the default route propagation and default route table association and let's create the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 35:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: As you know it will take around one minute for transit gateway to be available and I'll just pause this video for one minute.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 36:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Okay, so transit gateway has been created.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 37:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: Let's see if it created the default route table and did it associate?
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 38:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: It did not because we said there will be no default route table.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 39:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And in this case now, let's create the attachments for the VPC.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 40:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: Let's create three attachment with the same transit gateway and we'll call it VPC A attachment, VPC B and VPC C.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 41:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: This is my first attachment, I'm creating it in a private subnet.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 42:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Similarly, let's create two more attachments.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 43:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: This is my VPC B and now let's create the third attachment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 44:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: Okay, all these three attachments have been created, but as you can see here, just creating attachment doesn't help.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 45:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: You also need to create the route tables.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 46:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: One thing to again understand is that I'm just logged into the jump post and from jump post, I'm now logging to EC2 instance A so that I can test the connectivity to B and C.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 47:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Let me do that and I'm just picking the private IP of EC2 instance A and now I'm moving to my console and I just put the private IP of EC2 instance A.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 48:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now key.pem I already created here because I had my key downloaded and I'm into my EC2 instance A.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 49:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: From there, let's try to ping to EC2 instance B. of course, I should not be able to ping but just let's verify that.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 50:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: For that, I need a private IP of EC2 instance B, I'm just grabbing that and now if I do ping, it doesn't happen.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 51:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay, now let's do the other part.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 52:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: Let's go back to our VPC console and let's create the table for every attachment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 53:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: I'm into transit gateway table, let's create our false route table for VPC A attachment for the transit gateway that we created and similarly, let's create two more route table.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 54:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: I'm into route table A and if you see, it's not attached to any of the attachment as of now.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 55:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Let's do that, let's associate this with the corresponding attachments.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 56:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now it is available, so let's create an association and let's have the association of VPC A and similarly let's have the attachments for other route tables.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 57:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: This is very similar to your subnet attachment if you create a sub-net specific route table, then you have to associate your subnets with the corresponding route table.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 58:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: Okay, now I'm just creating the association for third attachment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 59:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: Okay, what this means is that I have three route table, every route table it's associated with the corresponding attachment, but still this doesn't tell how to reach to other VPCs through this route table.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 60:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: If you look at the propagations, there are no propagation, that means the VPC CIDR address is not propagated to any other attachment as of yet.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 61:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Let's create a propagation.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 62:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Look what you want to do, right?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 63:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: You want to connect VPC A to VPC B only, that means you will create a propagation for only the VPC B attachment, no other attachments.
- Hidden/Implicit Meaning: Constraint or limitation signal; Transit-domain and segmentation signal.

Line 64:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: Let's create a propagation and this time let's say, I want to create a propagation for VPC B attachment and let's create that.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 65:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: That's it, that means A to B is connected, I don't want to add the third attachment for the VPC C.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 66:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: Now, in case of VPC B route table, I want to create propagations for both VPC A as well as VPC C.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 67:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: First time I created for A and now I create it for C.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 68:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And now for C, I just want to create a propagation for B, because this is what my network tells me.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 69:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: Once you create this associations and the propagations, you can go back to the route table and you go to the routes.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 70:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: There you will see you have automatically got the route to go to the attachment B because in our attachment B route table, you added the attachment A as a propagation and that's where these routes you can see here.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 71:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: If you go to the attachment B, then you should see at least two CIDR range, one for VPC A and another one for VPC C and that's where you see these two ranges and that's where you associate your route table to the attachment and then you add corresponding route to your attachment in the form of propagations.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 72:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Propagation means it automatically detects your VPC's route and it automatically adds it here.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 73:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: But if you don't want to do that, you can always create a static route and define the similar entries.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 74:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: The benefit of propagation is that at the VPC end if something changes, maybe you add one more CIDR block to your VPC, then that address is also propagated through the same attachment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 75:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: If you don't propagate and add a static route, then you'd have to do that manually.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 76:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: That is the difference between propagation and the static routes.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 77:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Connectivity wise, it looks good, now let's go back and check it from instance A I can ping two instance B, so I'm going to my console again.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 78:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay, I still can't reach to instance B, any guesses for this?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 79:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Maybe some of you already guessed that I haven't really modified so far any routes on the VPC end.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 80:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: If you go back to the architecture diagram, we just modified the route tables of the attachments but we also need to modify this subnet route table and we need to tell that the traffic is going to 10.0.0.0/8 has to go through the attachment which VPC has.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 81:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Let's do that now and I'm going to my console again.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 82:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: I'm going to my route tables, I have three route tables for three private subnet.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 83:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: I don't want to touch the public subnet, so I'm going to the private subnet of VPC A and the routes.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 84:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: If you see this entry, this has been created from our last lab and we deleted everything and that's where you see this black hole.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 85:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Just remove that and add a new route, 10.0.0.0/8 and you want to go through the transit gateway and just save that.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 86:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Similarly, we'd have to do it for other route tables.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 87:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: Again, go to the routes, remove the earlier black hole and add a route for 10.0.0.0/8 through the transit gateway attachment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 88:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: And let me do the same thing for third route table.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 89:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay, I save the changes.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 90:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Let's go back to the console and see if from A can I reach to B.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 91:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Traffic already started going in, that means our connectivity is working fine, but we also want to make sure I'm not able to reach to instance C, so let me pick the private IP of instance C.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 92:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: I'm into EC2 console and this is the private IP, let me go back to my terminal and here, let me try to do this.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 93:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And this does not work, that means what we planned is working fine.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 94:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Just one more thing we want to do is we want to check if we can connect from instance B to A and B to C, that's another test we want to move.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 95:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: What I'm saying is that from this EC2 instance, I should be able to reach to A and C both, but for that first, I need to log into instance B.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 96:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: I'm currently in instance A and I am able to ping to B and I'm not able to ping to C which is expected.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 97:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: First let me SSH to B now and for that, I need a SSH key on instance A that I'll just create again, just copying my pem file.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 98:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: I'm just pausing this video for a second.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 99:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: I grabbed the private IP of EC2 instance B and now I'll SSH from A to B.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 100:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: I already got my key.pem there, I copied the pem file and I'm just going to EC2 instance B.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 101:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay, I'm into ECP instance B and from there, let's try to ping to EC2 instance A first, that is 10.0.1.85 and I'm able to ping.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 102:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Also let's try to ping to EC2 instance C, let's grab the private IP of EC2 instance C, which is this and let's try to ping to that and I'm able to ping.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 103:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: From B, I'm able to reach to A and C both, but from A, I could only reach to B and not the C.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 104:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Let's confirm that again.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 105:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: I'm back into the EC2 instance A, you can see the IP address and now I just do ping to C and I'm not able to.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 106:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: This is how we had planned our connectivity and it is working perfectly fine.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 107:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now this same logic you can apply to other connectivity as well.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 108:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: If you want to connect your transit gateway to the VP and RDX, then you can also modify these routes accordingly.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 109:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: This is how you can manage the attachment level route table for the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 110:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: With that, I hope you would be able to set up this kind of connectivity on your own and now you understand how to actually achieve the newer level routes in case of the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 111:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Just remember to delete all your transit gateway and your EC2 instances when you are done with the lab.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 112:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: Otherwise, it will cost you some money because transit gateway has per attachment charge separately, so make sure that you delete all the resources that you create while creating this lab.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 113:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Thanks for watching and we'll continue our discussion for the transit gateway with the different architectures that can evolve using the transit gateway and optimize network connectivities.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 114:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Thanks for watching.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/10_Transit Gateway/079_Transit Gateway VPC Network Patterns.txt

Line 1:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: Now that you understand how the routing works for transit gateways.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 2:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: As you know, there is a default route table so all the attachments that you have for the transit gateway will follow the default route table if you haven't customized it.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 3:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: Or you could also have the attachment specific route table so that you get more control over where the traffic can flow and where the traffic cannot flow, right.
- Hidden/Implicit Meaning: Constraint or limitation signal; Transit-domain and segmentation signal.

Line 4:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So all these route tables are called typically routing domains.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 5:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: That means you control how the routing should happen within the transit gateway.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 6:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: Now this allows us to come up with interesting network patterns, and right now we just see couple of patterns around how you can organize your VPCs and this route table to have the east west traffic or say VPC to on premises traffic.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 7:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's understand this, right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 8:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So here, for example, it's a flat network we want to have.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 9:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Flat network means all the VPCs connected to the transit gateway should be able to, you know, communicate with each other.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 10:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now, in that case, obviously you don't need to do much but just connect all those VPCs to the transit gateway and then have the default transit gateway route table.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 11:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: Now what will happen in this case is that every VPC that you attached to the transit gateway will have a common route table and this route table would have the destination as the VPC address range, and the destination will be through the VPC attachment, and the route propagations will be turned on so that any VPC can now communicate with any other VPC.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 12:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: So in this case, VPC will also have its own route table as you know, right, and this entry has to be made statically.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 13:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: You can't have the propagated routes here.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 14:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So every VPC would have the local route for its own destination.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 15:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then for sending traffic to other VPCs, you will add this entry.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 16:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: Now you could always add individual entry for other VPC's address range like 10.2.0.0/16, 10.3.0.0/16 likewise, but we have aggregated all these routes into one CIDR that is 10.0.0.0/8, and then traffic should go through the transit gateway attachment.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 17:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, similarly, there will be route tables for other VPCs as well.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 18:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now that's it.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 19:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: If you have this kind of configuration, then you get full connectivity between all these VPCs, and this gives us one flat network among those VPCs.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 20:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Okay, in this case, you know, these are static route entries, these are propagated routes, and this is called routing domain for the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 21:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So there is just one routing domain as of now.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 22:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now sometimes we need segmented network, which means we want our VPCs to be communicating with maybe your on premise network, but we don't want VPCs to communicate with each other, right?
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 23:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Maybe you are having some kind of SaaS application where every VPC represents one different customer network, right, so you don't want these networks to communicate with each other.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 24:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: But if there is some on premise workloads running and all these customer needs to access that, then of course you need VPC to on premise connectivity, but not among the VPC themselves, right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 25:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now obviously in this case you will need two routing domains.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 26:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: One routing domains which allows this VPCs to communicate with this VPN, and another one which allows this VPN to communicate with your VPCs, right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 27:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's look at that.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 28:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: So with respect to the VPC route tables, you would have local routes and then in every VPC route table, you will have the entry for on premise networks CIDR, again, this is a static entry and the traffic will go through the transit gateway attachment of the VPC.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 29:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So like this.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 30:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And the routine domain for VPCs will just allow connectivity from these VPCs to the on premise network.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 31:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: So only thing that it needs to have is a route for the on premise network with the attachment of the VPN which is connected to this transit gateway, right, and the out protonation is turned on.
- Hidden/Implicit Meaning: Constraint or limitation signal; Transit-domain and segmentation signal.

Line 32:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So this is one routing domain and the other routing domain in which VPN has to send traffic to the on premise network, it would have the propagated routes from all the VPC attachments.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 33:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: So here we are saying, if the traffic has to go from VPN to on premises, for VPC1 it will use VPC attachment one.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 34:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: Similarly, for other VPC it will use corresponding VPC attachment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 35:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now, if you have this kind of transit gateway routing domains configured, what it allows us is full connectivity between VPCs and on-premise network or a VPN, or it could be a DX later on.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 36:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And at the same time you have no east west connectivity between the VPCs.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 37:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now you can verify this, right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 38:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: For example, instance in VPC1 wants to talk to instance in VPC2 two, right?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 39:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So the traffic will be initiated.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 40:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: It will look at the route here, there is no route to go to the 10.2, right?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 41:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: That means traffic will be dropped right there, it can't go further.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 42:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now, even if you have a route which says 0.0.0.0, take it through the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 43:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Then of course traffic will come here.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 44:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: Now at this moment, only the traffic which is allowed from this transit gateway attachment is to 192.168.
- Hidden/Implicit Meaning: Constraint or limitation signal; Transit-domain and segmentation signal.

Line 45:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: IP address.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 46:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So the IP address for this VPC target, that is 10.2.something will be dropped at this point even if you had static entry for, you know, internet traffic.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 47:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So ultimately this allows you to have this kind of segmented network.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 48:
- Concepts: Transit and Segmentation
- Services: Direct Connect, Transit Gateway
- Key Insights: And there will be more architectures that we will explore as we learn more components and how transit gateway can connect to Direct Connect, third party appliances, and further networking components.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 49:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So stay tuned, thank you.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/10_Transit Gateway/080_Transit Gateway AZ considerations.txt

Line 1:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Hello, and welcome to this lecture.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 2:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now, so far for the transit gateway, we had just a simple setup where we had three VPCs and then we just have one private subnet in every VPC.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 3:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: And then we created the transit gateway attachment using those subnets.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 4:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now, what transit gateway does is it also creates the ENR in that particular subnet.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 5:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And of course that means in a particular availability zone in which that subnet resides.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 6:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: However, there are certain peculiar things about the transit gateway and you need to design your VPCs and the subnets accordingly.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 7:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So let's see how the design should look like while using the transit gateway.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 8:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 9:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now, if you see this architecture, there are public subnets, there are private subnets, and I also have a separate set of subnets for connectivity to the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 10:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now, this is an ideal setup where you dedicate one private subnet in each availability zone for the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 11:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: And when I say in each availability zone, it doesn't mean it's an ideal, but this is how it should be because transit gateway has a limitation where if you create the transit gateway attachment in a given AZ, then only the subnet from that AZ would be able to communicate with the transit gateway through that attachment.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal; Transit-domain and segmentation signal.

Line 12:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, this is not the something that we have seen earlier.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 13:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: If you create, say ENI, all the subnet in the VPC are typically able to communicate via that ENI.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 14:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: But this is not true for the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 15:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: And that's where if you need connectivity across three availability zones, then you should have transit gateway attachment created in three availability zone in your VPC.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 16:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And that's what is shown here, right?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 17:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: And it is also good to have a dedicated subnet for transit gateway attachments.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 18:
- Concepts: Centralized Network Governance, Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Sometimes you also have to, you know, use the transit gateway for centralized IPS and IDS systems or you want to have the outbound internet connectivity through the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 19:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: In that case, it makes sense to have a dedicated subnet so that you can have the corresponding routes attached to this private subnets.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 20:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: Okay, so the Availability Zone considerations for transit gateways.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 21:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So when you attach VPC to the transit gateway, you must enable one or more AZs to be used by transit gateway so that the traffic can be routed to the VPC subnet in those particular AZs.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 22:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So to enable each AZ, you specify exactly one subnet, typically in the range of /28, because you don't want to waste unnecessarily the IP addresses inside VPC. /28 still gives 11 usable IP addresses.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 23:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now transit gateway places network interface in the subnet using one IP address from the subnet, we know that.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 24:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: But remember that after you enable the AZ, traffic can be routed to all subnet in that AZ only.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 25:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: So resources that reside in the same AZ, where there is no transit gateway attachment cannot reach to the transit gateway, right?
- Hidden/Implicit Meaning: Constraint or limitation signal; Transit-domain and segmentation signal.

Line 26:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So that's one important consideration when it comes to the transit gateway.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 27:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: Remember, in whichever AZ you are creating the transit gateway attachment, only the subnets from that AZ will be able to communicate to the transit gateway; other subnets will not be.
- Hidden/Implicit Meaning: Constraint or limitation signal; Transit-domain and segmentation signal.

Line 28:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So that's it for the consideration of the VPCs and subnet for transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 29:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: And now we'll see some more architectures for the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 30:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Thanks for watching.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/10_Transit Gateway/081_Transit Gateway AZ affinity & Appliance mode.txt

Line 1:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Hello, and welcome to this lecture, Transit Gateway AZ affinity and appliance mode.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 2:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, this is a small lecture, but this is an important topic, because we have seen this coming into the new exam.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 3:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: And this is really important to understand how transit gateway behaves with respect to the network flowing into the availability zones, right?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 4:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: So in the earlier lecture, we already understood that transit gateway creates ENIs into the subnets, in which you create a transit gateway attachment, and those are linked to the availability zones, right?
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 5:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: That means you can't send traffic from the subnet into the other availability zone if there is no ENI in that availability zone, right?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 6:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So that's about, you know, how transit gateway behaves in general.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 7:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: But let's talk about AZ affinity, and then what is appliance mode with respect to the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 8:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, for this, we have taken a simple example where there are three VPCs.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 9:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And you can see that on the left side, we have two VPCs, which are kind of VPCs which needs to communicate with each other.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 10:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: That means applications running in that VPC needs to communicate with each other.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 11:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: And on the right side, you have shared services VPC, in which you can deploy network appliances or firewalls so that you can monitor, maybe, east-west traffic which is flowing between these two VPCs on the left side.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 12:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: Now, we will connect all these VPCs with transit gateway VPC attachment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 13:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: And then, as you can see, I have transit gateway attachments created in every AZ in all these three VPCs.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 14:
- Concepts: Transit Operational Context
- Services: Transit Gateway
- Key Insights: So, ultimately, it creates TGW ENIs into, you know, every availability zone there.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 15:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's take an example.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 16:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: What if instance A wants to send traffic to instance B and both these instances are in the same AZ?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 17:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now, you know that transit gateway are regional routers, so this will be in the same AWS region.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 18:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And as of now, we are talking about just one AWS account.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 19:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So AZ1 here means the AZ1 here as well, and same as here as well.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 20:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So what if source and destinations are in the same AZ, as you can see in VPC 1 and VPC 2?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 21:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Then the traffic will first go to transit gateway ENI.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 22:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: From there, with the route tables, of course, it will go to the shared services VPC ENI.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 23:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, I'm not showing the route tables here, but you can understand how that route will be.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 24:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: But that's not important here.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 25:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now, from this transit gateway, ENI traffic will go to the appliance.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 26:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, appliance knows that traffic has to go through, really, AZ2 instance B in VPC 2.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 27:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So it will send traffic back to the ENI.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 28:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So it will monitor the traffic, basically, and send the response from there to this ENI.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 29:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: From there, based on the route tables, again, it will go to the transit gateway ENI 1 and then to the instance B.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 30:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, if you see this flow, everything is happening in the same AZ right?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 31:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: We are still in the AZ1 throughout this flow.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 32:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Similarly, traffic comes back from instance B, now, this is a written traffic, again, it will go to the ENI from where the traffic had come, and from there, it will go to the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 33:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now it's up to the transit gateway which ENI it wants to select, right?
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 34:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Whether it selects ENI 2 or ENI 1 here on the right VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 35:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: But transit gateway has that AZ affinity things.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 36:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: It tries to keep the traffic in the same AZ as much as possible, right?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 37:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So it will send it to the same ENI in AZ1, because traffic has originated in AZ1 here, right?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 38:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Instance B is in AZ1.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 39:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: That's where it send that traffic, to the transit gateway ENI in the same AZ.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 40:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: And from there, it, again, goes to the appliance, it goes back to the ENI, it goes back to the transit gateway, back to the requester ENI, and from there, to the instance A.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 41:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, that's an entire flow which stays within the same AZ.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 42:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, the benefit of this is that, of course, you don't get, first of all, cross-AZ data transfer charges, and then all the traffic remains in the same AZ.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 43:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, in case, if something fails, only one AZ is affected, right?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 44:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: If resources are across AZ, those are not affected.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 45:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So transit gateway attempts to keep the traffic in the same originating availability zone until it reaches its destination.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 46:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So that's the bottom line, and that means transit gateway has AZ affinity.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 47:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, that also creates some problem.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 48:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, let's understand what happens if the target is in the different AZ.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 49:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, let's move this instance B to AZ2 instead of AZ1.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 50:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now, the flow will, again, start with instance A, sending traffic to transit gateway ENI in the same AZ.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 51:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: From there, it will go to transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 52:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now transit gateway sees that the originating traffic is coming from AZ1.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 53:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: It will, again, send it to the same ENI.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 54:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: From there to the appliance, from there back to the ENI, to the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 55:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay, now is the interesting thing.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 56:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now, transit gateway issues receives traffic from AZ1.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 57:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So it will send the traffic to the same ENI in the AZ1, as long as the health is good of that ENI.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 58:
- Concepts: Transit Operational Context
- Services: Transit Gateway
- Key Insights: So it will send traffic from here to the TGW ENI in AZ1, and this ENI can further send the traffic to instance B in AZ2, because there is no instance in AZ1.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 59:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And this will happen.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 60:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So far, so good.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 61:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, what happens to the written traffic, right?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 62:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So instance B will now send the traffic to the ENI of itself, right?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 63:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Because it's a written traffic, it, again, starts with instance B.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 64:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: The traffic will go to the TGW ENI in AZ2 and this will now send traffic to the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 65:
- Concepts: Centralized Network Governance, Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now, at this moment, transit gateway has to make a decision to which ENI in this shared services VPC it should send traffic.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 66:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, if you look at the logic, the traffic is originated in AZ2 now.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 67:
- Concepts: Transit Operational Context
- Services: Transit Gateway
- Key Insights: So it will send traffic to TGW ENI here, right, in AZ2.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 68:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: And the route table of this subnet, in which this ENI is there, it will tell that traffic it should go to the appliance 2, which is here.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 69:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: It will come back here, here, from here, it will go to, now, transit gateway ENI in VPC1 into AZ2, and from there, it will go to the instance A.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 70:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, this still works, that means instance A will receive the traffic.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 71:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: But this is called asymmetric routing, because traffic went through a different path, or different ENI, and came back via a different ENI.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 72:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So if there is no restriction at application level to track the state of the packet, or statefulness of the flow, then this works, right?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 73:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: But in real world, that's not the case really, right?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 74:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Lot of applications and network appliances are stateful.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 75:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: That means it tracks both the incoming and outgoing traffic, and they make sure that the traffic matches.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 76:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: It's the same flow, basically.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 77:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And in that case, this scenario will not work.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 78:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's see how that works, right?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 79:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So in this case, again, same scenario, but now we have stateful appliances.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 80:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: That means it is monitoring for the incoming traffic and it will only allow the corresponding traffic to go back from the appliance if it matches the incoming traffic, right?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 81:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So in that case, again, traffic will start from A, to the ENI, to the transit gateway, to the appliance in AZ1.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 82:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Then it will go to the ENI, to the instance B in AZ2.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 83:
- Concepts: Centralized Network Governance, Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Again, B will send traffic to the ENI in the same AZ to the transit gateway, to the transit gateway ENI in AZ2, now, in the appliance VPC, or a shared services VPC, and it will go to the appliance B.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 84:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, if you see for this appliance B, which is stateful, this traffic is unseen, right?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 85:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: It never saw this traffic coming earlier.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 86:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: But then the traffic says that it's a written traffic, but there is no originating traffic that is known to the instance B.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 87:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: It is known to instance A, appliance A, but not to the B.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 88:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So what it will do?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 89:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: It will simply drop this traffic because it's a stateful appliance.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 90:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: And that's really the problem, is if you go with default settings of the transit gateway, right?
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 91:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So what you need to do here is enable the appliance mode.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 92:
- Concepts: Centralized Network Governance, Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: What you can do when you attach this VPC to the transit gateway on the shared services VPC attachment, you can enable the appliance mode.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 93:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now, what it makes transit gateway to do is to fix only one ENI for the flow, rather than looking at which AZ it is coming from.
- Hidden/Implicit Meaning: Constraint or limitation signal; Transit-domain and segmentation signal.

Line 94:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So if transit gateway knows that the traffic is coming from a particular IP address and particular port, and going to a particular IP address and a port, and with some protocol that's called flow hash algorithm, it will always, for the life of that flow, will send traffic to only that particular ENI, irrespective of which AZ the traffic has originated in.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal; Transit-domain and segmentation signal.

Line 95:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: So again, if we enable this appliance mode here on this attachment, then the flow will look something like this.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 96:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Up to B.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 97:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: We caught it.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 98:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now, from B, it will, again, go to the transit gateway ENI in AZ2.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 99:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: From there, to the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 100:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: But at this moment, transit gateway looks at the transit gateway, applies the flow hash algorithm, and it knows that the originating traffic had gone to this ENI in AZ1, it will send to the same AZ.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 101:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And now appliance A has no problem looking at the traffic and then getting the response back.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 102:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then the traffic will flow back to the instance A.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 103:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, that's what happens when you enable the appliance mode.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 104:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And you know that without appliance mode, this traffic will be dropped if your appliance is a stateful appliance.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 105:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So this could be appliance or a firewall, it doesn't really matter.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 106:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: But that's an essential thing that you need to know for transit gateway AZ affinity and how does this appliance mode work, right?
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 107:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Flow hash algorithm, I had mentioned here.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 108:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Flow hash algorithm is nothing, but it looks at 5-tuples, which are like source port, source IP address, destination IP address, destination port, and the protocol on which the two systems are communicating with the network.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 109:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: Finally, you can enable this appliance mode while you create the transit gateway VPC attachment, or, if there is already a transit gateway VPC attachment, you can enable this appliance mode.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 110:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So, by default, it is disabled.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 111:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And through AWS CLI and SDK, you can basically do --option ApplianceModeSupport=enable and then it will be automatically enabled.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 112:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So that's about the transit gateway AZ affinity and appliance mode.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 113:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: This is important for the exam, because we have seen this kind of scenarios presented and you should know that appliance mode can solve this problem.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 114:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So that's it about this lecture.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 115:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 116:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Thank you.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/10_Transit Gateway/082_Transit Gateway Peering.txt

Line 1:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Hello, and welcome to this lecture, Transit Gateway Peering.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 2:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now that we understood in earlier lectures that if you have multiple VPCs across different AWS regions and accounts, you can peer those VPCs using VPC peering.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 3:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: Exactly same thing you can apply for transit gateways.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 4:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: You know that transit gateways are the regional routers, which means that if you have VPCs in one region, you can connect those VPCs to the transit gateway in the same region only, which means if you need a connectivity between multiple VPCs via the transit gateway, then what you could do is rather connect these transit gateways across the AWS region.
- Hidden/Implicit Meaning: Constraint or limitation signal; Transit-domain and segmentation signal.

Line 5:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: So you need to establish this private connectivity between these two transit gateways.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 6:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now, the process will be exactly similar to the VPC peering where one transit gateway will be the requester of the connection, and the other AWS account or region, you have to accept that connection.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 7:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: Now, this transit gateways could be across AWS region, and across AWS accounts as well.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 8:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: That means you can connect your transit gateway to your customer's transit gateway in different region.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 9:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, what this enables you to really have the region-wide private connectivity between these multiple VPCs, and not just VPCs.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 10:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: You could have this transit gateway on the left side connected to maybe on premise network, so ultimately, you get a full network connectivity across AWS regions.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 11:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now, if you think to understand why you implement the transit gateway peering is that the routes that you would have to put on the transit gateway connection has to be static, and which means that you cannot have the BGP routing enabled for these two transit gateways.
- Hidden/Implicit Meaning: Constraint or limitation signal; Transit-domain and segmentation signal.

Line 12:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, we learned that through BGP, you can dynamically exchange routes from one router to another.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 13:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: That means if there are new networks discovered on these right side maybe, the transit gateway is supposed to share those routes with the transit gateway on the left side so that all the traffic automatically get routed to the other transit gateway, because this transit gateway knows where that destination IP address is, but in case of transit gateway appearing that doesn't happen, that means you have to manually configure the route table, and in that, you have to configure that if the traffic is going to the destination on the right side, then use the transit gateway peering connection.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 14:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let me give an example.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 15:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: In this picture, you can see on the left side, this is US East-1 region, and you have two VPCs connected to the transit gateway, VPC-A and B, and on the right side, you have VPC-C, as well as corporate data center connected to the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 16:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now, if you need the connectivity between all these networks together, of course, we will set up a transit gateway peering to start with, but for the full connectivity, you also need to configure the route tables on the transit gateways.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 17:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: So on the left side, you can see there will be an attachment to the transit gateway, and that attachment route table will look something like this.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 18:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: On the left side, you would have these two VPCs connected, so of course, the CIDR of those VPCs will have the route table entries here, and the route type will be propagated.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 19:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: That means transit gateway will learn that these are the CIDRs.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 20:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: And on the right side, you also have VPC-C, but the traffic has to go through the transit gateway peering ID, and this route type is static.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 21:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: It is not automatically propagated.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 22:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: That means if you don't add this entry, then these two transit gateway cannot send those traffic.
- Hidden/Implicit Meaning: Constraint or limitation signal; Transit-domain and segmentation signal.

Line 23:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Similarly, for the corporate data center, we added one more static route here.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 24:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay, and similarly, you need to make similar changes on the right side of the network.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 25:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: That means there will be this two propagated routes, one for VPC-C and one for corporate data center so that they can communicate with each other, but then if you want to send or receive traffic from this US East-1 region, then you need to have these two additional static routes there.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 26:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, you could also do something like aggregating the routes, but here we are just using the exact CIDR address of the VPCs.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 27:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: The bottom line is for transit gateway peering, you need to have static groups.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 28:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Further understand that this connectivity is private, and it is across the region, and it is encrypted by default by AWS, so you don't need to do anything.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 29:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So if the scenario is given that the traffic across the region should be encrypted, then if you use any of the AWS private connectivity options like transit gateway peering or VPC peering, then the traffic is automatically encrypted, and as in bandwidth, it can support up to 50 Gbps bandwidth between these two transit gateways, so you get a fair enough bandwidth to have the high network throughput applications running across the two regions.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 30:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And finally, you should use unique ASN.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 31:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: Now, this is kind of best practice, but at this moment it doesn't matter, because a BGP is not supported between transit gateways via the peering connection, but in the future, AWS will enhance the capabilities, and at that moment, maybe you would be able to set up the BGP connections, and then those autonomous system numbers should not be the blocker there for you.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 32:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So that's it about transit gateway peering.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 33:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: We are going to see interesting network architectures leveraging transit gateways, but little later, because we need to cover other topic first, and then we'll put all things together to see how transit gateway peering can be used in different ways.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 34:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So thanks for watching this lecture.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 35:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Stay tuned.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/10_Transit Gateway/083_Transit Gateway Connect Attachment.txt

Line 1:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: Hello, and welcome to this lecture, Transit Gateway Connect Attachment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 2:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So you already know that Transit Gateway supports different type of attachments.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 3:
- Concepts: Transit and Segmentation
- Services: Direct Connect, Transit Gateway, VPC Attachment
- Key Insights: The very first stage VPC attachment, then you could also have Direct Connect attachment, where you connect Direct Connect to Transit Gateway using Direct Connect Gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 4:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: Then you could also have the VPN attachment where you can terminate your IPsec VPN tunnels onto the Transit Gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 5:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: And then there is one more attachment type which is Transit Gateway Connect.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 6:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: Now this attachment is used for connecting Transit Gateway to the virtual appliances, such that your SD-WAN routers.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 7:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: And this is essential whenever you want to extend your existing SD-WAN network to AWS using the Transit Gateway.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 8:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: And that's where it becomes important attachment to learn about.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 9:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So at high level, you can see here, there is a Transit Gateway and then you could have your virtual appliances running inside a VPC.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 10:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: And now this virtual appliances can be connected to the Transit Gateway using this connect attachment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 11:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: And for establishing this connect attachment, you need to create a GRE tunnel between Transit Gateway and this virtual appliance here.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 12:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: So again, you can create Transit Gateway Connect attachment to establish a connection between Transit Gateway and third-party virtual appliances, which are running in a VPC, or it can also run in on-premise network.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 13:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And we'll talk about that architecture as well.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 14:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: Now for connecting this Transit Gateway Connect attachment, you need a transport attachment first.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 15:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: Now, what is transport attachment?
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 16:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: In order to connect this appliances to the Transit Gateway before creating this GRE tunnel, there should be a transport mechanism.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 17:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So there are essentially two mechanisms by which you can connect these appliances to the Transit Gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 18:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: One is a VPC attachment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 19:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: That means the VPC in which this appliances are running can be connected to the Transit Gateway with normal VPC attachment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 20:
- Concepts: Transit and Segmentation
- Services: Direct Connect, VPC Attachment
- Key Insights: And this is a case when your appliances running inside a VPC, but if your appliances are running on-premises, then you can use Direct Connect as your transport attachment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 21:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then it supports Generic Routing Encapsulation tunnel protocol, and it provides you higher performance.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 22:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And it also supports BGP.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 23:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: In fact, for connect attachment, it is must to have the BGP peering.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 24:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, if you look at this architecture here.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 25:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: On the left side, you have VPCs, which are connected to the Transit Gateway with regular VPC attachment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 26:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And our appliance is running inside a VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 27:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: And this VPC is also connected to the Transit Gateway with regular VPC attachment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 28:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And that's the transport layer as of now.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 29:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: Now once you have these attachments created for Connect attachment, you can create on top of this transport mechanism.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 30:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So one end is Transit Gateway and other end is this virtual appliance inside of VPC.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 31:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: And you can create now the Connect attachment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 32:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: And as you create a Connect attachment, then GRE tunnel gets established and you need to also have the BGP peering between these two end points here.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 33:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So ultimately, there will be a BGP session configured between the Transit Gateway and the network appliance running there.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 34:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And there will be BGP configurations like inside IP addresses as well as external IP addresses.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 35:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So Transit Gateway will have a unique IP address which you can assign to the Transit Gateway while you create it or you can modify that address later as well.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 36:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And appliance would have its own IP address which is called peer IP address here.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 37:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now you know that BGP also need inside IP addresses.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 38:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So you can allocate an IP address range from 169.254.0.0/16 range.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 39:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And out of this 169.254.0.2.5 are reserved.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 40:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So you can use any further IP addresses like 169.254.6.0 onwards for BGP peering station.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 41:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And this is what is shown in this architecture.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 42:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: Now let's understand how you can use VPC attachment as the transport mechanism.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 43:
- Concepts: Transit and Segmentation
- Services: Direct Connect, VPC Attachment
- Key Insights: And how can you use Direct Connect attachment as your transport mechanism.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 44:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, in the first case, your appliance is running inside a VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 45:
- Concepts: Transit Operational Context
- Services: Direct Connect
- Key Insights: So architecture will be something similar to what you see here, but in case of Direct Connect, your appliances are running in on-premises network.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 46:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: So let's look at the first case when the VPC transport attachment is used.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 47:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So you can see on the left side, we have VPCs connected to the Transit Gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 48:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then we have virtual appliances running inside a VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 49:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: And this VPC is connected to the Transit Gateway or the VPC attachment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 50:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: And on top of it, we create the connect attachment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 51:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: We form the GRE tunnel and there is a BGP session going in between.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 52:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now in order for your on-premise network to connect to this VPC, you can use different mechanisms.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 53:
- Concepts: Transit Operational Context
- Services: Direct Connect
- Key Insights: So one mechanism is you can use either a Direct Connect or you can have internet-based connectivity but ultimately, you are extending your on-premise network to the VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 54:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: And then from there, you are creating this Connect attachment to the Transit Gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 55:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, this architecture makes sense when you have to run this virtual appliances inside AWS.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 56:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Similarly, if you have your virtual appliances running on-premises network, then in that case, you can connect your on-premise data center to Transit Gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 57:
- Concepts: Transit and Segmentation
- Services: Direct Connect, Transit Gateway
- Key Insights: Now, you know that in order to connect Direct Connect to the Transit Gateway, you need data connect gateway with the transit weave.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 58:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And once that connection is established, that is used as your transport mechanism.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 59:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then you can do the same thing again.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 60:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Once that connectivity is established you can create then GRE return on top of it.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 61:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then you can set up a BGP peering session.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 62:
- Concepts: Transit and Segmentation
- Services: Direct Connect, Transit Gateway
- Key Insights: So ultimately, your Transit Gateway connect can be used as a third-party branch or a customer gateway appliance turning in an on-premise network that uses AWS Direct Connect as a transport.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 63:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: So these are two different architectures for connect attachment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 64:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: And remember that whenever it talks about connecting Transit Gateway to the virtual appliances, then probably will go with one of these architectures.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 65:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: Now, a few things to remember about Transit Gateway Connect attachment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 66:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: It does not support static routes.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 67:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: Only BGP support it for the Connect attachment.
- Hidden/Implicit Meaning: Constraint or limitation signal; Transit-domain and segmentation signal.

Line 68:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then if you talk about the bandwidth, every GRE tunnel supports up to five Gbps of the bandwidth.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 69:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And likewise, you could have four connect peers established on the same connection.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 70:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Ultimately, it provides you up to 20 Gbps bandwidth per connection.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 71:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, if you compare this with the IPsec VPN, then IPsec VPN only provides 1.25 Gbps per connection.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 72:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: But then you would've to have many more VPN connection in parallel to really get 20 Gbps bandwidth.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 73:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And you would've to also do EC MPN all those configurations.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 74:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now here as well, if there are multiple GRE tunnels, you would have to configure the equal cost multipath.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 75:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: But then you just need four such tenants in this case.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 76:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: And that's it about Transit Gateway Connect attachment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 77:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Again, you could find some of the scenarios which talks about connecting Transit Gateway to the virtual appliances.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 78:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: And in that case, you should know that you can use Transit Gateway Connect attachment.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 79:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So thanks watching.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/10_Transit Gateway/084_Transit Gateway VPN Attachment.txt

Line 1:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: Hi, so we have already seen different types of the attachments that transit gateway support, so we talked about the VPC attachment, and we talked about the transit gateway peering.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 2:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: Now let's try to understand the VPN attachment, so, as you might have guessed, you can attach transit gateway to the on-premises network using AWS manage site-to-site VPN.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 3:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, we are going to cover everything about site-to-site VPN in a different section, but if you're not aware of that, then let me quickly tell you that AWS provides the manage site-to-site IPsec VPN, and for that, you have to have your VPC, and you attach the virtual private gateway to that VPC, and on the customer side, you have customer router, and then you set up this site-to-site VPN, so this works well as long as you have just one or two VPCs, and on the right side, you have maybe one or couple of branch offices, but then, again, this connectivity's one-to-one.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 4:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: That means as many VPCs and as many customer gateways you have, you will have those many site-to-site VPN connection, so if you have multiple branch offices, then all these VPN connections will terminate on the same virtual private gateway, and now you can further add the complexity by adding multiple VPCs.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 5:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Then those many VPN connections needs to be maintained, and as you might have guessed already, this network architecture can be greatly simplified by using the transit gateway, so what you can rather do is instead of connecting multiple VPCs or different VPN connections, you just add the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 6:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now, you know that transit gateways are the regional routers, so in a given AWS region, you can create a transit gateway, and then you can attach all these VPCs to that transit gateway, and now, instead of terminating your VPN connection or the virtual private gateways, you can terminate that on the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 7:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: Now, for that, you use VPN attachment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 8:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now rest of the VPN features remains almost same with some differences, which we are going to talk about soon, but ultimately, you have now all your VPN terminating on the transit gateway, and to further scale this architecture, if you have multiple branch offices, then, of course, you will have multiple VPN connections terminating on the same transit gateway, so this is one of the very popular architecture when you want to implement the hybrid connectivity between AWS VPCs and your on-premises data center network.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 9:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay, so I hope that is understood.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 10:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now, one more additional feature that AWS VPN provides when you connect that to the transit gateway is accelerated VPN.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 11:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now, what that means, so here, on the right side, you have corporate data center, and here you have transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 12:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now, earlier in this lecture, we saw that you directly have this VPN connection terminating on the transit gateway, and this is how it works, but you can optimize the network path of this connection.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 13:
- Concepts: Connectivity Abstraction, Service-to-Service Networking, Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now, by default, the VPN traffic will go over your Internet service provider's network, so it will land into AWS region over this transit gateway, but this connection goes over the Internet.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 14:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, you can use AWS global accelerator feature of AWS site-to-site VPN where your traffic is first routed to the nearest edge location that AWS has, and we are going to talk about the edge locations mainly in the CloudFront section, but ultimately, these are the point of presence locations across the globe.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 15:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: There are 400-plus, but the way it optimizes your network traffic is that the traffic from on-premise network goes to the nearest edge location, and from there, it is already connected to AWS backbone network, so your path to the transit gateway mainly stays on the AWS network, and small part of your network goes over the Internet, and one thing here to understand is that you can only use AWS global accelerator when you terminate your VPN connection on the transit gateway.
- Hidden/Implicit Meaning: Constraint or limitation signal; Transit-domain and segmentation signal.

Line 16:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: It is not supported if you are terminating your VPN connection on the virtual private gateway, so basically, the architecture that we had started this lecture with, so this is another important way in which you can optimize your network traffic while using site-to-site VPN with transit gateway.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 17:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Okay, so with that, now let's look at another benefit of using the VPN with transit gateway, and this time, it is about increasing the total aggregated bandwidth between the on-premise network and AWS, so going back to our original architecture where we had the VPC with virtual private gateway or VPN gateway, and you could connect directly to the customer gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 18:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, what if you want to have the additional bandwidth between these two networks?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 19:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So obviously, you would think that you can have multiple VPN connections, and then you can send the traffic on both these connections at the same time, therefore you get double the bandwidth, but that's not true.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 20:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, that's for the reason that virtual private gateway device here has the limit of 1.25 Gbps aggregated bandwidth, and you can't increase that, and at the same time, you know that VPN tunnel also has 1.25 Gbps of maximum bandwidth limit, and, in general, if you want to load balance the traffic across multiple connections, then you need to have ECMP, that is equal cost multipath, which is like, you know, sending the traffic on both the links at the same time, and virtual private gateway doesn't support the ECMP.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 21:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, for that reason, you can't have the higher bandwidth than 1.25 Gbps if you are terminating your VPN connection on the virtual private gateway.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 22:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Okay, so what you can do in that case, you can use a transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 23:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now you are having multiple VPN connection terminating on the same transit gateway, and you enable the dynamic routing, and you also enable the ECMP on both these VPN connections.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 24:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, on the customer router side, you also need to take care of the BGP as well as ECMP.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 25:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Once you do that, your traffic flowing from AWS to on-premises or on-premises to AWS can be load balanced across these two connections, which means you get benefit of total aggregated bandwidth across these two connections.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 26:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, if you want to calculate the total bandwidth or, say, total effective bandwidth, you know that every VPN connection has two IPsec tunnels, and every tunnel has the maximum bandwidth of 1.25 Gbps, so effective bandwidth out of this network architecture will be up to 5 Gbps.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 27:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, I said effective because the bandwidth and network throughput depends on lot of factors, but theoretically, you can consider that you can combine the total aggregated bandwidth across all these VPN connections.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 28:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, one more thing to understand is that though you are getting more aggregated bandwidth, the per-flow bandwidth is still limited to 1.25 Gbps Now, per flow means per TCP connection, so if you are sending, say, 100-GB file over a single TCP connection, it will go through either of these four tunnels, and every tunnel is still limited to 1.25 Gbps bandwidth, so for that TCP connection, you will still be limited to 1.25 Gbps bandwidth, but if you are sending four files at the same time, then total bandwidth could be up to 5 Gbps, so I hope that is clear, so now, in this case, we are terminating both these VPN connections on the same customer router side, but you can also terminate these VPN connections on different customer router side.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 29:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Only thing that you need to take care is that when you advertise the BGP parameters, for example, the local preference, the MED values, the AS path, the ASN numbers, they are exactly same if you want to enable the ECMP, right?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 30:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, with that, we will slightly change this architecture, and now we have two different routers, and suppose your corporate data center has the CIDR of 192.168.0.0/24.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 31:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Then what you can do is you can enable the ECMP on both these VPN connections, and you can additionally configure the routes such that you configure specific route on a particular VPN connection.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 32:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: For example, the first half of the CIDR traffic will go through the first VPN connection and second half of the CIDR will go through the second connection, and on top of this, you can also advertise the BGP routes, which is aggregated route over both these VPN connections, so if any of the VPN connection is unhealthy or terminates, then also, your traffic is routed over the other active VPN connection, so this kind of traffic routing you can do to enable the ECMP along with the BGP routing, so what I want you to take from this is that with transit gateway and a VPN connection, you can have the ECMP, and you can have higher aggregated bandwidth.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 33:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, for that, remember that you need to have the BGP routing configured.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 34:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: You can't use the static routing.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 35:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Okay, I hope that is clear, so as I said, we are going to talk more about the VPN and transit gateway in the VPN section as well, but in this lecture, I just wanted to touch upon these important concepts, and I hope that is clear.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 36:
- Concepts: Transit and Segmentation
- Services: Direct Connect, Transit Gateway, VPC Attachment
- Key Insights: Now, with that, let's move on to the next type of the attachment that is direct connect attachment with transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 37:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Thanks for watching and stay tuned.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/10_Transit Gateway/085_Transit Gateway & Direct Connect.txt

Line 1:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Hi.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 2:
- Concepts: Transit and Segmentation
- Services: Direct Connect, Transit Gateway
- Key Insights: Now in this lecture, let's understand how Transit Gateway works with AWS Direct Connect.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 3:
- Concepts: Transit Operational Context
- Services: Direct Connect
- Key Insights: For those who do not know what is Direct Connect, it's actually a physical connectivity between AWS and your on-premises data center.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 4:
- Concepts: Transit and Segmentation
- Services: Direct Connect, Transit Gateway
- Key Insights: Actually, we have covered the Transit Gateway scenarios and architectures in very, very detail, in the Direct Connect section.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 5:
- Concepts: Transit and Segmentation
- Services: Direct Connect, Transit Gateway
- Key Insights: So in this lecture, I'm not going to go too deep into all this topic, but let's try to understand at very high level how you can use Transit Gateway with the Direct Connect.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 6:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Okay, so very first thing, what if there is no Transit Gateway?
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 7:
- Concepts: Transit Operational Context
- Services: Direct Connect
- Key Insights: How do you connect your on-premise network over a Direct Connect to AWS?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 8:
- Concepts: Transit Operational Context
- Services: Direct Connect
- Key Insights: Now, for that you have to typically use a Private VIF, and then Private VIF connects to the Direct Connect gateway, and this Direct Connect gateway can be connected to multiple VPCs in different AWS regions.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 9:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, as of today, there is a limit of connecting maximum 10 VPCs, which means if you have hundreds of VPCs which you want to connect, then this architecture doesn't help.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 10:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: And exactly to solve that problem, you can rather use Transit Gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 11:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So in that case, the architecture looks a little different.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 12:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: So instead of using the Private VIF, you have to use something called Transit VIF.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 13:
- Concepts: Transit Operational Context
- Services: Direct Connect
- Key Insights: And as I said, we are going to cover this in very detail in the Direct Connect section.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 14:
- Concepts: Transit and Segmentation
- Services: Direct Connect
- Key Insights: Okay, so what you do, you have a Direct Connect, you create a Transit VIF and you associate this Transit VIF with a Direct Connect gateway.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 15:
- Concepts: Transit and Segmentation
- Services: Direct Connect, Transit Gateway
- Key Insights: And now you can connect Direct Connect gateway to the Transit Gateway in different AWS regions.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 16:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: And you already know that one Transit Gateway in a given region can be connected to hundred and thousands of VPC.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 17:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So this architecture provides you that scale.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 18:
- Concepts: Transit and Segmentation
- Services: Direct Connect
- Key Insights: And again, with respect to some limits and quotas, as of today, you can connect up to six Transit Gateways to the same Direct Connect gateway.
- Hidden/Implicit Meaning: Constraint or limitation signal; Transit-domain and segmentation signal.

Line 19:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: And on a single dedicated AWS Direct Connection, you can create up to four Transit VIFs.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 20:
- Concepts: Transit and Segmentation
- Services: Direct Connect
- Key Insights: So if you do your calculations, that means on a single AWS Direct Connect connection, you can connect up to 24 Transit Gateways in different AWS regions.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 21:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, again, don't quote me for this limit numbers, they always change, but as of today, that's how they look.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal.

Line 22:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay, so this is much better architecture with respect to the scalability, again, they can be across different AWS account.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 23:
- Concepts: Transit and Segmentation
- Services: Direct Connect
- Key Insights: That means your Direct Connect can be in different AWS account and your Transit Gateways and VPCs could again be in different AWS accounts.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 24:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay, now before we move on to the next architecture, just I wanted to make a small comment.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 25:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Whenever you use Transit Gateway, there is additional charge for per GB data processed by the Transit Gateway.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 26:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So if you ask me, I'm not a great fan of using Transit Gateway when there is too much data being transferred over DX connection because there is per GB data processing charge.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 27:
- Concepts: Transit and Segmentation
- Services: Direct Connect, Transit Gateway
- Key Insights: So I have covered this in detail in the Direct Connect section where I have shown different scenarios where I have made some suggestion around when to use Transit Gateway and when it is not recommended to use Transit Gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 28:
- Concepts: Transit Operational Context
- Services: Direct Connect
- Key Insights: So do watch that lecture in Direct Connect section.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 29:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay, now one more architecture, and this is with respect to the security of the network.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 30:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, if you see this architecture, all the traffic from on-premises, which is reaching to VPC is going unencrypted.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 31:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: But maybe some enterprises have the compliance requirement to have the traffic encrypted at layer three or layer four, and in that case, this architecture doesn't support that.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 32:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: But if you just change this architectural a little, you can achieve IP-layer encryption.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 33:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: And for that, what you need to just do is instead of using the Transit VIF and connecting to the Transit Gateway like this, you rather make an IPSec VPN connection to your Transit Gateways.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 34:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now how that will look.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 35:
- Concepts: Transit Operational Context
- Services: Direct Connect
- Key Insights: Now for that on AWS Direct Connect, you should create the Public VIF.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 36:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, Public VIF allows you to connect to all AWS public IPs.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 37:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: And if you know about the Transit Gateway VPN Endpoints, Transit Gateway provides a pair of public IPs where you can terminate your VPN connection.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 38:
- Concepts: Transit and Segmentation
- Services: Direct Connect, Transit Gateway
- Key Insights: So in this case, from the Direct Connect, you can have that IPSec VPN connection terminated on every Transit Gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 39:
- Concepts: Transit and Segmentation
- Services: Direct Connect, Transit Gateway
- Key Insights: And in that case, the traffic between Direct Connect and the Transit Gateway will be encrypted.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 40:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, I just added this because we have seen some questions around this scenario and that's where you need to know that.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 41:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So I hope that is clear.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 42:
- Concepts: Transit Operational Context
- Services: Direct Connect
- Key Insights: Now with respect to Direct Connect, I think that's what you need to know at this moment.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 43:
- Concepts: Transit Operational Context
- Services: Direct Connect
- Key Insights: And as I said, there are more scenarios that we are going to cover in the Direct Connect section.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 44:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So that's it about this lecture.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 45:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: And now let's understand about some additional features of Transit Gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 46:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Thanks for watching and stay tuned.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/10_Transit Gateway/086_Transit Gateway Multicast.txt

Line 1:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Hello, and welcome to this lecture, Multicast with Transit Gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 2:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, this is another topic which may come into your exam, but may not be into too much of detail.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 3:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So it's important to just know about what is multicast and what are the features available in Transit Gateway for supporting multicast traffic.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 4:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then, that should be good enough.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 5:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So, first, we'll start with very basics, what is multicast.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 6:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: And then, we'll see how Transit Gateway supports multicast traffic.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 7:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So what is multicast?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 8:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: By the definition if you just Google it, right, you would know that multicast is like sending the packet to multiple destination at the same time.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 9:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So instead of sending one-to-one message from source to the destination, which is typically a unicast, you are just sending the message once to an IP address and it gets delivered automatically to multiple receivers at the same time.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 10:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So that's essentially is a multicast.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 11:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, in case of multicast, there could be multiple sources who are sending these messages and there could be multiple destinations who are receiving those messages.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 12:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So you can create kind of multicast groups.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 13:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then, you can define who are the sources, who are the destinations in that group.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 14:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then, message starts flowing.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 15:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, for multicast typically there is a class D address that you allocate to the multicast group.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 16:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And that address should be from the range 224.0.0.0 to 239.255.255.255.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 17:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So you need to associate one group ID for your multicast group.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 18:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then, if you send a single message from the source to the multicast group IP address, then it gets delivered to all the receivers in that group.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 19:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And the multicast protocol is connectionless based on the UDP.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 20:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And it's one-way communication.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 21:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: That means traffic flows from source to the destination only.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 22:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, few example of the multicast are like, you know, TV or media.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 23:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So, you know that you can watch any channel and, like you, there are many people who are watching those channel on the TV.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 24:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So media companies will use multicast to really deliver the content to all the subscriber of that channel.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 25:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Similarly, conference calls, group chat, OTT platform.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 26:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So it's everywhere basically, right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 27:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: For updating the stock exchange information or transactions, to all the third-parties who are interested, you can also use multicast there.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 28:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So it's important protocol.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 29:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: And then, AWS now supports multicast with transit gateways.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 30:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, few components of the multicast are multicast domain, which is basically an umbrella under which you can then define multicast group.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 31:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then, within that multicast group, you can define members.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 32:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So member can join the multicast group, they can leave the multicast group.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 33:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: It is kind of subscription to certain OTT platform, right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 34:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: You can subscribe and unsubscribe.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 35:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Likewise, you can join or leave the multicast group, so that you start getting the message or you stop receiving the message.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 36:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And finally, it uses the IGMP protocol for this group memberships, which is Internet Group Management Protocol.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 37:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So any member can use this IGMP protocol messages to join or leave the group.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 38:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And we'll talk more about that shortly.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 39:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So essentially, that is multicast.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 40:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: And if you now look at how AWS Transit Gateway supports the multicast, you have to enable the multicast feature while you create the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 41:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: That means after you create the transit gateway, you can't enable that.
- Hidden/Implicit Meaning: Constraint or limitation signal; Transit-domain and segmentation signal.

Line 42:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So remember this thing.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 43:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: It supports both IPv4 and IPv6 IP addressing for multicast.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 44:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then, it also supports hybrid integration with external applications, which means if you want to have the group members outside of, you know, AWS instances, you could also do that.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 45:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So, you could have your sources of the multicast traffic outside of AWS, and then sending all the traffic to EC2 instances in the VPC, which are attached to your transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 46:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: That is possible.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 47:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, for membership of the multicast group, there are two ways typically, static membership and dynamic membership.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 48:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: For static membership, you can use AWS, CLI or SDK using an API call instance in the multicast group, can join the group or it can leave the group.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 49:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Or if instance supports the IGMP protocol, then it can also use IGMP join or leave messages to, you know, join or leave the group.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 50:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So now, let's look at how the multicast traffic flows into the VPC or how the architecture looks like, right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 51:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So this is a simple architecture that is a VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 52:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: There are multiple subnets and across multiple AZs.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 53:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: And then, you have transit gateway which is attached to the VPC.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 54:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then, ENIs have been provisioned into every AZ.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 55:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: And while we created this transit gateway, we also enabled the multicast for this.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 56:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, in this case, you first create the multicast domain, and then your subnet will be participating in this multicast domain.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 57:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So one subnet can be part of only one multicast domain at the same time.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 58:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then, once you have those subnets defined, you can then have multicast group created.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 59:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: A group is nothing but a group of ENIs into your subnet.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 60:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So you can say, I want ENI one, two and three be part of my multicast group.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 61:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: It's not necessary to have all the ENIs in the subnet to be a part of the group.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 62:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So it is kind of, you know, your decision, which instances becomes part of your multicast group.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 63:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then, you have to also assign the class D address to your multicast group, as we just spoken about.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 64:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then, group membership can be configured using AWS, CLI or SDK, or dynamically using IGMP protocol.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 65:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So you can send the traffic to multicast group.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 66:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then, all the members in that group will receive that traffic.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 67:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then, this works for across the VPCs as well.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 68:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: That means you could have multiple VPCs attached to the same transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 69:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And you can create a multicast group, which has instances across the VPCs, right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 70:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So that means one message can go to different VPCs and different, EC2 instances in those VPCs.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 71:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And it works across multiple accounts as well.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 72:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: That means, not necessarily you should have just transit gateway and VPC from the same AWS account.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 73:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So, that's about how the traffic flows in case of transit gateway multicast.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 74:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now, you could also do another thing, as I said, you can integrate transit gateway with external multicast services.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 75:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So maybe you want to send a multicast message from your on-premises application to AWS EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 76:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Maybe their subscriber of the, you know media or video files, right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 77:
- Concepts: Transit and Segmentation
- Services: Direct Connect, Transit Gateway
- Key Insights: Now, in this case, if you directly attach your corporate data center to transit gateway over Direct Connect, it doesn't help.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 78:
- Concepts: Transit and Segmentation
- Services: Direct Connect, Transit Gateway, VPC Attachment
- Key Insights: Because transit gateway does not support multicast over Direct Connect or Connect attachment, right.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 79:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: For this, you need to do something different.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 80:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And what you can do in that case, first, you connect your on-prem data center to VPC using any underlying transport mechanism.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 81:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: It could be VPN, or it could be DX.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 82:
- Concepts: Transit Operational Context
- Services: Direct Connect
- Key Insights: So let's take an example of Direct Connect, right, or over the internet as well.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 83:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Once that connectivity is established, you can have your virtual router configured into your VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 84:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And this virtual router can then create a GRE tunnel with your on-premises router.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 85:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, that is really an SD-WAN kind of network where you are extending your corporate data center to AWS.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 86:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: And once this GRE tunnel is enabled, you can then bring in the transit gateway, and can attach all these EC2 instances inside your VPC, ENIs to this transit gateway and create a multicast domain, and then, can create a multicast group.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 87:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: And now, this multicast router from on-premises can send the traffic to your virtual router, which are part of your multicast group as a source, and then, it'll send this traffic to the transit gateway, and then, transit gateway will then multicast it to all the members in the multicast group.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 88:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So, that's how you can integrate your on-premise data center multicast services with AWS.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 89:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So, essentially these are the two use cases.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 90:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: You can use multicast within the VPC and you can also integrate with third-party services.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 91:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, exam perspective, few important things for you to know.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 92:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So, first, transit gateway support routing multicast traffic between subnets of attached VPC.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 93:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: We just learned that.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 94:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, one subnet can be a part of only one multicast domain at a time.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 95:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Host, that means ENI in the subnet, can be part of either one or multiple multicast groups within the same multicast domain.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 96:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, multicast group membership is managed using VPC console or CLI or using IGMP, which is dynamic, right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 97:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then, multicast group member can use join or leave messages, which are supported by IGMP, to join the group or leave the multicast group dynamically.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 98:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now, in order to renew the multicast group membership, transit gateway issues IGMP query message to all the members every two minutes.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 99:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And if members wants to continue to be a part of your multicast group, then they would respond to the join message.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 100:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then, their membership is renewed.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 101:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, there are other things to consider that the members that do not support IGMP can still join the group using static membership.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 102:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And that can be done using VPC console or AWS CLI.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 103:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So in a nutshell, to join the multicast group there are two options.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 104:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Statically using the AWS CLI or VPC, or dynamically using IGMPv2 protocol.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 105:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So in case of AWS multicast domain supports few attributes and that defines the behavior how the members could join the group, or which members can send the traffic.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 106:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So IGMPv2Support attribute determines how the group members join or leave the multicast group.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 107:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: If this attribute is set, then members can join or leave the message by sending these messages to the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 108:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And if this attribute is not enabled, that means you would have to do that statically using AWS CLI or VPC console.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 109:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: There is another attribute called StaticSourcesSupport.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 110:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay, if this attribute is set, then, in the multicast domain, you're defining that there is a set of sources in the group.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 111:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Only they can send the message, right.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 112:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Those are the machines who can initiate this multicast domain message.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 113:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: If this attribute is not set, then any member in the group can send the message, right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 114:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: But if you want to restrict that, then you can set this StaticSourcesSupport attribute on the multicast domain, and you can designate, like these are the sources who can send the multicast message in the group.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 115:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Additionally, multicast sender should be only Nitro System instance.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal.

Line 116:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, what is Nitro System?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 117:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: It is specially built hardware by AWS, which is much more performant.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 118:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And it bypasses a lot of hypervisor level latencies.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 119:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: It is built by AWS ground-up.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 120:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And you will see all next generation instances are based on the AWS Nitro System.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 121:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So only a Nitro System instance can be a multicast sender.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 122:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: But any non-Nitro instance can be a multicast receiver.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 123:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And in that case, you would have to disable the source/destination check on that instance, if it is non-Nitro instance.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 124:
- Concepts: Transit and Segmentation
- Services: Direct Connect, Transit Gateway, VPC Attachment
- Key Insights: Multicast routing is not supported over AWS Direct Connect, or site-to-site VPN, or Transit Gateway peering attachment, or Connect attachment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 125:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: We just talked about that.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 126:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And that's where we had, you know, GRE tunnel configured from on-premises to AWS.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 127:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then, we could have the multicast domain across a hybrid network.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 128:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Further, you also need to make sure that your network ACL for the subnets and the security group for the host which are participating in the multicast domain and group, should allow the respect to traffic for IGMP protocol, as well as sending and receiving this multicast traffic.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 129:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, with respect to that, if you have the network ACL configured, then you should have the inbound rules in the network ACL, should allow the IGMP protocol two traffic from 0.0.0.0/32.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 130:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And this traffic for IGMP query is sent to the fixed IP address.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 131:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And this is a standard for multicast class D address, 224.0.0.1/32.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 132:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And similarly, for actually sending the multicast traffic, you need to allow the UDP traffic from the remote host.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 133:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Similarly, the outbound traffic from your subnets to the outside, right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 134:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: If your host needs to leave the multicast group, then they need to send the request over IGMP2 224.0.0.2/32 IP address.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 135:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then, in order to join the group, they need to send a join message to multicast group IP address.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 136:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, this group IP address is something that you designate when you create a multicast group.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 137:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then, finally, actual multicast traffic flows over to the UDP.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 138:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Similarly, for the security group.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 139:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: For IGMP query, you should allow the inbound traffic from 0.0.0.0/32, and also allow the inbound traffic from the remote host which is sending the inbound traffic.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 140:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And for the outbound traffic again, for IGMP leave message, you should be able to send that message to 224.0.0.2/32.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 141:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And similarly, for joining the group, you should be able to send the outbound message from your host to multicast group IP address.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 142:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And in order to send the multicast group message, you don't send it to individual hosts, right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 143:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: You send it to a multicast group IP address, which you, again, allocate while you create the multicast group.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 144:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So that outbound traffic over UDP should also be allowed.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 145:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So remember this thing at the high level, that you need to, you know, have the right rules into your network ACL and security groups.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 146:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay, and just one final thing.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 147:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: You can also share your multicast domain with AWS accounts inside your organization.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 148:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Or if your organization unit inside organization, this multicast domain can be shared with those organization units as well.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 149:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: That means the VPCs and the subnets that participate in a multicast domain could be a part of different AWS account, different organization unit, or even the AWS account across different AWS organization, and not just yours.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 150:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Just that for sharing this multicast domain with other AWS accounts, you need to be owner of this multicast domain.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 151:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So, if someone has shared this domain with you, you can't further share with other AWS accounts.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 152:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then, multicast domain sharing also integrates with AWS Resource Access Manager, that is AWS RAM.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 153:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: And we'll talk more about AWS RAM later when we talk about the shared transit gateways.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 154:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: But overall, these are the thing that you should be knowing for your exam.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 155:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So just a quick recap.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 156:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: AWS Transit Gateway supports multicast with IGMP version two protocol, which means that the subnets inside a VPC can be a part of multicast domain.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 157:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then, host with their ENIs can be a part of multicast group.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 158:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then, you can also integrate the multicast domain externally with third-party multicast services using GRE tunnel.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 159:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And we have seen that architecture, how it works.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 160:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 161:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Maybe there could be a question around multicast in the exam, and with the information that we covered in this lecture, you should be able to answer that.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 162:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So thanks for watching this lecture and let's move on.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/10_Transit Gateway/087_TGW Architecture_ Centralized egress internet.txt

Line 1:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Hello and welcome to this lecture.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 2:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: Now that you understood how transit gateway works, and we already covered different attachment types of the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 3:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now with this knowledge, we can definitely build lot of interesting architectures, and then these architectures can support different network routing scenarios.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 4:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now, one of such architecture is centralize the networking access through transit gateway, and you will typically come across this kind of architecture in the enterprises where there are a lot of VPCs.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 5:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then you want to have better control over the traffic which flows through these VPCs.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 6:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: And typically for that you will have a shared services VPC and all the traffic going to the internet or to other VPCs.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 7:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: You can route through this shared services VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 8:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So it looks something like this.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 9:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: On the left side you have application VPCs, and on the right side you have shared services VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 10:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Then you connect all these VPCs using the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 11:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: And now if you want to have centralized egress access, then all the traffic will be routed through this shared services VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 12:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: So any of the application VPCs doesn't have their own internet gateway, but rather all the traffic to internet is routed to this shared services VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 13:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: And similarly, you can also monitor all the traffic, which is going to internet or any traffic that flows between the VPCs through this network appliances, which you can deploy in shared services VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 14:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So here in next two to three lectures, we are going to talk about all such architectures.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 15:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And for your networking certification exam, these are very important architectures because I'm sure there will be questions around such scenarios.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 16:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So make sure that you understand all these architectures well enough.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 17:
- Concepts: Centralized Network Governance, Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Okay, so first use case that we will talk about is how do you implement the centralized egress access using the transit gateway?
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 18:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: Which means all these application VPCs when they want to reach to the internet, the traffic should flow through this shared services VPC.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 19:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay, so architecture will look something like this.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 20:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: On the left side you have application VPCs, on the right side you have egress VPC, and then you connect all these VPCs to the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 21:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, with respect to the traffic flow, the most important part here is how do you unfilter the route tables?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 22:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And that's how the traffic will be routed to the right destination.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 23:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So if you talk about the route table for this VPC, that is for the application subnet, we are saying that all the traffic to the internet will go to the transit gateway, which is obvious.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 24:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: Now with respect to the routing for this attachment of the VPCs.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 25:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: Now, typically all this spoke VPC attachment will have a common route table because routing requirements are the same.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 26:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: So this route table will look something like this.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 27:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: Again, we are saying that all the traffic going to internet will go through this egress VPC attachment, and additionally we have added this black hole route.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 28:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, this black hole route right now is to prevent the inter-VPC communication.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 29:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: And shortly I'm going to talk more about this black hole route table entry.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 30:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: Okay, so this is a route table for this attachment in which you have route propagated for egress VPC attachment So I hope that is clear.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 31:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: Now for the route table of egress VPC attachment, typically all the traffic will flow back from the internet, and you need to route back it to respective VPCs.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 32:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: So as you might have guessed, this would have the route propagated from both this attachment to respective VPCs CITR ranges.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 33:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So that's obvious.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 34:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: And now as the traffic from this VPC reaches to the transit gateway, ENI is here in the egress VPC, all this traffic has to be forwarded to the NAT gateway, and that's where there will be a route table entry for this subnet to forward all the traffic.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 35:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: Now for NAT gateway subnet, the route table entry will have default route to the internet, which is obvious.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 36:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: And for all the return traffic from the internet, it will send the traffic back to the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 37:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: And from there, as there is this route table here, it will be sent back to the respective VPCs.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 38:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So this is how you will configure your route tables.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 39:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So if instance A here initiates the traffic to the internet, the flow will look something like this, right?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 40:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And similarly, the return traffic will come back from the internet and go to the originating instance.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 41:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now in this case, you know that transit gateway tries to maintain the traffic in the same AZ in which it is originated, so if instance B, for example, here initiates the traffic, then transit gateway will send it to the NAT gateway in different AZ.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 42:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And doing that actually helps you with the high availability of the NAT gateways as well as your inter-AZ data transfer cost is saved.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 43:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So this is better architecture where you are leveraging multiple availability zones.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 44:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So just keep that in mind.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 45:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay, so important thing to know about this architecture is that we have NAT gateways in each AZ, which provides high availability as well as it saves inter-AZ data transfer cost.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 46:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And in this case, if any of the AZ fails, then also your traffic will be routed to another AZ automatically.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 47:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, with respect to the NAT gateway performance, because we are now centralizing all the egress through a NAT gateway, it shouldn't happen that NA gateway is a bottleneck.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 48:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And in that case, you should know NAT gateway performance.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 49:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So as of today, it supports 55,000 simultaneous connection to a unique destination.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 50:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And with respect to the bandwidth, it can scale up to a hundred GPS.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 51:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, these bandwidth limits might change in the future, but this is how it looks as of today.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 52:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: Now, earlier I talked about the black hole route in the attachment route table.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 53:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now let's try to understand more about why we need that route.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 54:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So this is the architecture.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 55:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now what if you remove this black hole route?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 56:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now let's try to press down, then what happens if VPC-A tries to communicate with VPC-B?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 57:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now with this route table, it'll go to the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 58:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now with this route table, it will go to the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 59:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: Now at this point there is only one route that is a default route, which goes to egress VPC attachment.
- Hidden/Implicit Meaning: Constraint or limitation signal; Transit-domain and segmentation signal.

Line 60:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So it will go here, it will go to the NAT gateway, and now because the decision is VPC-B here, NAT Gateway will use this second route here to return back the traffic to the transit gateway, and then it will go like this.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 61:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, this is not very efficient in the sense that inter-VPC communication is also going through the NAT gateway.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 62:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So you will pay additional cost of the NAT gateway.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 63:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: So rather, if you want to allow the inter-VPC communication, you should add the route table entries right here in this particular route table.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 64:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So it will look something like this.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 65:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: Now you're propagating the corresponding attachment routes into the same route table, and now the traffic directly goes from one VPC to another through the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 66:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: It doesn't go through this shared services VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 67:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: But in this architecture we did not want to allow inter-VPC communication, and that's where we had added that black hole route.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 68:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So I hope that is clear.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 69:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay, so this is one of the architecture that is very common, and we have seen questions around this.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 70:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: So make sure you understand all the routes that you see in this route table.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 71:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And now finally, before we stop for this lecture, you need to also understand the cost element here.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 72:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, centralizing access through the NAT gateway doesn't necessarily give you a lot of cost benefits.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 73:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: That's for the reason that transit gateway itself has two cost associated with it, one per attachment, and also data processing charge per GB.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 74:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So if you make your calculation, it doesn't really make a lot of difference, but I would say this kind of architecture is more beneficial if you want to have more control over your traffic.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 75:
- Concepts: Centralized Network Governance, Transit and Segmentation
- Services: Transit Gateway
- Key Insights: And that's where you will see this kind of architecture more in the enterprises where there are hundreds of VPCs, and there is a separate team who manages the transit gateway and shared services VPC.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 76:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay, so I hope that is clear.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 77:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: With that, we will stop for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 78:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So thanks for watching and stay tuned.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/10_Transit Gateway/088_TGW Architecture_ Centralized traffic inspection with Gateway Load Balancer.txt

Line 1:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Hello, and welcome to this lecture.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 2:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, in this lecture, we are going to see how you can centrally inspect the traffic using the virtual network appliances.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 3:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now in the AWS world, AWS had launched a new type of the load balancer called Gateway Load Balancer, which works with this network appliances to transparently inspect or intercept your traffic, and then you can route this traffic to network appliances.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 4:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And finally, that packet can be delivered to your destination application.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 5:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So Gateway Load Balancer is a special load balancer for the reason that it uses the encapsulation protocol like GENEVE Protocol, and that's where the entire traffic load through the Gateway Load Balancer is transparent to you.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 6:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And we are going to cover Gateway Load Balancer in more detail in the security section of this course.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 7:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: But in this lecture, let's focus more on the networking element with respect to the Transit Gateway and how do you configure the route table to enable this kind of traffic inspection?
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 8:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So quickly, if you don't know about the Gateway Load Balancer, so basically you can intercept any traffic whether you are receiving that traffic from the internet, or if two EC2 instances within different VPCs are communicating with each other, all those network traffic can be intercepted.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 9:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: Because what you can do is in your route table, you can say, the destination is Gateway Load Balancer endpoint, which are nothing but the private links.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 10:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then this private links takes your traffic to the Gateway Load Balancer, which has your network appliances as the target.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 11:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So as of now, no need to get into more detail here, but just understand that we are going to use Gateway Load Balancer to send our all traffic to the network appliances.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 12:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, in the previous lecture we already talked about how you can have the routing configured if you want to send traffic to the internet.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 13:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now there we are just adding one more traffic inspection layer, so it'll look something like this.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 14:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now this is the first scenario where we want to inspect the traffic when you send the traffic from one VPC to another.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 15:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So what we are saying is this first VPC wants to send the traffic to second VPC here, but all the traffic should go through this network appliances.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 16:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And for that, if you see on the right side, we have traffic inspection VPC in which we have Gateway Load Balancer end points, which takes our traffic transparently to the Gateway Load Balancer.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 17:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then Gateway Load Balancer uses GENEVE encapsulation protocol to send this traffic to the network appliances, right?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 18:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So with that, let's see now how you configure the routing for this traffic to flow end to end.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 19:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, very first thing, your VPC route tables, which are very similar to what we had seen earlier.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 20:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So there is a default route to take all the traffic to the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 21:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: Next, if you want to talk about the attachment route table for this VPC, then there will be just one route, which takes all the traffic to the traffic inspection VPC attachment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 22:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And now here we don't have the black hole route because we want to actually enable the traffic between these two VPCs.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 23:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: But all this traffic should be routed through this network appliances, and that's where we have just this single route.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 24:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: Okay, now, if you talk about the route table for this attachment, then it is very similar to the earlier architecture where hidden traffic will go to the respective VPCs, right, so I hope that is clear.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 25:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now is the important thing where as the traffic reaches to this transit gateway ENIs in the traffic inspection VPC, we want to send all this traffic to the Gateway Load Balancer endpoint, and that's where you have the default route, which takes traffic to this Gateway Load Balancer endpoint.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 26:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, once the traffic reaches to the Gateway Load Balancer endpoint, then everything is transparent, which means Gateway Load Balancer will take that traffic to the Gateway Load Balancer.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 27:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: From there, it'll go to the appliance, and appliance will inspect the traffic.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 28:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: We'll send it back to the Gateway Load Balancer to back to this Gateway Load Balancer endpoint.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 29:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So at this moment, after the traffic reaches back to the Gateway Load Balancer endpoint, it has to now again send it back to the transit gateway so that it can be delivered to the right destination.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 30:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So if you talk about the route table for this subnet in which you have Gateway Load Balancer and the appliances, then you just need this additional aggregated route to send the traffic back to the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 31:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So now if you want to send traffic from this instance A in VPC A to the instance B in this VPC B, then flow will look something like this.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 32:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So it'll go to the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 33:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: From there, it'll take this transit gateway route table for this attachment, it'll go to this ENI because there is this route propagation.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 34:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Then as it reaches to the transit gateway ENI, it'll take this default route to the Gateway Load Balancer.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 35:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: At this point, it'll go to the Gateway Load Balancer to the appliance back to the Gateway Load Balancer, back to the Gateway Load Balancer endpoint.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 36:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: And now again, it'll take now this route table to take this back to the transit gateway and transit gateway will deliver through this attachment route table to the VPC B and to the target B, right?
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 37:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And similarly, the return traffic from instance B will go back to the instance A.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 38:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now, at this moment, if you remember the earlier lecture, we have to typically enable the appliance more for transit gateway at this point.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 39:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: That's because otherwise the traffic from this instance B, which is in different AZ, might go to this transit gateway ENI number two, and then to different gateway endpoint, and which creates asymmetric flow for the network appliances.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 40:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And that might reject your traffic because for symmetric flow, it should see both the original request and the return packet.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 41:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So if you enable the appliance mode, transit gateway will make sure that the return traffic will go to the same AZ or ENI in this inspection VPC.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 42:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So return traffic will flow something like this.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 43:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Right, so traffic ultimately goes back to instance A, and this is how you configure the Gate Load Balancer for inter VPC traffic inspection.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 44:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So I hope that is clear.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 45:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, let's add some more complexity to this architecture.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 46:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now what we want to do is we also want to monitor the traffic, which is going out to the internet.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 47:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And in the earlier lecture, we already saw that we need NAT gateway in this traffic inspection VPC to send traffic to the internet from this traffic inspection VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 48:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So our architecture now will look something like this.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 49:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So we have added two more subnets in two different AZs and we have provision NAT gateways, and then there is internet gateway.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 50:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, with respect to the routing, there are few changes that we need to do.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 51:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So most of the things on the left side are as it is.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 52:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: Now, if you see this appliance and Gateway Load Balancer endpoint route table, we have added one more route, which says if the traffic is going to internet, then it should go to the NAT gateway.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 53:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And on the NAT gateway side, of course, we need to have the default route going to the internet, but the return traffic from the internet will go back to this Gateway Load Balancer endpoint, and that's where we have this aggregated route, which takes the traffic back to Gateway Load Balancer endpoint, and again, it does the traffic inspection for the returning traffic, and it sends it back to the destination inside the VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 54:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So again, if you want to trace down this traffic, then instance A here originates the traffic, but now we are sending it to the internet.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 55:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So it'll go here.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 56:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: From there, it'll go to the transit gateway, to the transit gateway ENI in the traffic inspection VPC.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 57:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now using this route, it'll go to the Gateway Load Balancer endpoint, and now the traffic inspection happen.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 58:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So Gateway Load Balancer endpoint sends it to the load balancer, to the appliance coming back from the appliance, goes back to the Gateway Load Balancer endpoint.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 59:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And at this moment, Gateway Load Balancer uses this route to send the traffic to the NAT gateway.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 60:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Then NAT gateway uses default route to send it to the internet and it goes out to the internet.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 61:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, similarly, for the return traffic, the traffic will come back from the internet, again to the NAT gateway.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 62:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now we know that NAT gateway keeps the internal table with which it knows that from where the original request had come.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 63:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: So it might have the IP address of instance A here, and that's where NAT gateway now will use this route table entry that is 10.0.0.0/8 and send this traffic back to the Gateway Load Balancer endpoint.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 64:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And again, Gateway Load Balancer will send this traffic for inspection to the load balancer, to the appliance, back from the appliance and back to the Gateway Load Balancer endpoint.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 65:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now, at this point, Gateway Load Balancer will now see again in the root table, and because there is this aggregate route for the VPC CIDRs, it'll send this traffic to the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 66:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: And again, using this route table, the packet will be delivered back to the instance A, right?
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 67:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And that's how entire flow happens.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 68:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So I hope that is clear to you.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 69:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So I know that there are a lot of route tables in this architecture, but if you carefully look at the traffic flow, I'm sure you will understand why these routes are configured in this fashion.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 70:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And to be honest, if you understand this entire network flow and you can come up with similar design, then I think that you really understand AWS networking well, and you can definitely crack your AWS exam.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 71:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay, with that, let me just cover few more things around this architecture.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 72:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And more importantly, this is all about the Gateway Load Balancer because as I said, they are special.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 73:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So in this architecture, we used Gateway Load Balancer endpoint, which ultimately routes traffic to the Gateway Load Balancer, and then we don't need to do anything further for traffic engineering.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 74:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Gateway Load Balancer encapsulates the traffic using GENEVE protocol, and it uses the UDP port 6081 to send traffic to the network appliances.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 75:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, with respect to the Gateway Load Balancer, it is important that you maintain the traffic flow.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 76:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: That means originating traffic and return traffic has to be handled by the same network appliance.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 77:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: And that's where if you enable the appliance mode in transit gateway, you get that stickiness of the session.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 78:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So you typically will use Gateway Load Balancer with appliance mode with transit gateway, right, so I hope that is clear.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 79:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, if you're interested in diving further deep into this architecture, then I'll suggest to go through this interesting blog on AWS site, which walks you through all the steps to configure this network architecture.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 80:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So I'll leave it up to you if you wanna explore it further.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 81:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So we will stop here for this lecture, and we are going to talk about more such architecture in the following lecture.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 82:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Thanks for watching and stay tuned.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/10_Transit Gateway/089_TGW Architecture_ Centralized VPC interface endpoints.txt

Line 1:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Hello, and welcome to this lecture.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 2:
- Concepts: Centralized Network Governance, Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now, in this lecture let's see how can you use Transit Gateway to centralize the VPC interface endpoint access by connecting multiple spoke VPCs to a centralized VPC, and in that VPC you will provision the VPC interface endpoint.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 3:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, we have a dedicated section where we learn about interface endpoints, why they're used and different architectures.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 4:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: But here, as we are talking about Transit Gateway, it's important to cover this architecture because this is also something that can be asked in your exam.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 5:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So, what are interface endpoints?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 6:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Just for a quick recap, interface endpoints allows you to connect to AWS services endpoints privately from your VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 7:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: Which means if from instance, A in VPC A probably you want to make an API call to EC2 service or say SQS service, KMS, likewise, there are 120 plus AWS services endpoints available.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 8:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So you don't need outbound internet access or a NAT gateway in your VPC, but with VPC interface endpoint you can directly connect to these services.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 9:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, the way it works is using private link.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 10:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So it actually provisions ENI into your subnet.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 11:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: And then through that ENI you can reach to the AWS service public endpoint.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 12:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So that's in a nutshell is an interface endpoint.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 13:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, as I said, there is a dedicated topic and a section for interface endpoint.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 14:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: But now look at the architecture here.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 15:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: What if we want to centralize the access?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 16:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: What that means is right now, I have one VPC and I want to connect to three endpoint services, right?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 17:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: As shown in this architecture.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 18:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So ultimately I would create three VPC endpoints and it will create three NIS into my VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 19:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, this works fine, but what if I have more VPCs?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 20:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Say I have four VPCs altogether.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 21:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And if from those VPCs as well I want to access AWS services endpoint.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 22:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Then I would've to again, create three endpoints in every VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 23:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, if you see, number of endpoints are increasing and over the time, if you have multiple VPCs and you have a lot of endpoints that needs to be created.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 24:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: As of now, we just have three here, but maybe you need a private access to maybe 50 endpoint services.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 25:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Then you just multiply those number and those many endpoints you need to provision and manage that a lot, right?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 26:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So transit gateway can help you solve that problem.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 27:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: What we can do is instead of provisioning this VPC endpoint into every VPC, let's call them spoke VPCs.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 28:
- Concepts: Centralized Network Governance, Transit and Segmentation
- Services: Transit Gateway
- Key Insights: You provision these endpoints in a centralized VPC, and then through transit gateway, you connect all this spoke VPC to this centralized VPC.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 29:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And in this case we just need to create now three VPC endpoints for three AWS services endpoint, and then all the spoke VPCs can privately access the endpoint services.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 30:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So transit gateway greatly simplifies this architecture.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 31:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, everything works fine however, we also need to understand how the AWS services DNS will be resolved in this case, right?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 32:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So that's the question.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 33:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, what do I mean by that?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 34:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Suppose you are running some application on instance A here and this application wants to connect securely to SQS API Endpoint.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 35:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now for that you'll use SDK or CLI as a part of your application, running an instance A and that CLI or SDK will make an API call with the DNS name, say SQS dot region name which could be ap-south-1.amazonaws.com.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 36:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: Now, you don't have outbound internet connectivity so this DNS will be resolved to a public endpoint of SQS endpoint by default, but as there is no NAT gateways and there are no internet gateways your traffic will never go out to the SQS service and your call will fail.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 37:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: Now, what essentially we want is if instance A makes an API call to SQS then that DNS resolution should be resolved to the private IP address of your VPC endpoint which is available into this centralized VPC.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 38:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, how do you really do that, right?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 39:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's look at the solution here.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 40:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So ultimately what you want is, in all these spoke VPCs if there is a DNS resolution request goes for sps.ap-south-1.amazonaws.com it should be resolved to the VPC endpoint, private IP, right?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 41:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: And what really happens when you create a VPC endpoint into a centralized VPC is that you can enable the private DNS for that VPC endpoint.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 42:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's take an example.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 43:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: You enable it for say, SQS endpoint.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 44:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now what AWS does in this case, it creates one private hosted zone with the same name as your API endpoint which is sqs.ap-south-1.amazonaws.com and then it attaches that private hosted zone with this VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 45:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, if from this VPC there is an EC2 instance here and you try to resolve sqs.ap-south-1.amazonaws.com, it will automatically get results to the private IP of your VPC endpoint ENI.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 46:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And this is what works but that works only within this VPC, right?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 47:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: It is not resolvable in the spoke VPCs.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 48:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So all these VPCs still cannot resolve this sqs.ap-south-1.amazonaws.com to the private IP of VPC endpoint.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 49:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So that's the problem.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 50:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: If you want to centralize access to VPC interface endpoints but there is solution to that as well.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 51:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: What you would have to do in this case is first, you disable this private DNS, right?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 52:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, disabling this private DNS does one thing, right?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 53:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: It doesn't automatically create that private hosted zone in the name of SQS dot whatever, right?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 54:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then what you can do is you can create your own private hosted zone with the same name as your API endpoint.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 55:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: In this case, sqs.apc-south-1.amazonaws.com.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 56:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then you create Alias record into your hosted zone which says the root domain that is sqs.ap-south-1.amazonaws.com points to the VPC endpoint DNS.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 57:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, you get this DNS from VPC endpoint as you create, you will get, you know, multiple DNS names for the same VPC endpoint.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 58:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And we'll talk more about that later.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 59:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: But you can manually create these Alias records into these private hosted zone.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 60:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then you should also create corresponding hosted zone for other VPC endpoint services as well.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 61:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So SQS is just an example.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 62:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Similarly, you can do it for KMS, EC2 and 120 more such services.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 63:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And ultimately after you create this hosted zone you attach these hosted zones to all these spoke VPCs.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 64:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: Now, as soon as you attach this private hosted zones to the spoke VPCs, now within the spoke VPCs you can resolve the DNS name for AWS public service.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 65:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And that means if any application running inside this spoke VPCs can automatically resolve to the private IP address of your VPC endpoint.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 66:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now there are certain important things to know about the DNS and VPC interface endpoints.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 67:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: When you create an interface endpoint it will provide you two kinds of the DNS.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 68:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: One is original DNS entry, and one is easy level DNS entry.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 69:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, while these two entries, because, many a times what you would want is the traffic from a particular AZ into your spoke VPCs only goes to the VPC endpoint in that particular AZ in the target VPC.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 70:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: When I say target, it's a centralized VPC so that you don't have the inter AZ data transfer charges.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 71:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, what you can do definitely is you can use then AZ specific DNS name into your route 53 hosted zone and you can then manage it at the application level which DNS names you want to resolve to, right?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 72:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, if you look at the regional DNS endpoint, it ultimately resolves to this easy level DNS endpoint.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 73:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So this is an example here.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 74:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: After I created VPC endpoint, it gave me this regional DNS name for that endpoint.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 75:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And if I do NS look up to that, it will give me two DNS records.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 76:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And it results to the private IP address from corresponding availability zone in which the endpoint has been created.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 77:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, again, as I said, in order to save some inter-AZ transfer cost into the spoke VPCs you could use this easy, specific DNS name instead of region specific DNS name.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 78:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So if you just try to resolve the easy specific DNS name for the input it will results to one single private IP address.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 79:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And this choice has to be made by the client, right?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 80:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So that's about the VPC interface endpoint.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 81:
- Concepts: Centralized Network Governance, Transit and Segmentation
- Services: Transit Gateway
- Key Insights: You now understand how you can use AWS transit gateway to have centralized access to these endpoints.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 82:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And more importantly, you should know how to resolve the DNS names for AWS services using the privacy hosted zone.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 83:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay now let's also apply the cost lens to the same architecture.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 84:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, let's go back to the original architecture where we had three VPC interface endpoints into each VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 85:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, VPC interface endpoint comes with the cost and there are two types of the cost associated.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 86:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: One, per hour charged for the VPC interface endpoint and then how much data flows to that VPC interface endpoint.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 87:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, if you have multiple VPC you will just multiply this cost with multiple VPCs.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 88:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So it's a lot of cost again.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 89:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Okay now, if you do the same thing using transit gateway that doesn't really mean that you are saving a lot of money.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 90:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: Though you might just see three VPC interface endpoints into the centralized VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 91:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Of course we'll pay for that.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 92:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: But then the connectivity from the VPC to the transit gateway doesn't come free, right?
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 93:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: There is additional charge per attachment per VPC as well as there is a data processing charge as it flows through your transit gateway attachment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 94:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And this cost is much higher than the VPC interface endpoint cost.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 95:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: So if you look at the cost here you'll be paying for transit gateway attachment as well as data processing charge at every attachment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 96:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: And on top of it you will pay for the VPC interface endpoint which are provision inside your centralized VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 97:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So, in order to really look at the cost clearly you should consider all these factors.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 98:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: You should consider how many attachments are there, how much data is getting processed and then ultimately should come to the decision.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 99:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So it's not in black and white that this is cheaper, and this is costly.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 100:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: You should really take that decision based on your architecture.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 101:
- Concepts: Centralized Network Governance, Transit and Segmentation
- Services: (none explicit)
- Key Insights: Okay, now, one more architecture that I wanted to discuss here is instead of using transit gateways you could also use VPC peering connections between spoke VPCs and the centralized VPC.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 102:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now why this, right?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 103:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: When transit gateway is there?
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 104:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, one of the obvious reason is cost, again.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 105:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: You saw that transit gateway comes with a lot of cost for the attachment, as well as for data processing charges.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 106:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And in VPC pairing case, there is no such charge.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 107:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: VPC pairing comes for free.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 108:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: That means if you have limited number of VPCs you can only have up to 10 VPCs connected to the centralized VPC.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 109:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: You need to check the current limit though but it was 10 earlier.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 110:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Then there is a limitation, right?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 111:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: You can't connect more than that to the centralized VPC.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 112:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And if you look at this architecture, this very well works and you would have to do the exact same thing that you did for the DNS solution.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 113:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: That means you would've to create a private hosted zone and then associate that with all the spoke VPCs.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 114:
- Concepts: Centralized Network Governance, Service-to-Service Networking
- Services: (none explicit)
- Key Insights: Also you need to disable the private DNS for the VPC endpoint so that AWS doesn't automatically create AWS service, private hosted zone and associates that with this centralized VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 115:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So, very well both the architecture will work but if you need more flexibility and there are a lot of VPCs which goes beyond the VPC pairing limitation then always go for the transit gateway.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal; Transit-domain and segmentation signal.

Line 116:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 117:
- Concepts: Centralized Network Governance, Transit and Segmentation
- Services: (none explicit)
- Key Insights: And I hope you understand how the centralized access to the VPC interface endpoint can be managed using the transit gateways and you know the pros and cons of the architectures that we discussed today.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 118:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: This is interesting and you might find some questions around this into your exam, so make sure you understand these concepts well.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 119:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Thanks for watching and stay tuned.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/10_Transit Gateway/090_Transit Gateway vs VPC Peering.txt

Line 1:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Hello and welcome to this lecture.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 2:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So in this lecture I wanted to, uh, put down some differences between VPC peering and transit gateway and give you some hints towards when to use what depending on their features.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 3:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's, uh, look at the differences between these two.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 4:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So VPC peering and transit gateway with respect to the architecture.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 5:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: If you understood VPC peering would provide you 1 to 1 connection.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 6:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: That means if there are two VPCs, you need to have one VPC peering connection between them.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 7:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And if there are three, then you also need to have 1 to 1 connection between all these three.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 8:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So that makes it difficult if number of VPCs are growing.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 9:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: But in case of Transit Gateway, it's a hub and spoke model where you can attach up to 5000 VPCs or other connection to the transit gateway with respect to the hybrid connectivity.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 10:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: As you know, VPC peering is just for connecting to VPCs, right?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 11:
- Concepts: Transit and Segmentation
- Services: Direct Connect
- Key Insights: However, transit gateways for connecting VPCs to even the hybrid network like on premise network over a VPN or a direct connect.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 12:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Complexity wise, VPC peering is simple, but it is good for fewer number of VPCs.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 13:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: However, Transit Gateway can handle many number of VPCs, and it actually simplifies your network architecture with respect to the scale.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 14:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: As of today, VPC peering has a limit of 125 peering connection per VPC.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 15:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: However, Transit Gateway supports up to 5000 attachments.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 16:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Latency wise, I would say that VPC peering is better because there is no additional networking hop, but in case of Transit Gateway as you know, it provisions the Eni into your subnets and that's where you can see that there is an additional network hop bandwidth wise.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 17:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Again, VPC peering does not impose any bandwidth limits and you are restricted by the EC2 bandwidth basically, which is doing the data transfer.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 18:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: However, in case of transit gateway, there is a maximum limit of 50 gigabits per second per attachment referencing security group, which means if you have two VPCs and you are writing a security group rule for EC2 machine in one VPC, can you reference that security group in the security group of another VPC?
- Hidden/Implicit Meaning: Constraint or limitation signal; Transit-domain and segmentation signal.

Line 19:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 20:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So in case of VPC peering it is allowed.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 21:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: And in Transit Gateway it wasn't initially allowed where you could refer the security group from across VPCs.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 22:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: But from 2025 transit gateway VPC attachments also supports referencing the security group.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 23:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So that's a new change.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 24:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So if you go to the VPC console and you try to create the transit gateway, there you will see this option security group referencing support.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 25:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And it is disabled by default.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 26:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: But then you can enable that.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 27:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So as I said this is a new change.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 28:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So just remember about it.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 29:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Subnet connectivity which means if you are connecting say two VPCs then virtual subnets can communicate with each other across the VPCs.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 30:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, in case of VPC peering connection, you can connect any subnet to any subnet across the two VPCs which are connected.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 31:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: But as we have learned in case of Transit Gateway, it will depend on your availability zone in which you are creating the Transit Gateway attachment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 32:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: So only the subnet, which are part of that particular AZ in which you are creating the attachment, will be able to route traffic through the transit gateway, right.
- Hidden/Implicit Meaning: Constraint or limitation signal; Transit-domain and segmentation signal.

Line 33:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Remember this point very important to consider.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 34:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Finally, transitive routing, which means can you access the other network elements from the connection through the connection, whether VPC peering or transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 35:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So in case of VPC peering we learn that there are.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 36:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: These are the invalid scenarios where you can't access the internet gateway via the peering connection, or Nat gateway through the peering connection, so it's not supported.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 37:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: However, in case of Transit Gateway, because there is an Eni involved, the transitive routing is possible.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 38:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: That means you could have a centralized VPC in which you provision your, you know, internet gateways or Nat gateway.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 39:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: And then you have all these VPCs and you can route all your outbound internet traffic through that centralized VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 40:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, this is not possible in case of VPC peering connections.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 41:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Finally, and the most important thing the TCO how much it costs.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 42:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So VPC peering there is no separate cost for peering.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 43:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: But what you pay is for the data transfer cost data transfer.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 44:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: It's free within the AZ.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 45:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Earlier there was some charge, but after May 2021 there is no charge.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 46:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: If the data remains in the same AZ across the two VPCs.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 47:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: However, if subnets are in different AZ then there will be $0.01 data transfer charge in each direction.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 48:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And if the VPCs are across regions, then $0.02 data transfer charge would be applied.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 49:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: In case of transit gateway, there is additional cost that is per attachment cost, which is like 20 4X7.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 50:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then there is additional data transfer cost as well.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 51:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: So even though you do not do the data transfer you will still pay for this attachment cost.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 52:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: And for example for North Virginia region, that attachment cost is $0.05 per hour and $0.02 per GB data transfer cost.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 53:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So if you look at this thing holistically, VPC peering is simpler to use.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 54:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And also it gives you some cost benefit.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 55:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: But as you can see, if number of VPCs are more then it is difficult to handle that.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 56:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Moreover, it does not allow you to connect VPCs to the on premise network.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 57:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now, if you want to simplify your network and you see that there are so many connections to handle, it's better to go with the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 58:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: But again, it comes with some additional costs there.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 59:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So that's it about the difference between the peering connection and transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 60:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And I hope based on this you could make your architectural choices.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 61:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So thanks for watching.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/10_Transit Gateway/091_Transit Gateway Sharing.txt

Line 1:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Hello, and welcome to this lecture transit gateway sharing or you can say sharing the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 2:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Basically, as the title suggests, what it means is you can share your transit gateways across AWS accounts, and then it is possible that you can connect your VPCs from different accounts to the transit gateway, which is owned by different AWS account.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 3:
- Concepts: Transit Operational Context
- Services: Direct Connect
- Key Insights: But there are certain caveats when it comes to attachments like VPN or a direct connect.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 4:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And we'll talk about all those things in this lecture.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 5:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: So very first thing, how do you share transit gateways?
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 6:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So for this, you have to use AWS Resource Access Manager that is RAM, and RAM allows you to share various AWS resources, including the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 7:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And those resources can be shared across AWS account in your organization or you could also share with other AWS account in other AWS organization.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 8:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: So RAM is an essential service to share AWS resources securely with other AWS accounts.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 9:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So generic flow, how do you use AWS Resource Access Manager is that you first select the resources that you want to share.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 10:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then you are going to define the permissions, like what actions are permitted on these shared resources.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 11:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So you are going to share this resource with other AWS accounts.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 12:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So the user in that AWS account can perform only certain actions that you can define with these IAM permissions when you share the resources.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 13:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Then you specify AWS accounts or organization units or AWS organizations or IAM roles and users with whom you want to share these resources.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 14:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And once that's done, all resources that you want to share will be shared with specified principle entities into AWS, and then those users or roles will only get access to the actions that you have mentioned in your permissions boundary.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 15:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And that's how the AWS Resource Access Manager works.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 16:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: And as I said, transit gateways also and resource, which can be shared using AWS Resource Access Manager.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 17:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now, when you share transit gateway using RAM with other AWS account, then the other AWS account owner can connect the VPCs from that account with the transit gateway, which has been shared with that account.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 18:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So it's possible that you can connect VPCs across different AWS accounts.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 19:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: Now, a few caveats and important to know, while you use AWS Resource Access Manager to share the transit gateways, first, if you are using the site-to-site VPN attachment to the transit gateway, then you have to make sure that the VPN attachment is created in the same account as the transit gateway owner account.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 20:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: So you can't cross connect the VPN attachment across different AWS accounts.
- Hidden/Implicit Meaning: Constraint or limitation signal; Transit-domain and segmentation signal.

Line 21:
- Concepts: Transit and Segmentation
- Services: Direct Connect, Transit Gateway
- Key Insights: Further, if you're using a direct connect gateway to connect transit gateway to the direct connect, then you could also use direct connect gateway from other AWS account.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 22:
- Concepts: Transit Operational Context
- Services: Direct Connect
- Key Insights: So again, cross account connection is possible in case of direct connect gateway.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 23:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now, when a transit gateway shared with the AWS account, the other AWS account cannot really create, modify, delete the transit gateway route tables, and it cannot even enable or disability the route propagations and the associations.
- Hidden/Implicit Meaning: Constraint or limitation signal; Transit-domain and segmentation signal.

Line 24:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So that means the control of the route is with the owner of the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 25:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: And finally, you need to make sure that when you choose the availability zone into the other VPCs which are going to connect to your transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 26:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now in that VPC, you would have to select availability zone where the transit gateway attachments are created, right?
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 27:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now if you know the way AWS names the availability zone is something like us-east-1A, us-east-1B, likewise, right?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 28:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now for you or say for one account us-east-1A maybe a one availability zone, but in the same region, if there is another AWS account, then us-east-1A maybe a different availability zone, and probably AWS has done in that way because then otherwise everybody would keep launching the instances, maybe only first AZ, and that would make some kind of imbalance between resource capacity in those AZ.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 29:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So, which means you shouldn't rely on the AZ name to identify a unique, AZ across different accounts, but rather AWS has assigned AZ IDs to the AZ and those remains constant irrespective of different AWS account.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 30:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So instead of us-east-1A, you should look at the AZ ID and which could look like use1-az1, so us-east-1-az1.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 31:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So this is now AZ ID.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 32:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And if you refer this AZ ID into any of the AWS account in that region, then all will mean the same AZ.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 33:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So you are making sure that the transit gateway attachments are created in the same AZ.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 34:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: And this is important because you know transit gateway has AZ affinity.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 35:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Otherwise, you might have additional AZ data transfer charges.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 36:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: Okay, so that's it about sharing the transit gateways.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 37:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: It's a small topic, but important to know that you can share transit gateways across AWS accounts and AWS organizations as well.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 38:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So thanks for watching.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/15_AWS Cloud WAN/143_What is AWS Cloud WAN_.txt

Line 1:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Hello and welcome to this new topic.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 2:
- Concepts: Global WAN Control Plane
- Services: AWS Cloud WAN
- Key Insights: AWS cloud Wan.
- Hidden/Implicit Meaning: Global WAN governance signal.

Line 3:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Wan is wide area network.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 4:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now this is very interesting topic and it solves lot of problems which probably are complex to solve with just using AWS networking components that you have seen so far.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 5:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, we have already talked about connecting different networking components in AWS.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 6:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: For example, how do you connect multiple VPCs?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 7:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: How do you use transit gateways?
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 8:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Then?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 9:
- Concepts: Transit Operational Context
- Services: Direct Connect
- Key Insights: How do you set up your hybrid network using the VPN or Direct Connect?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 10:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: But if you really look at the large enterprises, they have their legacy network spread across the globe, right?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 11:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And also then they operate in AWS.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 12:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So often it is required that you have one single pane of network management.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 13:
- Concepts: Global WAN Control Plane
- Services: AWS Cloud WAN
- Key Insights: And as you might have guessed, that's what is AWS cloud Wan.
- Hidden/Implicit Meaning: Global WAN governance signal.

Line 14:
- Concepts: Global WAN Control Plane, Service-to-Service Networking
- Services: AWS Cloud WAN
- Key Insights: So AWS launched AWS cloud Wan service, which allows you to build, manage and monitor the global network across AWS and on premises network.
- Hidden/Implicit Meaning: Global WAN governance signal.

Line 15:
- Concepts: Global WAN Control Plane
- Services: AWS Cloud WAN
- Key Insights: And we are going to dive deep into further what cloud Wan is and what are the components of the cloud Wan.
- Hidden/Implicit Meaning: Global WAN governance signal.

Line 16:
- Concepts: Centralized Network Governance, Global WAN Control Plane
- Services: AWS Cloud WAN
- Key Insights: The best part of cloud Wan is that it's a policy driven.
- Hidden/Implicit Meaning: Global WAN governance signal.

Line 17:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: That means you define the network policy like you do with any software defined networks, and just apply that policy and it will take into the effect.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 18:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And further, you get a single pane of dashboard through which you can monitor your entire global network.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 19:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And this is done through AWS Network Manager.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 20:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So we will also see how that network looks like and what kind of different views you can have, and how you can monitor the performance and all the network links into your network architecture.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 21:
- Concepts: Global WAN Control Plane
- Services: AWS Cloud WAN
- Key Insights: So essentially cloud Wan is something like this.
- Hidden/Implicit Meaning: Global WAN governance signal.

Line 22:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: AWS Cloud WAN, Direct Connect, VPC Attachment
- Key Insights: You connect your VPCs, your direct connect your site to site VPN or even your SD-Wan networks through the network attachment to AWS cloud Wan.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal; Global WAN governance signal.

Line 23:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: And then you have centralized dashboard through AWS Network Manager.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 24:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: And as I said, you can change the network configurations through network policy.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 25:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: You apply that policy and it will be deployed across the globe.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 26:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: So if there are new AWS region in which you want to deploy your network, you just make that change in that network policy and then it will take into the effect.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 27:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So I hope that is clear.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 28:
- Concepts: Global WAN Control Plane
- Services: AWS Cloud WAN
- Key Insights: Now let's go back to the basics and see why AWS might have launched AWS cloud Wan, what problems it actually solves and what are the complexities otherwise using, you know, other networking components for your global network.
- Hidden/Implicit Meaning: Global WAN governance signal.

Line 29:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's take an example.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 30:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: For example, there are two different AWS region in which you have your VPCs deployed.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 31:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now if you go with very basic construct, probably you will say there are just three VPCs.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 32:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: I will just go with VPC peering connection.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 33:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: If I need to have this VPC communicate to each other so it will look something like this.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 34:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: You connect this to VPCs in North Virginia region.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 35:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And also you connect this VPCs to the other VPC in Mumbai region.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 36:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And as you know VPC peering is non-transitive.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 37:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So you have to also set up this link between these two VPCs.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 38:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So this works well I would say for small number of VPCs.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 39:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: And you already know that if there are more VPCs, of course we move to the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 40:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So there are now more VPCs.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 41:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: So logically what you will do is you will rather launch transit gateways.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 42:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: And transit gateways are regional components.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 43:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: And then you will connect these VPCs to the transit gateway in that region.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 44:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: And now because you want to have communication between VPCs across the region, you will pair this transit gateways.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 45:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So I hope this architecture is pretty familiar to you.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 46:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now let's add some more complexity and add our third region here.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 47:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now again you can do the same thing.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 48:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: You can have Transit gateway, but again the same challenge that was with the VPC peering scaling.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 49:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 50:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: That means now you have to have the peering between these two transit gateways and these two transit gateways, and also between the North Virginia and Mumbai Transit Gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 51:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So you can see that complexity is increasing.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 52:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So as many region you will onboard those many peering connection will be required.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 53:
- Concepts: Transit Operational Context
- Services: Direct Connect
- Key Insights: And on top of this, if you want to connect your direct connect connections, that means you are going now hybrid.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 54:
- Concepts: Transit and Segmentation
- Services: Direct Connect
- Key Insights: Then of course you would have to have your DCS connection going to the Direct Connect gateway over a transit VIF, and then you connect Direct Connect Gateway to the transit gateways in different AWS regions.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 55:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: We have already seen this architecture, and on top of which, for high availability, you might want to have the VPN connection and SD-Wan connections as well.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 56:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now just a quick refresher.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 57:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: If you go back to the Transit Gateway section, we talked about the SD-Wan.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 58:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: In which case you have the SD-Wan appliance sitting on premises.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 59:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: Or you can also deploy that inside a VPC, and then you connect to Transit Gateway over the connect attachment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 60:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Then you create a GRE tunnel.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 61:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And that's where your network can be extended to AWS.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 62:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: So if you want to add the SD-Wan to this network, again, you can connect it to the Transit gateway over a connect attachment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 63:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And further, if you are using SD-Wan, that means you might also have different routing domain.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 64:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: That means you might have different network segments.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 65:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: So for example, a different network layer for development or production or shared services.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 66:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: Now as you connect your connect attachment to the transit gateway, typically all the routes and routing policies are propagated to the transit gateways.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 67:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So it will be automatically propagated through dynamic routing.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 68:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: But you know that transit gateway peering doesn't support the dynamic routes, and you have to have the static routes written into your route tables.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 69:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: And in that case, this becomes a manual task to also update your transit gateway peering.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 70:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So overall, this is really a complex solution for managing this kind of the network.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 71:
- Concepts: Global WAN Control Plane
- Services: AWS Cloud WAN
- Key Insights: And as you might have now guessed, this problem is solved using AWS cloud Wan.
- Hidden/Implicit Meaning: Global WAN governance signal.

Line 72:
- Concepts: Global WAN Control Plane
- Services: AWS Cloud WAN
- Key Insights: So you just forget about everything that you see here and just replace all these layers with AWS cloud Wan.
- Hidden/Implicit Meaning: Global WAN governance signal.

Line 73:
- Concepts: Centralized Network Governance, Global WAN Control Plane
- Services: AWS Cloud WAN
- Key Insights: Okay, so Cloud Wan is that one single global network that provides you the centralized connectivity for everything that you see in this diagram.
- Hidden/Implicit Meaning: Global WAN governance signal.

Line 74:
- Concepts: Global WAN Control Plane
- Services: AWS Cloud WAN
- Key Insights: So before we dive deep into the individual cloud Wan components, let's first understand at a high level what those components are.
- Hidden/Implicit Meaning: Global WAN governance signal.

Line 75:
- Concepts: Global WAN Control Plane
- Services: AWS Cloud WAN
- Key Insights: Which means what is this cloud Wan is made up of.
- Hidden/Implicit Meaning: Global WAN governance signal.

Line 76:
- Concepts: Global WAN Control Plane
- Services: AWS Cloud WAN
- Key Insights: And then we will also try to do a walkthrough where you will create a global network with cloud Wan.
- Hidden/Implicit Meaning: Global WAN governance signal.

Line 77:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 78:
- Concepts: Global WAN Control Plane
- Services: AWS Cloud WAN
- Key Insights: So what are the components of the cloud Wan.
- Hidden/Implicit Meaning: Global WAN governance signal.

Line 79:
- Concepts: Global WAN Control Plane
- Services: AWS Cloud WAN
- Key Insights: So if you double click into the cloud Wan there is something called Global network.
- Hidden/Implicit Meaning: Global WAN governance signal.

Line 80:
- Concepts: Global WAN Control Plane
- Services: (none explicit)
- Key Insights: Now this network consists of core network which we are going to talk about.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 81:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: And then Transit Gateway Network.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 82:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now transit Gateway network is a traditional transit gateways.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 83:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So basically if you are already using the transit gateway you can still manage and see this transit gateway in the network Manager console.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 84:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So global network has two components core network and transit Gateway network.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 85:
- Concepts: Global WAN Control Plane
- Services: AWS Cloud WAN
- Key Insights: But we are focusing only on the core network because that's what real cloud Wan is.
- Hidden/Implicit Meaning: Constraint or limitation signal; Global WAN governance signal.

Line 86:
- Concepts: Global WAN Control Plane
- Services: (none explicit)
- Key Insights: And through this core network, basically you connect all these attachments that we just saw.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 87:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 88:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So first thing is to create a global network.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 89:
- Concepts: Global WAN Control Plane
- Services: (none explicit)
- Key Insights: And then you have to create the core network.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 90:
- Concepts: Global WAN Control Plane
- Services: (none explicit)
- Key Insights: And as you create this core network it has core network edge which are the regional routers, which sits into every AWS region that's called CDN or core Network Edge.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 91:
- Concepts: Centralized Network Governance, Global WAN Control Plane
- Services: Core Network Policy
- Key Insights: And then in order to deploy this network you create core network policy.
- Hidden/Implicit Meaning: Global WAN governance signal.

Line 92:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: And we will see how this policy looks like.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 93:
- Concepts: Global WAN Control Plane
- Services: (none explicit)
- Key Insights: Now, once you have this core network, you connect all these regions together.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 94:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then you can divide your network into the routing domains.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 95:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now those are called network segments.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 96:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And again we will talk about that shortly.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 97:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: So you can have development network production network shared services network the way you want your network segmentation.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 98:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: You can do that.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 99:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: And for that network segment of course, you can define the actions as in which network segment can share routes with each other, which are isolated network segments.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 100:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: All that is possible now after you create the segments, of course, you need to attach your VPCs and your VPN to these segments so that they can communicate with each other.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 101:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So next component is attachments.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 102:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: And with this attachment you can do some kind of automations as well.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 103:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: For example, if you create a new attachment for the VPC, you can tag that attachment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 104:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then that VPC will be automatically linked to your development network.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 105:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And we will see how that actually works.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 106:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: Transit Gateway
- Key Insights: And finally, you can also pair your existing transit gateway to the core network.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 107:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So this is not necessary.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 108:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: AWS Cloud WAN, Transit Gateway
- Key Insights: But if you have already your network setup in AWS using the transit gateways, and now you want to move to the cloud Wan, then it is possible that you bring in your existing transit gateway and pair it with the AWS cloud Wan.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal; Global WAN governance signal.

Line 109:
- Concepts: Global WAN Control Plane, Service-to-Service Networking
- Services: AWS Cloud WAN
- Key Insights: And one thing to understand is that the cloud Wan is a global service.
- Hidden/Implicit Meaning: Global WAN governance signal.

Line 110:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: But all this configuration data about your network policies and your dashboards, all this data is stored in your home region.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 111:
- Concepts: Global WAN Control Plane
- Services: AWS Cloud WAN
- Key Insights: And for cloud Wan, that home region is Oregon.
- Hidden/Implicit Meaning: Global WAN governance signal.

Line 112:
- Concepts: Global WAN Control Plane
- Services: (none explicit)
- Key Insights: Irrespective of in which region you actually deploy your networks, which means it is not necessary that you also deploy your core network edge in the Oregon region.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 113:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: But it is just used to store all the metadata about your networks in the Oregon region.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 114:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 115:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So I hope that is clear.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 116:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So now let's try to put everything together.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 117:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: What we just talked about.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 118:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So you have this kind of architecture.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 119:
- Concepts: Global WAN Control Plane
- Services: AWS Cloud WAN
- Key Insights: Of course you replace everything with AWS cloud Wan.
- Hidden/Implicit Meaning: Global WAN governance signal.

Line 120:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: AWS Cloud WAN
- Key Insights: So when you create a cloud Wan you first create a AWS cloud Wan global network, which is combination of core network and transit gateways network.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal; Global WAN governance signal.

Line 121:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: We are not talking about Transit Gateway network as of yet.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 122:
- Concepts: Global WAN Control Plane
- Services: (none explicit)
- Key Insights: We are just focusing on the core network.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 123:
- Concepts: Global WAN Control Plane
- Services: (none explicit)
- Key Insights: So first thing you do is create a core network and you define in which all AWS region you want to have your core network, and then it will create the core network edges into those regions.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 124:
- Concepts: Centralized Network Governance, Global WAN Control Plane
- Services: Core Network Policy
- Key Insights: And all this can be done using the core network policy, which is basically a Json document.
- Hidden/Implicit Meaning: Global WAN governance signal.

Line 125:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: But AWS also provides you a console and the UI to change your policy.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 126:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: Now, once you deploy your network, of course, you can then create the attachment to the core network, whether you have VPCs, you have SD-Wan, you have VPN, or you want to connect your existing transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 127:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: In that case, there will be peering attachment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 128:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And now let's assume that some of the VPCs are for development.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 129:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Some of the VPCs are for production.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 130:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then all these hybrid connectivity is your shared network.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 131:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 132:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So we are just naming the VPCs accordingly.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 133:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And now you want to make sure that all these development VPCs are connected to a separate network.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 134:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And they cannot communicate with the production network.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 135:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And for that as I said, you can create different routing domains, also called as segments.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 136:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: VPC Attachment
- Key Insights: And then you can create the attachment which are specific to that segment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 137:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: So you connect all development VPCs to the development segment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 138:
- Concepts: Centralized Network Governance, Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: Similarly, prod VPC to the prod segment and all your hybrid networks to the shared services segment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 139:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, please understand that the segmentation that I have shown here is just an example.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 140:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And typically for your organization, you would have different requirement with respect to how you manage your network segments.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 141:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And of course accordingly you will have different routing policies as well.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 142:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So this is just one example here.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 143:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And all these attachments can be automatically added to the segments using some rules.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 144:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: And that's called attachment policies.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 145:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And one of the way to do that is using the tags.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 146:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And we will talk about that.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 147:
- Concepts: Centralized Network Governance, Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: And finally you could also have the segment routing in the sense that you can define my development segment can communicate with the shared services segments, because maybe you want that your event development VPCs to be communicating with your on premises network, but you don't want your development and production networks to communicate with each other.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 148:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So again, this is just one kind of example where you can set up, you know, interoperability between different segments.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 149:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: So depending on your network requirement you will definitely decide whether two segment needs to communicate with each other.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 150:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now there are other features as well.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 151:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: For example isolated segments.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 152:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: In that case, no other segment can communicate with a given segment which is marked as isolated.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 153:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And we will also talk about that.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 154:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So I hope that is clear.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 155:
- Concepts: Global WAN Control Plane
- Services: AWS Cloud WAN
- Key Insights: So that's the cloud Wan in nutshell.
- Hidden/Implicit Meaning: Global WAN governance signal.

Line 156:
- Concepts: Global WAN Control Plane
- Services: AWS Cloud WAN
- Key Insights: And going forward let's try to deep dive into the network policies for the cloud Wan.
- Hidden/Implicit Meaning: Global WAN governance signal.

Line 157:
- Concepts: Global WAN Control Plane
- Services: AWS Cloud WAN
- Key Insights: And also I will have a quick walkthrough about how to create the cloud Wan network.
- Hidden/Implicit Meaning: Global WAN governance signal.

Line 158:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So thanks for watching and stay tuned.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/15_AWS Cloud WAN/144_Core Network Policy.txt

Line 1:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Hi.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 2:
- Concepts: Centralized Network Governance, Global WAN Control Plane
- Services: AWS Cloud WAN, Core Network Policy
- Key Insights: So this is one of the most important lecture in this section, because everything that you do in cloud Wan is defined by the core network policy.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Global WAN governance signal.

Line 3:
- Concepts: Global WAN Control Plane
- Services: AWS Cloud WAN
- Key Insights: Now in the earlier lecture we just saw the components of the cloud Wan.
- Hidden/Implicit Meaning: Global WAN governance signal.

Line 4:
- Concepts: Centralized Network Governance, Global WAN Control Plane
- Services: Core Network Policy
- Key Insights: But let's now understand what are the core elements of core network policy.
- Hidden/Implicit Meaning: Global WAN governance signal.

Line 5:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: And then how do you define your entire network using a simple policy document.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 6:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's get started.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 7:
- Concepts: Centralized Network Governance, Global WAN Control Plane
- Services: Core Network Policy
- Key Insights: So core network policy looks something like this.
- Hidden/Implicit Meaning: Global WAN governance signal.

Line 8:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: On the right side.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 9:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: This is just bare minimum policy I would say which just has few components.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 10:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: But of course as your network complexity will increase, this Json document will look different.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 11:
- Concepts: Centralized Network Governance, Global WAN Control Plane
- Services: Core Network Policy
- Key Insights: So there are some high level elements of the core network policy which includes network configurations.
- Hidden/Implicit Meaning: Global WAN governance signal.

Line 12:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then we are going to dive deeper into this shortly.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 13:
- Concepts: Global WAN Control Plane
- Services: AWS Cloud WAN
- Key Insights: But essentially there is a generic network configuration for the entire cloud Wan.
- Hidden/Implicit Meaning: Global WAN governance signal.

Line 14:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: And then you configure segment specific settings in the segment section.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 15:
- Concepts: Centralized Network Governance, Global WAN Control Plane, Transit and Segmentation
- Services: VPC Attachment
- Key Insights: And then you have attachment policy for all the attachment that you will be creating in your core network.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 16:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now let's try to understand what all options you have or parameters that you can provide while you configure all these settings.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 17:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So very first thing is network configuration.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 18:
- Concepts: Centralized Network Governance, Global WAN Control Plane
- Services: Core Network Policy
- Key Insights: So on the right side again you can see one of the network configuration that you have to provide while you create your core network policy.
- Hidden/Implicit Meaning: Global WAN governance signal.

Line 19:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So here very first thing that you will provide is the ASN ranges.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 20:
- Concepts: Global WAN Control Plane
- Services: (none explicit)
- Key Insights: Now these are the autonomous system numbers that will be used for the core network edges that you will provision into different AWS regions.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 21:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And also it will be used for any kind of network connectivity.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 22:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: As you connect and set up the BGP peering connection between the other end of the network.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 23:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So you can provide either 16 bit or 32 bit ASN ranges, as you can see here.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 24:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Next is edge locations.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 25:
- Concepts: Global WAN Control Plane
- Services: (none explicit)
- Key Insights: And this is the most important setting I would say because accordingly the core network will set up the core network edge that is C and E into every region.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 26:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, if your company operates in, say, three regions, then you will only select those three edge locations.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 27:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: And this core network edges are just like a transit gateways.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 28:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: But if I have to define that, I would say it's a managed transit gateway, in which case you don't get direct access to the APIs for that.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 29:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So you don't manage that directly.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 30:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: It's completely managed by AWS.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 31:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So as many regions, you want those many edge locations you would have to select.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 32:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: VPC Attachment
- Key Insights: Next you can define the inside Cidr blocks and these are required if you are connecting the connect attachment to the core network edge.
- Hidden/Implicit Meaning: Constraint or limitation signal; Transit-domain and segmentation signal.

Line 33:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So basically this inside cider blocks are used to set up the GRE or tunnel is tunnels for the transit gateway connect attachments.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 34:
- Concepts: Global WAN Control Plane
- Services: (none explicit)
- Key Insights: So either you can define the complete range at the core network level, or you can have this ranges defined per AWS region level.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 35:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: And optionally you can also enable or disable the equal cost Multi-path support for the VPN attachment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 36:
- Concepts: Global WAN Control Plane
- Services: (none explicit)
- Key Insights: So these are a few important parameters that you should know that you can provide for your core network.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 37:
- Concepts: Centralized Network Governance, Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: Okay, so after you define the basic parameters for the core network, the next most important thing in your configuration is defining the segments and the segment policy.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 38:
- Concepts: Centralized Network Governance, Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: So as many segment you want to create, of course you will define those many blocks in your policy.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 39:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: So for each segment you have to provide the segment name.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 40:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: And then you can optionally provide in which all AWS region or edge locations you want to enable this segment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 41:
- Concepts: Global WAN Control Plane
- Services: (none explicit)
- Key Insights: Now this is interesting because while creating the core network, you already provided a list of edge locations, right?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 42:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: So if you don't provide this at the segment level, then segment will be available in all the regions.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 43:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: But maybe there is a situation where you want, say, a production segment available only in couple of regions, because maybe that's where only you deploy your production workloads.
- Hidden/Implicit Meaning: Constraint or limitation signal; Transit-domain and segmentation signal.

Line 44:
- Concepts: Global WAN Control Plane
- Services: (none explicit)
- Key Insights: But for development, you might be using all your regions which are defined in the core network.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 45:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: So you can this way just enable the segment for a particular set of regions only.
- Hidden/Implicit Meaning: Constraint or limitation signal; Transit-domain and segmentation signal.

Line 46:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Again, this is an optional parameter.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 47:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now another feature is isolate attachments.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 48:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: So the default behavior is that if you have a segment and you attach either VPC or VPN or connect attachments, all these attachments will be able to communicate with each other.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 49:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So they automatically exchange the routing information.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 50:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: But many a times you want that on that segment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 51:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: I don't want my attachment to even talk to each other.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 52:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: In that case, you can set this parameter to true and then attachment cannot communicate with each other.
- Hidden/Implicit Meaning: Constraint or limitation signal; Transit-domain and segmentation signal.

Line 53:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: However, if you want to override this behavior, you can also manually create the static routes.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 54:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then of course you can enable that kind of connectivity.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 55:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And we will talk again about the static routes.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 56:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: When we talk about the segment sharing.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 57:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: Next you can enable the required attachment acceptance attribute to true or false.
- Hidden/Implicit Meaning: Constraint or limitation signal; Transit-domain and segmentation signal.

Line 58:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Default is true.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 59:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: VPC Attachment
- Key Insights: This means that if anyone creates the you know, attachment and try to attach to your segment, you can accept or reject that request.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 60:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: VPC Attachment
- Key Insights: And this is a good feature in the sense that if there are multiple teams who might want to, you know, create an attachment to your segment, they will create that attachment and you as a network administrator will allow or deny that request.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 61:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: So in that case, you can have better governance over your network policy.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 62:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Next is Allow or deny.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 63:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: List of the segments.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 64:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: VPC Attachment
- Key Insights: Now for this, it is important to understand that whenever you create multiple segments on the core network, this segments are isolated, so all the attachments on those particular segments can communicate with each other, but the attachment across the segments cannot.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal; Transit-domain and segmentation signal.

Line 65:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And that's the basic fundamental of isolating the network using the segments.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 66:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 67:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: But many a times you want to share your segments so that attachment across the segments can communicate with each other.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 68:
- Concepts: Centralized Network Governance, Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: For example, development segment can communicate with the shared services segment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 69:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And in that case you will first share the segments.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 70:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: But you also want to control that.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 71:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: I shouldn't be sharing my segment with every other segment out there on the core network, and that's where this allow or deny list will help you control that behavior.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 72:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: So in the allow list, you can mention that I am okay to share my route with this particular segment, which are there in the allow list.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 73:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Or you can say, I don't want to share my routes with all these segments which are there in the denial list.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 74:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So these are mutually exclusive list.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 75:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: That means you cannot provide both allow or deny lists at the same time.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 76:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: But just remember that allow and denialist only makes sense if you are going to share the segments.
- Hidden/Implicit Meaning: Constraint or limitation signal; Transit-domain and segmentation signal.

Line 77:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: If you are not going to share the segments, then they won't have any impact.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 78:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And now let's talk about how do you share the segments.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 79:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: So for that you use segment actions.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 80:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: And in that segment action you can define that.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 81:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: I am going to share this particular segment with list of other segments.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 82:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: And at that time the routing information between the segment will be enabled to be exchanged.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 83:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: VPC Attachment
- Key Insights: So your attachment from now both sides of the segment can communicate with each other.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 84:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now there are few things that again you need to understand.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 85:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: For example, if there is segment A that you are defining and you are sharing segment A with segment B, C, and D through the segment action, then segment A will exchange route with B, C, and D, and also B, C and D will exchange the route with segment A, but this doesn't mean that B, C, and D will communicate with each other.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 86:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And if you want to enable the sharing between B and C, then you have to explicitly do that.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 87:
- Concepts: Centralized Network Governance, Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: When you define the policy for segment B and C kind of right.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 88:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So I hope that is clear.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 89:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: VPC Attachment
- Key Insights: Now many a times you don't want to share the segment, but you still want some of the attachment from these segments to communicate with each other.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 90:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And that's where you can create the static routes.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 91:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: So this is kind of overriding, you know, the default segment sharing behavior and creating the routes to enable, you know, that specific kind of connectivity.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 92:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So I hope that is clear.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 93:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So these are all important parameters you need to consider when you create the segments.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 94:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And we are going to have a short walkthrough of how to create the segments and how to set these parameters.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 95:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So these things will be much clear when you actually see that in action.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 96:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 97:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: With that, let's move forward.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 98:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: After the segment you need to understand what are the attachments.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 99:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: So attachment in general are of the four types which are supported as of today VPC attachment VPN attachment connect and connect peer.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 100:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So this is very similar to the Transit Gateway Connect where you have your SD-Wan appliance hosted in the VPC.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 101:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: VPC Attachment
- Key Insights: And then you associate that VPC with the core network using the connect attachment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 102:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: VPC Attachment
- Key Insights: Once that attachment is there, you then create a connect peer, which means you actually create the tunnel between the core network and your SD-Wan appliance.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 103:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: AWS Cloud WAN, Transit Gateway
- Key Insights: Now, with respect to the transit gateway, it supports only the GRE tunnel, but AWS cloud Wan also supports the tunnel less protocol, which is much more performant than the GRE.
- Hidden/Implicit Meaning: Constraint or limitation signal; Transit-domain and segmentation signal; Global WAN governance signal.

Line 104:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: And finally, in order for connect attachment to work, you need to have the BGP routing between the two ends.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 105:
- Concepts: Global WAN Control Plane
- Services: (none explicit)
- Key Insights: And for high availability, core network will have two BGP sessions.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 106:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: So this is a third kind of attachment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 107:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: And there is fourth kind of attachment that you can have for your core networks which is transit gateway route table attachment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 108:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: Now this is not a transit gateway attachment directly.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 109:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: But this is like after you peer your transit gateway with the core network, then you can create a route table attachment to the particular network segment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 110:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: Transit Gateway
- Key Insights: And we will talk more about this in the following lecture where I will show you how do you connect your transit gateway to the core network.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 111:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: VPC Attachment
- Key Insights: But just remember that these are the four types of the attachment that you can have with the core network.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 112:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Right now.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 113:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: Let's quickly look at the attachment policies.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 114:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: And these attachment policies allows you to have some kind of automation.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 115:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So you can have kind of rules.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 116:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And these rules are numbered.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 117:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So lower the number takes a higher precedence.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 118:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then as soon as the first rule matches it stops the execution and scanning the next rule.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 119:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: But what are these rules for.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 120:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: So whenever you create any attachment it will see if there is a attachment policies which matches to that rule.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 121:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: VPC Attachment
- Key Insights: If it matches, it will attach that attachment to the segment which is defined as a part of the rule.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 122:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And in the next lecture, we are going to perform a lab where I will show you how this exactly works.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 123:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: And then you have the required acceptance parameter similar to the segment one.
- Hidden/Implicit Meaning: Constraint or limitation signal; Transit-domain and segmentation signal.

Line 124:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: And this takes only in the effect if you have disabled this at the segment level.
- Hidden/Implicit Meaning: Constraint or limitation signal; Transit-domain and segmentation signal.

Line 125:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: Otherwise it just inherits the value from the segment level parameter.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 126:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Further, as I said, rules have the logical conditions and you could have different conditions.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 127:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: VPC Attachment
- Key Insights: For example, this attachment can only be connected to the segment if region is x, or this is for a particular VPC id, or this attachment has a particular tag key or tag value, or it is coming from particular AWS account.
- Hidden/Implicit Meaning: Constraint or limitation signal; Transit-domain and segmentation signal.

Line 128:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: So all these conditions and or logic can be implemented to have the automatic connectivity between your attachment and your segments.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 129:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: VPC Attachment
- Key Insights: And when you do that, basically you can define that the method of associating your attachment to the segment is a constant or it's a tag based.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 130:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So constant means that whenever you write the rule in that, you define that.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 131:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: I'm writing this rule for a particular segment, for example development segment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 132:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: VPC Attachment
- Key Insights: So if all the conditions matches for that attachment, it will be attached to the development segment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 133:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: But then for every segment you would have to write those many rules.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 134:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: But if you want to write a generic rule then you can define that the segment should be the value of particular tag key.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 135:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And the tag key could be say any moment.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 136:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: So whenever you create the attachment you will define the tag with say environment equal to development.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 137:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: VPC Attachment
- Key Insights: Then that attachment will be automatically associated with the development segment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 138:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: VPC Attachment
- Key Insights: But now while creating another attachment, if you say tag key equal to environment and tag value is production, then that attachment will be attached to the production segment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 139:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: So just using the same rule you are able to attach different attachment to different segments.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 140:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So that's the purpose.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 141:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And again we will talk about this behavior when we do our exercise.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 142:
- Concepts: Centralized Network Governance, Global WAN Control Plane
- Services: Core Network Policy
- Key Insights: So these are all the important parameters when you create the core network policy.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Global WAN governance signal.

Line 143:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: And if you have all these policy elements well defined, then of course you can use this policy to deploy your network.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 144:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's now look at what's the process of, you know, deploying your network.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 145:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: So very first thing you will create the policy document.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 146:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: Either you can use the UI from network Manager or you can write a Json document and use it for your policy.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 147:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: Once you generate this policy, AWS will validate whether the policy is correct with respect to its syntax and all the parameters that you provide, and then it will be in pending generation status.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 148:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: After AWS does, basic validation policy will be ready for execution.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 149:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: But if there are any errors, then its status will change to failed generation.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 150:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: Now, when the policy gets into the ready to execute state, it also provides you change set, which means from version 1 to 2, what all changes you are making to the policy and how it will affect your network.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 151:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: So this is a good time where network administrators should carefully inspect what are the changes this policy is going to make, and then approve that change and apply the change into live environment.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 152:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: So you will apply that change and the policy will get executed.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 153:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So the status will be execution succeed or failed.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 154:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: Now this is how typically your policy change flow looks like.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 155:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: And every time you change the policy its version is pumped up.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 156:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So if first version is v1 then there will be new version created.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 157:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And after this version is deployed, that version is tagged as the latest version.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 158:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And this also means that for any reason, if you think that the changes that you have just applied are not good enough, then you can revert back to the previous version.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 159:
- Concepts: Centralized Network Governance, Global WAN Control Plane
- Services: AWS Cloud WAN
- Key Insights: So AWS cloud Wan in true sense, I will say, is the software defined network where you can completely manage and deploy your global networks using simple network policy.
- Hidden/Implicit Meaning: Global WAN governance signal.

Line 160:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 161:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So I hope this is clear now for your exam.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 162:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: I think it's good to understand all these parameters that we talked about.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 163:
- Concepts: Global WAN Control Plane
- Services: (none explicit)
- Key Insights: And in the next lecture we are actually going to implement the core network.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 164:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So I hope whatever we just talked, you will see that in action and you will be able to relate it better.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 165:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 166:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Thanks for watching and stay tuned.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/15_AWS Cloud WAN/145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt

Line 1:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Hi.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 2:
- Concepts: Global WAN Control Plane
- Services: AWS Cloud WAN
- Key Insights: So in this lecture we are going to actually set up the AWS cloud Wan network.
- Hidden/Implicit Meaning: Global WAN governance signal.

Line 3:
- Concepts: Global WAN Control Plane
- Services: AWS Cloud WAN
- Key Insights: And more importantly we will see how to create the cloud Wan segments, how to create attachments and how to configure the routing between the segments.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal; Global WAN governance signal.

Line 4:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So what we are going to do here is set up something like this.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 5:
- Concepts: Global WAN Control Plane
- Services: (none explicit)
- Key Insights: So we want to create a core network which is enabled for three AWS regions that is Mumbai, London and North Virginia.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 6:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And let's assume that in Mumbai and North Virginia region, there are development VPCs and production VPCs.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 7:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: And in London there is a shared services VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 8:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: So of course we need to have three network segments like development production and shared segment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 9:
- Concepts: Centralized Network Governance, Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: And we want to connect our development VPCs to the development segment and likewise for production and shared services.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 10:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then our aim is to, you know, launch EC2 instances just for testing the connectivity in every VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 11:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then we want to test that from development instance.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 12:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: In North Virginia, we are able to communicate with the development instance in Mumbai and similarly for production.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 13:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And of course, what we don't want is that development instance can communicate with the production instance.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 14:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So this connectivity should not work.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 15:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: And additionally what we want is that development instances can communicate with the shared services instances.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 16:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: So for that we have to share the segment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 17:
- Concepts: Centralized Network Governance, Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: So we'll share development with the shared services segment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 18:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And we will then have this connectivity.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 19:
- Concepts: Centralized Network Governance, Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: Similarly we also want production instances to also access the shared services segment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 20:
- Concepts: Centralized Network Governance, Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: Now this is typically required if shared services segment has kind of, you know, centralized egress kind of routing configured or it connects your hybrid network, then typically you will see this kind of architecture, right?
- Hidden/Implicit Meaning: Constraint or limitation signal; Transit-domain and segmentation signal.

Line 21:
- Concepts: Centralized Network Governance, Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: So which means now we will also share our production segment with the shared services segment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 22:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then this connectivity will also be there.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 23:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 24:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So this is our target.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 25:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And now if just I want to show you how exactly it will look like.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 26:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So it will look something like this.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 27:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And the process to set this up will be like creating all these five VPCs, creating instances inside that.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 28:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then first we will create AWS cloud, Wan Global Network.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 29:
- Concepts: Global WAN Control Plane
- Services: (none explicit)
- Key Insights: Inside that we will create a core network.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 30:
- Concepts: Global WAN Control Plane
- Services: (none explicit)
- Key Insights: We will enable this core network in this three regions.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 31:
- Concepts: Global WAN Control Plane
- Services: (none explicit)
- Key Insights: And that's where you see this three core network edges provisioned by AWS.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 32:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Once that is done, we will create three segments as you can see.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 33:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: And then on that segment we will create five attachments for this five VPCs.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 34:
- Concepts: Centralized Network Governance, Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: Additionally, we will share the development segment with the shared services segment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 35:
- Concepts: Centralized Network Governance, Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: And similarly production segment will be shared with the shared Services segment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 36:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now after doing all this, the last thing that we want to do is to update the VPC route tables.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 37:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So we have to tell this VPC how to go to the other region VPCs.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 38:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 39:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: For example, for this North Virginia development VPC, we would have to configure the route which says how to go to the development VPC in Mumbai or Shared Services VPC in London.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 40:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: So we will update the route table for all these five VPC subnets and we will add corresponding routes.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 41:
- Concepts: Global WAN Control Plane
- Services: (none explicit)
- Key Insights: Now in this case the target of the route will be core network Arn.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 42:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 43:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And for testing the connectivity as I said there will be EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 44:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So we will log in to this EC2 instances over SSH.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 45:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then for testing the connectivity we will ping to this target EC2 instances using their private IPS.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 46:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Note that we will be using private IPS because otherwise if this EC2 instances has public IP, then traffic can also go over the internet.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 47:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So that is what we will be doing now in order to save some time.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 48:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: What I have already done is I have already launched all these five VPCs, and then I have created public subnets into each VPC, and I just launch one EC2 instance in each VPC, right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 49:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So that, you know, we can just start from there.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 50:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And all these steps that I am just describing are also part of the next slides.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 51:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So you can also refer to that if you want to.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 52:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: But otherwise if you just look at this architecture you should be able to implement the same.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 53:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now with that let's go to AWS console where I will first show you what setup I have already done.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 54:
- Concepts: Global WAN Control Plane
- Services: (none explicit)
- Key Insights: And then let's start creating this core network.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 55:
- Concepts: Global WAN Control Plane
- Services: (none explicit)
- Key Insights: Now if you are also doing this exercise, then just word of caution is that there is a cost for creating the core network in different regions.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 56:
- Concepts: Global WAN Control Plane
- Services: (none explicit)
- Key Insights: So there is a cost per hour for this core network edge.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 57:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So as soon as you are done with the exercise, make sure that you delete all attachments.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 58:
- Concepts: Global WAN Control Plane
- Services: (none explicit)
- Key Insights: You delete your core network and you also delete your global network.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 59:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And no need to say you need to also terminate your EC2 instances and I will be doing the same after this exercise.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 60:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 61:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So if I go to my VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 62:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So I'm into Mumbai and you can see I have two VPCs.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 63:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And more important is their Cidr ranges.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 64:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: If the Ssid starts with the ten then they are development VPCs.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 65:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And if it is 172 then they are production VPCs.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 66:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Similarly, I have these VPCs in North Virginia region again one development and one production.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 67:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: And then in London I have shared services VPC with 192 range, and I have launched two machines in Mumbai, one in each VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 68:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then similarly in North Virginia.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 69:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: You can see here.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 70:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Let me refresh.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 71:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Yeah.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 72:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Two instances and then one in London as well.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 73:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So what I have also done is I have just logged in to this Mumbai EC2 instance over its public IP, and from there we will test the connectivity to the development instance in the North Virginia region using its private IP.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 74:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So to this instance, using its private IP, that's our target.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 75:
- Concepts: Global WAN Control Plane
- Services: (none explicit)
- Key Insights: But before that of course we need to create the core network and everything that we talked about.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 76:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So for that let's go to the network manager.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 77:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: That's the service of AWS where you need to go to.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 78:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: And it's a global service.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 79:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And let's go to the global networks.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 80:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And as of now there is none.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 81:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's create a global network.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 82:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Let's call it demo global network.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 83:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And just say next.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 84:
- Concepts: Global WAN Control Plane
- Services: (none explicit)
- Key Insights: Now here you need to create the core network.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 85:
- Concepts: Global WAN Control Plane
- Services: (none explicit)
- Key Insights: Now you can also create the core network a little later.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 86:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: But this is just, you know, you can do at the same time you are creating the global network.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 87:
- Concepts: Global WAN Control Plane
- Services: (none explicit)
- Key Insights: So let's create the core network with say demo core network.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 88:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And here you need to provide the ASN range that we had talked about.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 89:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's go with the default that is 64512265534.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 90:
- Concepts: Global WAN Control Plane
- Services: (none explicit)
- Key Insights: And this ASN ranges are used to assign it to the core network edges.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 91:
- Concepts: Global WAN Control Plane
- Services: (none explicit)
- Key Insights: Now is the edge locations, which tells that in which all AWS regions you want this core network in.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 92:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's choose North Virginia, then Mumbai and London.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 93:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So which is here right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 94:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: And now the default segment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 95:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: So for us it's a shared segment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 96:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: So let's create the shared segment as we create the core network.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 97:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: That's it.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 98:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And now let's create this.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 99:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Right now.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 100:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: At this time, it will take maybe 5 to 10 minutes.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 101:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So I'm pausing this video and I'll come back here.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 102:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay, so it took more than ten minutes for me.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 103:
- Concepts: Global WAN Control Plane
- Services: (none explicit)
- Key Insights: And you can see that the global network and the core network have been created.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 104:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So global network is created immediately.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 105:
- Concepts: Global WAN Control Plane
- Services: (none explicit)
- Key Insights: But the core network actually takes long time.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 106:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 107:
- Concepts: Global WAN Control Plane
- Services: (none explicit)
- Key Insights: So if you now go to the global network then you will see core network under it.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 108:
- Concepts: Global WAN Control Plane
- Services: (none explicit)
- Key Insights: And there are cool visualization where you can exactly see where your core network edges are.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 109:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So it shows these three regions.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 110:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: But this kind of visualization will get better as you create segments and then attach VPCs to those segments.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 111:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So we will revisit all these visualization parts uh, little later.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 112:
- Concepts: Global WAN Control Plane
- Services: (none explicit)
- Key Insights: But as of now let's focus on what's there in the core network.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 113:
- Concepts: Global WAN Control Plane
- Services: (none explicit)
- Key Insights: So let's go to the core network.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 114:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So this tells us that there are three edge locations.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 115:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: And there is one segment that is a shared segment that we had created in this core network.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 116:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now it also shows the topology graph and topology trees.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 117:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: As I said, this will be more interesting to see when we set up our entire network.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 118:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So we will come back here again.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 119:
- Concepts: Global WAN Control Plane
- Services: (none explicit)
- Key Insights: Okay, going back to the core network.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 120:
- Concepts: Centralized Network Governance, Global WAN Control Plane
- Services: Core Network Policy
- Key Insights: Now, the next thing we want to actually do is to edit the core network policy.
- Hidden/Implicit Meaning: Global WAN governance signal.

Line 121:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 122:
- Concepts: Centralized Network Governance, Global WAN Control Plane
- Services: (none explicit)
- Key Insights: As you can see that there is this, uh, first version of the policy and under which it has deployed the core network edges in the three regions.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 123:
- Concepts: Centralized Network Governance, Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: And it also created a default shared services segment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 124:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: Now let's edit this policy and add additional components.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 125:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now you can also do this through this visual editor.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 126:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Or you can also do that through the Json document.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 127:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So if you see this you will already see that there are these Json ranges and three edge locations.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 128:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Of course you can create additional edge locations if you want.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 129:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Right now what we want to do is to create some additional segments.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 130:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: So there is already this shared segment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 131:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: And now let's create the development segment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 132:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And I'm just leaving everything as default as of now.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 133:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: But I'll revisit this again after we create the segment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 134:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: So let's create this and let's also create the production segment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 135:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So we created this three segments.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 136:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And as of now that's fine.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 137:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: Let's create the policy.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 138:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: And you can see that the new policy version will be created.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 139:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: So let's wait for this policy to be ready for execution again.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 140:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: It takes hardly few seconds.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 141:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Typically you should refresh this page.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 142:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let me try that.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 143:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And it's ready to execute.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 144:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: So let's use this policy.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 145:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: And at this moment you have to view the policy changes and apply the change set.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 146:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's apply the change set.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 147:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: What it's going to do is it's going to create this two additional segments that is development and production.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 148:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: And also if you want you can, you know verify the status of this policy.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 149:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So it tells you like at which step it is currently.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 150:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So you know it is creating those segments like that.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 151:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So you can see here that it's creating those segments in all the regions.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 152:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So again let me pause this video here and I'll come back soon.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 153:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 154:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So again it took around five minutes for this step to be completed.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 155:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: So let's go back to the policy versions.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 156:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And you can see all steps are completed.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 157:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now what we want to do is again we want to set up the routing for the segments.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 158:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 159:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's just wait for this to be execution succeeded status.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 160:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So again I'll just pause for a few seconds maybe and come back.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 161:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 162:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So again it took maybe a minute or so.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 163:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And that's where I said that the UI is not that fluid as of today, but hopefully it improves over the time.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 164:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: Okay, so we have got second version of the policy and we want to now configure the routing for the segments.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 165:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And essentially we want to share these segments.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 166:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So as of now we have these three segments.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 167:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And what we really want is that, you know, we should be able to control which segments can share routes with each other.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 168:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: As of now there is no such restriction, which means if development and production segments are shared, then the routes will also be shared.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 169:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: But we want to be more specific where what we want is.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 170:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's use this and we want that.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 171:
- Concepts: Centralized Network Governance, Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: The development segment should be able to be shared only with the shared services segment.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal; Transit-domain and segmentation signal.

Line 172:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So that's what we are doing using this allow selected.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 173:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And let's edit this.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 174:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Similarly what we want to do is for production as well.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 175:
- Concepts: Centralized Network Governance, Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: We want that the production segment can only be shared with the shared services segment.
- Hidden/Implicit Meaning: Constraint or limitation signal; Transit-domain and segmentation signal.

Line 176:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So it automatically populates that.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 177:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: I don't know why, but I would have expected that I should select this setting.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 178:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 179:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And again let's do that.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 180:
- Concepts: Centralized Network Governance, Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: And in the shared services segment we want to make sure that this is only shared with the development and production.
- Hidden/Implicit Meaning: Constraint or limitation signal; Transit-domain and segmentation signal.

Line 181:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's choose this two.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 182:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And we are good right?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 183:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now additionally what you can also do is you know, you can have the deny list instead.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 184:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: So in the production you can say deny the access to the development segment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 185:
- Concepts: Centralized Network Governance, Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: But when at the same we are saying that production can only be shared with the shared services segment.
- Hidden/Implicit Meaning: Constraint or limitation signal; Transit-domain and segmentation signal.

Line 186:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And I don't also want this require acceptance so that we can do this quickly and optionally, you know that you can restrict that.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 187:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: This segment is available only in few regions.
- Hidden/Implicit Meaning: Constraint or limitation signal; Transit-domain and segmentation signal.

Line 188:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So if you want to do that, then you can select only couple of you know edge locations.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 189:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: But I'm not doing that okay.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 190:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So this is done now.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 191:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: Next and most important thing is the segment actions which tells us which segments we want to share with each other.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 192:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: So let's create the segment that is shared segment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 193:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: And we want to share this segment with the development and with the production.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 194:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And while we do that, the routing between the both shared and development will be exchanged and shared and production will be exchanged.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 195:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: But development and production cannot communicate with each other.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 196:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And we already talked about this point in the previous lecture.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 197:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 198:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's create this sharing.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 199:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: And yeah we are good with the segment sharing.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 200:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: And the next is attachment policies.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 201:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: Now this will define how you connect your attachment to the segments.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 202:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So we want to typically create you know rules here.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 203:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's create our first rule which says say rule number one.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 204:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: And this is for my development segment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 205:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: And it says that if the VPC is attached to this segment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 206:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So it should be with the tag value with say environment.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 207:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: Equal to development on the attachment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 208:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: Then it will be automatically attached to the development segment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 209:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: So that's the first policy or a first rule.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 210:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Similarly let's create the another rule.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 211:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And this time let's say this is for the production.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 212:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And here the environment should be production.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 213:
- Concepts: Centralized Network Governance, Transit and Segmentation
- Services: VPC Attachment
- Key Insights: Now let's also create one default policy which says if any condition is there, that means attachment doesn't have right tags or value.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 214:
- Concepts: Centralized Network Governance, Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: It is attached to the shared services segment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 215:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So typically you should have this kind of, you know, rules if it doesn't matches any of the previous rules.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 216:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's do that.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 217:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Let's call it say rule number 100.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 218:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And here let's say shared.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 219:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And here we'll say any that means any condition.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 220:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And one more thing.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 221:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: If you remember we talked about attachment as a tag value.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 222:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: VPC Attachment
- Key Insights: So you can also create a generic rule which says you know, if the particular tag value is there on the attachment, then it will be attached to the respective segment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 223:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 224:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So this is our default rule.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 225:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So also let's create that.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 226:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: So I think we are good with the attachment policies as well.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 227:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: So now let's create another version of the policy.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 228:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: VPC Attachment
- Key Insights: And this time we are adding the segment sharing and this attachment policies.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 229:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: So again let's wait for this policy to be ready to be executed.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 230:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 231:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: Once that is done, we will apply the policy changes.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 232:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 233:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: So let's go to the policy and let's view and apply the chain set.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 234:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So this will be quick.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 235:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: I think maybe in a minute or so this will be completed.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 236:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay, so it took less than a minute.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 237:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now we have everything that we wanted.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 238:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And the next important thing is to create the attachments.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 239:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So now we want to create five attachments for five VPCs.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 240:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's do that one by one.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 241:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: So let's create our first attachment say Mumbai development.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 242:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And this will be in the AP South one that is Mumbai.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 243:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And the VPC id is this.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 244:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: VPC Attachment
- Key Insights: And the most important part is you need to put right tag so that this attachment can be connected to the development segment.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 245:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's call it development.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 246:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And now I'll be repeating this for all the rest of the four VPCs.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 247:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So I'm just pausing this video and I'll come back.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 248:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay, so so far I have created four attachments for, you know, both production and development environments in Mumbai and North Virginia region.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 249:
- Concepts: Centralized Network Governance, Transit and Segmentation
- Services: VPC Attachment
- Key Insights: Now I want to create the last one for the shared services attachment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 250:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's call it London Shared and the location as London.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 251:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now here I'll be selecting this VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 252:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And I don't need to put any tags because it will be then evaluated with the default rule that we created.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 253:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: And let's create this attachment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 254:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So now we have all the five attachments.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 255:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: So all are getting created now if you see it automatically been attached to the segment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 256:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: So this to the production segment and development segment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 257:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: And it also tells you which rule match because of which it was attached to that respective segment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 258:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So rule number one two and for shared it was rule number 100.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 259:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So which means that the rules that we had written worked on these attachments okay.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 260:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So again it will take few minutes.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 261:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So I'm pausing this video till this attachments get created okay.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 262:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So everything is done.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 263:
- Concepts: Global WAN Control Plane
- Services: (none explicit)
- Key Insights: Now let's go to our core network.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 264:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And now let's look at the visualization.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 265:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So it should tell us how the entire setup looks like.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 266:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So there are three edge locations three segments.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 267:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And it will show you in the topology graph here.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 268:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So as you can see, there are now these edge locations.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 269:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: There are VPCs.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 270:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: And if you enable the segments it will also show you the segment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 271:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: I think the better view is the topology tree.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 272:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So it really gives you a nice tree kind of view.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 273:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Right now you can definitely see everything that we just did.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 274:
- Concepts: Global WAN Control Plane
- Services: (none explicit)
- Key Insights: So core network three regions.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 275:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then in Mumbai there are two segments and then there are two VPCs.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 276:
- Concepts: Centralized Network Governance, Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: And in London there is just one segment and shared services VPC.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 277:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So this is a very nice view.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 278:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now another important thing to see is these routes.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 279:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So it exactly tells you which attachments can communicate with each other.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 280:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So if you just now look at the development and AP South one that is Mumbai.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 281:
- Concepts: Centralized Network Governance, Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: So it will tell you from the Mumbai region you can reach to another development VPC in another region, which is this IP address, and then also to the shared services segment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 282:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And these routes are propagated routes, right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 283:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: Similarly, if you look at the production you will see the routes for the other production VPC in different region and also for the shared services VPC route.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 284:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So if you want to troubleshoot networking issues, probably you can come to these routes and verify these routes here.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 285:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 286:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So if you go back to this diagram, everything is done.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 287:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And what is not done is this route tables for every VPC.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 288:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Without that, you cannot communicate with each other.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 289:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And let's also just verify that.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 290:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So at this point let's test the connectivity from Mumbai to North Virginia development VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 291:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So for that let's go to the North Virginia and just pick this IP address.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 292:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And I have already switched into the Mumbai development EC2 instance which is this.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 293:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: So let's try to ping to North Virginia, which doesn't work of course because we don't have the route in the subnet route table of every VPC.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 294:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's do that for the Mumbai development VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 295:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: I will show you that.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 296:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then I will be repeating the same for the rest of the VPCs.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 297:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 298:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's go back to the VPC console for Mumbai.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 299:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And let's pick this VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 300:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: And rather we want to do the updates in the route table.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 301:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: So this is Mumbai Dev public route table which has just two routes.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 302:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: One is the local and another is for Internet gateway.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 303:
- Concepts: Global WAN Control Plane
- Services: (none explicit)
- Key Insights: Now let's edit these routes and say if the traffic is going to any of this ten .0.0/8, then it has to go through the core network.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 304:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And it will automatically populate this aahn.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 305:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now you must be wondering that there is already this 16 route, but as you know, the longest prefix match takes the precedence.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 306:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So if this EC2 instance initiates the traffic within the VPC, then this route will be taken.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 307:
- Concepts: Global WAN Control Plane
- Services: (none explicit)
- Key Insights: But otherwise, if anything falls into this range, the core network route will be taken.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 308:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: Now similarly we want to do that for shared services.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 309:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: VPC that is 192.168.0.0 slash 16 because we don't have any other range in the second place.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 310:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So I think that's fine.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 311:
- Concepts: Global WAN Control Plane
- Services: (none explicit)
- Key Insights: And let's use core network and again use the same Arn.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 312:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Note that we are using the Arn here and not the gateway IDs.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 313:
- Concepts: Global WAN Control Plane
- Services: (none explicit)
- Key Insights: That's one difference when you add this target for the core network.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 314:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: I think that's sufficient.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 315:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And we are not going to add the production routes here because we don't want that connectivity.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 316:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And even if we would have added it wouldn't work because we are not sharing the development and the production segments.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 317:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's save the changes.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 318:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now I will do the same on the other side of the network that is the North Virginia development VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 319:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's go to the North Virginia.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 320:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: Let's go to the route table and let's go to the North Virginia development route table.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 321:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And here let's again add a route which says ten 000/8.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 322:
- Concepts: Global WAN Control Plane
- Services: (none explicit)
- Key Insights: It has to go through the core network.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 323:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: And let's also add a route for shared services.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 324:
- Concepts: Global WAN Control Plane
- Services: (none explicit)
- Key Insights: And it will also go through the core network.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 325:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Right?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 326:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So if everything is done as expected, we should be able to connect from Mumbai Dev to the North Virginia Dev instance.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 327:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's test that.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 328:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So you can see that traffic already started flowing, which is great.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 329:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: Now let's also test the connectivity to the shared services VPC EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 330:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So for that, let's go to the London EC2 instance and let's pick its private IP which is this.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 331:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And let's go back to our terminal.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 332:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Let me clear the screen and let's try to ping to this IP.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 333:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And this doesn't work.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 334:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Can you guess why?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 335:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Of course.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 336:
- Concepts: Centralized Network Governance, Transit and Segmentation
- Services: (none explicit)
- Key Insights: Because we don't have the VPC routes in the shared services VPC route table.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 337:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to now add that.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 338:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So again back to the VPC console for London region.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 339:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And in here we need to again add the routes.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 340:
- Concepts: Global WAN Control Plane
- Services: (none explicit)
- Key Insights: And we are saying if the traffic is going to the development sides then it should be through the core network.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 341:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And similarly if it is going to the production side again we can use the generic range so that it covers both Mumbai and North Virginia.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 342:
- Concepts: Global WAN Control Plane
- Services: (none explicit)
- Key Insights: Then it should be through the core network and save the changes.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 343:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Let's go back to our terminal and you can see that the traffic started flowing.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 344:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: That's great.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 345:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Let's also make the final check whether can we ping to the production instance from here.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 346:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So for that let's grab the IP address of the say North Virginia production instance.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 347:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And of course it shouldn't work because segments are not shared.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Transit-domain and segmentation signal.

Line 348:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: And we also did not add the routes in the VPC subnet route table that's expected.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 349:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay, so that's it for this exercise, I think we are able to successfully set this up and test the end to end connectivity.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 350:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Again, as I said, I have provided all these steps here and you can watch these steps and implement on your own.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 351:
- Concepts: Global WAN Control Plane
- Services: (none explicit)
- Key Insights: But at the end of the lab, make sure that you delete everything, because otherwise you will be charged for all these segments, attachments and, you know, core network edges.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 352:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And I'm going to do that now.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 353:
- Concepts: Global WAN Control Plane
- Services: (none explicit)
- Key Insights: So I'm going to terminate all EC2 instances, delete all the attachments, delete core network, and finally delete the global network.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 354:
- Concepts: Global WAN Control Plane
- Services: AWS Cloud WAN
- Key Insights: So I hope now everything is very clear to you how exactly the cloud Wan network works and how to set up the routing and configuration.
- Hidden/Implicit Meaning: Global WAN governance signal.

Line 355:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lab.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 356:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Let's stop here.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 357:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Thank you.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 358:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And stay tuned.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/15_AWS Cloud WAN/146_Connecting Transit Gateway & Direct Connect.txt

Line 1:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Hi.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 2:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: AWS Cloud WAN, Transit Gateway
- Key Insights: Now in this lecture, let's talk about how do you connect your transit gateway to the cloud Wan.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal; Global WAN governance signal.

Line 3:
- Concepts: Global WAN Control Plane
- Services: AWS Cloud WAN, Direct Connect
- Key Insights: And also what are the ways in which you can connect your existing direct connect connection to the cloud Wan network.
- Hidden/Implicit Meaning: Global WAN governance signal.

Line 4:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's see how you do that.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 5:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: AWS Cloud WAN, Transit Gateway
- Key Insights: Now let's imagine a situation where you are not using currently the cloud Wan, but you have traditional setup using the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal; Global WAN governance signal.

Line 6:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: And you know that Transit gateway are regional router.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 7:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So you might have few VPCs which are connected to the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 8:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: And then you are managing the network segmentation using the Transit Gateway route table per attachment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 9:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: We have already seen this kind of architecture in the Transit Gateway section.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 10:
- Concepts: Global WAN Control Plane
- Services: AWS Cloud WAN
- Key Insights: And now as you adopt cloud Wan, then possibly you are going to set up a fresh new cloud Wan network and all new VPCs.
- Hidden/Implicit Meaning: Global WAN governance signal.

Line 11:
- Concepts: Global WAN Control Plane
- Services: AWS Cloud WAN
- Key Insights: You will be connecting to your cloud Wan network.
- Hidden/Implicit Meaning: Global WAN governance signal.

Line 12:
- Concepts: Global WAN Control Plane
- Services: AWS Cloud WAN
- Key Insights: Now, at this moment, you have multiple choices with respect to how do you integrate your existing VPCs with the cloud Wan network?
- Hidden/Implicit Meaning: Global WAN governance signal.

Line 13:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: AWS Cloud WAN, Transit Gateway
- Key Insights: So one obvious choice is you don't use the transit gateway and rather reconfigure your VPCs to connect to your segment, which are there in your new cloud Wan network.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal; Global WAN governance signal.

Line 14:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: AWS Cloud WAN, Transit Gateway
- Key Insights: But there are some situations where you don't want to disturb your existing network, and rather you want to integrate your existing transit gateway with your cloud Wan network.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal; Global WAN governance signal.

Line 15:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So for that, you have to do some additional steps.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 16:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Very first thing you have to do is to create a peering connection between the transit gateway and your core network.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 17:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now this peering is little different than the VPC peering that we are seeing, because this actually does the peering connection at the switch level.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 18:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: Transit Gateway
- Key Insights: And when you do that, it also setups the dynamic routing between the transit gateway and the core network.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 19:
- Concepts: Centralized Network Governance, Transit and Segmentation
- Services: Transit Gateway
- Key Insights: And it also creates something called policy table for the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 20:
- Concepts: Global WAN Control Plane
- Services: AWS Cloud WAN
- Key Insights: Now once you have this peering and again you can do that from the cloud Wan console.
- Hidden/Implicit Meaning: Global WAN governance signal.

Line 21:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now in your transit gateway routing you might have different route table for different kind of network.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 22:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: For example, you could have your production segment or your development segment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 23:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: And you know that in Transit Gateway you do that by managing the different route table for every attachment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 24:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: AWS Cloud WAN, Transit Gateway
- Key Insights: And now in order to connect your transit gateway network to the core network, you have to map the Transit Gateway route tables to the corresponding segments of your cloud Wan network.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal; Global WAN governance signal.

Line 25:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: VPC Attachment
- Key Insights: So you will create this route table attachment to the particular segment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 26:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: AWS Cloud WAN, Transit Gateway
- Key Insights: Now, as you do that, you are now actually connecting your VPCs to this cloud Wan network through the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal; Global WAN governance signal.

Line 27:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: But remember this additional steps out there, right?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 28:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So I hope that is clear.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 29:
- Concepts: Transit Operational Context
- Services: Direct Connect
- Key Insights: Now one more thing that I wanted to discuss is how do you connect your direct connect connections.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 30:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: AWS Cloud WAN, Direct Connect, Transit Gateway, VPC Attachment
- Key Insights: So as of today the cloud Wan doesn't have a direct attachment for connecting your direct connect networks, but it has to go through the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal; Global WAN governance signal.

Line 31:
- Concepts: Global WAN Control Plane
- Services: Direct Connect
- Key Insights: So again this is an example where you have your core network setup and then you have direct connect at different locations.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 32:
- Concepts: Transit and Segmentation
- Services: Direct Connect
- Key Insights: So in order to connect your direct connect you have to use the transit VIF Direct Connect Gateway.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 33:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Attach it to the transit gateway in that particular region.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 34:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then you can do the same thing that we did earlier.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 35:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: Transit Gateway
- Key Insights: That means your peer your transit gateway with the core network.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 36:
- Concepts: Transit Operational Context
- Services: Direct Connect
- Key Insights: And then you can have this direct connect connection established.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 37:
- Concepts: Transit and Segmentation
- Services: Direct Connect, Transit Gateway
- Key Insights: So again steps are like creating the direct connect to the transit gateway over transit VIF and the gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 38:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: AWS Cloud WAN, Transit Gateway
- Key Insights: Then peer the transit gateway with the cloud Wan peering.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal; Global WAN governance signal.

Line 39:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: (none explicit)
- Key Insights: And then you have to create the route table attachments to the particular segment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 40:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So here I just wanted to cover these two important architectures.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 41:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: AWS Cloud WAN, Direct Connect
- Key Insights: Because in your exam you might be asked like how do you connect your existing transit gateways or direct connect to the cloud Wan network.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal; Global WAN governance signal.

Line 42:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So remember that you have to pair the transit gateways first, and then you have to map your transit gateway route table to the core network segments.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 43:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 44:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So I hope that is clear.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 45:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So these were the two different architectures that I wanted to talk about.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 46:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now with that, let's go into the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 47:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Thanks for watching.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/15_AWS Cloud WAN/147_AWS Cloud WAN Summary.txt

Line 1:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 2:
- Concepts: Global WAN Control Plane
- Services: AWS Cloud WAN
- Key Insights: So quick summary of AWS cloud Wan.
- Hidden/Implicit Meaning: Global WAN governance signal.

Line 3:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And this is something also important to know for your exam.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 4:
- Concepts: Global WAN Control Plane, Service-to-Service Networking
- Services: AWS Cloud WAN
- Key Insights: So AWS cloud Wan is a managed wide area network service from AWS.
- Hidden/Implicit Meaning: Global WAN governance signal.

Line 5:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: And then it's a global service.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 6:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: And it provides you centralized dashboard through which you can completely monitor and manage your entire global network.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 7:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: Now this central dashboard is a part of AWS Network Manager Service now cloud.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 8:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Wan also has a global network.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 9:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: And global network consists of transit Gateway networks and the core networks.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 10:
- Concepts: Global WAN Control Plane
- Services: AWS Cloud WAN
- Key Insights: But whenever we talk about cloud Wan, typically we are referring to the core network connections.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Global WAN governance signal.

Line 11:
- Concepts: Centralized Network Governance, Global WAN Control Plane
- Services: Core Network Policy
- Key Insights: Now you use simple network policies to centrally configure and automate the network management using the core network policy.
- Hidden/Implicit Meaning: Global WAN governance signal.

Line 12:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And you can then have the different network segments, which works like virtual routing and forwarding for apps.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 13:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: AWS Cloud WAN
- Key Insights: And this is one of the way in which the cloud Wan differs from the transit gateways.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal; Global WAN governance signal.

Line 14:
- Concepts: Global WAN Control Plane
- Services: (none explicit)
- Key Insights: Further core network can be shared across AWS accounts.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 15:
- Concepts: Global WAN Control Plane
- Services: (none explicit)
- Key Insights: We haven't seen this in particular, but when you create a core network, you can share that with other AWS account in the same AWS organization or across AWS organization.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 16:
- Concepts: Global WAN Control Plane
- Services: (none explicit)
- Key Insights: Then the other AWS account owner can connect their VPCs to your core network.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 17:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now in this fashion, you can really have your partner or customers also connecting to your one large global network.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 18:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So this is done using the Resource Access Manager or Ram.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 19:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Right?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 20:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 21:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: AWS Cloud WAN, Transit Gateway, VPC Attachment
- Key Insights: Now with respect to the attachment, AWS cloud Wan currently supports VPC attachment site to site VPN attachment and SD-Wan connect attachment and Transit gateway route table attachment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal; Global WAN governance signal.

Line 22:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: Now for Transit Gateway route table attachment, you have to first pair your transit gateway to the core network, and then you can create this attachment.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 23:
- Concepts: Transit and Segmentation
- Services: VPC Attachment
- Key Insights: And another difference when you have the connect attachment is that alongside the g r e tunnel, it also supports the tunnel list protocol which is a more performant than the GRE.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 24:
- Concepts: Global WAN Control Plane
- Services: AWS Cloud WAN
- Key Insights: So this is an additional protocol that you get to use while you connect your SD-Wan network to the cloud Wan.
- Hidden/Implicit Meaning: Global WAN governance signal.

Line 25:
- Concepts: Global WAN Control Plane, Transit and Segmentation
- Services: AWS Cloud WAN, Direct Connect, Transit Gateway
- Key Insights: And finally, as of today, you can't directly connect your direct connect connection to the cloud Wan, but for that, you have to use Transit Gateway in the middle.
- Hidden/Implicit Meaning: Constraint or limitation signal; Transit-domain and segmentation signal; Global WAN governance signal.

Line 26:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So this is also the scenario that we had seen in one of the lecture.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 27:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Right?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 28:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So these are the essential things.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 29:
- Concepts: Global WAN Control Plane
- Services: AWS Cloud WAN
- Key Insights: So based on this summary as well as what we have seen in other lectures, I'm sure you would be able to pick the right answers if it is anything to do with AWS cloud Wan.
- Hidden/Implicit Meaning: Global WAN governance signal.

Line 30:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this section and see you in the next section.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 31:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Thank you.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/16_VPC Lattice/148_VPC lattice introduction.txt

Line 1:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: Hello and welcome to this new section Amazon VPC lattice.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 2:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay, so until now in this course we have talked about different networking services.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 3:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And how do you connect different networks.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 4:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: For example we talked about VPC peering connection.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 5:
- Concepts: Transit and Segmentation
- Services: Direct Connect
- Key Insights: We talked about transit gateways, site to site VPN connection direct connect everything.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 6:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 7:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: But if you look at this networking connectivity it is typically network to network connectivity.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 8:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And there we did not really talk about application to application connectivity.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 9:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now what is the difference.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 10:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So difference is that when we talk about network to network connectivity, that means any host in one network can communicate with any host in other network.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 11:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And that works well when you want to connect to networks.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 12:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Right?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 13:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: But what if you only want point to point connectivity between the applications?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 14:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And one of such application networking we had seen was VPC endpoints, but still it doesn't really work in ideal way.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 15:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: The ideal way would be where application can only communicate with only required application.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 16:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Irrespective of where they are located and in order to solve this problem.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 17:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: In year 2023, AWS had launched Amazon VPC Lattice service.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 18:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: So VPC lattice is the application networking service and it simplifies.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 19:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: Service to service communication.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 20:
- Concepts: Service-to-Service Networking, Transit and Segmentation
- Services: Transit Gateway, VPC Lattice
- Key Insights: Further, Amazon VPC lattice provides the secure and consistent connectivity without you required to have, say, VPC peering or transit gateway.
- Hidden/Implicit Meaning: Constraint or limitation signal; Transit-domain and segmentation signal; Application networking abstraction signal.

Line 21:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And in the following lecture we will see how exactly it works.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 22:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: Now, other than the connectivity, it also provides the service discovery capability.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 23:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: And that is typically the capability of the service meshes where there are the sidecar proxies using which you can communicate transparently with other services.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 24:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And further it also has the dynamic routing.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 25:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: This is very similar to how load balancers work, where you can have, say, path based routing or.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 26:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Weighted routing.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 27:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: So all those features are there in the VPC lattice as well.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 28:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And finally, this is not just about the networking, but it also provides the authentication and authorization for the connectivity.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 29:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So basically it provides the zero trust architecture where you can manage the access to different services using AWS IAM authentication.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 30:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: So overall this is what is VPC lattice.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 31:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: And typically you will see VPC lattice useful in the microservices architecture where there are different services.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 32:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And typically these services are built by different teams.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 33:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: These services might reside in different VPCs or across different AWS accounts.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 34:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now if you want to enable the communication between all these microservices, then probably your architecture might look something like this, right where different Microservices are running on different compute environment, so some microservices might be running on EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 35:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Some microservices on the ECS or EKS or even as a Lambda function.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 36:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And further, as I said, these services may reside in different VPCs.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 37:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So if I just have to redraw this picture, then it could be something like this where different services have different domain names as well, and they are located across different VPCs.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 38:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now at this point, if you want to enable this communication, you will think of say VPC peering or transit gateway, right.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 39:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: So without VPC lattice you might have VPC peering where you have point to point connection between the VPCs.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 40:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: But as you can see here, as the number of microservices increases, number of VPCs increases.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 41:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: This adds a lot of complexity.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 42:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And further, as I said, this is network to network connectivity, which means if this VPC has some other resources, you might be able to reach to those resources from your another VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 43:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And typically for application communication we don't want that right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 44:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So clearly VPC peering is not a great solution for this use case.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 45:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: Now you might be thinking then we can look for transit gateways.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 46:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Now again Transit Gateway simplifies the networking architecture.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 47:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: But there is a same problem here.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 48:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Also we are connecting two networks and not really connecting to applications.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 49:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Okay, so even the transit gateway is not ideal for this use case.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 50:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Then let's look for VPC endpoints right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 51:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: In that case you might be exposing all these services through the endpoints.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 52:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Something like this right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 53:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: And then in all other VPCs from where the service needs to be communicated, you will create VPC endpoint for that Privatelink service.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 54:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: Now this might work, but you can imagine how many endpoints you would have to create because it is between one service and one VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 55:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: So for every service you would have to create endpoints in every other VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 56:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So while it is pretty close to what we want, but again it is very complex architecture and it is not at all scalable.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 57:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: Further, it doesn't provide you the service discovery.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 58:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And also it doesn't provide you IAM level authentication.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 59:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: And for the same reason, we need more sophisticated service which allows this point to point application to application or service to service communication.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 60:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: And exactly for that we have Amazon VPC lattice.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 61:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: Now in this case you create your services and you attach these services to the VPC lattice network.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 62:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now once all these services are part of the network then all these services can communicate with each other.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 63:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And there you can also apply some authorization policies so that you can control which services can communicate with each other.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 64:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: So while using the VPC lattice, typically there are two personas the administrator and the developer.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 65:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: So the administrator will create the service network and they will define the access control for that network.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 66:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: And then developer will create their own service and associate this service with the VPC lattice service network.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 67:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: So you can see that VPC lattice is more developer friendly service where developer can take their own decisions to create the service.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 68:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: And then enabling the connectivity for that service.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 69:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 70:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: So that's in a nutshell is VPC lattice.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 71:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: I know that we just talked at a very high level.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 72:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: But as we go through this section you will understand how exactly it works.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 73:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: And then what are the architectures that evolves using VPC lattice service.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 74:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: So in the following lectures let's dive deep into the VPC lattice component and how it works right.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 75:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So we'll stop for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 76:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And with that I'll see you into the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 77:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Thank you.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/16_VPC Lattice/149_VPC lattice components - Lattice Network, Service, Resource and more.txt

Line 1:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 2:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: So now let's understand different components of VPC lattice.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 3:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: So at high level VPC lattice contains these five components.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 4:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: That is VPC lattice service network service resources service discovery and auth policies.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 5:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So as you can see in this diagram, there are different applications or services hosted across different VPCs.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 6:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And there is also a lambda function which doesn't typically sit into the VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 7:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: Now in order to connect all these different services together, you have to create the VPC lattice service network.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 8:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: And then you have to configure all these applications as VPC lattice services or the resources.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 9:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: And in the rest of this lecture we will see what is service, what is resource and how to really configure those.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 10:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: Now once you create this service network and associate your services to that network VPC lattice also enables the service discovery so that all these services or resources can be accessed using the VPC lattice provided DNS name.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 11:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So we will also talk about that.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 12:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And finally, in order to enable the authentication and authorization you can apply the auth policies.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 13:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's also talk about those right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 14:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: So at high level these are the components of the VPC lattice.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 15:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And now let's dive deep into individual components.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 16:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: So the service network as we said it's a logical boundary for a collection of services and resource configuration.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 17:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: So you create a lattice service network and you associate the services or the resources or the VPCs to this service network.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 18:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now we have a dedicated lecture which talks about all these associations.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 19:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So just hold on until we reach there.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 20:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: But just understand that VPC lattice network connects all the services and resources together.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 21:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: Next is the service.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 22:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: Now if you look at the service it is made up of multiple things right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 23:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So it's an independently deployable unit of software that delivers specific task or function.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 24:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: That's the definition.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 25:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: But what it means.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 26:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: It means service can be hosted on, say, EC2 instances or on the application load balancer or ECS EKS cluster, or on a Lambda function, or even on the IP addresses.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 27:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: Now, how do you create a service?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 28:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: For that, you have to create a listener.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 29:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: You have to create the rules.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 30:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: You have to create target groups.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 31:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: And finally your actual service will run on any of these targets that we just talked about.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 32:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So if you remember, this setup is quite similar to how we configure the application load balancer.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 33:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: But here we are talking about the VPC lattice service.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 34:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So it has a target group listeners and the rules.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 35:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now further target groups can have weights like you can send 10% traffic to first target group and 90% to another target group.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 36:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then there are rules which has priorities and also conditions.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 37:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now again this is very similar to how we configure the application load balancer.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 38:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 39:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: So that's in a nutshell is VPC lattice service.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 40:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And we will see this in action when we will do the exercise.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 41:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 42:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: Next is VPC lattice resource.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 43:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: Now resource is quite similar to service but not exactly a service.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 44:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: So VPC lattice resource is an entity which can be Amazon RDS database or cluster of nodes behind the auto scaling group.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 45:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Or it can be a simple instance or an application endpoint, domain name or IP address.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 46:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So it can be anything basically.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 47:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: So that even you can bring in your on premises servers as a part of your VPC lattice network.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 48:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: And for using this resource you have to create something called resource gateway, which is like an ingress endpoint for that resource.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 49:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: And finally, if you want to associate this resource gateway with the VPC lattice network, you have to create resource configuration association.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 50:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So like you associate the services you can also associate it.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 51:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Resources.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 52:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Using this resource configuration association.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 53:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 54:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: So we talked about VPC lattice network VPC lattice service and VPC lattice resource.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 55:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Next is auth policies.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 56:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: So VPC lattice auth policies are fine grained authorization policies that can be used to define the access to different VPC lattice services.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 57:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: And this auth policies can be attached either VPC lattice network level or individual VPC lattice services level.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 58:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: Now it is not necessary that you always define the auth policy.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 59:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: You can go with the default that is none policy.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 60:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And in that case by default the communication will be allowed.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 61:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So auth type can be either none or aws IAM.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 62:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And none means you are not applying any authorization or authentication policies.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 63:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And when the auth type is aws, IAM, then by default all the requests will be denied.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 64:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So if you understand how IAM policies are evaluated, it is exactly the same thing.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 65:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: If you do not explicitly mention the allow policy, then the access will be denied, right?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 66:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: So when one service talks to another service, there are some evaluation criteria.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 67:
- Concepts: Centralized Network Governance, Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: For example, the requester should have the IAM policy which allows to access the VPC lattice service.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Application networking abstraction signal.

Line 68:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So these are called IAM identity based policies.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 69:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And the requester can have this access using either IAM user credentials or IAM role.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 70:
- Concepts: Centralized Network Governance, Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: Further VPC lattice service network or the individual service auth policy should explicitly allow the access to the requester.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Application networking abstraction signal.

Line 71:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And that is called principal.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 72:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 73:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And in that case the access will be allowed.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 74:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: So just remember this about the VPC lattice auth policies.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 75:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And if I just have to show you some examples then it could be like this right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 76:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So here we are saying that you are allowing the communication between the services inside this particular AWS organization.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 77:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So all services can communicate because principle is star.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 78:
- Concepts: Centralized Network Governance, Service-to-Service Networking
- Services: (none explicit)
- Key Insights: Whereas if you see this policy, we are saying that you can only invoke the Get method for this particular service.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 79:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And for that the requester or a principal should be having this IAM role.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 80:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So you can go that granular with respect to the communication at the IAM level.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 81:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 82:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: So this is how you use the auth policies with VPC lattice service network or the service right.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 83:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: So with that I hope now you understand what are the different components in the VPC lattice.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 84:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: And now in the next lecture let's talk about the VPC lattice associations.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 85:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: We have talked about that at a very high level.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 86:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: But now let's closely look at those associations.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 87:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 88:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So with that let's stop here.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 89:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And now let's go to the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 90:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Thank you.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/16_VPC Lattice/150_VPC lattice network associations.txt

Line 1:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Hi.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 2:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: Now in this lecture let's look at the VPC lattice network associations.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 3:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And this is one of the important lecture in this section.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 4:
- Concepts: Connectivity Abstraction, Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: So when we say VPC lattice network association we are saying which all things can be connected to the VPC lattice network.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 5:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And in there there are four types.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 6:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: First is a service association.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 7:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Second the resource association.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 8:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Then the third type is VPC association.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 9:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: Now this is the association which allows clients to access VPC lattice services and the resources.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 10:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: So these are the three primary associations in the VPC lattice network.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 11:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And the fourth type is VPC endpoint association.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 12:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: And it is used when you have to access the VPC lattice network from some remote network.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 13:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 14:
- Concepts: Connectivity Abstraction
- Services: (none explicit)
- Key Insights: So these are the four types of the network association.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 15:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: And let's begin with service association.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 16:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: So once you create the service and associate that with the VPC lattice network then that service is discoverable and it becomes the part of that VPC lattice network.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 17:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: Further, this service can be in the same AWS account, or it can be shared by some other AWS account using the Resource Access Manager.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 18:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 19:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: So that's service association.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 20:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Similarly there is resource configuration associations.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 21:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And for that you have to first create the resource gateway.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 22:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: And then using that gateway you create resource configuration association with the VPC lattice service network.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 23:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: So it works exactly in the same fashion as service will work.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 24:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And you can also share the resources across AWS accounts.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 25:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 26:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So far so good.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 27:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So these are the simplest form of the association.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 28:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And now let's talk about the VPC association.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 29:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: Now here I said that if you want to access the VPC lattice network and the services from a particular VPC, then that VPC has to be associated with the VPC lattice network using the VPC association.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 30:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: And once you do that, then the clients in that VPC can access or they can initiate the request for the VPC lattice services.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 31:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And all this communication happens over the local link address inside the VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 32:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And if you know this addresses start with 169.254 range.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 33:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: So for VPC lattice that range is 169.254.171.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 34:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then some IP address.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 35:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So when you create the VPC association AWS will have this IP configured.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 36:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And this particular local link IP is accessible only from within the VPC.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 37:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Which means if there is another VPC which is peer to this VPC, it cannot access this IP address.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 38:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: And that's where only client inside this VPC can access the VPC lattice service network.
- Hidden/Implicit Meaning: Constraint or limitation signal; Application networking abstraction signal.

Line 39:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So please remember this right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 40:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So once you do this VPC association.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 41:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: Now this client here in this VPC can access other VPC lattice services and the resources given that there are write auth policies.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 42:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So the communication would happen something like this okay.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 43:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: The next association type is VPC endpoint association.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 44:
- Concepts: Centralized Network Governance, Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: Now as we discussed if you have say some shared services VPC through which you want to allow access to other networks for the VPC lattice network, then the VPC association won't help because this IP address here is not accessible from this network.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 45:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 46:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And hence in this case instead you have to create VPC endpoint association.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 47:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: So this is the VPC private link or the endpoint feature where you are creating the VPC endpoint in this VPC for the VPC lattice service network.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 48:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now because this is a endpoint, it creates the Eni.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 49:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And there is a private IP address from the range of the VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 50:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: And now this IP can be accessed from the clients which are connected over VPN or DD or VPC peering or transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 51:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: So once you do that, these clients can access the VPC lattice network.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 52:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So remember this.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 53:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: So in order to access the VPC lattice network from the remote network you have to create a VPC endpoint of type service network.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 54:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: And it connects VPC to the service network.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 55:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: Further clients traffic that comes from outside of the VPC over all these connections then can reach to the VPC lattice network.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 56:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now when you create a VPC endpoint in a VPC, as I said, IP is from the VPC are used to establish this connectivity, right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 57:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So I hope this is clear.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 58:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So how do you create VPC endpoint.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 59:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So you go to the VPC console.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 60:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And there in the endpoint you can create the endpoint with the name this com dot Amazon AWS.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 61:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: And then region dot VPC lattice.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 62:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 63:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So we talked about all four types of the association.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 64:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now before we stop for this lecture I just want to bring up an important point.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 65:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: So in this lecture we said that VPC associations allows the client to access the VPC lattice network and services.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 66:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And these green arrows represents the same.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 67:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: But what if say service A wants to communicate with service B through the VPC lattice network.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 68:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now it is not allowed.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 69:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: That's because these services are just associated with service association.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 70:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: This VPC here and the VPC lattice network are not connected over the VPC association.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 71:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So remember this thing.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 72:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: And this also means that if service A needs to initiate the traffic for service B, this VPC has to be associated with the VPC lattice network over the VPC association.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 73:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So you would have to do something like this.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 74:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: And now service A can also initiate the traffic.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 75:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: And at the same time service B can only respond to the request from service A.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 76:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: So service B will not be able to initiate the traffic to service A.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 77:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: That's because there is no VPC association between this VPC and the VPC lattice network.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 78:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So this is very important to understand because many a times people will just set this up and they expect that all services should be able to communicate with each other by default.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 79:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: It doesn't happen like that, right?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 80:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So with that I hope it is clear.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 81:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And now you understand all these different types of the associations and with this knowledge.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 82:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: Now let's go to the next lecture where we will see end to end traffic flow, where client initiates the traffic flow or the request for the VPC lattice service.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 83:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 84:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So with that let's stop for this lecture and let's go to the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 85:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Thank you.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/16_VPC Lattice/151_VPC lattice traffic flow.txt

Line 1:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 2:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: So we have talked about the basics of VPC lattice.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 3:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: And now before moving to the exercises let's quickly talk about VPC lattice traffic flow.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 4:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then we will actually see this in action.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 5:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 6:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: So as you can see here we have VPC lattice network here.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 7:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then there is a client VPC which is connected over VPC association.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 8:
- Concepts: Connectivity Abstraction, Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: And then we have VPC lattice service which ultimately sends the traffic to the target in the service provider VPC.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 9:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 10:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: So this is a very common architecture for VPC lattice.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 11:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: Now here the client wants to actually send the traffic to this service a right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 12:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now in that case let us see how this traffic flows and what are the different things which you need to take care to establish this end to end connectivity okay.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 13:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: So very first thing when you create a service in VPC lattice, as we said there is a service discovery.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 14:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: And for that VPC lattice will provide its own DNS name, and it is in the format as service name that you provide.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 15:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then there is AWS managed DNS, which looks something like this.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 16:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And it ends in the region name on AWS.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 17:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: So if you don't want to use your custom DNS, then this client here can access the VPC lattice service using this particular DNS.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 18:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: But as you know, you might want to have your own domain name for your services.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 19:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And in that case, you can create your own route 53 hosted zone.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 20:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: And in that you can create the CNAME records to point your domain name to this VPC lattice provided DNS name right.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 21:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So you have the DNS name.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 22:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now the first thing that client will do is make a DNS query.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 23:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: Right now this DNS query might be resolved by this VPC lattice DNS.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 24:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Or it can be resolved by route 53 hosted zone that you created.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 25:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: And as a result of this DNS query, client will receive the local link address for the VPC lattice network endpoint.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 26:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And as we discussed, this local link address.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 27:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Is accessible only from within this VPC.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 28:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So now client has this IP address.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 29:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 30:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So at this point client receives the IP address.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 31:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And now client wants to send the traffic to that IP address.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 32:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And there comes the security groups.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 33:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now there are two security groups one for the client for the outbound traffic.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 34:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: And then this VPC lattice association itself has a security group.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 35:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So if you see the EC2 security group has to allow the outbound traffic.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 36:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And this VPC association security group has to allow the inbound traffic for the HTTP or Https protocol.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 37:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 38:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So in this you should have this security group rules added so that traffic can flow from this client to this local link address okay.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 39:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: So once it passes the security groups then it will check the auth policies at the VPC lattice service network layer and the service layer.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 40:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 41:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: And in the previous lecture we learned that if the auth policy is none then the traffic is allowed by default.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 42:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: But if the auth policy is set to aws IAM, then there should be explicit allow statement for this traffic to flow right.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 43:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: So it will check the auth policies and then traffic will go to the service.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 44:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 45:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: So traffic reaches to the service end point.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 46:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: And at this point as you know service has the listener.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 47:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: And then service has rules and the target groups.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 48:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 49:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So according to the rule that you have specified, it will take action and will send that traffic to specific target group.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 50:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now once it reaches the target group then it will be sent to the target.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 51:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And at this point as well there is a security group, right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 52:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: Now this security group should allow the inbound traffic from VPC lattice network Cidr range.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Application networking abstraction signal.

Line 53:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 54:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And that range is 169.254.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 55:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: But the best practice is to allow only to VPC lattice managed prefix list, and it pops up when you create that inbound rule in the security group.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal; Application networking abstraction signal.

Line 56:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now, once you do that, then this traffic reaches to the target, and then it goes back to the client as a return traffic.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 57:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 58:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So I hope it is clear.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 59:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now just one more thing to understand.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 60:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: In this entire flow, there are no route tables.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 61:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: We haven't configured any route table.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 62:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: All this traffic flows just based on the DNS and this local IP address.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 63:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: So there are no route tables to be configured for this VPC lattice traffic flow.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal; Application networking abstraction signal.

Line 64:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 65:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So I hope it is clear.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 66:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And now you have sufficient knowledge to get into the exercise.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 67:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So in the next lecture let's do similar exercise.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 68:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: What you see here we are client from one VPC will connect to the service in another VPC through the VPC lattice network.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 69:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 70:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's stop here for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 71:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And let's go to the exercise.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 72:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Thank you.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/16_VPC Lattice/152_Hands on_ VPC lattice service access with custom domain name.txt

Line 1:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Hi.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 2:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: Now let's do the exercise for VPC lattice.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 3:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And this exercise is very similar to what we just saw in the traffic flow lecture.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 4:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 5:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: So on the left side we will have the client VPC in which we will have a simple EC2 instance from where we will check the connectivity to the VPC lattice service.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 6:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And on the right side we have two targets.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 7:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: One is inside the VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 8:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And that's a simple EC2 instance with a web server.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 9:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And it will listen on port 80.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 10:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Then we have another target which is the lambda function.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 11:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: And then we will have VPC lattice service which will route the traffic to corresponding target group based on the URL path.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 12:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: For example, if you enter say service name slash EC2 then it goes to this target.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 13:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And if it is slash lambda then it goes to this target right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 14:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: So we will create this app service.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 15:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: We will register this target groups and targets.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 16:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: We will create a listener.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 17:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: And then we will associate this app service with the VPC lattice network.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 18:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: At the same time, we will also associate this client VPC with the VPC lattice network using VPC association.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 19:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And we want to access these services using the custom domain name.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 20:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And that domain name could be say example.com.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 21:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So we will create route 53 private hosted zone.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 22:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And in that we will create corresponding records.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 23:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So this is the premise of this exercise.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 24:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And to be honest just looking at this architecture you should be able to implement this.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 25:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And for that I have also provided high level steps here.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 26:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So you can follow these steps and try to implement this.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 27:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now a few interesting thing here that you should note is that we are creating both the client VPC and the application VPC with the same Cidr range.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 28:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: So VPC lattice solves the problem of overlapping cidrs right.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 29:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: That's one thing.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 30:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Second, please pay attention to the security groups because as we talked in the earlier lecture, there are different security groups that comes into play.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 31:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So you have to make sure right, inbound or outbound rules are there.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 32:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 33:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 34:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So that is what we are going to do in this exercise.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 35:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And just to save some time, what I have already done, I have created just these two VPCs.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 36:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And in that I have just created two public subnets so that we can launch our instances.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 37:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now to be honest, we don't need these instances to be public, but just because we want to connect to this instance to test the connectivity.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 38:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And also for app instance we have to install the web server.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 39:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: We are going to launch that in a public subnet.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 40:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: But as I said you can very well have them in private subnet.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 41:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: But then you will need Nat gateways and all those things.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 42:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So to simplify the architecture we will create that in the public subnets.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 43:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay with that.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 44:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now let's go to the AWS console and let's proceed with the steps.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 45:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So as I said these VPCs and public subnets are already there.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 46:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: I'll show you that first.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 47:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then I will launch two EC2 instances in these two VPCs a client EC2 and the application EC2.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 48:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay, so as you can see here, this is client VPC and the Cidr range is this same for the application VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 49:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Then I have two public subnets and you can very well check the routes for this public subnet.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 50:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And it is nothing special right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 51:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: It's a normal public subnet.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 52:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And corresponding route tables are there and internet gateways are there.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 53:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So all very simple right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 54:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Next as I said we will create the client EC2 and the app EC2 in corresponding VPCs.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 55:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's go to the EC2 and launch the instance.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 56:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Let's call it say client EC2 and we will go with the key pair.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 57:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Then network.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 58:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: We want to create that in the client VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 59:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: And I want a public IP so that I can connect and then can initiate the request to the VPC lattice later.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 60:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And the security group wise Twice.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 61:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: I just need simple ssh.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 62:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 63:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Because that's what we are going to use for connection.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 64:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then we will initiate the ping request or HTTP request from here.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 65:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 66:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: That's it I don't think I need anything else.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 67:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And let's launch the instance.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 68:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Cool.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 69:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Let's go back refresh.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 70:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And now let's launch our app EC2 instance in the app VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 71:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So there is just one subnet.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 72:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: We want public IP here as well.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 73:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And and we want to create a new security group.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 74:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's call it app SG.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 75:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now with respect to its uh rules.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 76:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So we want to connect over SSH so that we can install the web server.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 77:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And additionally we want as of now HTTP traffic to be tested so that we can check whether web server is installed properly or not.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 78:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And later we can remove this rule as well.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 79:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And I'll tell you why.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 80:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's launch the instance.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 81:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 82:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Instance has been launched.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 83:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Let's go back to our steps and check what is next.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 84:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 85:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Next is we want to create route 53 private hosted zone and associate that with the client VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 86:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And in order to resolve the route 53 DNS records we have to enable DNS settings for the client VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 87:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now this is very important step so don't forget about that.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 88:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 89:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's go to the route 53.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 90:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And let's create the hosted zone.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 91:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Let's call it say example.com.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 92:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And it is a private hosted zone.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 93:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And we want to associate that with the VPC in the Mumbai region that I'm using.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 94:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And it should be client VPC right.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 95:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's create the hosted zone.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 96:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And as I said don't forget to turn on the DNS settings for this VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 97:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's go to the client VPC edit VPC settings and enable both these settings.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 98:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And save it.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 99:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay that is done.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 100:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now next we want to just log in to EC2 instance on the application side.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 101:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And we want to make sure that web server is installed and running.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 102:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's go there in the EC2.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 103:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And this is my VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 104:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Let's copy the public IP.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 105:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And now I will log in over the putty session.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 106:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay so let's open the session with EC2 dash user.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 107:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 108:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now this is very simple.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 109:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Just say sudo yum install httpd.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 110:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Yes.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 111:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: Then sudo systemctl start httpd dot service and you can just create a file.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 112:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Sorry.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 113:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And say.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 114:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Hello from EC2.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 115:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: That's it.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 116:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 117:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And we can test the connectivity.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 118:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 119:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's go here and let's say http colon slash slash and the IP address of the instance.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 120:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And you can see hello from EC2.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 121:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So it is working as expected.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 122:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And as I said we just wanted the HTTP connectivity from outside only for testing whether web server is running or not.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 123:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So at this point I can even just go to the security group of the app EC2 instance and can remove this entry, which makes this instance kind of private, right?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 124:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: We can't access HTTP service from outside.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 125:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay, so that's done.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 126:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So we have done up to step number six.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 127:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And now let's create a lambda function with the default hello world kind of function.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 128:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: And then we will move towards the VPC lattice configuration.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 129:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And in there we will create the target groups one for EC2 instance and one for lambda function.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 130:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's do that.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 131:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay so let's create the lambda function say author from scratch.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 132:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Let's call it app lambda.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 133:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So app dash Lambda.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 134:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And it could be Python.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 135:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Most of the settings as it is let's create the function.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 136:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And by default if you see it will create hello world kind of lambda function.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 137:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 138:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So that's the lambda code.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 139:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And if you just go and test this lambda function, it will just have this kind of message.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 140:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And that is sufficient for us.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 141:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So lambda has been created.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 142:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: Now let's go to the VPC lattice.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 143:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So all the settings are on the left side.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 144:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And there you see this target groups right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 145:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's go to the target group.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 146:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And let's create a target group.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 147:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now the target is instance first.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 148:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And the target group name is say EC2.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 149:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And the protocol is HTTP on port 80.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 150:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And this is for the app VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 151:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now rest of the settings as it is say next.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 152:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And we need to include this particular instance.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 153:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Right now the health status is pending.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 154:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: But as soon as we associate this target group with the VPC lattice service, then it will make the health check, which is very similar to the Elastic Load balancer if you remember.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 155:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And it will turn to healthy.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 156:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's create this target group for the EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 157:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay, so target group has been created.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 158:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now let's create another target group.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 159:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And this time it is for the lambda function.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 160:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's call it say lambda target group.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 161:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And next we have to select our lambda function.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 162:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Rest of the settings as it is.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 163:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And let's create this target group.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 164:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 165:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So both the target groups have been created.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 166:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And we are done with the step nine.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 167:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: Now let's go to the next step where we are going to create VPC lattice service.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 168:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So in that we will also associate that with the custom domain name.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 169:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: We will create a listener on port 80.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 170:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then we will add rules to route the traffic to both these target groups.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 171:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 172:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's do that.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 173:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then we will proceed with the next steps.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 174:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 175:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: So let's go to the lattice services.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 176:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: Let's create a service.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 177:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: Let's give it a name say app service.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 178:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And we are going to use a custom domain name and it will be app dot example.com.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 179:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now we are not going to have https.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 180:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So we don't have or don't need to provide the certificate.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 181:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Auth type is none as of now.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 182:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And that's where the request from the client will be automatically allowed.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 183:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So remember these steps.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 184:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: If you put IAM then you have to put corresponding IAM policies.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 185:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: Now we are not going to share the service with any other AWS account.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 186:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's not do anything here and let's go to the next.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 187:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And now let's add a listener.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 188:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So for us the listener is port 80.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 189:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: That is HTTP.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 190:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And we need to add a listener rule.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 191:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's create a rule from here.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 192:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And let's call it say lambda rule.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 193:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: The priority is ten and the condition is path condition.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 194:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So we are saying if the rule is slash lambda then send it to the corresponding target group.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 195:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: That is a lambda target group.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 196:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And the weight wait is one that is 100%.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 197:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's add a rule.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 198:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now this is one rule.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 199:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now we could have added another rule which says EC2 goes to the EC2, but in that case it goes to the path slash EC2.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 200:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: But in our case the web server is on the slash.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 201:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So what we can rather do is we can just add a default rule.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 202:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: If it doesn't matches to slash lambda or anything else, then forward it to the EC2 target group.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 203:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So things are same, but we are just configuring it in a different fashion.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 204:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 205:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Next.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 206:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: Now we don't have VPC lattice network as of now.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 207:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's skip this.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 208:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: Say next and just create the service right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 209:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: So VPC lattice service has been created.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 210:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: And now we will do the important thing that is creating the VPC lattice network.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Application networking abstraction signal.

Line 211:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 212:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: As we are going to create the VPC lattice network there are some prerequisites that we will first implement right.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 213:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And the important one is creating the security group.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 214:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: When we associate the client VPC with the VPC lattice network.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 215:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And I had explained that in the previous lecture.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 216:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So we need to create a security group in the client VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 217:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And if you remember this security group is attached to the local link address right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 218:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So it should accept the HTTP traffic from the client VPC Cidr.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 219:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 220:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So what I'm talking about here is this particular security group right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 221:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's do that right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 222:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's go to the security groups.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 223:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And let's create a new security group.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 224:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Let's call it app.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 225:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now let's call it client VPC association security group.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 226:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So it is clear.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 227:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And this should be in the client VPC.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 228:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And we need to add inbound rule which says for the HTTP traffic it should allow the client VPC Cidr range which is ten dot ten .00 slash 16.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 229:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: That's it.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 230:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And let's create this security group.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 231:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 232:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: That is done.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 233:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: Now we can go ahead and create the VPC lattice network.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 234:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: So let's go to the service network on the left side.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 235:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: And let's create the VPC lattice network.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 236:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: And let's give it say app lattice network.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 237:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Then which services we want to associate.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 238:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: So we just have app service.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 239:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's attach that.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 240:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And we don't have any resources like you know RDS databases or anything.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 241:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So we will skip that.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 242:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And in the VPC association we are going to associate this with the client VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 243:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And the security group is the one that we had just created right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 244:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So that's done again the auth policies.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 245:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: We are setting it as none.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 246:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And the rest of the settings I don't think so.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 247:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: We need to change anything.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 248:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 249:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: So VPC lattice network has been created and has been associated both with the service as well as with the client VPC.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 250:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And you can very well see that here right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 251:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: So there is a service association.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 252:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: There is resource association.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 253:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: There is endpoint association.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 254:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Then there is a VPC association.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 255:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So we should see this VPC right.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 256:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So it will take maybe a couple of minutes.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 257:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So I'm just pausing this video and I'll come back here.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 258:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: Okay so lattice network and associations have been created.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 259:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So if you see our architecture we have done most of it right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 260:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: What we haven't done is probably some security group rule for this EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 261:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: But rest of the things are done.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 262:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: So at this point, let's try to just log in to this client EC2 instance over SSH, and then try to access the VPC lattice service using the VPC lattice DNS.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 263:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Let's see if it works.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 264:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So again grabbing the public IP of the client EC2 instance And just going to open the SSH session there.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 265:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: And in order to access the VPC lattice service we can use curl command and say http colon slash slash and the endpoint of the VPC lattice service.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 266:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: And for that we can just go to the VPC lattice network or the service.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 267:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: Rather we should go to the services and select the app service.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 268:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: And here we should be able to see the end point of this service.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 269:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So right now we are just going to do that with the AWS provided DNS name which is this right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 270:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And if I go back to the putty session, if I do this should it work or not.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 271:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So it doesn't work.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 272:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Can you think why?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 273:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And the problem is this particular security group of the EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 274:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: Because by default the target group will send the traffic to this particular instance, but which also means we should be able to at least access the Lambda service, right?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 275:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's try that first.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 276:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So now I'm just doing this slash lambda.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 277:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And it works.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 278:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 279:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Because there is no security group for the lambda function.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 280:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's go back to the EC2 instance and add that missing security group inbound rule.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 281:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 282:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's go here for the app EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 283:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Let's go to the security.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 284:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And let's open this security group.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 285:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And in the inbound rule we should add HTTP traffic.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 286:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And do you know what should be the source Cidr range.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 287:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: Now this is a range of VPC lattice internal network right.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 288:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: And I told you for that we need to have the prefix list for the VPC lattice.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 289:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And do remember IPv4 prefix list because there are both IPv6 which is this.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 290:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: But we need VPC lattice IPv4 prefix list which is this?
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 291:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 292:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's save the rule.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 293:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And now let's go back to our client EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 294:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And now let's try to just remove this.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 295:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And you see hello from EC2.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 296:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So traffic is going.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 297:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So that's really great.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 298:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: That means we can access the VPC lattice service from the client.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 299:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And now just let's try one more thing that is curl http app dot example.com.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 300:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Should it work or not.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 301:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: It doesn't because we had created the route 53 hosted zone, but we did not create corresponding records in that hosted zone.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 302:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now for that, we need to have our domain name that is provided by the AWS.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 303:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Which is this right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 304:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And we need to create corresponding record in the route 53.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 305:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's create a record say app dot example.com.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 306:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: And it should be pointing as a c name To our domain name of the lattice service.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Application networking abstraction signal.

Line 307:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Sorry.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 308:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: I think it did not get copied properly, but it should be something like this, right?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 309:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's create the record.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 310:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And now if we go back to the client.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 311:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's try again.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 312:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And still it doesn't resolve.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 313:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's wait for maybe a second or so.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 314:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And sometimes you might have to just reboot your client EC2 instance so that new DNS settings takes into effect.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 315:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay, so let me try to just reboot this instance and wait for maybe a minute or so.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 316:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 317:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's just restart this particular session.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 318:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's say restart EC2 user.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 319:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And now let's try this again.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 320:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So curl HTTP app dot example.com.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 321:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And it works right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 322:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And you can also test slash lambda.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 323:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And it is hello from the lambda.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 324:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So it is working with the custom domain name as well right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 325:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So essentially we have done what we wanted to do.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 326:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So we could successfully test the end to end connectivity using the client VPC and the app VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 327:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 328:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And as I said we had the overlapping sides for the VPC as well.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 329:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: And VPC lattice allows that right.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 330:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So we are done for this exercise.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 331:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now before I let you go there is an additional thing that you can try.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 332:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: Now if you just go or log in to an EC2 instance, then from there you cannot access the VPC lattice service.
- Hidden/Implicit Meaning: Constraint or limitation signal; Application networking abstraction signal.

Line 333:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: That's because the app VPC is not associated with the service network using the VPC association.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 334:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And we had discussed that in the previous lecture.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 335:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So again the next step of this exercise if you want to do is to allow the inter services communication.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 336:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: So from the app EC2 instance, you should be able to access the VPC lattice service.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Application networking abstraction signal.

Line 337:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And for that you would have to create that additional association.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 338:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So I'll leave it up to you if you want to implement and test that.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 339:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So I am talking about this green line here right which you need to create.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 340:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 341:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this exercise.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 342:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Just last and most important thing clean up everything that you created.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 343:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: So please terminate the EC2 instances that you created the lambda functions, the VPC lattice network services, target groups.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 344:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then finally the VPCs and the route 53 private hosted zone.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 345:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: Otherwise there will be some charge for the VPC lattice usage.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 346:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So remember this.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 347:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 348:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this exercise.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 349:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: So I hope it is now very clear how VPC lattice services work together.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 350:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So thanks for watching.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 351:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: And with that now let's go towards some additional things about VPC lattice.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 352:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And then we will conclude this section.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 353:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So thanks for watching and stay tuned.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/16_VPC Lattice/153_VPC lattice features - Good to know.txt

Line 1:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Hai.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 2:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Jadi dalam kuliah ini, mari kita lihat dengan cepat beberapa fitur penting dari kisi VPC yang harus Anda ketahui untuk ujian sertifikasi Anda.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 3:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Benar.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 4:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Jadi sehubungan dengan konektivitas, kita telah mengetahui bahwa Anda dapat menghubungkan layanan di seluruh VPC dan di seluruh akun AWS.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 5:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Sekarang sehubungan dengan protokol untuk layanan yang didukungnya, protokol HTTP, Https dan gRPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 6:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Dan jika Anda memiliki sumber daya VPC sebagai target, maka Anda sekarang juga dapat menggunakan koneksi TCP dan TLS.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 7:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Selanjutnya, untuk merutekan permintaan ke kelompok target yang berbeda.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 8:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Anda dapat menggunakan perutean yang berbeda untuk permintaan tersebut.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 9:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Dan itu termasuk perutean berbasis jalur, perutean berbasis metode atau perutean berbobot.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 10:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Dan ini sangat mirip dengan cara kerja Alb.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 11:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Benar.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 12:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Oke.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 13:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Pindah.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 14:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Sehubungan dengan keamanan, kami mengetahui bahwa Anda dapat menggunakan otorisasi IAM, yang dapat memvalidasi apakah pengguna memiliki izin IAM yang tepat untuk mengakses layanan kisi VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 15:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Dan sebaliknya pada lapisan jaringan, Anda selalu dapat memiliki grup keamanan di tingkat asosiasi VPC atau di tingkat target jika itu adalah EC2 atau penyeimbang beban yang lebih jauh sehubungan dengan target, dapat berupa instance EC2, fungsi Lambda, alamat IP, atau Alb atau NLB.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 16:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Sekarang, jika beban kerja Anda berjalan di ECS atau klaster EKS, tentu saja Anda dapat menggunakannya.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 17:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Tetapi untuk itu Anda harus melakukan front end dengan Alb atau NLB atau dalam kasus ECS, pengontrol API gateway AWS, yang merupakan komponen Kubernetes.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 18:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Tetapi kemudian dipetakan ke penyeimbang beban aplikasi, benar.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 19:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Jadi, inilah fitur-fitur yang mungkin sudah Anda ketahui.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 20:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Sekarang dua fitur tambahan yang harus Anda ketahui adalah tentang berbagi layanan kisi VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 21:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Jadi, Anda dapat berbagi sumber daya layanan kisi VPC atau jaringan kisi VPC menggunakan Manajer Akses Sumber Daya AWS.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 22:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Dan kisi-kisi VPC lebih lanjut menyediakan fungsionalitas Nat implisit.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 23:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Sekarang, hal ini diperlukan ketika Anda memiliki cidr yang tumpang tindih di antara VPC dan Anda ingin mengirim trafik dan kisi VPC lebih lanjut juga mendukung trafik IPv6.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 24:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Jadi, sekarang mari kita bahas secara singkat mengenai dua fitur terakhir ini.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 25:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Dan kemudian kita akan menyimpulkan kuliah ini.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 26:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Jadi, sehubungan dengan Ram seperti yang saya katakan, seperti inilah tampilannya.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 27:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Di mana dalam satu akun AWS Anda mungkin memiliki jaringan kisi VPC Anda dan Anda dapat berbagi jaringan tersebut dengan akun AWS lainnya.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 28:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Jadi, setelah jaringan itu terlihat di akun AWS lain.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 29:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Sekarang Anda bisa membuat layanan kisi VPC di akun tersebut dan bisa mengaitkannya dengan jaringan kisi VPC yang sama.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 30:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Demikian pula, Anda juga dapat berbagi sumber daya kisi VPC atau layanan.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 31:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Benar, kan?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 32:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Dan selanjutnya, seperti yang saya katakan, sehubungan dengan SID yang tumpang tindih dan kisi VPC IPv6 mendukung lalu lintas tersebut.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 33:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Dan itu dilakukan dengan mengimplementasikan fungsionalitas Nat dan Nat 64.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 34:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Sekarang, Nat 64 pada dasarnya mengubah alamat IPv4 menjadi IPv6 dan sebaliknya.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 35:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Jadi misalnya, jika klien Anda menggunakan alamat IPv6, tetapi layanan Anda di-host pada alamat IPv4, maka itu juga berfungsi.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 36:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Dan sebaliknya jika klien Anda menggunakan IPv4 dan layanan kisi VPC Anda menggunakan alamat IPv6, maka itu juga berfungsi.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 37:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Jadi, kisi VPC akan menangani terjemahan itu.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 38:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Ingatlah hal ini dengan benar.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 39:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Jadi, inilah fitur-fitur penting yang harus Anda ketahui untuk ujian Anda.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 40:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Dan dengan itu, sekarang mari kita lihat secara singkat beberapa arsitektur umum dalam hal kisi-kisi VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 41:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Dan kemudian kita akan menyimpulkan bagian ini.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 42:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Jadi, terima kasih sudah menonton.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 43:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Dan mari kita lanjutkan ke kuliah berikutnya.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/16_VPC Lattice/154_VPC lattice common architectures.txt

Line 1:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 2:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: So in this lecture let's see some of the common VPC lattice architecture that you will see in the real world.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 3:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: And these architectures might give you good understanding when the problem is given to you around the VPC lattice usage in your exam.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 4:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 5:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So there are typically four architecture that we are going to talk about.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 6:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And we have already talked about that in the previous lecture.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 7:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So it should be very easy for you to understand right.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 8:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So very first and a common architecture is to allow the connectivity between different VPCs.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 9:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And we have already done the exercise around this.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 10:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So nothing very special about this architecture as you can see here.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 11:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: VPC lattice is in the middle.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 12:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: And then you connect your VPCs services with the VPC lattice network.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 13:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now important thing here to look at these arrows.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 14:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So the green arrow represents the VPC association.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 15:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So the client in that VPC can access the services.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 16:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And here as you can see both VPCs are connected using this VPC association.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 17:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: That means all services and client can access the VPC lattice network and the services.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 18:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 19:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So a very common architecture that you will see.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 20:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And if you want to read more about this architecture then you can visit this AWS blog.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 21:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 22:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now the next architecture.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 23:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: If you want to access VPC lattice services from your on premises network.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 24:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: And if you remember, we said that if you want to access VPC lattice from outside the VPC, you have to use VPC endpoint for the VPC lattice service network.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 25:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: So if you see this is my ingress VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 26:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And in that there is this VPC endpoint.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 27:
- Concepts: Transit and Segmentation
- Services: Direct Connect, Transit Gateway
- Key Insights: And this VPC is connected with the on premises network using over say IPsec VPN or Direct Connect or say Transit Gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 28:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: The point is, you should be able to access the private IP of this VPC endpoint from your on premises network.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 29:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: And if that connectivity is there, then you can access the VPC lattice services.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 30:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So this is another architecture that you will see right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 31:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So in this architecture our services are hosted in AWS and we are accessing it from on premises.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 32:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: But what if we want to use VPC lattice.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 33:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: But the targets are there in the on premises network.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 34:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: And you know that VPC Lattice Services supports IP address as a target.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 35:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And that IP can be from your on premises application.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 36:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So in that case the architecture will be something like this.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 37:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: Now here in this VPC we are saying that VPC lattice has the target and the target IP or DNS is there in the on premises data center.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 38:
- Concepts: Transit and Segmentation
- Services: Direct Connect, Transit Gateway
- Key Insights: And there is a connectivity between your this VPC and the data center again over a VPN or a direct connect or a transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 39:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: Now another way to do that is you can also have your VPC lattice service behind NLB or Alb.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 40:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And for NLB and Alb the target can be the IP address.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 41:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So if you want to load balance the application then you can also use this NLB or Alb here.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 42:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So this is the other way around where your target is sitting in the on premises network right?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 43:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So I hope it is clear.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 44:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: Then the final architecture is when you want to access the VPC lattice services from the internet right now for that as well.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 45:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: Again, first thing you need to create the VPC endpoint for the lattice network.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 46:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And now you have to expose this endpoint to the internet.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 47:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And how do you do that.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 48:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So you would have to bring in some publicly facing entity.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 49:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And that could be your network load balancer or the application load balancer which are sitting in the public network.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 50:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Then through the internet gateway, the traffic will go to the load balancer and the target will be the IP address of this VPC endpoint.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 51:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 52:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: And this is how you expose your VPC lattice services to the outside network.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 53:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 54:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: So these are the very common architecture that you will see with VPC lattice.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 55:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And I hope it is clear.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 56:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So with that we will stop here.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 57:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: And in the next lecture we will just quickly summarize VPC lattice service.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 58:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So thanks for watching.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 59:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And let's go to the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/16_VPC Lattice/155_VPC lattice section summary.txt

Line 1:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Hi.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 2:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: So quick summary about the VPC lattice section.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 3:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: So as you know, VPC lattice enables service to service communication across VPCs and AWS accounts.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 4:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: And that's where it eliminates the need of having the complex networking using say, VPC peering or transit gateways or VPC endpoints or Privatelink.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 5:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Now with respect to the target, it supports EC2 IP addresses, ECS or EKS behind the Alb or NLB and the Lambda functions further like the application load balancer.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 6:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: It also supports different dynamic routings.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 7:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So you can have the path based routing, the method based routing.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 8:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Or you can have weighted routing.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 9:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So all those conditions you can write in the listener rules.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 10:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: Further VPC lattice also supports the service discovery.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 11:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So it provides its own domain name.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 12:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: But again you can use route 53 to have your own custom domain name.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 13:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: Now, with respect to the association of the VPC lattice, we saw that there are four types of the association the service association.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 14:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: The resource configuration association.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 15:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: The VPC association and the VPC endpoint association, and out of that.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 16:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: VPC endpoints allows the outside network to access the VPC lattice.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 17:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: Service using some ingress VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 18:
- Concepts: Service-to-Service Networking
- Services: (none explicit)
- Key Insights: So you should first create that VPC endpoint in the ingress VPC.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 19:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And you can then connect other networks to that VPC.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 20:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: And then they can access the VPC lattice network.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 21:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And further with respect to the authentication it supports the IAM policies.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 22:
- Concepts: Centralized Network Governance, Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: So you could have the IAM policy applied at the VPC lattice network level or the service level.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 23:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 24:
- Concepts: Centralized Network Governance
- Services: (none explicit)
- Key Insights: And by default the policy is none.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 25:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So the authorization is allowed.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 26:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: But if you have enabled the IAM authentication then by default the access is denied.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 27:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: In that case you must have the allow permission for the user or the client to access the VPC lattice network or the services.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Application networking abstraction signal.

Line 28:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 29:
- Concepts: Service-to-Service Networking
- Services: VPC Lattice
- Key Insights: So that's about the VPC lattice.
- Hidden/Implicit Meaning: Application networking abstraction signal.

Line 30:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: I hope you enjoyed this section.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 31:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So thanks for watching.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 32:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And with that now let's go to the next section.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 33:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Thank you.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/27_Networking - VPC/343_Transit Gateway.txt

Line 1:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay, so if we look at common network topologies in AWS it can become quite complicated.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 2:
- Concepts: Transit Operational Context
- Services: Direct Connect
- Key Insights: For example, you have many VPC and you want to peer them together, then you want to establish some VPN connections and direct connect, and then you have a direct connect gateway to connect to multiple VPC at a time, and this can become very, very complicated in terms of network topology.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 3:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So, AWS came up with the transit gateway to solve that problem, and you're going to have a transitive peering connection between thousands of VPC, your on-premises data center, your site-to-site VPN, direct connects in a hub-and-spoke star connection.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 4:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So let's have a diagram.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 5:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: We have transit gateway in the center and you can connect multiple VPCs through the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 6:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So in this example, we don't need to peer the VPCs together, they are connected transitively through the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 7:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So in this example, all the VPCs can talk to each other.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 8:
- Concepts: Transit and Segmentation
- Services: Direct Connect, Transit Gateway
- Key Insights: But also, you can connect a direct connect gateway to the transit gateway, so it shows you have a direct connect connection directly in to many different VPC.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 9:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Or if you are preferring site-to-site VPN and VPN connections, you can connect your customer gateway and your VPN connection into your transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 10:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Again, one more time, giving you access to all these VPC as part of the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 11:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So this really solves some network problems.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 12:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: It's a regional resource and it can work cross-region, and you can share your transit gateway across accounts by using the resource access manager.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 13:
- Concepts: Transit and Segmentation
- Services: (none explicit)
- Key Insights: You can also peer transit gateways across region.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 14:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So, how do you define who can talk to what?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 15:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Well, you need to create route tables for your transit gateway to limit which VPC can talk to another, which connection have access to each other and so on.
- Hidden/Implicit Meaning: Constraint or limitation signal; Transit-domain and segmentation signal.

Line 16:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So, you get full control over the routing of all the traffic within the transit gateway to give you network security.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 17:
- Concepts: Service-to-Service Networking, Transit and Segmentation
- Services: Direct Connect, Transit Gateway
- Key Insights: So, as I said, it works with direct connect gateway and VPN connections, and it is the only service in AWS that supports IP multicast, so if you see IP multicast at the exam, just know that it is transit gateway you have to use.
- Hidden/Implicit Meaning: Constraint or limitation signal; Transit-domain and segmentation signal.

Line 18:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So, another use case for transit gateway is to increase the bandwidth of your site-to-site VPN connection using ECMP.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 19:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So, it's quite technical but the question can come up in the exam.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 20:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So, ECMP means equal-cost multi-path routing.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 21:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: It's a routing strategy to allow to forward a packet over multiple best path.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 22:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And the use case, as I said, is to create multiple site-to-site VPN connections to increase the bandwidth of your connection to AWS using a site-to-site VPN.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 23:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So, let's take this example where we have a transit gateway and we have four VPCs attached to our transit gateway, and we have a corporate data center that is connected using site-to-site VPN to a transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 24:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So when you establish a site-to-site VPN connection there are actually two tunnels, one going forward and one going back.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 25:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: When you are connecting such a VPN into a VPC directly, both of these tunnels are used as part of one connections, but when using the transit gateway two tunnels can be used at a time, so this is why you see two lines in this diagram.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 26:
- Concepts: Transit and Segmentation
- Services: Transit Gateway, VPC Attachment
- Key Insights: But with transit gateway, you can have multiple site-to-site VPN so you can create a second site-to-site VPN attachment and into your transit gateway, so this creates four tunnels.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 27:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And so, when you have four tunnels of site-to-site VPN, you are increasing the throughput of your connection which is something you cannot do if you were to connect your corporate data center directly into a VPC.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 28:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So, if you do a VPN to a virtual private gateway, you get one tunnel, in fact one connection into one VPC, and this connection gives you 1.25 Gbps as the maximum throughput, and you are limited.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 29:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And in this case, a VPN connection is made of two tunnels.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 30:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: But if you are using a VPN into a transit gateway, you get one site-to-site VPN into many VPC because they're all connected transitively to the same transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 31:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: And also, one site-to-site VPN connection gives you 2.5 Gbps thanks to ECMP, because the two tunnels are going to be used through that strategy.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 32:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: But also, you can add more site-to-site VPN connections into transit gateway, for example two or three, to double or triple your throughputs through ECMP.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 33:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So this is an exam question you need to know.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 34:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: Obviously when you do the setup, you're going to have to pay for each GB of data going through the transit gateway, so there's an added cost to this performance optimization.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 35:
- Concepts: Transit and Segmentation
- Services: Direct Connect, Transit Gateway
- Key Insights: Finally, you can share your direct connect connection between multiple accounts, again, using the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 36:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: How do we do this?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 37:
- Concepts: Transit and Segmentation
- Services: Direct Connect, Transit Gateway
- Key Insights: Well, we're going to establish a direct connect connection between your corporate data center and a direct connect location, and then we're going to set up a transit gateway into both VPCs in two different accounts, okay?
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 38:
- Concepts: Transit and Segmentation
- Services: Transit Gateway
- Key Insights: So this is something we can do with the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 39:
- Concepts: Transit and Segmentation
- Services: Direct Connect, Transit Gateway
- Key Insights: And then, we connect the direct connect location into direct connect gateway and connect that gateway into the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 40:
- Concepts: Transit and Segmentation
- Services: Direct Connect, Transit Gateway
- Key Insights: And what this just allowed us to do is to share a direct connect connection between multiple accounts and multiple VPC, which is very handy thanks to the transit gateway.
- Hidden/Implicit Meaning: Transit-domain and segmentation signal.

Line 41:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

Line 42:
- Concepts: Transit Operational Context
- Services: (none explicit)
- Key Insights: So all these sort of architectures can come up in the exam so make sure you're familiar with understanding how they work, and that's it for me, I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes transit and service-networking detail.

## Step 2 — Consolidation

### 1. Concepts List
- Centralized Network Governance
- Connectivity Abstraction
- Global WAN Control Plane
- Service-to-Service Networking
- Transit Operational Context
- Transit and Segmentation

### 2. Services List
- AWS Cloud WAN
- Core Network Policy
- Direct Connect
- Transit Gateway
- VPC Attachment
- VPC Lattice

### 3. Features List
- attachment
- cloud wan
- core network policy
- lattice
- segment
- service network
- transit gateway

### 4. Use Cases
- 075_Introduction to Transit Gateway.txt:7: So in this section, I have tried my best to keep the discussion focused on the Transit Gateways, but ultimately you will be able to connect all these dots after you complete your other section, and specifically the VPN and the Direct Connect section.
- 075_Introduction to Transit Gateway.txt:13: But just to give you a brief history, Transit Gateways were introduced in 2018, and intent was to simplify the AWS networking when it comes to managing the multiple VPCs, and when you have to have the hybrid connectivity between AWS and on-premises network.
- 075_Introduction to Transit Gateway.txt:44: So for example, you have a lot of spoke VPCs and you want to allow the internet connection through the Transit Gateway, through the centralized VPC.
- 076_Transit Gateway VPC attachments and Routing.txt:2: Now that we have seen that transit gateway can be used to connect VPCs, VPN connection, direct connect gateway, as well as you can have the third party softwares, and transit gateways can be peered across the regions as well.
- 076_Transit Gateway VPC attachments and Routing.txt:3: Now, in this lecture, let's look at how to connect VPCs to transit gateway with VPC attachments.
- 076_Transit Gateway VPC attachments and Routing.txt:4: Now, having said that the connection with the VPN, as well as direct connect, we will cover that in the respective section when we talk about the VPN as well as direct connect.
- 076_Transit Gateway VPC attachments and Routing.txt:11: Now there are certain restrictions when you connect VPCs to the transit gateway and the obvious one is that VPC CIDR should not be overlapping.
- 076_Transit Gateway VPC attachments and Routing.txt:13: Now with that, let's understand now how the routing happens when you connect multiple VPCs.
- 076_Transit Gateway VPC attachments and Routing.txt:18: Now when you create a transit gateway, there will be a default route table of that transit gateway.
- 076_Transit Gateway VPC attachments and Routing.txt:30: Now we have seen this all the time whenever you have to connect multiple networks, you also need to manage responding route.
- 076_Transit Gateway VPC attachments and Routing.txt:39: Now once you do that, now you can see if VPC A wants to communicate with VPC B, then it will send a packet for example, there is say C to machine, and then it will send the packet like this.
- 076_Transit Gateway VPC attachments and Routing.txt:40: Now when the traffic goes out, it will check the corresponding route table for say IP address 10.1.0/15 for example, right? then it will first check its own route table.
- 076_Transit Gateway VPC attachments and Routing.txt:45: Now this is how the routing happens when you use transit gateway.
- 077_Hands On_ Transit Gateway & VPCs with full routing.txt:2: Now, in this lecture, we will see how to actually set up this connectivity that we just talked about, that means we will have multiple VPCs and then we'll see how the communication happens when you use transit gateway.
- 077_Hands On_ Transit Gateway & VPCs with full routing.txt:8: First of all, as we know, we always work with the subnet, when it comes to the route table or when it comes to launching the EC2 machine.
- 077_Hands On_ Transit Gateway & VPCs with full routing.txt:24: Now one thing to understand that when you launch this EC2 machines in the private subnets, you also need to have the security group.
- 077_Hands On_ Transit Gateway & VPCs with full routing.txt:64: The default route table association, that means when you create attachment, the transit gateway's default route table will be associated with your attachment and default route table propagation means the VPC idea will be automatically get propagated to that default group table.
- 078_Hands On_ Transit Gateway & VPCs with restricted routing.txt:63: You want to connect VPC A to VPC B only, that means you will create a propagation for only the VPC B attachment, no other attachments.
- 078_Hands On_ Transit Gateway & VPCs with restricted routing.txt:108: If you want to connect your transit gateway to the VP and RDX, then you can also modify these routes accordingly.
- 078_Hands On_ Transit Gateway & VPCs with restricted routing.txt:111: Just remember to delete all your transit gateway and your EC2 instances when you are done with the lab.
- 079_Transit Gateway VPC Network Patterns.txt:8: So here, for example, it's a flat network we want to have.
- 079_Transit Gateway VPC Network Patterns.txt:38: For example, instance in VPC1 wants to talk to instance in VPC2 two, right?
- 080_Transit Gateway AZ considerations.txt:11: And when I say in each availability zone, it doesn't mean it's an ideal, but this is how it should be because transit gateway has a limitation where if you create the transit gateway attachment in a given AZ, then only the subnet from that AZ would be able to communicate with the transit gateway through that attachment.
- 080_Transit Gateway AZ considerations.txt:21: So when you attach VPC to the transit gateway, you must enable one or more AZs to be used by transit gateway so that the traffic can be routed to the VPC subnet in those particular AZs.
- 080_Transit Gateway AZ considerations.txt:26: So that's one important consideration when it comes to the transit gateway.
- 081_Transit Gateway AZ affinity & Appliance mode.txt:92: What you can do when you attach this VPC to the transit gateway on the shared services VPC attachment, you can enable the appliance mode.
- 081_Transit Gateway AZ affinity & Appliance mode.txt:103: Now, that's what happens when you enable the appliance mode.
- 083_Transit Gateway Connect Attachment.txt:7: And this is essential whenever you want to extend your existing SD-WAN network to AWS using the Transit Gateway.
- 083_Transit Gateway Connect Attachment.txt:16: In order to connect this appliances to the Transit Gateway before creating this GRE tunnel, there should be a transport mechanism.
- 083_Transit Gateway Connect Attachment.txt:20: And this is a case when your appliances running inside a VPC, but if your appliances are running on-premises, then you can use Direct Connect as your transport attachment.
- 083_Transit Gateway Connect Attachment.txt:46: So let's look at the first case when the VPC transport attachment is used.
- 083_Transit Gateway Connect Attachment.txt:52: Now in order for your on-premise network to connect to this VPC, you can use different mechanisms.
- 083_Transit Gateway Connect Attachment.txt:55: Now, this architecture makes sense when you have to run this virtual appliances inside AWS.
- 083_Transit Gateway Connect Attachment.txt:57: Now, you know that in order to connect Direct Connect to the Transit Gateway, you need data connect gateway with the transit weave.
- 083_Transit Gateway Connect Attachment.txt:64: And remember that whenever it talks about connecting Transit Gateway to the virtual appliances, then probably will go with one of these architectures.
- 084_Transit Gateway VPN Attachment.txt:8: Now rest of the VPN features remains almost same with some differences, which we are going to talk about soon, but ultimately, you have now all your VPN terminating on the transit gateway, and to further scale this architecture, if you have multiple branch offices, then, of course, you will have multiple VPN connections terminating on the same transit gateway, so this is one of the very popular architecture when you want to implement the hybrid connectivity between AWS VPCs and your on-premises data center network.
- 084_Transit Gateway VPN Attachment.txt:10: Now, one more additional feature that AWS VPN provides when you connect that to the transit gateway is accelerated VPN.
- 084_Transit Gateway VPN Attachment.txt:15: There are 400-plus, but the way it optimizes your network traffic is that the traffic from on-premise network goes to the nearest edge location, and from there, it is already connected to AWS backbone network, so your path to the transit gateway mainly stays on the AWS network, and small part of your network goes over the Internet, and one thing here to understand is that you can only use AWS global accelerator when you terminate your VPN connection on the transit gateway.
- 084_Transit Gateway VPN Attachment.txt:29: Only thing that you need to take care is that when you advertise the BGP parameters, for example, the local preference, the MED values, the AS path, the ASN numbers, they are exactly same if you want to enable the ECMP, right?
- 084_Transit Gateway VPN Attachment.txt:32: For example, the first half of the CIDR traffic will go through the first VPN connection and second half of the CIDR will go through the second connection, and on top of this, you can also advertise the BGP routes, which is aggregated route over both these VPN connections, so if any of the VPN connection is unhealthy or terminates, then also, your traffic is routed over the other active VPN connection, so this kind of traffic routing you can do to enable the ECMP along with the BGP routing, so what I want you to take from this is that with transit gateway and a VPN connection, you can have the ECMP, and you can have higher aggregated bandwidth.
- 085_Transit Gateway & Direct Connect.txt:9: Now, as of today, there is a limit of connecting maximum 10 VPCs, which means if you have hundreds of VPCs which you want to connect, then this architecture doesn't help.
- 085_Transit Gateway & Direct Connect.txt:25: Whenever you use Transit Gateway, there is additional charge for per GB data processed by the Transit Gateway.
- 085_Transit Gateway & Direct Connect.txt:26: So if you ask me, I'm not a great fan of using Transit Gateway when there is too much data being transferred over DX connection because there is per GB data processing charge.
- 085_Transit Gateway & Direct Connect.txt:27: So I have covered this in detail in the Direct Connect section where I have shown different scenarios where I have made some suggestion around when to use Transit Gateway and when it is not recommended to use Transit Gateway.
- 085_Transit Gateway & Direct Connect.txt:36: Now, Public VIF allows you to connect to all AWS public IPs.
- 086_Transit Gateway Multicast.txt:89: So, essentially these are the two use cases.
- 086_Transit Gateway Multicast.txt:136: Now, this group IP address is something that you designate when you create a multicast group.
- 086_Transit Gateway Multicast.txt:153: And we'll talk more about AWS RAM later when we talk about the shared transit gateways.
- 087_TGW Architecture_ Centralized egress internet.txt:17: Okay, so first use case that we will talk about is how do you implement the centralized egress access using the transit gateway?
- 087_TGW Architecture_ Centralized egress internet.txt:18: Which means all these application VPCs when they want to reach to the internet, the traffic should flow through this shared services VPC.
- 087_TGW Architecture_ Centralized egress internet.txt:41: Now in this case, you know that transit gateway tries to maintain the traffic in the same AZ in which it is originated, so if instance B, for example, here initiates the traffic, then transit gateway will send it to the NAT gateway in different AZ.
- 088_TGW Architecture_ Centralized traffic inspection with Gateway Load Balancer.txt:14: Now this is the first scenario where we want to inspect the traffic when you send the traffic from one VPC to another.
- 089_TGW Architecture_ Centralized VPC interface endpoints.txt:2: Now, in this lecture let's see how can you use Transit Gateway to centralize the VPC interface endpoint access by connecting multiple spoke VPCs to a centralized VPC, and in that VPC you will provision the VPC interface endpoint.
- 089_TGW Architecture_ Centralized VPC interface endpoints.txt:6: Just for a quick recap, interface endpoints allows you to connect to AWS services endpoints privately from your VPC.
- 089_TGW Architecture_ Centralized VPC interface endpoints.txt:15: What if we want to centralize the access?
- 089_TGW Architecture_ Centralized VPC interface endpoints.txt:16: What that means is right now, I have one VPC and I want to connect to three endpoint services, right?
- 089_TGW Architecture_ Centralized VPC interface endpoints.txt:34: Suppose you are running some application on instance A here and this application wants to connect securely to SQS API Endpoint.
- 089_TGW Architecture_ Centralized VPC interface endpoints.txt:41: And what really happens when you create a VPC endpoint into a centralized VPC is that you can enable the private DNS for that VPC endpoint.
- 089_TGW Architecture_ Centralized VPC interface endpoints.txt:50: If you want to centralize access to VPC interface endpoints but there is solution to that as well.
- 089_TGW Architecture_ Centralized VPC interface endpoints.txt:67: When you create an interface endpoint it will provide you two kinds of the DNS.
- 089_TGW Architecture_ Centralized VPC interface endpoints.txt:70: When I say target, it's a centralized VPC so that you don't have the inter AZ data transfer charges.
- 089_TGW Architecture_ Centralized VPC interface endpoints.txt:103: When transit gateway is there?
- 090_Transit Gateway vs VPC Peering.txt:2: So in this lecture I wanted to, uh, put down some differences between VPC peering and transit gateway and give you some hints towards when to use what depending on their features.
- 090_Transit Gateway vs VPC Peering.txt:52: And for example for North Virginia region, that attachment cost is $0.05 per hour and $0.02 per GB data transfer cost.
- 090_Transit Gateway vs VPC Peering.txt:56: Moreover, it does not allow you to connect VPCs to the on premise network.
- 091_Transit Gateway Sharing.txt:3: But there are certain caveats when it comes to attachments like VPN or a direct connect.
- 091_Transit Gateway Sharing.txt:12: So the user in that AWS account can perform only certain actions that you can define with these IAM permissions when you share the resources.
- 091_Transit Gateway Sharing.txt:17: Now, when you share transit gateway using RAM with other AWS account, then the other AWS account owner can connect the VPCs from that account with the transit gateway, which has been shared with that account.
- 091_Transit Gateway Sharing.txt:21: Further, if you're using a direct connect gateway to connect transit gateway to the direct connect, then you could also use direct connect gateway from other AWS account.
- 091_Transit Gateway Sharing.txt:23: Now, when a transit gateway shared with the AWS account, the other AWS account cannot really create, modify, delete the transit gateway route tables, and it cannot even enable or disability the route propagations and the associations.
- 091_Transit Gateway Sharing.txt:25: And finally, you need to make sure that when you choose the availability zone into the other VPCs which are going to connect to your transit gateway.
- 143_What is AWS Cloud WAN_.txt:6: For example, how do you connect multiple VPCs?
- 143_What is AWS Cloud WAN_.txt:30: For example, there are two different AWS region in which you have your VPCs deployed.
- 143_What is AWS Cloud WAN_.txt:53: And on top of this, if you want to connect your direct connect connections, that means you are going now hybrid.
- 143_What is AWS Cloud WAN_.txt:65: So for example, a different network layer for development or production or shared services.
- 143_What is AWS Cloud WAN_.txt:103: For example, if you create a new attachment for the VPC, you can tag that attachment.
- 143_What is AWS Cloud WAN_.txt:120: So when you create a cloud Wan you first create a AWS cloud Wan global network, which is combination of core network and transit gateways network.
- 143_What is AWS Cloud WAN_.txt:126: Now, once you deploy your network, of course, you can then create the attachment to the core network, whether you have VPCs, you have SD-Wan, you have VPN, or you want to connect your existing transit gateway.
- 143_What is AWS Cloud WAN_.txt:151: For example isolated segments.
- 144_Core Network Policy.txt:56: When we talk about the segment sharing.
- 144_Core Network Policy.txt:64: Now for this, it is important to understand that whenever you create multiple segments on the core network, this segments are isolated, so all the attachments on those particular segments can communicate with each other, but the attachment across the segments cannot.
- 144_Core Network Policy.txt:68: For example, development segment can communicate with the shared services segment.
- 144_Core Network Policy.txt:85: For example, if there is segment A that you are defining and you are sharing segment A with segment B, C, and D through the segment action, then segment A will exchange route with B, C, and D, and also B, C and D will exchange the route with segment A, but this doesn't mean that B, C, and D will communicate with each other.
- 144_Core Network Policy.txt:87: When you define the policy for segment B and C kind of right.
- 144_Core Network Policy.txt:93: So these are all important parameters you need to consider when you create the segments.
- 144_Core Network Policy.txt:95: So these things will be much clear when you actually see that in action.
- 144_Core Network Policy.txt:120: So whenever you create any attachment it will see if there is a attachment policies which matches to that rule.
- 144_Core Network Policy.txt:127: For example, this attachment can only be connected to the segment if region is x, or this is for a particular VPC id, or this attachment has a particular tag key or tag value, or it is coming from particular AWS account.
- 144_Core Network Policy.txt:129: And when you do that, basically you can define that the method of associating your attachment to the segment is a constant or it's a tag based.
- 144_Core Network Policy.txt:130: So constant means that whenever you write the rule in that, you define that.
- 144_Core Network Policy.txt:131: I'm writing this rule for a particular segment, for example development segment.
- 144_Core Network Policy.txt:136: So whenever you create the attachment you will define the tag with say environment equal to development.
- 144_Core Network Policy.txt:141: And again we will talk about this behavior when we do our exercise.
- 144_Core Network Policy.txt:142: So these are all the important parameters when you create the core network policy.
- 144_Core Network Policy.txt:150: Now, when the policy gets into the ready to execute state, it also provides you change set, which means from version 1 to 2, what all changes you are making to the policy and how it will affect your network.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:9: And we want to connect our development VPCs to the development segment and likewise for production and shared services.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:39: For example, for this North Virginia development VPC, we would have to configure the route which says how to go to the development VPC in Mumbai or Shared Services VPC in London.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:117: As I said, this will be more interesting to see when we set up our entire network.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:185: But when at the same we are saying that production can only be shared with the shared services segment.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:313: That's one difference when you add this target for the core network.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:326: So if everything is done as expected, we should be able to connect from Mumbai Dev to the North Virginia Dev instance.
- 146_Connecting Transit Gateway & Direct Connect.txt:13: So one obvious choice is you don't use the transit gateway and rather reconfigure your VPCs to connect to your segment, which are there in your new cloud Wan network.
- 146_Connecting Transit Gateway & Direct Connect.txt:18: And when you do that, it also setups the dynamic routing between the transit gateway and the core network.
- 146_Connecting Transit Gateway & Direct Connect.txt:22: For example, you could have your production segment or your development segment.
- 146_Connecting Transit Gateway & Direct Connect.txt:24: And now in order to connect your transit gateway network to the core network, you have to map the Transit Gateway route tables to the corresponding segments of your cloud Wan network.
- 146_Connecting Transit Gateway & Direct Connect.txt:32: So in order to connect your direct connect you have to use the transit VIF Direct Connect Gateway.
- 147_AWS Cloud WAN Summary.txt:10: But whenever we talk about cloud Wan, typically we are referring to the core network connections.
- 147_AWS Cloud WAN Summary.txt:15: We haven't seen this in particular, but when you create a core network, you can share that with other AWS account in the same AWS organization or across AWS organization.
- 147_AWS Cloud WAN Summary.txt:23: And another difference when you have the connect attachment is that alongside the g r e tunnel, it also supports the tunnel list protocol which is a more performant than the GRE.
- 148_VPC lattice introduction.txt:4: For example we talked about VPC peering connection.
- 148_VPC lattice introduction.txt:10: So difference is that when we talk about network to network connectivity, that means any host in one network can communicate with any host in other network.
- 148_VPC lattice introduction.txt:11: And that works well when you want to connect to networks.
- 148_VPC lattice introduction.txt:44: So clearly VPC peering is not a great solution for this use case.
- 148_VPC lattice introduction.txt:49: Okay, so even the transit gateway is not ideal for this use case.
- 149_VPC lattice components - Lattice Network, Service, Resource and more.txt:7: Now in order to connect all these different services together, you have to create the VPC lattice service network.
- 149_VPC lattice components - Lattice Network, Service, Resource and more.txt:40: And we will see this in action when we will do the exercise.
- 149_VPC lattice components - Lattice Network, Service, Resource and more.txt:63: And when the auth type is aws, IAM, then by default all the requests will be denied.
- 149_VPC lattice components - Lattice Network, Service, Resource and more.txt:66: So when one service talks to another service, there are some evaluation criteria.
- 149_VPC lattice components - Lattice Network, Service, Resource and more.txt:67: For example, the requester should have the IAM policy which allows to access the VPC lattice service.
- 150_VPC lattice network associations.txt:4: So when we say VPC lattice network association we are saying which all things can be connected to the VPC lattice network.
- 150_VPC lattice network associations.txt:12: And it is used when you have to access the VPC lattice network from some remote network.
- 150_VPC lattice network associations.txt:35: So when you create the VPC association AWS will have this IP configured.
- 150_VPC lattice network associations.txt:56: Now when you create a VPC endpoint in a VPC, as I said, IP is from the VPC are used to establish this connectivity, right.
- 151_VPC lattice traffic flow.txt:13: So very first thing when you create a service in VPC lattice, as we said there is a service discovery.
- 151_VPC lattice traffic flow.txt:55: But the best practice is to allow only to VPC lattice managed prefix list, and it pops up when you create that inbound rule in the security group.
- 152_Hands on_ VPC lattice service access with custom domain name.txt:12: For example, if you enter say service name slash EC2 then it goes to this target.
- 152_Hands on_ VPC lattice service access with custom domain name.txt:37: Now to be honest, we don't need these instances to be public, but just because we want to connect to this instance to test the connectivity.
- 152_Hands on_ VPC lattice service access with custom domain name.txt:76: So we want to connect over SSH so that we can install the web server.
- 152_Hands on_ VPC lattice service access with custom domain name.txt:214: When we associate the client VPC with the VPC lattice network.
- 154_VPC lattice common architectures.txt:3: And these architectures might give you good understanding when the problem is given to you around the VPC lattice usage in your exam.
- 154_VPC lattice common architectures.txt:44: Then the final architecture is when you want to access the VPC lattice services from the internet right now for that as well.
- 154_VPC lattice common architectures.txt:46: And now you have to expose this endpoint to the internet.
- 343_Transit Gateway.txt:2: For example, you have many VPC and you want to peer them together, then you want to establish some VPN connections and direct connect, and then you have a direct connect gateway to connect to multiple VPC at a time, and this can become very, very complicated in terms of network topology.
- 343_Transit Gateway.txt:18: So, another use case for transit gateway is to increase the bandwidth of your site-to-site VPN connection using ECMP.
- 343_Transit Gateway.txt:22: And the use case, as I said, is to create multiple site-to-site VPN connections to increase the bandwidth of your connection to AWS using a site-to-site VPN.
- 343_Transit Gateway.txt:24: So when you establish a site-to-site VPN connection there are actually two tunnels, one going forward and one going back.
- 343_Transit Gateway.txt:25: When you are connecting such a VPN into a VPC directly, both of these tunnels are used as part of one connections, but when using the transit gateway two tunnels can be used at a time, so this is why you see two lines in this diagram.
- 343_Transit Gateway.txt:27: And so, when you have four tunnels of site-to-site VPN, you are increasing the throughput of your connection which is something you cannot do if you were to connect your corporate data center directly into a VPC.
- 343_Transit Gateway.txt:32: But also, you can add more site-to-site VPN connections into transit gateway, for example two or three, to double or triple your throughputs through ECMP.
- 343_Transit Gateway.txt:34: Obviously when you do the setup, you're going to have to pay for each GB of data going through the transit gateway, so there's an added cost to this performance optimization.

### 5. Constraints / Limitations
- 075_Introduction to Transit Gateway.txt:2: Now Transit Gateway is one of the top three sections which are important for your AWS networking certification.
- 075_Introduction to Transit Gateway.txt:4: Now, having said that, it doesn't mean that other sections are not important, but most of the questions in your exam will be from these three sections.
- 075_Introduction to Transit Gateway.txt:5: So Transit Gateway is very important, and make sure that you understand everything that we discuss in this section.
- 075_Introduction to Transit Gateway.txt:18: And VPC pairing doesn't provide the transitive routing, which means if VPCA is connected to B, and B is connected to C, then A cannot communicate with the VPC C.
- 075_Introduction to Transit Gateway.txt:24: The point here is that you can't manage the network like this, right?
- 075_Introduction to Transit Gateway.txt:33: That means you can only attach the VPCs in the same region as Transit Gateways.
- 075_Introduction to Transit Gateway.txt:40: Now understanding all these attachments is very important and we are going to dive deep into every type of the architecture in this section.
- 076_Transit Gateway VPC attachments and Routing.txt:7: That should be multiple VPCs and then there is transit gateway.
- 076_Transit Gateway VPC attachments and Routing.txt:11: Now there are certain restrictions when you connect VPCs to the transit gateway and the obvious one is that VPC CIDR should not be overlapping.
- 076_Transit Gateway VPC attachments and Routing.txt:12: So you can't connect the VPCs which have the overlapping CIDRs.
- 076_Transit Gateway VPC attachments and Routing.txt:19: Now this route table governs how the traffic should flow across the attached networks.
- 076_Transit Gateway VPC attachments and Routing.txt:28: In this case the VPC CIDRs' routes are automatically propagated to the transit gateway, but then how does VPC know that the traffic which should go to say 10.1.0.0/16 should go through this VPC attachment, right?
- 076_Transit Gateway VPC attachments and Routing.txt:32: So VPC should also have the route tables and those route table could be the VPCs default route table, that is the main route table, or you can have a subnet and the route table could be of that subnet.
- 076_Transit Gateway VPC attachments and Routing.txt:33: Now, if you see there is a route 10.0.0/8, and we are saying that the traffic should go through the transit gateway.
- 076_Transit Gateway VPC attachments and Routing.txt:48: Now you can control basically how this route propagation happens, but as of now that is what is important to understand.
- 076_Transit Gateway VPC attachments and Routing.txt:49: And also remember that every VPC and the subnet route table also should have the entry and this entry has to be static.
- 077_Hands On_ Transit Gateway & VPCs with full routing.txt:6: Now, additionally, as I said, you also need to manage the route table on the subnet side of your VPC and in that you should at least have this static entry created.
- 077_Hands On_ Transit Gateway & VPCs with full routing.txt:9: That means within the VPC, you should also have the subnet, which is not shown in this architecture.
- 077_Hands On_ Transit Gateway & VPCs with full routing.txt:12: Now, ideally we should just have the private subnet in all three VPCs and then all these VPCs would be connected via the transit gateway and the traffic can float across all the VPCs.
- 077_Hands On_ Transit Gateway & VPCs with full routing.txt:13: Now for testing the connectivity, we first should log into any of EC2 machines, which are in the private subnet.
- 077_Hands On_ Transit Gateway & VPCs with full routing.txt:45: Now this is just for testing the connectivity, otherwise I can't get into any of the private EC2 machine, so I hope that it's clear.
- 077_Hands On_ Transit Gateway & VPCs with full routing.txt:50: Now from there, if I try to ping to private IP address of VPC B EC2 machine, I cannot of course, because there is no connectivity here.
- 077_Hands On_ Transit Gateway & VPCs with full routing.txt:52: So in the security group, I have allowed the ICMP protocol, that means I should be able to ping from any IP from the CIDR range, 10.0.0.0/8.
- 077_Hands On_ Transit Gateway & VPCs with full routing.txt:62: VPN ECMP support, if you are dominating your VPN connection on the transit gateway, then you can leverage maximum bandwidth up to 50 GB by using multiple VPN tunnels because as you know, VPN limit has 1.25 gbps per tunnel and without ECMP, that's the maximum limit.
- 077_Hands On_ Transit Gateway & VPCs with full routing.txt:81: Now this is important.
- 077_Hands On_ Transit Gateway & VPCs with full routing.txt:84: However, if you have the subnets which are in different AZ and you don't select that AZ at this moment, then transit gateway communication cannot happen with those subnets.
- 077_Hands On_ Transit Gateway & VPCs with full routing.txt:85: Now this is very important to understand and I'll reiterate over that in the later lectures.
- 077_Hands On_ Transit Gateway & VPCs with full routing.txt:113: Because we are saying A, that means only this is fixed and the rest can change.
- 077_Hands On_ Transit Gateway & VPCs with full routing.txt:120: So if everything is okay, I expect now the traffic should flow and you can see it started flowing to EC2 instance B.
- 077_Hands On_ Transit Gateway & VPCs with full routing.txt:130: Maybe you only want VPC A to talking to the VPC B and no communication should happen between VPC A to the C.
- 078_Hands On_ Transit Gateway & VPCs with restricted routing.txt:12: If we want to have this kind of connectivity where all these three VPCs are connected to the transit gateway but then traffic should not go from VPC A to VPC C.
- 078_Hands On_ Transit Gateway & VPCs with restricted routing.txt:14: Here you see that I have a separate route table, which is for attachment A and there is just one route table entry which says, if the traffic is going to 10.1.0.0/16, then it should go through the attachment B.
- 078_Hands On_ Transit Gateway & VPCs with restricted routing.txt:15: That means A can communicate to the B and of course attachment B should also have corresponding route for attachment A.
- 078_Hands On_ Transit Gateway & VPCs with restricted routing.txt:22: Once you do that, A can communicate with the B, B can communicate with the C but A cannot communicate with the C.
- 078_Hands On_ Transit Gateway & VPCs with restricted routing.txt:49: From there, let's try to ping to EC2 instance B. of course, I should not be able to ping but just let's verify that.
- 078_Hands On_ Transit Gateway & VPCs with restricted routing.txt:63: You want to connect VPC A to VPC B only, that means you will create a propagation for only the VPC B attachment, no other attachments.
- 078_Hands On_ Transit Gateway & VPCs with restricted routing.txt:71: If you go to the attachment B, then you should see at least two CIDR range, one for VPC A and another one for VPC C and that's where you see these two ranges and that's where you associate your route table to the attachment and then you add corresponding route to your attachment in the form of propagations.
- 078_Hands On_ Transit Gateway & VPCs with restricted routing.txt:78: Okay, I still can't reach to instance B, any guesses for this?
- 078_Hands On_ Transit Gateway & VPCs with restricted routing.txt:95: What I'm saying is that from this EC2 instance, I should be able to reach to A and C both, but for that first, I need to log into instance B.
- 078_Hands On_ Transit Gateway & VPCs with restricted routing.txt:103: From B, I'm able to reach to A and C both, but from A, I could only reach to B and not the C.
- 079_Transit Gateway VPC Network Patterns.txt:3: Or you could also have the attachment specific route table so that you get more control over where the traffic can flow and where the traffic cannot flow, right.
- 079_Transit Gateway VPC Network Patterns.txt:5: That means you control how the routing should happen within the transit gateway.
- 079_Transit Gateway VPC Network Patterns.txt:9: Flat network means all the VPCs connected to the transit gateway should be able to, you know, communicate with each other.
- 079_Transit Gateway VPC Network Patterns.txt:13: You can't have the propagated routes here.
- 079_Transit Gateway VPC Network Patterns.txt:16: Now you could always add individual entry for other VPC's address range like 10.2.0.0/16, 10.3.0.0/16 likewise, but we have aggregated all these routes into one CIDR that is 10.0.0.0/8, and then traffic should go through the transit gateway attachment.
- 079_Transit Gateway VPC Network Patterns.txt:31: So only thing that it needs to have is a route for the on premise network with the attachment of the VPN which is connected to this transit gateway, right, and the out protonation is turned on.
- 079_Transit Gateway VPC Network Patterns.txt:41: That means traffic will be dropped right there, it can't go further.
- 079_Transit Gateway VPC Network Patterns.txt:44: Now at this moment, only the traffic which is allowed from this transit gateway attachment is to 192.168.
- 080_Transit Gateway AZ considerations.txt:7: So let's see how the design should look like while using the transit gateway.
- 080_Transit Gateway AZ considerations.txt:11: And when I say in each availability zone, it doesn't mean it's an ideal, but this is how it should be because transit gateway has a limitation where if you create the transit gateway attachment in a given AZ, then only the subnet from that AZ would be able to communicate with the transit gateway through that attachment.
- 080_Transit Gateway AZ considerations.txt:15: And that's where if you need connectivity across three availability zones, then you should have transit gateway attachment created in three availability zone in your VPC.
- 080_Transit Gateway AZ considerations.txt:21: So when you attach VPC to the transit gateway, you must enable one or more AZs to be used by transit gateway so that the traffic can be routed to the VPC subnet in those particular AZs.
- 080_Transit Gateway AZ considerations.txt:24: But remember that after you enable the AZ, traffic can be routed to all subnet in that AZ only.
- 080_Transit Gateway AZ considerations.txt:25: So resources that reside in the same AZ, where there is no transit gateway attachment cannot reach to the transit gateway, right?
- 080_Transit Gateway AZ considerations.txt:26: So that's one important consideration when it comes to the transit gateway.
- 080_Transit Gateway AZ considerations.txt:27: Remember, in whichever AZ you are creating the transit gateway attachment, only the subnets from that AZ will be able to communicate to the transit gateway; other subnets will not be.
- 081_Transit Gateway AZ affinity & Appliance mode.txt:2: Now, this is a small lecture, but this is an important topic, because we have seen this coming into the new exam.
- 081_Transit Gateway AZ affinity & Appliance mode.txt:3: And this is really important to understand how transit gateway behaves with respect to the network flowing into the availability zones, right?
- 081_Transit Gateway AZ affinity & Appliance mode.txt:5: That means you can't send traffic from the subnet into the other availability zone if there is no ENI in that availability zone, right?
- 081_Transit Gateway AZ affinity & Appliance mode.txt:24: But that's not important here.
- 081_Transit Gateway AZ affinity & Appliance mode.txt:43: Now, in case, if something fails, only one AZ is affected, right?
- 081_Transit Gateway AZ affinity & Appliance mode.txt:65: Now, at this moment, transit gateway has to make a decision to which ENI in this shared services VPC it should send traffic.
- 081_Transit Gateway AZ affinity & Appliance mode.txt:68: And the route table of this subnet, in which this ENI is there, it will tell that traffic it should go to the appliance 2, which is here.
- 081_Transit Gateway AZ affinity & Appliance mode.txt:80: That means it is monitoring for the incoming traffic and it will only allow the corresponding traffic to go back from the appliance if it matches the incoming traffic, right?
- 081_Transit Gateway AZ affinity & Appliance mode.txt:93: Now, what it makes transit gateway to do is to fix only one ENI for the flow, rather than looking at which AZ it is coming from.
- 081_Transit Gateway AZ affinity & Appliance mode.txt:94: So if transit gateway knows that the traffic is coming from a particular IP address and particular port, and going to a particular IP address and a port, and with some protocol that's called flow hash algorithm, it will always, for the life of that flow, will send traffic to only that particular ENI, irrespective of which AZ the traffic has originated in.
- 081_Transit Gateway AZ affinity & Appliance mode.txt:113: This is important for the exam, because we have seen this kind of scenarios presented and you should know that appliance mode can solve this problem.
- 082_Transit Gateway Peering.txt:4: You know that transit gateways are the regional routers, which means that if you have VPCs in one region, you can connect those VPCs to the transit gateway in the same region only, which means if you need a connectivity between multiple VPCs via the transit gateway, then what you could do is rather connect these transit gateways across the AWS region.
- 082_Transit Gateway Peering.txt:11: Now, if you think to understand why you implement the transit gateway peering is that the routes that you would have to put on the transit gateway connection has to be static, and which means that you cannot have the BGP routing enabled for these two transit gateways.
- 082_Transit Gateway Peering.txt:22: That means if you don't add this entry, then these two transit gateway cannot send those traffic.
- 082_Transit Gateway Peering.txt:29: So if the scenario is given that the traffic across the region should be encrypted, then if you use any of the AWS private connectivity options like transit gateway peering or VPC peering, then the traffic is automatically encrypted, and as in bandwidth, it can support up to 50 Gbps bandwidth between these two transit gateways, so you get a fair enough bandwidth to have the high network throughput applications running across the two regions.
- 082_Transit Gateway Peering.txt:30: And finally, you should use unique ASN.
- 082_Transit Gateway Peering.txt:31: Now, this is kind of best practice, but at this moment it doesn't matter, because a BGP is not supported between transit gateways via the peering connection, but in the future, AWS will enhance the capabilities, and at that moment, maybe you would be able to set up the BGP connections, and then those autonomous system numbers should not be the blocker there for you.
- 083_Transit Gateway Connect Attachment.txt:8: And that's where it becomes important attachment to learn about.
- 083_Transit Gateway Connect Attachment.txt:16: In order to connect this appliances to the Transit Gateway before creating this GRE tunnel, there should be a transport mechanism.
- 083_Transit Gateway Connect Attachment.txt:23: In fact, for connect attachment, it is must to have the BGP peering.
- 083_Transit Gateway Connect Attachment.txt:67: Only BGP support it for the Connect attachment.
- 083_Transit Gateway Connect Attachment.txt:71: Now, if you compare this with the IPsec VPN, then IPsec VPN only provides 1.25 Gbps per connection.
- 083_Transit Gateway Connect Attachment.txt:78: And in that case, you should know that you can use Transit Gateway Connect attachment.
- 084_Transit Gateway VPN Attachment.txt:15: There are 400-plus, but the way it optimizes your network traffic is that the traffic from on-premise network goes to the nearest edge location, and from there, it is already connected to AWS backbone network, so your path to the transit gateway mainly stays on the AWS network, and small part of your network goes over the Internet, and one thing here to understand is that you can only use AWS global accelerator when you terminate your VPN connection on the transit gateway.
- 084_Transit Gateway VPN Attachment.txt:16: It is not supported if you are terminating your VPN connection on the virtual private gateway, so basically, the architecture that we had started this lecture with, so this is another important way in which you can optimize your network traffic while using site-to-site VPN with transit gateway.
- 084_Transit Gateway VPN Attachment.txt:20: Now, that's for the reason that virtual private gateway device here has the limit of 1.25 Gbps aggregated bandwidth, and you can't increase that, and at the same time, you know that VPN tunnel also has 1.25 Gbps of maximum bandwidth limit, and, in general, if you want to load balance the traffic across multiple connections, then you need to have ECMP, that is equal cost multipath, which is like, you know, sending the traffic on both the links at the same time, and virtual private gateway doesn't support the ECMP.
- 084_Transit Gateway VPN Attachment.txt:21: Now, for that reason, you can't have the higher bandwidth than 1.25 Gbps if you are terminating your VPN connection on the virtual private gateway.
- 084_Transit Gateway VPN Attachment.txt:28: Now, one more thing to understand is that though you are getting more aggregated bandwidth, the per-flow bandwidth is still limited to 1.25 Gbps Now, per flow means per TCP connection, so if you are sending, say, 100-GB file over a single TCP connection, it will go through either of these four tunnels, and every tunnel is still limited to 1.25 Gbps bandwidth, so for that TCP connection, you will still be limited to 1.25 Gbps bandwidth, but if you are sending four files at the same time, then total bandwidth could be up to 5 Gbps, so I hope that is clear, so now, in this case, we are terminating both these VPN connections on the same customer router side, but you can also terminate these VPN connections on different customer router side.
- 084_Transit Gateway VPN Attachment.txt:29: Only thing that you need to take care is that when you advertise the BGP parameters, for example, the local preference, the MED values, the AS path, the ASN numbers, they are exactly same if you want to enable the ECMP, right?
- 084_Transit Gateway VPN Attachment.txt:34: You can't use the static routing.
- 084_Transit Gateway VPN Attachment.txt:35: Okay, I hope that is clear, so as I said, we are going to talk more about the VPN and transit gateway in the VPN section as well, but in this lecture, I just wanted to touch upon these important concepts, and I hope that is clear.
- 085_Transit Gateway & Direct Connect.txt:9: Now, as of today, there is a limit of connecting maximum 10 VPCs, which means if you have hundreds of VPCs which you want to connect, then this architecture doesn't help.
- 085_Transit Gateway & Direct Connect.txt:18: And again, with respect to some limits and quotas, as of today, you can connect up to six Transit Gateways to the same Direct Connect gateway.
- 085_Transit Gateway & Direct Connect.txt:21: Now, again, don't quote me for this limit numbers, they always change, but as of today, that's how they look.
- 085_Transit Gateway & Direct Connect.txt:35: Now for that on AWS Direct Connect, you should create the Public VIF.
- 086_Transit Gateway Multicast.txt:3: So it's important to just know about what is multicast and what are the features available in Transit Gateway for supporting multicast traffic.
- 086_Transit Gateway Multicast.txt:4: And then, that should be good enough.
- 086_Transit Gateway Multicast.txt:16: And that address should be from the range 224.0.0.0 to 239.255.255.255.
- 086_Transit Gateway Multicast.txt:21: That means traffic flows from source to the destination only.
- 086_Transit Gateway Multicast.txt:28: So it's important protocol.
- 086_Transit Gateway Multicast.txt:41: That means after you create the transit gateway, you can't enable that.
- 086_Transit Gateway Multicast.txt:57: So one subnet can be part of only one multicast domain at the same time.
- 086_Transit Gateway Multicast.txt:72: That means, not necessarily you should have just transit gateway and VPC from the same AWS account.
- 086_Transit Gateway Multicast.txt:91: Now, exam perspective, few important things for you to know.
- 086_Transit Gateway Multicast.txt:94: Now, one subnet can be a part of only one multicast domain at a time.
- 086_Transit Gateway Multicast.txt:111: Only they can send the message, right.
- 086_Transit Gateway Multicast.txt:115: Additionally, multicast sender should be only Nitro System instance.
- 086_Transit Gateway Multicast.txt:121: So only a Nitro System instance can be a multicast sender.
- 086_Transit Gateway Multicast.txt:128: Further, you also need to make sure that your network ACL for the subnets and the security group for the host which are participating in the multicast domain and group, should allow the respect to traffic for IGMP protocol, as well as sending and receiving this multicast traffic.
- 086_Transit Gateway Multicast.txt:129: Now, with respect to that, if you have the network ACL configured, then you should have the inbound rules in the network ACL, should allow the IGMP protocol two traffic from 0.0.0.0/32.
- 086_Transit Gateway Multicast.txt:139: For IGMP query, you should allow the inbound traffic from 0.0.0.0/32, and also allow the inbound traffic from the remote host which is sending the inbound traffic.
- 086_Transit Gateway Multicast.txt:140: And for the outbound traffic again, for IGMP leave message, you should be able to send that message to 224.0.0.2/32.
- 086_Transit Gateway Multicast.txt:141: And similarly, for joining the group, you should be able to send the outbound message from your host to multicast group IP address.
- 086_Transit Gateway Multicast.txt:144: So that outbound traffic over UDP should also be allowed.
- 086_Transit Gateway Multicast.txt:151: So, if someone has shared this domain with you, you can't further share with other AWS accounts.
- 086_Transit Gateway Multicast.txt:154: But overall, these are the thing that you should be knowing for your exam.
- 086_Transit Gateway Multicast.txt:161: Maybe there could be a question around multicast in the exam, and with the information that we covered in this lecture, you should be able to answer that.
- 087_TGW Architecture_ Centralized egress internet.txt:15: And for your networking certification exam, these are very important architectures because I'm sure there will be questions around such scenarios.
- 087_TGW Architecture_ Centralized egress internet.txt:18: Which means all these application VPCs when they want to reach to the internet, the traffic should flow through this shared services VPC.
- 087_TGW Architecture_ Centralized egress internet.txt:21: Now, with respect to the traffic flow, the most important part here is how do you unfilter the route tables?
- 087_TGW Architecture_ Centralized egress internet.txt:45: Okay, so important thing to know about this architecture is that we have NAT gateways in each AZ, which provides high availability as well as it saves inter-AZ data transfer cost.
- 087_TGW Architecture_ Centralized egress internet.txt:47: Now, with respect to the NAT gateway performance, because we are now centralizing all the egress through a NAT gateway, it shouldn't happen that NA gateway is a bottleneck.
- 087_TGW Architecture_ Centralized egress internet.txt:48: And in that case, you should know NAT gateway performance.
- 087_TGW Architecture_ Centralized egress internet.txt:51: Now, these bandwidth limits might change in the future, but this is how it looks as of today.
- 087_TGW Architecture_ Centralized egress internet.txt:59: Now at this point there is only one route that is a default route, which goes to egress VPC attachment.
- 087_TGW Architecture_ Centralized egress internet.txt:63: So rather, if you want to allow the inter-VPC communication, you should add the route table entries right here in this particular route table.
- 088_TGW Architecture_ Centralized traffic inspection with Gateway Load Balancer.txt:15: So what we are saying is this first VPC wants to send the traffic to second VPC here, but all the traffic should go through this network appliances.
- 088_TGW Architecture_ Centralized traffic inspection with Gateway Load Balancer.txt:23: But all this traffic should be routed through this network appliances, and that's where we have just this single route.
- 088_TGW Architecture_ Centralized traffic inspection with Gateway Load Balancer.txt:25: Now is the important thing where as the traffic reaches to this transit gateway ENIs in the traffic inspection VPC, we want to send all this traffic to the Gateway Load Balancer endpoint, and that's where you have the default route, which takes traffic to this Gateway Load Balancer endpoint.
- 088_TGW Architecture_ Centralized traffic inspection with Gateway Load Balancer.txt:40: And that might reject your traffic because for symmetric flow, it should see both the original request and the return packet.
- 088_TGW Architecture_ Centralized traffic inspection with Gateway Load Balancer.txt:52: Now, if you see this appliance and Gateway Load Balancer endpoint route table, we have added one more route, which says if the traffic is going to internet, then it should go to the NAT gateway.
- 088_TGW Architecture_ Centralized traffic inspection with Gateway Load Balancer.txt:72: And more importantly, this is all about the Gateway Load Balancer because as I said, they are special.
- 088_TGW Architecture_ Centralized traffic inspection with Gateway Load Balancer.txt:75: Now, with respect to the Gateway Load Balancer, it is important that you maintain the traffic flow.
- 089_TGW Architecture_ Centralized VPC interface endpoints.txt:4: But here, as we are talking about Transit Gateway, it's important to cover this architecture because this is also something that can be asked in your exam.
- 089_TGW Architecture_ Centralized VPC interface endpoints.txt:37: Now, what essentially we want is if instance A makes an API call to SQS then that DNS resolution should be resolved to the private IP address of your VPC endpoint which is available into this centralized VPC.
- 089_TGW Architecture_ Centralized VPC interface endpoints.txt:40: So ultimately what you want is, in all these spoke VPCs if there is a DNS resolution request goes for sps.ap-south-1.amazonaws.com it should be resolved to the VPC endpoint, private IP, right?
- 089_TGW Architecture_ Centralized VPC interface endpoints.txt:46: And this is what works but that works only within this VPC, right?
- 089_TGW Architecture_ Centralized VPC interface endpoints.txt:48: So all these VPCs still cannot resolve this sqs.ap-south-1.amazonaws.com to the private IP of VPC endpoint.
- 089_TGW Architecture_ Centralized VPC interface endpoints.txt:60: And then you should also create corresponding hosted zone for other VPC endpoint services as well.
- 089_TGW Architecture_ Centralized VPC interface endpoints.txt:66: Now there are certain important things to know about the DNS and VPC interface endpoints.
- 089_TGW Architecture_ Centralized VPC interface endpoints.txt:69: Now, while these two entries, because, many a times what you would want is the traffic from a particular AZ into your spoke VPCs only goes to the VPC endpoint in that particular AZ in the target VPC.
- 089_TGW Architecture_ Centralized VPC interface endpoints.txt:82: And more importantly, you should know how to resolve the DNS names for AWS services using the privacy hosted zone.
- 089_TGW Architecture_ Centralized VPC interface endpoints.txt:97: So, in order to really look at the cost clearly you should consider all these factors.
- 089_TGW Architecture_ Centralized VPC interface endpoints.txt:98: You should consider how many attachments are there, how much data is getting processed and then ultimately should come to the decision.
- 089_TGW Architecture_ Centralized VPC interface endpoints.txt:100: You should really take that decision based on your architecture.
- 089_TGW Architecture_ Centralized VPC interface endpoints.txt:108: That means if you have limited number of VPCs you can only have up to 10 VPCs connected to the centralized VPC.
- 089_TGW Architecture_ Centralized VPC interface endpoints.txt:109: You need to check the current limit though but it was 10 earlier.
- 089_TGW Architecture_ Centralized VPC interface endpoints.txt:110: Then there is a limitation, right?
- 089_TGW Architecture_ Centralized VPC interface endpoints.txt:111: You can't connect more than that to the centralized VPC.
- 089_TGW Architecture_ Centralized VPC interface endpoints.txt:115: So, very well both the architecture will work but if you need more flexibility and there are a lot of VPCs which goes beyond the VPC pairing limitation then always go for the transit gateway.
- 090_Transit Gateway vs VPC Peering.txt:14: As of today, VPC peering has a limit of 125 peering connection per VPC.
- 090_Transit Gateway vs VPC Peering.txt:17: Again, VPC peering does not impose any bandwidth limits and you are restricted by the EC2 bandwidth basically, which is doing the data transfer.
- 090_Transit Gateway vs VPC Peering.txt:18: However, in case of transit gateway, there is a maximum limit of 50 gigabits per second per attachment referencing security group, which means if you have two VPCs and you are writing a security group rule for EC2 machine in one VPC, can you reference that security group in the security group of another VPC?
- 090_Transit Gateway vs VPC Peering.txt:32: So only the subnet, which are part of that particular AZ in which you are creating the attachment, will be able to route traffic through the transit gateway, right.
- 090_Transit Gateway vs VPC Peering.txt:33: Remember this point very important to consider.
- 090_Transit Gateway vs VPC Peering.txt:36: These are the invalid scenarios where you can't access the internet gateway via the peering connection, or Nat gateway through the peering connection, so it's not supported.
- 090_Transit Gateway vs VPC Peering.txt:41: Finally, and the most important thing the TCO how much it costs.
- 091_Transit Gateway Sharing.txt:12: So the user in that AWS account can perform only certain actions that you can define with these IAM permissions when you share the resources.
- 091_Transit Gateway Sharing.txt:14: And once that's done, all resources that you want to share will be shared with specified principle entities into AWS, and then those users or roles will only get access to the actions that you have mentioned in your permissions boundary.
- 091_Transit Gateway Sharing.txt:19: Now, a few caveats and important to know, while you use AWS Resource Access Manager to share the transit gateways, first, if you are using the site-to-site VPN attachment to the transit gateway, then you have to make sure that the VPN attachment is created in the same account as the transit gateway owner account.
- 091_Transit Gateway Sharing.txt:20: So you can't cross connect the VPN attachment across different AWS accounts.
- 091_Transit Gateway Sharing.txt:23: Now, when a transit gateway shared with the AWS account, the other AWS account cannot really create, modify, delete the transit gateway route tables, and it cannot even enable or disability the route propagations and the associations.
- 091_Transit Gateway Sharing.txt:28: Now for you or say for one account us-east-1A maybe a one availability zone, but in the same region, if there is another AWS account, then us-east-1A maybe a different availability zone, and probably AWS has done in that way because then otherwise everybody would keep launching the instances, maybe only first AZ, and that would make some kind of imbalance between resource capacity in those AZ.
- 091_Transit Gateway Sharing.txt:29: So, which means you shouldn't rely on the AZ name to identify a unique, AZ across different accounts, but rather AWS has assigned AZ IDs to the AZ and those remains constant irrespective of different AWS account.
- 091_Transit Gateway Sharing.txt:30: So instead of us-east-1A, you should look at the AZ ID and which could look like use1-az1, so us-east-1-az1.
- 091_Transit Gateway Sharing.txt:34: And this is important because you know transit gateway has AZ affinity.
- 091_Transit Gateway Sharing.txt:37: It's a small topic, but important to know that you can share transit gateways across AWS accounts and AWS organizations as well.
- 143_What is AWS Cloud WAN_.txt:12: So often it is required that you have one single pane of network management.
- 143_What is AWS Cloud WAN_.txt:52: So as many region you will onboard those many peering connection will be required.
- 143_What is AWS Cloud WAN_.txt:85: But we are focusing only on the core network because that's what real cloud Wan is.
- 143_What is AWS Cloud WAN_.txt:134: And they cannot communicate with the production network.
- 144_Core Network Policy.txt:2: So this is one of the most important lecture in this section, because everything that you do in cloud Wan is defined by the core network policy.
- 144_Core Network Policy.txt:25: And this is the most important setting I would say because accordingly the core network will set up the core network edge that is C and E into every region.
- 144_Core Network Policy.txt:26: Now, if your company operates in, say, three regions, then you will only select those three edge locations.
- 144_Core Network Policy.txt:32: Next you can define the inside Cidr blocks and these are required if you are connecting the connect attachment to the core network edge.
- 144_Core Network Policy.txt:36: So these are a few important parameters that you should know that you can provide for your core network.
- 144_Core Network Policy.txt:37: Okay, so after you define the basic parameters for the core network, the next most important thing in your configuration is defining the segments and the segment policy.
- 144_Core Network Policy.txt:43: But maybe there is a situation where you want, say, a production segment available only in couple of regions, because maybe that's where only you deploy your production workloads.
- 144_Core Network Policy.txt:45: So you can this way just enable the segment for a particular set of regions only.
- 144_Core Network Policy.txt:52: In that case, you can set this parameter to true and then attachment cannot communicate with each other.
- 144_Core Network Policy.txt:57: Next you can enable the required attachment acceptance attribute to true or false.
- 144_Core Network Policy.txt:64: Now for this, it is important to understand that whenever you create multiple segments on the core network, this segments are isolated, so all the attachments on those particular segments can communicate with each other, but the attachment across the segments cannot.
- 144_Core Network Policy.txt:71: I shouldn't be sharing my segment with every other segment out there on the core network, and that's where this allow or deny list will help you control that behavior.
- 144_Core Network Policy.txt:75: That means you cannot provide both allow or deny lists at the same time.
- 144_Core Network Policy.txt:76: But just remember that allow and denialist only makes sense if you are going to share the segments.
- 144_Core Network Policy.txt:93: So these are all important parameters you need to consider when you create the segments.
- 144_Core Network Policy.txt:103: Now, with respect to the transit gateway, it supports only the GRE tunnel, but AWS cloud Wan also supports the tunnel less protocol, which is much more performant than the GRE.
- 144_Core Network Policy.txt:123: And then you have the required acceptance parameter similar to the segment one.
- 144_Core Network Policy.txt:124: And this takes only in the effect if you have disabled this at the segment level.
- 144_Core Network Policy.txt:127: For example, this attachment can only be connected to the segment if region is x, or this is for a particular VPC id, or this attachment has a particular tag key or tag value, or it is coming from particular AWS account.
- 144_Core Network Policy.txt:134: But if you want to write a generic rule then you can define that the segment should be the value of particular tag key.
- 144_Core Network Policy.txt:142: So these are all the important parameters when you create the core network policy.
- 144_Core Network Policy.txt:151: So this is a good time where network administrators should carefully inspect what are the changes this policy is going to make, and then approve that change and apply the change into live environment.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:3: And more importantly we will see how to create the cloud Wan segments, how to create attachments and how to configure the routing between the segments.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:14: So this connectivity should not work.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:20: Now this is typically required if shared services segment has kind of, you know, centralized egress kind of routing configured or it connects your hybrid network, then typically you will see this kind of architecture, right?
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:52: But otherwise if you just look at this architecture you should be able to implement the same.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:63: And more important is their Cidr ranges.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:141: Typically you should refresh this page.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:167: And what we really want is that, you know, we should be able to control which segments can share routes with each other.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:171: The development segment should be able to be shared only with the shared services segment.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:175: We want that the production segment can only be shared with the shared services segment.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:177: I don't know why, but I would have expected that I should select this setting.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:180: And in the shared services segment we want to make sure that this is only shared with the development and production.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:185: But when at the same we are saying that production can only be shared with the shared services segment.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:187: This segment is available only in few regions.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:188: So if you want to do that, then you can select only couple of you know edge locations.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:191: Next and most important thing is the segment actions which tells us which segments we want to share with each other.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:195: But development and production cannot communicate with each other.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:206: So it should be with the tag value with say environment.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:212: And here the environment should be production.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:215: So typically you should have this kind of, you know, rules if it doesn't matches any of the previous rules.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:238: And the next important thing is to create the attachments.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:244: And the most important part is you need to put right tag so that this attachment can be connected to the development segment.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:265: So it should tell us how the entire setup looks like.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:278: Now another important thing to see is these routes.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:288: Without that, you cannot communicate with each other.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:305: Now you must be wondering that there is already this 16 route, but as you know, the longest prefix match takes the precedence.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:326: So if everything is done as expected, we should be able to connect from Mumbai Dev to the North Virginia Dev instance.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:340: And we are saying if the traffic is going to the development sides then it should be through the core network.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:342: Then it should be through the core network and save the changes.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:347: And of course it shouldn't work because segments are not shared.
- 146_Connecting Transit Gateway & Direct Connect.txt:40: So here I just wanted to cover these two important architectures.
- 147_AWS Cloud WAN Summary.txt:3: And this is something also important to know for your exam.
- 147_AWS Cloud WAN Summary.txt:25: And finally, as of today, you can't directly connect your direct connect connection to the cloud Wan, but for that, you have to use Transit Gateway in the middle.
- 148_VPC lattice introduction.txt:13: But what if you only want point to point connectivity between the applications?
- 148_VPC lattice introduction.txt:15: The ideal way would be where application can only communicate with only required application.
- 148_VPC lattice introduction.txt:20: Further, Amazon VPC lattice provides the secure and consistent connectivity without you required to have, say, VPC peering or transit gateway.
- 149_VPC lattice components - Lattice Network, Service, Resource and more.txt:67: For example, the requester should have the IAM policy which allows to access the VPC lattice service.
- 149_VPC lattice components - Lattice Network, Service, Resource and more.txt:70: Further VPC lattice service network or the individual service auth policy should explicitly allow the access to the requester.
- 149_VPC lattice components - Lattice Network, Service, Resource and more.txt:78: Whereas if you see this policy, we are saying that you can only invoke the Get method for this particular service.
- 149_VPC lattice components - Lattice Network, Service, Resource and more.txt:79: And for that the requester or a principal should be having this IAM role.
- 150_VPC lattice network associations.txt:3: And this is one of the important lecture in this section.
- 150_VPC lattice network associations.txt:36: And this particular local link IP is accessible only from within the VPC.
- 150_VPC lattice network associations.txt:37: Which means if there is another VPC which is peer to this VPC, it cannot access this IP address.
- 150_VPC lattice network associations.txt:38: And that's where only client inside this VPC can access the VPC lattice service network.
- 150_VPC lattice network associations.txt:64: Now before we stop for this lecture I just want to bring up an important point.
- 150_VPC lattice network associations.txt:75: And at the same time service B can only respond to the request from service A.
- 150_VPC lattice network associations.txt:78: So this is very important to understand because many a times people will just set this up and they expect that all services should be able to communicate with each other by default.
- 151_VPC lattice traffic flow.txt:27: Is accessible only from within this VPC.
- 151_VPC lattice traffic flow.txt:38: So in this you should have this security group rules added so that traffic can flow from this client to this local link address okay.
- 151_VPC lattice traffic flow.txt:42: But if the auth policy is set to aws IAM, then there should be explicit allow statement for this traffic to flow right.
- 151_VPC lattice traffic flow.txt:52: Now this security group should allow the inbound traffic from VPC lattice network Cidr range.
- 151_VPC lattice traffic flow.txt:55: But the best practice is to allow only to VPC lattice managed prefix list, and it pops up when you create that inbound rule in the security group.
- 152_Hands on_ VPC lattice service access with custom domain name.txt:24: And to be honest just looking at this architecture you should be able to implement this.
- 152_Hands on_ VPC lattice service access with custom domain name.txt:27: Now a few interesting thing here that you should note is that we are creating both the client VPC and the application VPC with the same Cidr range.
- 152_Hands on_ VPC lattice service access with custom domain name.txt:87: Now this is very important step so don't forget about that.
- 152_Hands on_ VPC lattice service access with custom domain name.txt:94: And it should be client VPC right.
- 152_Hands on_ VPC lattice service access with custom domain name.txt:122: And as I said we just wanted the HTTP connectivity from outside only for testing whether web server is running or not.
- 152_Hands on_ VPC lattice service access with custom domain name.txt:124: We can't access HTTP service from outside.
- 152_Hands on_ VPC lattice service access with custom domain name.txt:210: And now we will do the important thing that is creating the VPC lattice network.
- 152_Hands on_ VPC lattice service access with custom domain name.txt:213: And the important one is creating the security group.
- 152_Hands on_ VPC lattice service access with custom domain name.txt:218: So it should accept the HTTP traffic from the client VPC Cidr.
- 152_Hands on_ VPC lattice service access with custom domain name.txt:227: And this should be in the client VPC.
- 152_Hands on_ VPC lattice service access with custom domain name.txt:228: And we need to add inbound rule which says for the HTTP traffic it should allow the client VPC Cidr range which is ten dot ten .00 slash 16.
- 152_Hands on_ VPC lattice service access with custom domain name.txt:255: So we should see this VPC right.
- 152_Hands on_ VPC lattice service access with custom domain name.txt:267: Rather we should go to the services and select the app service.
- 152_Hands on_ VPC lattice service access with custom domain name.txt:268: And here we should be able to see the end point of this service.
- 152_Hands on_ VPC lattice service access with custom domain name.txt:270: And if I go back to the putty session, if I do this should it work or not.
- 152_Hands on_ VPC lattice service access with custom domain name.txt:274: Because by default the target group will send the traffic to this particular instance, but which also means we should be able to at least access the Lambda service, right?
- 152_Hands on_ VPC lattice service access with custom domain name.txt:285: And in the inbound rule we should add HTTP traffic.
- 152_Hands on_ VPC lattice service access with custom domain name.txt:286: And do you know what should be the source Cidr range.
- 152_Hands on_ VPC lattice service access with custom domain name.txt:300: Should it work or not.
- 152_Hands on_ VPC lattice service access with custom domain name.txt:306: And it should be pointing as a c name To our domain name of the lattice service.
- 152_Hands on_ VPC lattice service access with custom domain name.txt:308: I think it did not get copied properly, but it should be something like this, right?
- 152_Hands on_ VPC lattice service access with custom domain name.txt:332: Now if you just go or log in to an EC2 instance, then from there you cannot access the VPC lattice service.
- 152_Hands on_ VPC lattice service access with custom domain name.txt:336: So from the app EC2 instance, you should be able to access the VPC lattice service.
- 152_Hands on_ VPC lattice service access with custom domain name.txt:342: Just last and most important thing clean up everything that you created.
- 154_VPC lattice common architectures.txt:7: So it should be very easy for you to understand right.
- 154_VPC lattice common architectures.txt:13: Now important thing here to look at these arrows.
- 154_VPC lattice common architectures.txt:28: The point is, you should be able to access the private IP of this VPC endpoint from your on premises network.
- 155_VPC lattice section summary.txt:18: So you should first create that VPC endpoint in the ingress VPC.
- 155_VPC lattice section summary.txt:27: In that case you must have the allow permission for the user or the client to access the VPC lattice network or the services.
- 343_Transit Gateway.txt:15: Well, you need to create route tables for your transit gateway to limit which VPC can talk to another, which connection have access to each other and so on.
- 343_Transit Gateway.txt:17: So, as I said, it works with direct connect gateway and VPN connections, and it is the only service in AWS that supports IP multicast, so if you see IP multicast at the exam, just know that it is transit gateway you have to use.
- 343_Transit Gateway.txt:27: And so, when you have four tunnels of site-to-site VPN, you are increasing the throughput of your connection which is something you cannot do if you were to connect your corporate data center directly into a VPC.
- 343_Transit Gateway.txt:28: So, if you do a VPN to a virtual private gateway, you get one tunnel, in fact one connection into one VPC, and this connection gives you 1.25 Gbps as the maximum throughput, and you are limited.

### 6. Patterns / Architectures
- 075_Introduction to Transit Gateway.txt:6: And one more thing that I want to mention at this point is that it is difficult to just understand the Transit Gateway and all its features without understanding the Direct Connect and the site-to-site VPN, because in reality all these three components typically work together to build some architecture.
- 075_Introduction to Transit Gateway.txt:20: Now that complicates this architecture a lot.
- 075_Introduction to Transit Gateway.txt:26: And that's where AWS introduced Transit Gateway, which greatly simplifies this architecture to as simple as this.
- 075_Introduction to Transit Gateway.txt:35: And again, we are going to dive deep into this architecture.
- 075_Introduction to Transit Gateway.txt:40: Now understanding all these attachments is very important and we are going to dive deep into every type of the architecture in this section.
- 075_Introduction to Transit Gateway.txt:42: And finally, we are going to cover lots of architecture.
- 075_Introduction to Transit Gateway.txt:44: So for example, you have a lot of spoke VPCs and you want to allow the internet connection through the Transit Gateway, through the centralized VPC.
- 075_Introduction to Transit Gateway.txt:46: Now all those kind of scenarios can be implemented using the Transit Gateway centralized architecture.
- 075_Introduction to Transit Gateway.txt:47: And in this section we are going to cover all these architectures.
- 075_Introduction to Transit Gateway.txt:53: So with that, just wanted to give you a glimpse of some of these architectures that we are going to see in this.
- 076_Transit Gateway VPC attachments and Routing.txt:6: Now the architecture looks very simple.
- 076_Transit Gateway VPC attachments and Routing.txt:10: Now, in this architecture I'm showing you three attachments and there is a centralized transit gateway.
- 077_Hands On_ Transit Gateway & VPCs with full routing.txt:9: That means within the VPC, you should also have the subnet, which is not shown in this architecture.
- 077_Hands On_ Transit Gateway & VPCs with full routing.txt:10: So let's look at the actual lab architecture rather.
- 077_Hands On_ Transit Gateway & VPCs with full routing.txt:11: So I have just modified this architecture a little.
- 077_Hands On_ Transit Gateway & VPCs with full routing.txt:23: So this is what the architecture would look like, now let's set this up.
- 077_Hands On_ Transit Gateway & VPCs with full routing.txt:93: Okay, now if you'll go back to your architecture, you see here, we have done most of it.
- 077_Hands On_ Transit Gateway & VPCs with full routing.txt:104: Let's look at the architecture again.
- 077_Hands On_ Transit Gateway & VPCs with full routing.txt:105: So this is my architecture and you'll notice that though I have this route table here and everything set up, my security groups are good, I'm into this EC2 instance A here, but still I'm not able to ping to EC2 instance B.
- 077_Hands On_ Transit Gateway & VPCs with full routing.txt:128: So let me go back to the architecture.
- 077_Hands On_ Transit Gateway & VPCs with full routing.txt:136: I hope you would be able to implement this on your own just by looking at this architecture, right?
- 078_Hands On_ Transit Gateway & VPCs with restricted routing.txt:80: If you go back to the architecture diagram, we just modified the route tables of the attachments but we also need to modify this subnet route table and we need to tell that the traffic is going to 10.0.0.0/8 has to go through the attachment which VPC has.
- 078_Hands On_ Transit Gateway & VPCs with restricted routing.txt:113: Thanks for watching and we'll continue our discussion for the transit gateway with the different architectures that can evolve using the transit gateway and optimize network connectivities.
- 079_Transit Gateway VPC Network Patterns.txt:22: Now sometimes we need segmented network, which means we want our VPCs to be communicating with maybe your on premise network, but we don't want VPCs to communicate with each other, right?
- 079_Transit Gateway VPC Network Patterns.txt:47: So ultimately this allows you to have this kind of segmented network.
- 079_Transit Gateway VPC Network Patterns.txt:48: And there will be more architectures that we will explore as we learn more components and how transit gateway can connect to Direct Connect, third party appliances, and further networking components.
- 080_Transit Gateway AZ considerations.txt:9: Now, if you see this architecture, there are public subnets, there are private subnets, and I also have a separate set of subnets for connectivity to the transit gateway.
- 080_Transit Gateway AZ considerations.txt:29: And now we'll see some more architectures for the transit gateway.
- 081_Transit Gateway AZ affinity & Appliance mode.txt:11: And on the right side, you have shared services VPC, in which you can deploy network appliances or firewalls so that you can monitor, maybe, east-west traffic which is flowing between these two VPCs on the left side.
- 081_Transit Gateway AZ affinity & Appliance mode.txt:22: From there, with the route tables, of course, it will go to the shared services VPC ENI.
- 081_Transit Gateway AZ affinity & Appliance mode.txt:65: Now, at this moment, transit gateway has to make a decision to which ENI in this shared services VPC it should send traffic.
- 081_Transit Gateway AZ affinity & Appliance mode.txt:83: Again, B will send traffic to the ENI in the same AZ to the transit gateway, to the transit gateway ENI in AZ2, now, in the appliance VPC, or a shared services VPC, and it will go to the appliance B.
- 081_Transit Gateway AZ affinity & Appliance mode.txt:92: What you can do when you attach this VPC to the transit gateway on the shared services VPC attachment, you can enable the appliance mode.
- 082_Transit Gateway Peering.txt:33: We are going to see interesting network architectures leveraging transit gateways, but little later, because we need to cover other topic first, and then we'll put all things together to see how transit gateway peering can be used in different ways.
- 083_Transit Gateway Connect Attachment.txt:13: And we'll talk about that architecture as well.
- 083_Transit Gateway Connect Attachment.txt:24: Now, if you look at this architecture here.
- 083_Transit Gateway Connect Attachment.txt:41: And this is what is shown in this architecture.
- 083_Transit Gateway Connect Attachment.txt:45: So architecture will be something similar to what you see here, but in case of Direct Connect, your appliances are running in on-premises network.
- 083_Transit Gateway Connect Attachment.txt:55: Now, this architecture makes sense when you have to run this virtual appliances inside AWS.
- 083_Transit Gateway Connect Attachment.txt:63: So these are two different architectures for connect attachment.
- 083_Transit Gateway Connect Attachment.txt:64: And remember that whenever it talks about connecting Transit Gateway to the virtual appliances, then probably will go with one of these architectures.
- 084_Transit Gateway VPN Attachment.txt:5: Then those many VPN connections needs to be maintained, and as you might have guessed already, this network architecture can be greatly simplified by using the transit gateway, so what you can rather do is instead of connecting multiple VPCs or different VPN connections, you just add the transit gateway.
- 084_Transit Gateway VPN Attachment.txt:8: Now rest of the VPN features remains almost same with some differences, which we are going to talk about soon, but ultimately, you have now all your VPN terminating on the transit gateway, and to further scale this architecture, if you have multiple branch offices, then, of course, you will have multiple VPN connections terminating on the same transit gateway, so this is one of the very popular architecture when you want to implement the hybrid connectivity between AWS VPCs and your on-premises data center network.
- 084_Transit Gateway VPN Attachment.txt:16: It is not supported if you are terminating your VPN connection on the virtual private gateway, so basically, the architecture that we had started this lecture with, so this is another important way in which you can optimize your network traffic while using site-to-site VPN with transit gateway.
- 084_Transit Gateway VPN Attachment.txt:17: Okay, so with that, now let's look at another benefit of using the VPN with transit gateway, and this time, it is about increasing the total aggregated bandwidth between the on-premise network and AWS, so going back to our original architecture where we had the VPC with virtual private gateway or VPN gateway, and you could connect directly to the customer gateway.
- 084_Transit Gateway VPN Attachment.txt:26: Now, if you want to calculate the total bandwidth or, say, total effective bandwidth, you know that every VPN connection has two IPsec tunnels, and every tunnel has the maximum bandwidth of 1.25 Gbps, so effective bandwidth out of this network architecture will be up to 5 Gbps.
- 084_Transit Gateway VPN Attachment.txt:30: Now, with that, we will slightly change this architecture, and now we have two different routers, and suppose your corporate data center has the CIDR of 192.168.0.0/24.
- 085_Transit Gateway & Direct Connect.txt:4: Actually, we have covered the Transit Gateway scenarios and architectures in very, very detail, in the Direct Connect section.
- 085_Transit Gateway & Direct Connect.txt:9: Now, as of today, there is a limit of connecting maximum 10 VPCs, which means if you have hundreds of VPCs which you want to connect, then this architecture doesn't help.
- 085_Transit Gateway & Direct Connect.txt:11: So in that case, the architecture looks a little different.
- 085_Transit Gateway & Direct Connect.txt:17: So this architecture provides you that scale.
- 085_Transit Gateway & Direct Connect.txt:22: Okay, so this is much better architecture with respect to the scalability, again, they can be across different AWS account.
- 085_Transit Gateway & Direct Connect.txt:24: Okay, now before we move on to the next architecture, just I wanted to make a small comment.
- 085_Transit Gateway & Direct Connect.txt:29: Okay, now one more architecture, and this is with respect to the security of the network.
- 085_Transit Gateway & Direct Connect.txt:30: Now, if you see this architecture, all the traffic from on-premises, which is reaching to VPC is going unencrypted.
- 085_Transit Gateway & Direct Connect.txt:31: But maybe some enterprises have the compliance requirement to have the traffic encrypted at layer three or layer four, and in that case, this architecture doesn't support that.
- 086_Transit Gateway Multicast.txt:50: So now, let's look at how the multicast traffic flows into the VPC or how the architecture looks like, right.
- 086_Transit Gateway Multicast.txt:51: So this is a simple architecture that is a VPC.
- 086_Transit Gateway Multicast.txt:63: And then, you have to also assign the class D address to your multicast group, as we just spoken about.
- 086_Transit Gateway Multicast.txt:159: And we have seen that architecture, how it works.
- 087_TGW Architecture_ Centralized egress internet.txt:3: Now with this knowledge, we can definitely build lot of interesting architectures, and then these architectures can support different network routing scenarios.
- 087_TGW Architecture_ Centralized egress internet.txt:4: Now, one of such architecture is centralize the networking access through transit gateway, and you will typically come across this kind of architecture in the enterprises where there are a lot of VPCs.
- 087_TGW Architecture_ Centralized egress internet.txt:6: And typically for that you will have a shared services VPC and all the traffic going to the internet or to other VPCs.
- 087_TGW Architecture_ Centralized egress internet.txt:7: You can route through this shared services VPC.
- 087_TGW Architecture_ Centralized egress internet.txt:9: On the left side you have application VPCs, and on the right side you have shared services VPC.
- 087_TGW Architecture_ Centralized egress internet.txt:11: And now if you want to have centralized egress access, then all the traffic will be routed through this shared services VPC.
- 087_TGW Architecture_ Centralized egress internet.txt:12: So any of the application VPCs doesn't have their own internet gateway, but rather all the traffic to internet is routed to this shared services VPC.
- 087_TGW Architecture_ Centralized egress internet.txt:13: And similarly, you can also monitor all the traffic, which is going to internet or any traffic that flows between the VPCs through this network appliances, which you can deploy in shared services VPC.
- 087_TGW Architecture_ Centralized egress internet.txt:14: So here in next two to three lectures, we are going to talk about all such architectures.
- 087_TGW Architecture_ Centralized egress internet.txt:15: And for your networking certification exam, these are very important architectures because I'm sure there will be questions around such scenarios.
- 087_TGW Architecture_ Centralized egress internet.txt:16: So make sure that you understand all these architectures well enough.
- 087_TGW Architecture_ Centralized egress internet.txt:18: Which means all these application VPCs when they want to reach to the internet, the traffic should flow through this shared services VPC.
- 087_TGW Architecture_ Centralized egress internet.txt:19: Okay, so architecture will look something like this.
- 087_TGW Architecture_ Centralized egress internet.txt:25: Now, typically all this spoke VPC attachment will have a common route table because routing requirements are the same.
- 087_TGW Architecture_ Centralized egress internet.txt:43: So this is better architecture where you are leveraging multiple availability zones.
- 087_TGW Architecture_ Centralized egress internet.txt:45: Okay, so important thing to know about this architecture is that we have NAT gateways in each AZ, which provides high availability as well as it saves inter-AZ data transfer cost.
- 087_TGW Architecture_ Centralized egress internet.txt:54: So this is the architecture.
- 087_TGW Architecture_ Centralized egress internet.txt:66: It doesn't go through this shared services VPC.
- 087_TGW Architecture_ Centralized egress internet.txt:67: But in this architecture we did not want to allow inter-VPC communication, and that's where we had added that black hole route.
- 087_TGW Architecture_ Centralized egress internet.txt:69: Okay, so this is one of the architecture that is very common, and we have seen questions around this.
- 087_TGW Architecture_ Centralized egress internet.txt:74: So if you make your calculation, it doesn't really make a lot of difference, but I would say this kind of architecture is more beneficial if you want to have more control over your traffic.
- 087_TGW Architecture_ Centralized egress internet.txt:75: And that's where you will see this kind of architecture more in the enterprises where there are hundreds of VPCs, and there is a separate team who manages the transit gateway and shared services VPC.
- 088_TGW Architecture_ Centralized traffic inspection with Gateway Load Balancer.txt:24: Okay, now, if you talk about the route table for this attachment, then it is very similar to the earlier architecture where hidden traffic will go to the respective VPCs, right, so I hope that is clear.
- 088_TGW Architecture_ Centralized traffic inspection with Gateway Load Balancer.txt:45: Now, let's add some more complexity to this architecture.
- 088_TGW Architecture_ Centralized traffic inspection with Gateway Load Balancer.txt:48: So our architecture now will look something like this.
- 088_TGW Architecture_ Centralized traffic inspection with Gateway Load Balancer.txt:69: So I know that there are a lot of route tables in this architecture, but if you carefully look at the traffic flow, I'm sure you will understand why these routes are configured in this fashion.
- 088_TGW Architecture_ Centralized traffic inspection with Gateway Load Balancer.txt:71: Okay, with that, let me just cover few more things around this architecture.
- 088_TGW Architecture_ Centralized traffic inspection with Gateway Load Balancer.txt:73: So in this architecture, we used Gateway Load Balancer endpoint, which ultimately routes traffic to the Gateway Load Balancer, and then we don't need to do anything further for traffic engineering.
- 088_TGW Architecture_ Centralized traffic inspection with Gateway Load Balancer.txt:79: Now, if you're interested in diving further deep into this architecture, then I'll suggest to go through this interesting blog on AWS site, which walks you through all the steps to configure this network architecture.
- 088_TGW Architecture_ Centralized traffic inspection with Gateway Load Balancer.txt:81: So we will stop here for this lecture, and we are going to talk about more such architecture in the following lecture.
- 089_TGW Architecture_ Centralized VPC interface endpoints.txt:2: Now, in this lecture let's see how can you use Transit Gateway to centralize the VPC interface endpoint access by connecting multiple spoke VPCs to a centralized VPC, and in that VPC you will provision the VPC interface endpoint.
- 089_TGW Architecture_ Centralized VPC interface endpoints.txt:3: Now, we have a dedicated section where we learn about interface endpoints, why they're used and different architectures.
- 089_TGW Architecture_ Centralized VPC interface endpoints.txt:4: But here, as we are talking about Transit Gateway, it's important to cover this architecture because this is also something that can be asked in your exam.
- 089_TGW Architecture_ Centralized VPC interface endpoints.txt:14: But now look at the architecture here.
- 089_TGW Architecture_ Centralized VPC interface endpoints.txt:17: As shown in this architecture.
- 089_TGW Architecture_ Centralized VPC interface endpoints.txt:27: What we can do is instead of provisioning this VPC endpoint into every VPC, let's call them spoke VPCs.
- 089_TGW Architecture_ Centralized VPC interface endpoints.txt:28: You provision these endpoints in a centralized VPC, and then through transit gateway, you connect all this spoke VPC to this centralized VPC.
- 089_TGW Architecture_ Centralized VPC interface endpoints.txt:29: And in this case we just need to create now three VPC endpoints for three AWS services endpoint, and then all the spoke VPCs can privately access the endpoint services.
- 089_TGW Architecture_ Centralized VPC interface endpoints.txt:30: So transit gateway greatly simplifies this architecture.
- 089_TGW Architecture_ Centralized VPC interface endpoints.txt:40: So ultimately what you want is, in all these spoke VPCs if there is a DNS resolution request goes for sps.ap-south-1.amazonaws.com it should be resolved to the VPC endpoint, private IP, right?
- 089_TGW Architecture_ Centralized VPC interface endpoints.txt:47: It is not resolvable in the spoke VPCs.
- 089_TGW Architecture_ Centralized VPC interface endpoints.txt:63: And ultimately after you create this hosted zone you attach these hosted zones to all these spoke VPCs.
- 089_TGW Architecture_ Centralized VPC interface endpoints.txt:64: Now, as soon as you attach this private hosted zones to the spoke VPCs, now within the spoke VPCs you can resolve the DNS name for AWS public service.
- 089_TGW Architecture_ Centralized VPC interface endpoints.txt:65: And that means if any application running inside this spoke VPCs can automatically resolve to the private IP address of your VPC endpoint.
- 089_TGW Architecture_ Centralized VPC interface endpoints.txt:69: Now, while these two entries, because, many a times what you would want is the traffic from a particular AZ into your spoke VPCs only goes to the VPC endpoint in that particular AZ in the target VPC.
- 089_TGW Architecture_ Centralized VPC interface endpoints.txt:77: Now, again, as I said, in order to save some inter-AZ transfer cost into the spoke VPCs you could use this easy, specific DNS name instead of region specific DNS name.
- 089_TGW Architecture_ Centralized VPC interface endpoints.txt:83: Okay now let's also apply the cost lens to the same architecture.
- 089_TGW Architecture_ Centralized VPC interface endpoints.txt:84: Now, let's go back to the original architecture where we had three VPC interface endpoints into each VPC.
- 089_TGW Architecture_ Centralized VPC interface endpoints.txt:100: You should really take that decision based on your architecture.
- 089_TGW Architecture_ Centralized VPC interface endpoints.txt:101: Okay, now, one more architecture that I wanted to discuss here is instead of using transit gateways you could also use VPC peering connections between spoke VPCs and the centralized VPC.
- 089_TGW Architecture_ Centralized VPC interface endpoints.txt:112: And if you look at this architecture, this very well works and you would have to do the exact same thing that you did for the DNS solution.
- 089_TGW Architecture_ Centralized VPC interface endpoints.txt:113: That means you would've to create a private hosted zone and then associate that with all the spoke VPCs.
- 089_TGW Architecture_ Centralized VPC interface endpoints.txt:115: So, very well both the architecture will work but if you need more flexibility and there are a lot of VPCs which goes beyond the VPC pairing limitation then always go for the transit gateway.
- 089_TGW Architecture_ Centralized VPC interface endpoints.txt:117: And I hope you understand how the centralized access to the VPC interface endpoint can be managed using the transit gateways and you know the pros and cons of the architectures that we discussed today.
- 090_Transit Gateway vs VPC Peering.txt:4: So VPC peering and transit gateway with respect to the architecture.
- 090_Transit Gateway vs VPC Peering.txt:9: But in case of Transit Gateway, it's a hub and spoke model where you can attach up to 5000 VPCs or other connection to the transit gateway with respect to the hybrid connectivity.
- 090_Transit Gateway vs VPC Peering.txt:13: However, Transit Gateway can handle many number of VPCs, and it actually simplifies your network architecture with respect to the scale.
- 143_What is AWS Cloud WAN_.txt:20: So we will also see how that network looks like and what kind of different views you can have, and how you can monitor the performance and all the network links into your network architecture.
- 143_What is AWS Cloud WAN_.txt:45: So I hope this architecture is pretty familiar to you.
- 143_What is AWS Cloud WAN_.txt:55: We have already seen this architecture, and on top of which, for high availability, you might want to have the VPN connection and SD-Wan connections as well.
- 143_What is AWS Cloud WAN_.txt:64: That means you might have different network segments.
- 143_What is AWS Cloud WAN_.txt:65: So for example, a different network layer for development or production or shared services.
- 143_What is AWS Cloud WAN_.txt:95: Now those are called network segments.
- 143_What is AWS Cloud WAN_.txt:97: So you can have development network production network shared services network the way you want your network segmentation.
- 143_What is AWS Cloud WAN_.txt:99: And for that network segment of course, you can define the actions as in which network segment can share routes with each other, which are isolated network segments.
- 143_What is AWS Cloud WAN_.txt:100: All that is possible now after you create the segments, of course, you need to attach your VPCs and your VPN to these segments so that they can communicate with each other.
- 143_What is AWS Cloud WAN_.txt:118: So you have this kind of architecture.
- 143_What is AWS Cloud WAN_.txt:135: And for that as I said, you can create different routing domains, also called as segments.
- 143_What is AWS Cloud WAN_.txt:136: And then you can create the attachment which are specific to that segment.
- 143_What is AWS Cloud WAN_.txt:137: So you connect all development VPCs to the development segment.
- 143_What is AWS Cloud WAN_.txt:138: Similarly, prod VPC to the prod segment and all your hybrid networks to the shared services segment.
- 143_What is AWS Cloud WAN_.txt:139: Now, please understand that the segmentation that I have shown here is just an example.
- 143_What is AWS Cloud WAN_.txt:140: And typically for your organization, you would have different requirement with respect to how you manage your network segments.
- 143_What is AWS Cloud WAN_.txt:143: And all these attachments can be automatically added to the segments using some rules.
- 143_What is AWS Cloud WAN_.txt:147: And finally you could also have the segment routing in the sense that you can define my development segment can communicate with the shared services segments, because maybe you want that your event development VPCs to be communicating with your on premises network, but you don't want your development and production networks to communicate with each other.
- 143_What is AWS Cloud WAN_.txt:148: So again, this is just one kind of example where you can set up, you know, interoperability between different segments.
- 143_What is AWS Cloud WAN_.txt:149: So depending on your network requirement you will definitely decide whether two segment needs to communicate with each other.
- 143_What is AWS Cloud WAN_.txt:151: For example isolated segments.
- 143_What is AWS Cloud WAN_.txt:152: In that case, no other segment can communicate with a given segment which is marked as isolated.
- 144_Core Network Policy.txt:14: And then you configure segment specific settings in the segment section.
- 144_Core Network Policy.txt:37: Okay, so after you define the basic parameters for the core network, the next most important thing in your configuration is defining the segments and the segment policy.
- 144_Core Network Policy.txt:38: So as many segment you want to create, of course you will define those many blocks in your policy.
- 144_Core Network Policy.txt:39: So for each segment you have to provide the segment name.
- 144_Core Network Policy.txt:40: And then you can optionally provide in which all AWS region or edge locations you want to enable this segment.
- 144_Core Network Policy.txt:42: So if you don't provide this at the segment level, then segment will be available in all the regions.
- 144_Core Network Policy.txt:43: But maybe there is a situation where you want, say, a production segment available only in couple of regions, because maybe that's where only you deploy your production workloads.
- 144_Core Network Policy.txt:45: So you can this way just enable the segment for a particular set of regions only.
- 144_Core Network Policy.txt:48: So the default behavior is that if you have a segment and you attach either VPC or VPN or connect attachments, all these attachments will be able to communicate with each other.
- 144_Core Network Policy.txt:50: But many a times you want that on that segment.
- 144_Core Network Policy.txt:56: When we talk about the segment sharing.
- 144_Core Network Policy.txt:59: This means that if anyone creates the you know, attachment and try to attach to your segment, you can accept or reject that request.
- 144_Core Network Policy.txt:60: And this is a good feature in the sense that if there are multiple teams who might want to, you know, create an attachment to your segment, they will create that attachment and you as a network administrator will allow or deny that request.
- 144_Core Network Policy.txt:63: List of the segments.
- 144_Core Network Policy.txt:64: Now for this, it is important to understand that whenever you create multiple segments on the core network, this segments are isolated, so all the attachments on those particular segments can communicate with each other, but the attachment across the segments cannot.
- 144_Core Network Policy.txt:65: And that's the basic fundamental of isolating the network using the segments.
- 144_Core Network Policy.txt:67: But many a times you want to share your segments so that attachment across the segments can communicate with each other.
- 144_Core Network Policy.txt:68: For example, development segment can communicate with the shared services segment.
- 144_Core Network Policy.txt:69: And in that case you will first share the segments.
- 144_Core Network Policy.txt:71: I shouldn't be sharing my segment with every other segment out there on the core network, and that's where this allow or deny list will help you control that behavior.
- 144_Core Network Policy.txt:72: So in the allow list, you can mention that I am okay to share my route with this particular segment, which are there in the allow list.
- 144_Core Network Policy.txt:73: Or you can say, I don't want to share my routes with all these segments which are there in the denial list.
- 144_Core Network Policy.txt:76: But just remember that allow and denialist only makes sense if you are going to share the segments.
- 144_Core Network Policy.txt:77: If you are not going to share the segments, then they won't have any impact.
- 144_Core Network Policy.txt:78: And now let's talk about how do you share the segments.
- 144_Core Network Policy.txt:79: So for that you use segment actions.
- 144_Core Network Policy.txt:80: And in that segment action you can define that.
- 144_Core Network Policy.txt:81: I am going to share this particular segment with list of other segments.
- 144_Core Network Policy.txt:82: And at that time the routing information between the segment will be enabled to be exchanged.
- 144_Core Network Policy.txt:83: So your attachment from now both sides of the segment can communicate with each other.
- 144_Core Network Policy.txt:85: For example, if there is segment A that you are defining and you are sharing segment A with segment B, C, and D through the segment action, then segment A will exchange route with B, C, and D, and also B, C and D will exchange the route with segment A, but this doesn't mean that B, C, and D will communicate with each other.
- 144_Core Network Policy.txt:87: When you define the policy for segment B and C kind of right.
- 144_Core Network Policy.txt:89: Now many a times you don't want to share the segment, but you still want some of the attachment from these segments to communicate with each other.
- 144_Core Network Policy.txt:91: So this is kind of overriding, you know, the default segment sharing behavior and creating the routes to enable, you know, that specific kind of connectivity.
- 144_Core Network Policy.txt:93: So these are all important parameters you need to consider when you create the segments.
- 144_Core Network Policy.txt:94: And we are going to have a short walkthrough of how to create the segments and how to set these parameters.
- 144_Core Network Policy.txt:98: After the segment you need to understand what are the attachments.
- 144_Core Network Policy.txt:109: But this is like after you peer your transit gateway with the core network, then you can create a route table attachment to the particular network segment.
- 144_Core Network Policy.txt:121: If it matches, it will attach that attachment to the segment which is defined as a part of the rule.
- 144_Core Network Policy.txt:123: And then you have the required acceptance parameter similar to the segment one.
- 144_Core Network Policy.txt:124: And this takes only in the effect if you have disabled this at the segment level.
- 144_Core Network Policy.txt:125: Otherwise it just inherits the value from the segment level parameter.
- 144_Core Network Policy.txt:127: For example, this attachment can only be connected to the segment if region is x, or this is for a particular VPC id, or this attachment has a particular tag key or tag value, or it is coming from particular AWS account.
- 144_Core Network Policy.txt:128: So all these conditions and or logic can be implemented to have the automatic connectivity between your attachment and your segments.
- 144_Core Network Policy.txt:129: And when you do that, basically you can define that the method of associating your attachment to the segment is a constant or it's a tag based.
- 144_Core Network Policy.txt:131: I'm writing this rule for a particular segment, for example development segment.
- 144_Core Network Policy.txt:132: So if all the conditions matches for that attachment, it will be attached to the development segment.
- 144_Core Network Policy.txt:133: But then for every segment you would have to write those many rules.
- 144_Core Network Policy.txt:134: But if you want to write a generic rule then you can define that the segment should be the value of particular tag key.
- 144_Core Network Policy.txt:137: Then that attachment will be automatically associated with the development segment.
- 144_Core Network Policy.txt:138: But now while creating another attachment, if you say tag key equal to environment and tag value is production, then that attachment will be attached to the production segment.
- 144_Core Network Policy.txt:139: So just using the same rule you are able to attach different attachment to different segments.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:3: And more importantly we will see how to create the cloud Wan segments, how to create attachments and how to configure the routing between the segments.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:7: And in London there is a shared services VPC.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:8: So of course we need to have three network segments like development production and shared segment.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:9: And we want to connect our development VPCs to the development segment and likewise for production and shared services.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:15: And additionally what we want is that development instances can communicate with the shared services instances.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:16: So for that we have to share the segment.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:17: So we'll share development with the shared services segment.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:19: Similarly we also want production instances to also access the shared services segment.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:20: Now this is typically required if shared services segment has kind of, you know, centralized egress kind of routing configured or it connects your hybrid network, then typically you will see this kind of architecture, right?
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:21: So which means now we will also share our production segment with the shared services segment.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:32: Once that is done, we will create three segments as you can see.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:33: And then on that segment we will create five attachments for this five VPCs.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:34: Additionally, we will share the development segment with the shared services segment.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:35: And similarly production segment will be shared with the shared Services segment.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:39: For example, for this North Virginia development VPC, we would have to configure the route which says how to go to the development VPC in Mumbai or Shared Services VPC in London.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:52: But otherwise if you just look at this architecture you should be able to implement the same.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:67: And then in London I have shared services VPC with 192 range, and I have launched two machines in Mumbai, one in each VPC.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:94: And now the default segment.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:95: So for us it's a shared segment.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:96: So let's create the shared segment as we create the core network.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:110: But this kind of visualization will get better as you create segments and then attach VPCs to those segments.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:115: And there is one segment that is a shared segment that we had created in this core network.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:123: And it also created a default shared services segment.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:129: Right now what we want to do is to create some additional segments.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:130: So there is already this shared segment.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:131: And now let's create the development segment.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:133: But I'll revisit this again after we create the segment.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:134: So let's create this and let's also create the production segment.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:135: So we created this three segments.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:147: What it's going to do is it's going to create this two additional segments that is development and production.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:150: So you know it is creating those segments like that.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:151: So you can see here that it's creating those segments in all the regions.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:157: Now what we want to do is again we want to set up the routing for the segments.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:164: Okay, so we have got second version of the policy and we want to now configure the routing for the segments.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:165: And essentially we want to share these segments.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:166: So as of now we have these three segments.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:167: And what we really want is that, you know, we should be able to control which segments can share routes with each other.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:168: As of now there is no such restriction, which means if development and production segments are shared, then the routes will also be shared.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:171: The development segment should be able to be shared only with the shared services segment.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:175: We want that the production segment can only be shared with the shared services segment.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:180: And in the shared services segment we want to make sure that this is only shared with the development and production.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:184: So in the production you can say deny the access to the development segment.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:185: But when at the same we are saying that production can only be shared with the shared services segment.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:187: This segment is available only in few regions.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:191: Next and most important thing is the segment actions which tells us which segments we want to share with each other.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:192: So let's create the segment that is shared segment.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:193: And we want to share this segment with the development and with the production.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:199: And yeah we are good with the segment sharing.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:201: Now this will define how you connect your attachment to the segments.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:204: And this is for my development segment.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:205: And it says that if the VPC is attached to this segment.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:208: Then it will be automatically attached to the development segment.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:214: It is attached to the shared services segment.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:222: So you can also create a generic rule which says you know, if the particular tag value is there on the attachment, then it will be attached to the respective segment.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:228: And this time we are adding the segment sharing and this attachment policies.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:244: And the most important part is you need to put right tag so that this attachment can be connected to the development segment.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:249: Now I want to create the last one for the shared services attachment.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:255: So all are getting created now if you see it automatically been attached to the segment.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:256: So this to the production segment and development segment.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:257: And it also tells you which rule match because of which it was attached to that respective segment.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:266: So there are three edge locations three segments.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:270: And if you enable the segments it will also show you the segment.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:275: And then in Mumbai there are two segments and then there are two VPCs.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:276: And in London there is just one segment and shared services VPC.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:281: So it will tell you from the Mumbai region you can reach to another development VPC in another region, which is this IP address, and then also to the shared services segment.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:283: Similarly, if you look at the production you will see the routes for the other production VPC in different region and also for the shared services VPC route.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:308: Now similarly we want to do that for shared services.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:316: And even if we would have added it wouldn't work because we are not sharing the development and the production segments.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:323: And let's also add a route for shared services.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:329: Now let's also test the connectivity to the shared services VPC EC2 instance.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:336: Because we don't have the VPC routes in the shared services VPC route table.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:347: And of course it shouldn't work because segments are not shared.
- 145_Hands-On_ Set up AWS Cloud WAN network, Segments & VPC attachments.txt:351: But at the end of the lab, make sure that you delete everything, because otherwise you will be charged for all these segments, attachments and, you know, core network edges.
- 146_Connecting Transit Gateway & Direct Connect.txt:8: And then you are managing the network segmentation using the Transit Gateway route table per attachment.
- 146_Connecting Transit Gateway & Direct Connect.txt:9: We have already seen this kind of architecture in the Transit Gateway section.
- 146_Connecting Transit Gateway & Direct Connect.txt:13: So one obvious choice is you don't use the transit gateway and rather reconfigure your VPCs to connect to your segment, which are there in your new cloud Wan network.
- 146_Connecting Transit Gateway & Direct Connect.txt:22: For example, you could have your production segment or your development segment.
- 146_Connecting Transit Gateway & Direct Connect.txt:24: And now in order to connect your transit gateway network to the core network, you have to map the Transit Gateway route tables to the corresponding segments of your cloud Wan network.
- 146_Connecting Transit Gateway & Direct Connect.txt:25: So you will create this route table attachment to the particular segment.
- 146_Connecting Transit Gateway & Direct Connect.txt:39: And then you have to create the route table attachments to the particular segment.
- 146_Connecting Transit Gateway & Direct Connect.txt:40: So here I just wanted to cover these two important architectures.
- 146_Connecting Transit Gateway & Direct Connect.txt:42: So remember that you have to pair the transit gateways first, and then you have to map your transit gateway route table to the core network segments.
- 146_Connecting Transit Gateway & Direct Connect.txt:45: So these were the two different architectures that I wanted to talk about.
- 147_AWS Cloud WAN Summary.txt:12: And you can then have the different network segments, which works like virtual routing and forwarding for apps.
- 148_VPC lattice introduction.txt:29: So basically it provides the zero trust architecture where you can manage the access to different services using AWS IAM authentication.
- 148_VPC lattice introduction.txt:31: And typically you will see VPC lattice useful in the microservices architecture where there are different services.
- 148_VPC lattice introduction.txt:34: Now if you want to enable the communication between all these microservices, then probably your architecture might look something like this, right where different Microservices are running on different compute environment, so some microservices might be running on EC2 instances.
- 148_VPC lattice introduction.txt:46: Now again Transit Gateway simplifies the networking architecture.
- 148_VPC lattice introduction.txt:56: So while it is pretty close to what we want, but again it is very complex architecture and it is not at all scalable.
- 148_VPC lattice introduction.txt:65: So the administrator will create the service network and they will define the access control for that network.
- 148_VPC lattice introduction.txt:66: And then developer will create their own service and associate this service with the VPC lattice service network.
- 148_VPC lattice introduction.txt:73: And then what are the architectures that evolves using VPC lattice service.
- 149_VPC lattice components - Lattice Network, Service, Resource and more.txt:4: That is VPC lattice service network service resources service discovery and auth policies.
- 149_VPC lattice components - Lattice Network, Service, Resource and more.txt:7: Now in order to connect all these different services together, you have to create the VPC lattice service network.
- 149_VPC lattice components - Lattice Network, Service, Resource and more.txt:10: Now once you create this service network and associate your services to that network VPC lattice also enables the service discovery so that all these services or resources can be accessed using the VPC lattice provided DNS name.
- 149_VPC lattice components - Lattice Network, Service, Resource and more.txt:16: So the service network as we said it's a logical boundary for a collection of services and resource configuration.
- 149_VPC lattice components - Lattice Network, Service, Resource and more.txt:17: So you create a lattice service network and you associate the services or the resources or the VPCs to this service network.
- 149_VPC lattice components - Lattice Network, Service, Resource and more.txt:70: Further VPC lattice service network or the individual service auth policy should explicitly allow the access to the requester.
- 149_VPC lattice components - Lattice Network, Service, Resource and more.txt:82: So this is how you use the auth policies with VPC lattice service network or the service right.
- 150_VPC lattice network associations.txt:22: And then using that gateway you create resource configuration association with the VPC lattice service network.
- 150_VPC lattice network associations.txt:38: And that's where only client inside this VPC can access the VPC lattice service network.
- 150_VPC lattice network associations.txt:44: Now as we discussed if you have say some shared services VPC through which you want to allow access to other networks for the VPC lattice network, then the VPC association won't help because this IP address here is not accessible from this network.
- 150_VPC lattice network associations.txt:47: So this is the VPC private link or the endpoint feature where you are creating the VPC endpoint in this VPC for the VPC lattice service network.
- 150_VPC lattice network associations.txt:53: So in order to access the VPC lattice network from the remote network you have to create a VPC endpoint of type service network.
- 150_VPC lattice network associations.txt:54: And it connects VPC to the service network.
- 151_VPC lattice traffic flow.txt:10: So this is a very common architecture for VPC lattice.
- 151_VPC lattice traffic flow.txt:39: So once it passes the security groups then it will check the auth policies at the VPC lattice service network layer and the service layer.
- 152_Hands on_ VPC lattice service access with custom domain name.txt:24: And to be honest just looking at this architecture you should be able to implement this.
- 152_Hands on_ VPC lattice service access with custom domain name.txt:42: So to simplify the architecture we will create that in the public subnets.
- 152_Hands on_ VPC lattice service access with custom domain name.txt:234: So let's go to the service network on the left side.
- 152_Hands on_ VPC lattice service access with custom domain name.txt:259: So if you see our architecture we have done most of it right.
- 152_Hands on_ VPC lattice service access with custom domain name.txt:333: That's because the app VPC is not associated with the service network using the VPC association.
- 153_VPC lattice features - Good to know.txt:4: Jadi sehubungan dengan konektivitas, kita telah mengetahui bahwa Anda dapat menghubungkan layanan di seluruh VPC dan di seluruh akun AWS.
- 153_VPC lattice features - Good to know.txt:5: Sekarang sehubungan dengan protokol untuk layanan yang didukungnya, protokol HTTP, Https dan gRPC.
- 153_VPC lattice features - Good to know.txt:14: Sehubungan dengan keamanan, kami mengetahui bahwa Anda dapat menggunakan otorisasi IAM, yang dapat memvalidasi apakah pengguna memiliki izin IAM yang tepat untuk mengakses layanan kisi VPC.
- 153_VPC lattice features - Good to know.txt:15: Dan sebaliknya pada lapisan jaringan, Anda selalu dapat memiliki grup keamanan di tingkat asosiasi VPC atau di tingkat target jika itu adalah EC2 atau penyeimbang beban yang lebih jauh sehubungan dengan target, dapat berupa instance EC2, fungsi Lambda, alamat IP, atau Alb atau NLB.
- 153_VPC lattice features - Good to know.txt:26: Jadi, sehubungan dengan Ram seperti yang saya katakan, seperti inilah tampilannya.
- 153_VPC lattice features - Good to know.txt:32: Dan selanjutnya, seperti yang saya katakan, sehubungan dengan SID yang tumpang tindih dan kisi VPC IPv6 mendukung lalu lintas tersebut.
- 154_VPC lattice common architectures.txt:2: So in this lecture let's see some of the common VPC lattice architecture that you will see in the real world.
- 154_VPC lattice common architectures.txt:3: And these architectures might give you good understanding when the problem is given to you around the VPC lattice usage in your exam.
- 154_VPC lattice common architectures.txt:5: So there are typically four architecture that we are going to talk about.
- 154_VPC lattice common architectures.txt:8: So very first and a common architecture is to allow the connectivity between different VPCs.
- 154_VPC lattice common architectures.txt:10: So nothing very special about this architecture as you can see here.
- 154_VPC lattice common architectures.txt:19: So a very common architecture that you will see.
- 154_VPC lattice common architectures.txt:20: And if you want to read more about this architecture then you can visit this AWS blog.
- 154_VPC lattice common architectures.txt:22: Now the next architecture.
- 154_VPC lattice common architectures.txt:24: And if you remember, we said that if you want to access VPC lattice from outside the VPC, you have to use VPC endpoint for the VPC lattice service network.
- 154_VPC lattice common architectures.txt:30: So this is another architecture that you will see right.
- 154_VPC lattice common architectures.txt:31: So in this architecture our services are hosted in AWS and we are accessing it from on premises.
- 154_VPC lattice common architectures.txt:36: So in that case the architecture will be something like this.
- 154_VPC lattice common architectures.txt:44: Then the final architecture is when you want to access the VPC lattice services from the internet right now for that as well.
- 154_VPC lattice common architectures.txt:54: So these are the very common architecture that you will see with VPC lattice.
- 343_Transit Gateway.txt:3: So, AWS came up with the transit gateway to solve that problem, and you're going to have a transitive peering connection between thousands of VPC, your on-premises data center, your site-to-site VPN, direct connects in a hub-and-spoke star connection.
- 343_Transit Gateway.txt:42: So all these sort of architectures can come up in the exam so make sure you're familiar with understanding how they work, and that's it for me, I will see you in the next lecture.

## Step 3 — Deep Expansion (Transit and Service-Networking Concepts)

### Transit Gateway
- What it is: Regional routing hub for multi-VPC and hybrid attachments.
- Why it exists: Scales beyond peering meshes and centralizes route-domain policy.
- Internal working: Attachments associate with route tables and propagate/select prefixes per domain.
- Architecture: Shared transit core with prod/non-prod/shared-services segmentation.
- Key components: Attachments, route tables, associations, propagations, appliance mode patterns.

### AWS Cloud WAN
- What it is: Managed global WAN control plane using segments and core network policy.
- Why it exists: Standardizes regional and global network connectivity governance.
- Internal working: Policy defines segments, edges, and attachment relationships across network core.
- Architecture: Global enterprise fabric integrating TGW, DX, and regional VPCs.
- Key components: Core network, segments, attachments, policy versioning.

### VPC Lattice
- What it is: Application networking layer for service-to-service connectivity across VPCs/accounts.
- Why it exists: Decouples service exposure and discovery from raw network topology.
- Internal working: Services join service networks with auth, routing, and traffic controls abstracted from VPC plumbing.
- Architecture: Shared service network connecting producers and consumers with policy-based access.
- Key components: Service networks, services, target groups, associations, auth and custom domains.

## Cross-Cloud Mapping (Concept-First)

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| Central transit hub | Transit Gateway | Virtual WAN Hub | Network Connectivity Center patterns |
| Global WAN policy control | Cloud WAN | Virtual WAN + policy models | Cross-region network policy patterns |
| Managed service-to-service network abstraction | VPC Lattice | Application Gateway + service mesh patterns | Service mesh / PSC / Gateway API patterns |

### Trade-offs and Decision Notes
- Transit abstractions reduce routing sprawl but still require strong segmentation discipline.
- Global WAN control is valuable only when policy lifecycle is managed centrally and intentionally.
- Service-network abstractions simplify app connectivity but add another governance layer to operate.

## Phase-wise Architect-Level Organization

### Phase 1 — Foundations
- Define transit, global WAN, and application-networking intent separately before implementation.
- Standardize route-domain and service-network ownership models.

### Phase 2 — Core Services
- Implement TGW, Cloud WAN, and Lattice using explicit segmentation and policy boundaries.
- Validate how attachments and service associations inherit governance decisions.

### Phase 3 — Advanced Patterns
- Use global policy to coordinate regional transit and service-access patterns.
- Decouple service connectivity from underlying VPC complexity for platform teams.

### Phase 4 — System Design
- Reference architecture: central transit core + global WAN policy + service networking abstraction.
- Scaling considerations: segment sprawl, policy versioning, cross-account service governance.
- Cost considerations: attachment processing, cross-region design choices, operational governance load.

<!-- BEGIN PRACTICE_ENHANCEMENTS -->

## Hands-On Practice (Kid-Friendly Step-by-Step)

### Safety First
- Use a sandbox account only.
- Set a budget alert before creating resources.
- Delete resources after practice to avoid surprise cost.

### Hands-On Signals Found In This KB
- Signal 1: And if you now look at how AWS Transit Gateway supports the multicast, you have to enable the multicast feature while you create the transit gateway.
- Signal 2: That means after you create the transit gateway, you can't enable that.
- Signal 3: And once this GRE tunnel is enabled, you can then bring in the transit gateway, and can attach all these EC2 instances inside your VPC, ENIs to this transit gateway and create a multicast domain, and then, can create...
- Signal 4: Transcript signals that if you now look at how AWS Transit Gateway supports the multicast, you have to enable the multicast feature while you create the transit gateway.
- Signal 5: Transcript signals that that means after you create the transit gateway, you can't enable that.
- Signal 6: Now let's go to the next step where we are going to create VPC lattice service.
- Signal 7: As we are going to create the VPC lattice network there are some prerequisites that we will first implement right.
- Signal 8: Now we can go ahead and create the VPC lattice network.
- Signal 9: Transcript signals that let's go to the next step where we are going to create VPC lattice service.
- Signal 10: So we will create this app service.

### Service-Specific Lab Paths
### Activity 1: Amazon VPC Lab for Transit Gateway, Cloud WAN, and VPC Lattice for transit control, segmentation, and service-to-service networking
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

### Activity 2: Amazon EC2 Lab for Transit Gateway, Cloud WAN, and VPC Lattice for transit control, segmentation, and service-to-service networking
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

### Activity 3: Elastic Load Balancing Lab for Transit Gateway, Cloud WAN, and VPC Lattice for transit control, segmentation, and service-to-service networking
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

### Activity 4: Amazon CloudWatch Lab for Transit Gateway, Cloud WAN, and VPC Lattice for transit control, segmentation, and service-to-service networking
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

Use this lens to study Transit Gateway, Cloud WAN, and VPC Lattice for transit control, segmentation, and service-to-service networking in a cloud-agnostic way: focus on capability first, provider name second.

### Capability Mapping (AWS / Azure / GCP)
| Capability | AWS | Azure | GCP |
|---|---|---|---|
| Identity | IAM / IAM Identity Center | Microsoft Entra ID + RBAC | Cloud IAM |
| Virtual Machines | Amazon EC2 | Azure Virtual Machines | Compute Engine |
| Serverless Functions | AWS Lambda | Azure Functions | Cloud Functions / Cloud Run |
| Containers | Amazon EKS / ECS | AKS | GKE / Cloud Run |
| Databases | RDS / DynamoDB / ElastiCache | Azure SQL / Cosmos DB / Azure Cache | Cloud SQL / Firestore / Memorystore |
| Networking | VPC / Route 53 / ELB | VNet / DNS / Load Balancer | VPC / Cloud DNS / Cloud Load Balancing |
| Observability | CloudWatch / X-Ray / CloudTrail | Azure Monitor / App Insights / Activity Log | Cloud Monitoring / Cloud Logging / Cloud Trace |
| AI/ML | SageMaker / Bedrock / AI services | Azure ML / Azure OpenAI / AI services | Vertex AI / GenAI services |

### Same Lab Across 3 Clouds
| Lab Theme | AWS | Azure | GCP |
|---|---|---|---|
| Amazon VPC | Amazon VPC | Azure Virtual Network | VPC Network |
| Amazon EC2 | Amazon EC2 | Azure Virtual Machines | Compute Engine |
| Elastic Load Balancing | Elastic Load Balancing | Azure Load Balancer or Application Gateway | Cloud Load Balancing |
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

