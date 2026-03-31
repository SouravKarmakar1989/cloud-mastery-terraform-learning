# 03_VPC_DNS_DHCP.md

## Scope
- Topic: VPC DNS behavior, Route 53 Resolver, hybrid DNS, DHCP option sets, name-resolution patterns
- Files processed: 16
- Extracted non-empty transcript lines: 1193
- Processing mode: line-by-line (sentence-level), zero-loss

## Real Material - Architect Learning Build (Domain 3: VPC DNS and DHCP)

This section is the study-first foundation for internal name resolution, hybrid DNS forwarding, and host bootstrap settings inside AWS network environments.

### Phase 1 - Foundations

#### Module 1: DNS Mental Model
- DNS is a control-plane dependency for almost every application path.
- Private name resolution design is part of network architecture, not an afterthought.
- Resolver behavior, forwarding rules, and zone ownership must be made explicit.




##### Source Transcript Details
- Module focus: DNS Mental Model
- Primary transcript files:
- outputs/AWS Speciality/advanced-networking-specialty/05_VPC DNS and DHCP/032_VPC DHCP Option sets.txt
- outputs/AWS Speciality/advanced-networking-specialty/05_VPC DNS and DHCP/035_Hands On_ VPC DNS with custom DNS server.txt
- outputs/AWS Speciality/advanced-networking-specialty/05_VPC DNS and DHCP/031_Amazon VPC DNS Server (Route53 Resolver).txt
- outputs/AWS Speciality/advanced-networking-specialty/05_VPC DNS and DHCP/034_Hands On_ VPC DNS with Route53 Private Hosted zone.txt
- outputs/AWS Speciality/advanced-networking-specialty/05_VPC DNS and DHCP/030_Section Introduction - How DNS works_.txt
- outputs/AWS Speciality/advanced-networking-specialty/05_VPC DNS and DHCP/036_Introduction to Route53 DNS Resolver Endpoints (Hybrid DNS).txt
- outputs/AWS Speciality/advanced-networking-specialty/05_VPC DNS and DHCP/037_Exam Essentials.txt
- outputs/AWS Speciality/advanced-networking-specialty/05_VPC DNS and DHCP/033_Hands on exercises scenarios.txt
- outputs/aws-solutions-architect-professional/05_Compute & Load Balancing/063_Route 53 - Resolvers & Hybrid DNS.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/10_Route 53/101_What is a DNS _.txt
- Top concept clusters from transcript metadata:
- DNS/DHCP Operational Context
- DNS Resolution Path
- DHCP and Host Configuration
- Split-Horizon and Namespace Design
- Routing and Reachability Dependencies
- Hybrid DNS Integration
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 16
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 1193
- Key insights inside selected files: 843
- Unique concept tags in selected files: 6

##### Transcript-Enriched Learning Notes
- So in this lecture let's understand how Dhcp option sets work and what kind of attributes it has which affects your DNS configuration for the VPC.
- So as I said every VPC comes with a default Dhcp option set.
- And it provides basically a dynamic host configuration protocol attributes for the VPC resources.
- So through Dhcp option set you can set what should be the private domain name for your EC2 instances.
- Because using the Dhcp option set, we can tell your VPC that do not look at the AWS provided DNS server, but rather you can look at some other DNS server for resolving the DNS queries.
- But all these configurations are managed at the VPC level using the Dhcp option sets.
- So as I said, when you launch the EC2 instances, this Dhcp option set parameters are automatically applied for the EC2 instances as you launch them.
- So it has the default domain name server which points to Amazon provided DNS, which is nothing but the route 53 DNS resolver that we talked about in the last lecture.
- But overall this is what Dhcp option set does.
- Now just to show you this is one of the Dhcp option set which is a default one.
- And the default domain name server is Amazon provided DNS.
- And this Dhcp option set is automatically associated with your VPC.
- And then as you launch EC2 instances they will have corresponding private DNS name something like this.
- Now it really depends on the DNS attribute where your EC2 instance will also receive the public hostname or not.
- And additionally the Dhcp will also set the Resolv.conf.
- If it's a Linux machine which tells your EC2 instance, what is the name server for DNS resolution?
- And here if you see the cursor, it has the name server 10.10.0.2, which is nothing but VPC base address plus two.
- That means all the DNS queries from the EC2 instance are going to this name server.

##### Polished Architect Notes
- Transcript signals that in this lecture let's understand how Dhcp option sets work and what kind of attributes it has which affects your DNS configuration for the VPC.
- Transcript signals that as I said every VPC comes with a default Dhcp option set.
- Transcript signals that it provides basically a dynamic host configuration protocol attributes for the VPC resources.
- Transcript signals that through Dhcp option set you can set what should be the private domain name for your EC2 instances.
- Transcript signals that because using the Dhcp option set, we can tell your VPC that do not look at the AWS provided DNS server, but rather you can look at some other DNS server for resolving the DNS queries.
- Transcript signals that all these configurations are managed at the VPC level using the Dhcp option sets.
- Transcript signals that as I said, when you launch the EC2 instances, this Dhcp option set parameters are automatically applied for the EC2 instances as you launch them.
- Transcript signals that it has the default domain name server which points to Amazon provided DNS, which is nothing but the route 53 DNS resolver that we talked about in the last lecture.
- Transcript signals that overall this is what Dhcp option set does.
- Transcript signals that just to show you this is one of the Dhcp option set which is a default one.
- Transcript signals that the default domain name server is Amazon provided DNS.
- Transcript signals that this Dhcp option set is automatically associated with your VPC.

##### Architect Synthesis (Transcript-Derived)
- Treat DNS/DHCP Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat DNS Resolution Path as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat DHCP and Host Configuration as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Split-Horizon and Namespace Design as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Routing and Reachability Dependencies as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: in this lecture let's understand how Dhcp option sets work and what kind of attributes it has which affects your DNS configuration for the VPC.
- Design implication: as I said every VPC comes with a default Dhcp option set.
- Design implication: it provides basically a dynamic host configuration protocol attributes for the VPC resources.
#### Module 2: Namespace and Resolution Design
- Public and private zones must have clear ownership boundaries.
- Split-horizon design should be deliberate, not accidental overlap.
- Hybrid DNS succeeds when domain authority and forwarding responsibility are unambiguous.




##### Source Transcript Details
- Module focus: Namespace and Resolution Design
- Primary transcript files:
- outputs/AWS Speciality/advanced-networking-specialty/05_VPC DNS and DHCP/032_VPC DHCP Option sets.txt
- outputs/AWS Speciality/advanced-networking-specialty/05_VPC DNS and DHCP/035_Hands On_ VPC DNS with custom DNS server.txt
- outputs/AWS Speciality/advanced-networking-specialty/05_VPC DNS and DHCP/031_Amazon VPC DNS Server (Route53 Resolver).txt
- outputs/AWS Speciality/advanced-networking-specialty/05_VPC DNS and DHCP/034_Hands On_ VPC DNS with Route53 Private Hosted zone.txt
- outputs/AWS Speciality/advanced-networking-specialty/05_VPC DNS and DHCP/036_Introduction to Route53 DNS Resolver Endpoints (Hybrid DNS).txt
- outputs/AWS Speciality/advanced-networking-specialty/05_VPC DNS and DHCP/030_Section Introduction - How DNS works_.txt
- outputs/AWS Speciality/advanced-networking-specialty/05_VPC DNS and DHCP/033_Hands on exercises scenarios.txt
- outputs/AWS Speciality/advanced-networking-specialty/05_VPC DNS and DHCP/037_Exam Essentials.txt
- outputs/aws-solutions-architect-professional/05_Compute & Load Balancing/063_Route 53 - Resolvers & Hybrid DNS.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/10_Route 53/101_What is a DNS _.txt
- Top concept clusters from transcript metadata:
- DNS/DHCP Operational Context
- DNS Resolution Path
- Split-Horizon and Namespace Design
- DHCP and Host Configuration
- Routing and Reachability Dependencies
- Hybrid DNS Integration
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 16
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 1193
- Key insights inside selected files: 843
- Unique concept tags in selected files: 6

##### Transcript-Enriched Learning Notes
- So in this lecture let's understand how Dhcp option sets work and what kind of attributes it has which affects your DNS configuration for the VPC.
- So as I said every VPC comes with a default Dhcp option set.
- And it provides basically a dynamic host configuration protocol attributes for the VPC resources.
- So through Dhcp option set you can set what should be the private domain name for your EC2 instances.
- Because using the Dhcp option set, we can tell your VPC that do not look at the AWS provided DNS server, but rather you can look at some other DNS server for resolving the DNS queries.
- But all these configurations are managed at the VPC level using the Dhcp option sets.
- So as I said, when you launch the EC2 instances, this Dhcp option set parameters are automatically applied for the EC2 instances as you launch them.
- So it has the default domain name server which points to Amazon provided DNS, which is nothing but the route 53 DNS resolver that we talked about in the last lecture.
- But overall this is what Dhcp option set does.
- Now just to show you this is one of the Dhcp option set which is a default one.
- And the default domain name server is Amazon provided DNS.
- And this Dhcp option set is automatically associated with your VPC.
- And then as you launch EC2 instances they will have corresponding private DNS name something like this.
- Now it really depends on the DNS attribute where your EC2 instance will also receive the public hostname or not.
- And additionally the Dhcp will also set the Resolv.conf.
- If it's a Linux machine which tells your EC2 instance, what is the name server for DNS resolution?
- And here if you see the cursor, it has the name server 10.10.0.2, which is nothing but VPC base address plus two.
- That means all the DNS queries from the EC2 instance are going to this name server.

##### Polished Architect Notes
- Transcript signals that in this lecture let's understand how Dhcp option sets work and what kind of attributes it has which affects your DNS configuration for the VPC.
- Transcript signals that as I said every VPC comes with a default Dhcp option set.
- Transcript signals that it provides basically a dynamic host configuration protocol attributes for the VPC resources.
- Transcript signals that through Dhcp option set you can set what should be the private domain name for your EC2 instances.
- Transcript signals that because using the Dhcp option set, we can tell your VPC that do not look at the AWS provided DNS server, but rather you can look at some other DNS server for resolving the DNS queries.
- Transcript signals that all these configurations are managed at the VPC level using the Dhcp option sets.
- Transcript signals that as I said, when you launch the EC2 instances, this Dhcp option set parameters are automatically applied for the EC2 instances as you launch them.
- Transcript signals that it has the default domain name server which points to Amazon provided DNS, which is nothing but the route 53 DNS resolver that we talked about in the last lecture.
- Transcript signals that overall this is what Dhcp option set does.
- Transcript signals that just to show you this is one of the Dhcp option set which is a default one.
- Transcript signals that the default domain name server is Amazon provided DNS.
- Transcript signals that this Dhcp option set is automatically associated with your VPC.

##### Architect Synthesis (Transcript-Derived)
- Treat DNS/DHCP Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat DNS Resolution Path as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Split-Horizon and Namespace Design as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat DHCP and Host Configuration as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Routing and Reachability Dependencies as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: in this lecture let's understand how Dhcp option sets work and what kind of attributes it has which affects your DNS configuration for the VPC.
- Design implication: as I said every VPC comes with a default Dhcp option set.
- Design implication: it provides basically a dynamic host configuration protocol attributes for the VPC resources.
#### Module 3: Host Configuration Baseline
- DHCP option sets influence how instances discover DNS and domain settings.
- Bootstrap defaults matter for consistency across fleets.
- Resolver reachability is just as important as resolver configuration.






##### Source Transcript Details
- Module focus: Host Configuration Baseline
- Primary transcript files:
- outputs/AWS Speciality/advanced-networking-specialty/05_VPC DNS and DHCP/034_Hands On_ VPC DNS with Route53 Private Hosted zone.txt
- outputs/AWS Speciality/advanced-networking-specialty/05_VPC DNS and DHCP/032_VPC DHCP Option sets.txt
- outputs/AWS Speciality/advanced-networking-specialty/05_VPC DNS and DHCP/035_Hands On_ VPC DNS with custom DNS server.txt
- outputs/AWS Speciality/advanced-networking-specialty/05_VPC DNS and DHCP/031_Amazon VPC DNS Server (Route53 Resolver).txt
- outputs/AWS Speciality/advanced-networking-specialty/05_VPC DNS and DHCP/037_Exam Essentials.txt
- outputs/AWS Speciality/advanced-networking-specialty/05_VPC DNS and DHCP/036_Introduction to Route53 DNS Resolver Endpoints (Hybrid DNS).txt
- outputs/AWS Speciality/advanced-networking-specialty/05_VPC DNS and DHCP/030_Section Introduction - How DNS works_.txt
- outputs/AWS Speciality/advanced-networking-specialty/05_VPC DNS and DHCP/033_Hands on exercises scenarios.txt
- outputs/aws-solutions-architect-professional/05_Compute & Load Balancing/063_Route 53 - Resolvers & Hybrid DNS.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/10_Route 53/101_What is a DNS _.txt
- Top concept clusters from transcript metadata:
- DNS/DHCP Operational Context
- DNS Resolution Path
- DHCP and Host Configuration
- Split-Horizon and Namespace Design
- Routing and Reachability Dependencies
- Hybrid DNS Integration
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 16
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 1193
- Key insights inside selected files: 843
- Unique concept tags in selected files: 6

##### Transcript-Enriched Learning Notes
- So in this exercise, let's try to see how the private DNS works for the VPC using route 53 private hosted zone.
- So our setup will look something like this where we have VPC and then corresponding subnets.
- Now we want to use Amazon provided DNS server.
- So we are not going to change anything in the Dhcp option set as a name server.
- And then we will associate this Dhcp option set to the VPC.
- And to be honest, changing this domain name to CORBA internal in the Dhcp option set is optional and I will talk about that while we implement it, but that's what the Dhcp option set will look like.
- And then the most important part here is to create the private hosted zone with the same name as our domain name that is corp dot internal.
- And then from this app server, we will try to reach to the DB server using its DNS name.
- And then the DNS resolution will happen using this flow.
- Now to save some time, I have already created the VPC and created a public and private subnet.
- But let's now create the next step that is Dhcp option set and then launch this EC2 instances and then create the Route53 private hosted zone.
- So you can see I have a VPC.
- So now the next thing that we want to do is we want to create a Dhcp option set.
- What we really need is this server because we want to keep the same server as Amazon provided DNS.
- So let's create a new Dhcp option set.
- But you have to also associate this with your VPC.
- So let's go to the VPC and just modify this to the corp dot internal.
- So we are done with the VPC settings.

##### Polished Architect Notes
- Transcript signals that in this exercise, let's try to see how the private DNS works for the VPC using route 53 private hosted zone.
- Transcript signals that our setup will look something like this where we have VPC and then corresponding subnets.
- Transcript signals that we want to use Amazon provided DNS server.
- Transcript signals that we are not going to change anything in the Dhcp option set as a name server.
- Transcript signals that then we will associate this Dhcp option set to the VPC.
- Transcript signals that to be honest, changing this domain name to CORBA internal in the Dhcp option set is optional and I will talk about that while we implement it, but that's what the Dhcp option set will look like.
- Transcript signals that then the most important part here is to create the private hosted zone with the same name as our domain name that is corp dot internal.
- Transcript signals that then from this app server, we will try to reach to the DB server using its DNS name.
- Transcript signals that then the DNS resolution will happen using this flow.
- Transcript signals that to save some time, I have already created the VPC and created a public and private subnet.
- Transcript signals that let's now create the next step that is Dhcp option set and then launch this EC2 instances and then create the Route53 private hosted zone.
- Transcript signals that you can see I have a VPC.

##### Architect Synthesis (Transcript-Derived)
- Treat DNS/DHCP Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat DNS Resolution Path as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat DHCP and Host Configuration as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Split-Horizon and Namespace Design as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Routing and Reachability Dependencies as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: in this exercise, let's try to see how the private DNS works for the VPC using route 53 private hosted zone.
- Design implication: our setup will look something like this where we have VPC and then corresponding subnets.
- Design implication: we want to use Amazon provided DNS server.
### Phase 2 - Core Services

#### Route 53 Resolver and Private Zones
- Resolver is the in-VPC recursion and forwarding control plane.
- Private hosted zones provide private namespace authority for internal services.
- Inbound and outbound endpoints bridge AWS and on-prem DNS worlds.

#### DHCP Option Sets
- DHCP option sets are the low-level host bootstrap mechanism for DNS-related settings.
- Use them when standardization across VPCs is part of platform discipline.
- Treat custom DNS values carefully in hybrid and regulated environments.

#### Hybrid DNS Flows
- Forwarding rules should match actual namespace ownership models.
- Shared-services DNS hubs can simplify operations when designed cleanly.
- Hybrid DNS failures are often route, SG, or endpoint-placement problems, not just DNS problems.

### Phase 3 - Advanced Patterns

#### Pattern 1: Shared DNS Services VPC
- Centralize inbound and outbound resolver endpoints in a controlled services VPC.
- Associate rules across consuming VPCs intentionally.
- Use logging and ownership boundaries to avoid hidden dependencies.

#### Pattern 2: Split-Horizon Namespace Control
- Serve public and private answers differently only when business need justifies it.
- Document where each answer comes from and who owns the zone.
- Keep overlapping namespace behavior predictable for operations teams.

#### Pattern 3: Bootstrap Governance
- Standardize DHCP and resolver behavior as part of network baselines.
- Avoid ad hoc per-VPC DNS customizations unless strictly necessary.
- Consistency reduces outage blast radius during migrations and incident response.

### Phase 4 - System Design (Production)

#### Reference DNS and DHCP Architecture
- Shared DNS services layer with resolver endpoints, private hosted zones, and hybrid forwarding rules.
- Clearly separated namespace ownership for internal, external, and partner domains.
- DHCP and host-bootstrap standards aligned with platform operating model.

#### Scaling Considerations
- Rule sprawl and namespace overlap become real problems quickly.
- Hybrid DNS adds hidden dependencies on routing, security controls, and endpoint health.
- Central DNS models need strong ownership to avoid ticket-driven chaos.

#### Cost Considerations
- Resolver endpoints and query volume are usually cheap compared to outage cost.
- Operational troubleshooting cost dominates when namespace design is weak.
- Repeated custom DNS exceptions increase long-term platform overhead.

### Cross-Cloud Concept Mapping (VPC DNS and DHCP)

#### Underlying Concept: Private DNS Resolution Layer
- AWS: Route 53 Resolver plus private hosted zones
- Azure: Private DNS plus DNS Private Resolver
- GCP: Cloud DNS private zones plus forwarding
- Trade-off: all solve private namespace resolution, but integration and governance patterns differ.

#### Underlying Concept: Host Bootstrap and DNS Defaults
- AWS: DHCP option sets and VPC DNS behavior
- Azure: VNet DNS configuration patterns
- GCP: VPC DNS defaults and custom resolver forwarding patterns
- Trade-off: AWS exposes more explicit bootstrap knobs in this area than some alternatives.

### Real-World Use Cases from Transcript Signals
- Build a centralized hybrid DNS hub with inbound and outbound resolver endpoints.
- Standardize private name resolution for multi-account application estates.
- Control bootstrap DNS behavior across environments using deliberate DHCP settings.

### Constraints and Exam-Relevant Traps Captured
- DNS problems in AWS are often route or security problems in disguise.
- Split-horizon designs become dangerous when zone ownership is unclear.
- Private DNS and DHCP defaults should not be changed casually in large estates.
## Step 1 — Line-by-Line Extraction

Every non-empty line from every source transcript is preserved below with extraction fields.

### File: outputs/aws-solutions-architect-professional/05_Compute & Load Balancing/061_Route 53 - Part 1.txt

Line 1:
- Concepts: Routing and Reachability Dependencies
- Services: Amazon Route 53
- Key Insights: Okay, so now let's talk about Route 53.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 2:
- Concepts: Routing and Reachability Dependencies
- Services: Amazon Route 53
- Key Insights: And first, let's talk about the record types that exist within Route 53.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 3:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So we have the A that maps a hostname to IPv4.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 4:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Quadruple A which maps the hostname to IPv6.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 5:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: We have CNAME to map a hostname to another hostname in which the target of the hostname is being A or an AAAA record.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 6:
- Concepts: DNS Resolution Path, Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: And you cannot create a CNAME on top of, the top node of the DNS namespace which is the Zone Apex.
- Hidden/Implicit Meaning: Constraint or limitation signal; DNS resolution-path and control-plane signal.

Line 7:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So, you cannot create a CNAME for example.com.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 8:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: We can create a CNAME for www.example.com, and we'll see how to solve that problem with Alias records.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 9:
- Concepts: Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: And then finally, NS which are name servers for the hosted zone which control how traffic is rooted to a domain.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 10:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So, these records are all you need to know for the Solutions Architect professional exam, so, don't worry about the rest.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 11:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Now, for the A record, how does that work?
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 12:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies
- Services: Amazon Route 53
- Key Insights: Well, the client wants to access an EC2 instance that has a public IP, is going to first query for example.com in Amazon Route 53, and then get an IP back, and then thanks to the IP, reach our EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 13:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So, this is for a very simple A record, okay?
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 14:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Now, let's talk about difference of CNAME and Alias.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 15:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So, all the resources in AWS, for example Load Balancer, CloudFront, et cetera, they expose an AWS hostname.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 16:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So, for example, this is the hostname of a Load Balancer, and maybe we want this Load Balancer to be instead myapp.mydomain.com.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 17:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So, how do we do this?
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 18:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Well, if we have a CNAME, as remembered, it is a hostname that points to any other hostnames.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 19:
- Concepts: Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: So, it is very possible for us to do app.mydomain.com points to anything.com, and so therefore it would work for the example above, but this only works for non root domain, so, it must be something.mydomain.com.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal.

Line 20:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So, for an Alias record though it has difference.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 21:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: It's to point hostname only to a specified AWS resource.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 22:
- Concepts: Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: So, it's app.mydomain.com into something.amazonaws.com, so, it must be a resource from AWS, and this works for root domain and non root domain.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 23:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So, it works for mydomain.com and it's free of charge and it has native health check as a feature, so that means that for the Load Balancer in AWS you cannot do a CNAME for mydomain.com, but you can do an Alias record for mydomain.com.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 24:
- Concepts: Routing and Reachability Dependencies
- Services: Amazon Route 53, Amazon VPC
- Key Insights: In terms of the targets for the Alias records we get Elastic Load Balancers, CloudFront Distribution, API Gateway, Elastic Beanstalk environments, S3 websites, VPC interface endpoints, Global accelerator Accelerator, as well as any other Route 53 record in the same hosted zone.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 25:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: And you cannot set Alias record for an EC2 DNS name.
- Hidden/Implicit Meaning: Constraint or limitation signal; DNS resolution-path and control-plane signal.

Line 26:
- Concepts: Routing and Reachability Dependencies
- Services: Amazon Route 53
- Key Insights: Now each record in Route 53 is going to have a record TTL which is the Time To Live.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 27:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: So here's an example, the client wants to talk to our web server, but we have a DNS request for myapp.example.com.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 28:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: We're going to get a response, for example A record, but this will have a TTL, and this response is going to be cached for the time of the TTL.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 29:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And then once the TTL expires then the record will be renewed.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 30:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So while the TTL is still present and the record is saved on the client side, then the requests are going to go to the IP that was refetched from before.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 31:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies
- Services: Amazon Route 53
- Key Insights: So, in case you do a high TTL, for example, 24 hours that means that you're going to get less traffic on the Route 53, but you have possibly updated records, for example, if you update them in DNS side then it will take up to 24 hours for clients to get the new values.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 32:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: Otherwise, if you set a very low TTL, for example 60 seconds that means you're going to get more traffic on the DNS side which is going to cost you some money, but on the flip side, the records are going to be outdated for less time and it's going to be easier to change records, so, it's always a trade off.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; DNS resolution-path and control-plane signal.

Line 33:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: And except for the Alias record the TTL is mandatory for each DNS record, very important to remember.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; DNS resolution-path and control-plane signal.

Line 34:
- Concepts: Routing and Reachability Dependencies
- Services: (none explicit)
- Key Insights: Okay, now let's look at the routing policy, so we have the simple routing policy which is to route traffic to a single resource and this cannot be associated with the health check and this is the only kind of routing policy that is not associated with the health check.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 35:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So, here's an example, so client goes to food.example.com and then gets a value back.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 36:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Super simple.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 37:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: But you can also specify multiple values in the same record, and if that's the case then a random one is going to be chosen by the clients.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 38:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: So the client is asking for a DNS request and then gets multiple values as a result.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 39:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: The client is going to choose a random value.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 40:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's very simple.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 41:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Next, we have Weighted.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 42:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So, Weighted gives you the ability to control the percentage of the request that go to a specific resource.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 43:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So in this example, we have 70% of the request going to my first EC2 instance then 20% to my second EC2 instance and then 10% to my last EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 44:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So, this kind of record can be associated with the health checks to make sure that we don't send traffic to a resource that is not healthy.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 45:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: The use cases for Weighted records is around load balancing between regions, testing the application versions, and so on.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 46:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Then we have latency based records which is to redirect resources that have the least latency close to us which is super helpful when latency is a user priority.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 47:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And the latency is going to be defined on the traffic between the users and the specified AWS region.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 48:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So, it's further possible for Germany users to be directed to the US, if that's the lowest latency, and for example, your app is in Asia.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 49:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So, these kind of records can be associated with health checks as well which gives a failover capability.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 50:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So if we have, for example, two ALB, one in US-East-1 and one in AP-Southeast-1, and our users all around the world it's very possible for these users to go to US-East-1 and for the others to go to AP-Southeast-1.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 51:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Next we have Failover for active-passive type of record.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 52:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So, we have a primary record and then a secondary disaster recovery record.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 53:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And so there's going to be a health check performed on the primary one.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 54:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And then in case the primary fails then we are going to have a failover to the second instance.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 55:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: And this will be characterized by DNS request that either reply with the first EC2 instance or the second EC2 instance.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 56:
- Concepts: Routing and Reachability Dependencies
- Services: (none explicit)
- Key Insights: Then we have Geolocation which is different from latency based, so this is to route based on the user location itself.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 57:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So you can specify by continent, by country or even by US states.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 58:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And if you have overlapping then the most precise location is going to be selected.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 59:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So you should create a default record in case you have no match on location.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 60:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And then use case for geolocation is to be doing website localization, to restrict content distribution or load balancing.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 61:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And these can be associated with health checks, so, here's an example, we have a map of Europe right here, and some Germany users could be sent to this record, French users could be sent to that record and then anyone else could be sent to the default IP right here.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 62:
- Concepts: Routing and Reachability Dependencies
- Services: (none explicit)
- Key Insights: Another one is called Geoproximity which is to route to resources based on the geographic location of users and resources.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 63:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And thanks to something called the bias you can shift traffic to some resources more or less based on that number.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 64:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So, you change the specify, you change the bias value to expand traffic to resource, you're going to increase it from one to 99 or to shrink you're going to decrease it from minus one to minus 99 which is going to send less traffic to the resource.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 65:
- Concepts: Routing and Reachability Dependencies
- Services: Amazon Route 53
- Key Insights: And the resource can be an AWS resource or it could be a non-AWS resource, and in that case, we need to specify a latitude and longitude for the Geoproximity and for it to be effective and to be set up, you need to use the traffic flow feature of Route 53.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 66:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So, it's better to see where the diagram, how that works.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 67:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So, if you have US-East-1 and US-East-1 then they're going to be bias zero zero, so you're going to get a line in the center of the US geographically.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 68:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And so half the users are gonna go to West and half the users are gonna go to East.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 69:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: But in case you increase the bias in US-East-1 and for example, you set a bias to something much higher, say 50, then if you leave it to zero on US-West-1 then the line is going to be closer to US-West-1 and therefore more users to the right of that line are gonna go to US-East-1, and the other ones are gonna go still to US-West-1.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 70:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So with the bias you're able to really manipulate how much proximity you want users to be next to locations.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 71:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Which brings onto Traffic flow.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 72:
- Concepts: Routing and Reachability Dependencies
- Services: Amazon Route 53
- Key Insights: So traffic flow is a feature of Route 53 which allows you to easily create and maintain very complex and large records as well as Geoproximity records.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 73:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So it's a visual editor and it gives you complex routing decision trees available to you that you can set up easily.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 74:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And these configurations are saved as Traffic Flow Policies, and they can even be applied to different hosted zones if it needs to, and they support versioning.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 75:
- Concepts: Routing and Reachability Dependencies
- Services: Amazon Route 53
- Key Insights: Finally, we have one last type of record called the Multi-Value record which is to use when routing to multiple resources, and then the Route 53 is going to return multiple values and resources.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 76:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: But because this can be associated with a health check we can only make sure that the return values are full healthy resources.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 77:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: So the Multi-Value returns up to eight healthy records at each query.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 78:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And a Multi-Value is a good balancer, but it's not a substitute for having a load balancer.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 79:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So here's an example, We can set up a multi A record to set two multiple IPs, and then if they're all healthy then they will all be returned back to the clients.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 80:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So now let's talk about another routing policy called the IP-based routing which is very intuitive to think about because you're going to define the routing based on the client IP addresses.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 81:
- Concepts: Routing and Reachability Dependencies
- Services: Amazon Route 53
- Key Insights: In Route 53, you're going to define a list of CIDRs, they are IP ranges for your clients.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 82:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And you're going to say based on the CIDR which location the traffic should be sent to.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 83:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So the use cases will be to optimize performance because you know the IP ahead of time or to reduce network costs because you know where the IP is are coming from.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 84:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So, an example is that if you know that you have a specific internet provider and they have, they are using a specific CIDR of IP addresses.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 85:
- Concepts: Routing and Reachability Dependencies
- Services: (none explicit)
- Key Insights: You can route them to a specific endpoint thanks to this strategy.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 86:
- Concepts: Routing and Reachability Dependencies
- Services: Amazon Route 53
- Key Insights: So let's go for an example, in Route 53 I'm going to define two locations with two different CIDR blocks.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 87:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: As you can see, one start with 203 and the other one start with 200.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 88:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And the defined IP ranges.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 89:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Now, we are going to link these locations to a specific record.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 90:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So for example.com, we're going to have location one, so the first CIDR block to send to the value 1,2,3,4, and the second location, the block CIDR number two to send to 5,6,7,8, and these represents the public IP of two EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 91:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Now, as you would expect, if a user comes in with a specific IP that is part of the location one CIDR block, they will be directed to the first EC2 instance of IP 1,2,3,4.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 92:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: And the user B with a second IP address that belongs to the location two, will be redirected and will have a DNS query response to the EC2 instance of IP 5,6,7,8.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 93:
- Concepts: Routing and Reachability Dependencies
- Services: Amazon Route 53
- Key Insights: So that's it for the basics of Route 53, I hope there is nothing new for you, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

### File: outputs/aws-solutions-architect-professional/05_Compute & Load Balancing/062_Route 53 - Part 2.txt

Line 1:
- Concepts: Routing and Reachability Dependencies, Split-Horizon and Namespace Design
- Services: Amazon Route 53
- Key Insights: So next, the second part of this Route 53 lecture ...so we have Hosted Zones and this is a container of records to define how to route traffic to a domain and its subdomains and we have two kinds.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 2:
- Concepts: DNS/DHCP Operational Context
- Services: Amazon VPC
- Key Insights: We have the Public Hosted Zones, to allow the internet to resolve them for public domains, but also we get the Private Hosted Zones and these can only be resolved from within your VPC and you can define private URL's.
- Hidden/Implicit Meaning: Constraint or limitation signal; DNS resolution-path and control-plane signal.

Line 3:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So, the difference is that the Public Hosted Zone is accessible publicly and you can have the target being the Public IP of an EC2 Instance, the Public IP of an Application Load Balancer or a CloudFront distribution or an S3 Bucket website for example.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 4:
- Concepts: Split-Horizon and Namespace Design
- Services: Amazon VPC, Private Hosted Zone
- Key Insights: But in the Private Hosted Zone, it's used from within your VPC and it's very helpful to link to the Private IP of your EC2 Instances or the Private IP of your Database Instances and so on.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 5:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies, Split-Horizon and Namespace Design
- Services: Amazon Route 53, Amazon VPC, Private Hosted Zone
- Key Insights: Other good things to know for Route 53 is that in case you have a Private Hosted Zone with a Private DNS then in your VPC you must enable two settings called the enableDnsHostnames and enable DnsSupport.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; DNS resolution-path and control-plane signal.

Line 6:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies
- Services: Amazon Route 53
- Key Insights: Also, on Route 53 you get support for the DNS Security Extensions (DNSSEC) and it's a protocol for securing DNS traffic to verify the DNS data integrity and origin.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 7:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: It helps you to be protected against Man in the Middle (MITM) attacks on the DNSSEC.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 8:
- Concepts: Routing and Reachability Dependencies, Split-Horizon and Namespace Design
- Services: Amazon Route 53
- Key Insights: And Route 53 has support for both DNSSEC for Domain Registration and also DNSSEC Signing.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 9:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: It only works with Public Hosted Zones.
- Hidden/Implicit Meaning: Constraint or limitation signal; DNS resolution-path and control-plane signal.

Line 10:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies, Split-Horizon and Namespace Design
- Services: Amazon Route 53
- Key Insights: Finally, you can use Route 53 with a 3rd Registrar in which case you buy the domain outside of AWS but you still use Route 53 as your DNS provider.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 11:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: For this, you just update the NS records on the Registrar and you appoint them to AWS.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 12:
- Concepts: Routing and Reachability Dependencies
- Services: Amazon Route 53
- Key Insights: Onto Health Checks, so you get Public Health Checks on Route 53.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 13:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: That means that for example, if you have two ALB's in two distinct regions then you can set up two Health Checks to check the health of these ALB.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 14:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: And you use the Health Check, to link them to a specific DNS record and this gives you automatic DNS Failover.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 15:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So, you have three kind of Health Checks.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 16:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: You get Health Checks that will monitor an endpoint health so: application, server or maybe another AWS resource.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 17:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: You get Health Checks that will monitor other Health Checks and they are called Calculated Health Checks.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 18:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And you get Health Checks that monitor CloudWatch Alarms, which gives you full control because you do whatever you want with a CloudWatch alarm.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 19:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So you can monitor, for example, throttles of DynamoDB alarms on RDS or any custom metrics which is very helpful for private resources.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 20:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Now all of these Health Checks will publish also CloudWatch metrics if you ever need to.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 21:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So as we said we have Calculated Health Checks which is to combine Health Checks into a Parent Health Check and for this you can use the OR, AND, or NOT condition.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 22:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: You can monitor up to 256 Children Health Checks in one Parent Health Check and you specify how many of the Child Health Checks need to pass to make the Parent Health pass as well.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 23:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So the use case of a Calculated Health Check is to perform maintenance on your website without causing, for example, all the Health Checks to fail.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 24:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: You can also monitor an Endpoint using Health Checks.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 25:
- Concepts: Routing and Reachability Dependencies
- Services: (none explicit)
- Key Insights: So, we can monitor Public Endpoints and Health Checkers all around the world will do HFTP request to the health route that you set, okay?
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 26:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And when you do set something up you get about fifteen Health Checkers that will check your Endpoint health so it needs to be a Public Endpoint, of course.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 27:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And then the Health Checks are going to pass only if the Endpoint is going to respond with the 200's or the 300's status codes.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 28:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Now there's a cool feature that you need to know about that is coming up in the exam.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 29:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Is that the health check can be set up to fail or pass based on the value returned by the Endpoint that you are checking.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 30:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And if in the first 5120 bytes of the response you have some specific text that you specify then you make the Health Check pass or else the Health Check does not pass.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 31:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Okay, so how do we do Health Checks of stuff in Private Hosted Zones?
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 32:
- Concepts: DNS/DHCP Operational Context
- Services: Amazon VPC
- Key Insights: Well, because the Health Checkers are outside the VPC they cannot access Private Endpoints.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 33:
- Concepts: DNS/DHCP Operational Context
- Services: Amazon VPC
- Key Insights: So, Private VPC or on-premises resources.
- Hidden/Implicit Meaning: Hybrid DNS integration signal.

Line 34:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And so therefore to monitor the health of an EC2 Instance, what you can do is that you can create a CloudWatch Metric then you associate a CloudWatch Alarm with it and then you base the Health Check to monitor the CloudWatch Alarm itself and this is how you would effectively monitor the health of an internal resource.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 35:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So let's take an example of a Solution Architecture for multi-region failover with RDS.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 36:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So we have a main database and we have an Async replication into a different region, so we have us-east-1 to us-west-2.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 37:
- Concepts: Routing and Reachability Dependencies
- Services: (none explicit)
- Key Insights: Then we have two ways, either we set up an EC2 Instance to monitor the health of the database and to expose a HFTP call /health-db route and that is one way of doing it.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 38:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Or option two which I like more, is to define a CloudWatch Alarm and link the CloudWatch Alarm into a Health Check.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 39:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Once the Health Check is off, we can link it to a CloudWatch Alarm as well.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 40:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies
- Services: Amazon Route 53
- Key Insights: This is going to be linked to an SNS Topic or an CloudWatch Event which is going to trigger a Lambda function and then the Lambda function will update the DNS of your application into Route 53 and then promote your Read Replica in us-west-2 and effectively you have achieved automated failover using Health Checks and Route 53.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 41:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So, I hope that was helpful.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 42:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked this lecture.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 43:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

### File: outputs/aws-solutions-architect-professional/05_Compute & Load Balancing/063_Route 53 - Resolvers & Hybrid DNS.txt

Line 1:
- Concepts: DNS Resolution Path, Hybrid DNS Integration
- Services: (none explicit)
- Key Insights: Okay, so now let's view an advanced use case that comes up a lot in the exam, which is around Hybrid DNS.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal; Hybrid DNS integration signal.

Line 2:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies
- Services: Amazon Route 53, Route 53 Resolver
- Key Insights: So we have our region and there is the Route 53 resolver.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 3:
- Concepts: DNS Resolution Path, Split-Horizon and Namespace Design
- Services: Route 53 Resolver
- Key Insights: And by default, this resolver is going to automatically answer DNS queries for local domain names for EC2 instances.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 4:
- Concepts: DNS/DHCP Operational Context
- Services: Amazon VPC
- Key Insights: So for example, here's our VPC.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 5:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: We have an EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 6:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies
- Services: Amazon Route 53, Route 53 Resolver
- Key Insights: There is this DNS name, the Route 53 resolver knows how to reply to these queries.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 7:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So this is fine.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 8:
- Concepts: Split-Horizon and Namespace Design
- Services: Private Hosted Zone
- Key Insights: Any records in your private hosted zone as well is going to be easy to answer to, and records in public name servers, for example, for a public hosted zone, or any name server out there that is public on the internet.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 9:
- Concepts: DNS Resolution Path, Hybrid DNS Integration
- Services: Amazon VPC
- Key Insights: Now, if you want to resolve DNS queries between your VPC and other private networks, your own networks that has other DNS resolvers, then you're going to need a hybrid DNS.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal; Hybrid DNS integration signal.

Line 10:
- Concepts: DNS/DHCP Operational Context
- Services: Amazon VPC
- Key Insights: So these networks can be PeeredVPC for example, or it could be an on-premises network that is going to be connected to our VPC through Direct Connect or AWS VPN.
- Hidden/Implicit Meaning: Hybrid DNS integration signal.

Line 11:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So for this, let me introduce you two concepts that we're going to see with diagrams in the next slides.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 12:
- Concepts: DNS Resolution Path
- Services: Route 53 Resolver
- Key Insights: So these are about resolver endpoints.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 13:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So there is two things.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 14:
- Concepts: Hybrid DNS Integration
- Services: Inbound Resolver Endpoint, Outbound Resolver Endpoint
- Key Insights: There's an inbound endpoint and an outbound endpoint.
- Hidden/Implicit Meaning: Hybrid DNS integration signal.

Line 15:
- Concepts: DNS Resolution Path, Hybrid DNS Integration, Routing and Reachability Dependencies
- Services: Amazon Route 53, Route 53 Resolver
- Key Insights: So inbound endpoints are allowing DNS resolvers on your external networks to forward DNS queries to your Route 53 resolver and answer these queries.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal; Hybrid DNS integration signal.

Line 16:
- Concepts: Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: So these resolvers will help to resolve domain names for the resources of AWS.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 17:
- Concepts: Routing and Reachability Dependencies, Split-Horizon and Namespace Design
- Services: Amazon Route 53, Private Hosted Zone
- Key Insights: For example, your EC2 instances or records that you create in your Route 53 private hosted zone.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 18:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So you get both answers for your internal systems, and also for AWS private host zones, and I will show you a diagram, it will make a lot more sense very, very soon.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 19:
- Concepts: DNS Resolution Path, Hybrid DNS Integration
- Services: Outbound Resolver Endpoint
- Key Insights: Now, your outbound endpoint is to conditionally forward DNS queries to your on-premises DNS resolvers.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal; Hybrid DNS integration signal.

Line 20:
- Concepts: DNS Resolution Path, Hybrid DNS Integration
- Services: Route 53 Resolver
- Key Insights: And for this, we're going to create resolver rules to forward them.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 21:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Now we associate these endpoints with one or more VPCs within the same region, and we create in two availability zones for high availability.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 22:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Now each endpoint supports about 10,000 queries per second, per IP address.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 23:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And if you need more, well, you create more IP addresses.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 24:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: And these resolvers remove the need from before where people have to run their own DNS resolvers on AWS and link them to their resolvers on premises.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 25:
- Concepts: DNS Resolution Path
- Services: Route 53 Resolver
- Key Insights: Now, these are managed resolver endpoints by AWS.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 26:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So let's have a look at a diagram, it will make a lot more sense.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 27:
- Concepts: Split-Horizon and Namespace Design
- Services: Amazon VPC, Private Hosted Zone
- Key Insights: So let's take an example where we have an EC2 instance, and lives in a VPC, and we have a private hosted zone that we create, for example, aws.private, and we have also an on-premises data center that has a server.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal; Hybrid DNS integration signal.

Line 28:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Now, if you look at the EC2 instance, I gave it a CNAME of app.aws.private, okay?
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 29:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: This is a CNAME, which is linked maybe to its EC2 DNS, or it could be an A record linked to its private IP.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 30:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: It doesn't matter right?
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 31:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Now what's happening is that the server at web.onpremises.private wants to access this EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 32:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And so first, the on-premises data center and the AWS cloud are going to be linked using a VPN connection, or Direct Connect.
- Hidden/Implicit Meaning: Hybrid DNS integration signal.

Line 33:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 34:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: Now we're going to have on-premises as well as some DNS resolvers, for obviously the zone of our on-premises data center.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal; Hybrid DNS integration signal.

Line 35:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So they're going to be for the zone onpremise.private.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 36:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: Now, when the server will issue a DNS query for app.aws.private the DNS resolvers are going to say, hey, you know what?
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 37:
- Concepts: DNS Resolution Path, Hybrid DNS Integration
- Services: Inbound Resolver Endpoint, Route 53 Resolver
- Key Insights: I don't know these, but what we're going to happen is that we're going to create a resolver inbound endpoint, and behind the scenes this resolver inbound endpoint has two ENIs, again for high availability.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal; Hybrid DNS integration signal.

Line 38:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Now these ENIs are associated with private IP addresses.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 39:
- Concepts: DNS Resolution Path, Hybrid DNS Integration, Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: So what's going to happen is that within our DNS resolvers on premises, we're going to say that for the domain name, aws.private, we're going to forward to these two IPs.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 40:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 41:
- Concepts: DNS Resolution Path, Hybrid DNS Integration, Split-Horizon and Namespace Design
- Services: Route 53 Resolver
- Key Insights: And what's going to happen is that now the DNS query for app.aws.private matches this domain name that was configured on-premises, and therefore the DNS resolver is going to say, hey, I know I should forward these queries to a DNS server that has this information.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; DNS resolution-path and control-plane signal; Hybrid DNS integration signal.

Line 42:
- Concepts: Hybrid DNS Integration
- Services: (none explicit)
- Key Insights: So it's going to forward them to these IPs.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 43:
- Concepts: DNS Resolution Path, Hybrid DNS Integration, Routing and Reachability Dependencies, Split-Horizon and Namespace Design
- Services: Amazon Route 53, Inbound Resolver Endpoint, Private Hosted Zone, Route 53 Resolver
- Key Insights: Now the resolver inbound endpoint is linked to the Route 53 resolver, and then from the private hosted zone, we're going to get our final lookup and give us the final information for this query.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal; Hybrid DNS integration signal.

Line 44:
- Concepts: Hybrid DNS Integration
- Services: (none explicit)
- Key Insights: So this is what's called inbound endpoints because requests coming from the exterior and go inbound on AWS, so on-premises to AWS.
- Hidden/Implicit Meaning: Hybrid DNS integration signal.

Line 45:
- Concepts: Hybrid DNS Integration
- Services: (none explicit)
- Key Insights: As you may expect, the outbound endpoints are quite similar, but they go the other way.
- Hidden/Implicit Meaning: Hybrid DNS integration signal.

Line 46:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So we have again, the same setup, okay?
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 47:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: But this time we want to be able to resolve the DNS names of the on-premises data center.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal; Hybrid DNS integration signal.

Line 48:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies
- Services: Amazon Route 53, Route 53 Resolver
- Key Insights: So our EC2 instance is going to ask our Route 53 resolver, Do you know about web.onprem.private?
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 49:
- Concepts: DNS Resolution Path, Hybrid DNS Integration
- Services: Outbound Resolver Endpoint, Route 53 Resolver
- Key Insights: And for this, we're going to create a resolver outbound endpoint, which has two different ENIs.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal; Hybrid DNS integration signal.

Line 50:
- Concepts: DNS Resolution Path, Hybrid DNS Integration
- Services: Resolver Rule, Route 53 Resolver
- Key Insights: And we're going to create a forwarding rule, which is saying, hey, for on-prem.private here is the target IP, and this target IP corresponds to the IP of my DNS resolver on-premises.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal; Hybrid DNS integration signal.

Line 51:
- Concepts: DNS Resolution Path, Hybrid DNS Integration, Routing and Reachability Dependencies
- Services: Amazon Route 53, Route 53 Resolver
- Key Insights: So the Route 53 resolver is going to send this to this endpoint, and the endpoint is going to forward the DNS query into the on-premises DNS resolver.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal; Hybrid DNS integration signal.

Line 52:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: And then we will have automatically the response from the records stored in the DNS of our on-premises data center.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal; Hybrid DNS integration signal.

Line 53:
- Concepts: DNS Resolution Path, Hybrid DNS Integration
- Services: Outbound Resolver Endpoint, Route 53 Resolver
- Key Insights: Now to manage this outbound endpoint, we need resolver rules.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal; Hybrid DNS integration signal.

Line 54:
- Concepts: Hybrid DNS Integration
- Services: Outbound Resolver Endpoint
- Key Insights: So the outbound endpoint is going to set, to have a set of rules, okay?
- Hidden/Implicit Meaning: Hybrid DNS integration signal.

Line 55:
- Concepts: DNS Resolution Path, Hybrid DNS Integration
- Services: (none explicit)
- Key Insights: And it's going to explain how to forward DNS queries on your network.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 56:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So there's conditional forwarding, which are the forwarding rules.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 57:
- Concepts: DNS Resolution Path, Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: So the idea is that we're going to say for specific DNS queries in this domain, please match all of it to a target IP address.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 58:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So you can say, for example.com or acme.example.com, here is the target IP, or here are the target IPs for these domains.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 59:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: You can also override them with a system rule.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 60:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And this is to define overriding behavior, which is saying, hey, for a whole subdomain, do not use these forwarding rules.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 61:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: This could be something you can create.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 62:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And then finally we have auto-defined system rules, which is for domains that we know are resolved internally.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 63:
- Concepts: Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: For example, domain names that are internal to AWS or private hosted zones, for example compute.amazonaws.com or EC2.internal.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 64:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies
- Services: Amazon Route 53, Route 53 Resolver
- Key Insights: Now in case of multiple rules matched, the Route 53 resolver is going to choose the most specific match, in terms of how to choose which rule to apply.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 65:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 66:
- Concepts: DNS Resolution Path
- Services: Route 53 Resolver
- Key Insights: Finally, these resolver rules can be shared across accounts.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 67:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: If you're using AWS resource access manager or RAM.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 68:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: That means that you can share them across multiple accounts.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 69:
- Concepts: DNS Resolution Path
- Services: Route 53 Resolver
- Key Insights: That means that you can manage them centrally in one dedicated account for these resolver rules.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 70:
- Concepts: DNS Resolution Path
- Services: Amazon VPC
- Key Insights: And then you can send DNS queries from multiple VPC to the target IP defined in the rules.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 71:
- Concepts: DNS Resolution Path
- Services: Route 53 Resolver
- Key Insights: So there are a way to have a central management of your resolver rules in the central accounts.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 72:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 73:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So this is it.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 74:
- Concepts: DNS Resolution Path, Hybrid DNS Integration
- Services: (none explicit)
- Key Insights: This is how you have a hybrid DNS on AWS.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal; Hybrid DNS integration signal.

Line 75:
- Concepts: DNS Resolution Path, Hybrid DNS Integration
- Services: (none explicit)
- Key Insights: Remember inbound endpoints and outbound endpoints usually are used together to have in and out traffic from your both DNS systems from AWS and on-premises, and the exam will ask you about them for sure.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal; Hybrid DNS integration signal.

Line 76:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 77:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 78:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/05_VPC DNS and DHCP/030_Section Introduction - How DNS works_.txt

Line 1:
- Concepts: DHCP and Host Configuration, DNS Resolution Path
- Services: Amazon VPC
- Key Insights: Hi welcome to this section VPC, DNS and Dhcp.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal; Host configuration and bootstrap signal.

Line 2:
- Concepts: DNS/DHCP Operational Context
- Services: Amazon VPC
- Key Insights: Now so far we are just talking about the VPC right.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 3:
- Concepts: Routing and Reachability Dependencies
- Services: Amazon VPC
- Key Insights: So we talked about how the routing works within the VPC the subnets and you know route tables and everything.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 4:
- Concepts: DNS Resolution Path
- Services: Amazon VPC
- Key Insights: Now when you talk about the DNS as a topic it covers everything that means the DNS for VPC or the public DNS.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 5:
- Concepts: DNS Resolution Path
- Services: Amazon VPC
- Key Insights: But in this section we want to only focus on the DNS resolution for the VPC itself.
- Hidden/Implicit Meaning: Constraint or limitation signal; DNS resolution-path and control-plane signal.

Line 6:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies
- Services: Amazon Route 53
- Key Insights: Now there is another section that is Amazon Route 53 where we will talk about DNS as a whole.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 7:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: Now, I hope that you already know what is DNS and how it works, but if not, then I would like to quickly talk about the basics of the DNS.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 8:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And then we will see what are we going to cover in this section.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 9:
- Concepts: DNS Resolution Path, Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: So as you know DNS is Domain Name System.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 10:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Basically what it does is it translates the human friendly names into the IP address.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 11:
- Concepts: Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: Because for any two systems to communicate with each other, they need to know the IP address and not the domain names.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 12:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So just an example.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 13:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: If there is a web server with example.com and it has an IP address.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 14:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And now suppose you have opened the web browser in your laptop and you want to connect to example.com.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 15:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: Then the DNS will come into the play.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 16:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: So your web browser will first communicate with your local DNS server.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 17:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Now this is typically assigned by your internet service provider.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 18:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: And this local DNS server might have the address for example.com.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 19:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: But if it doesn't it will then have a flow to get that IP address by contacting other servers.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 20:
- Concepts: Routing and Reachability Dependencies
- Services: Amazon Route 53
- Key Insights: Now, the detailed flow we have covered in the route 53 section.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 21:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: So then it talks to other DNS server and ultimately gets the IP address for example.com.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 22:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And it will be returned to your web browser.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 23:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Now at this point your system knows that the IP address, for example dot com is 9.10.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 24:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: 11 dot 12.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 25:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And then web browser will make actual connection to the web server directly.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 26:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And there are few additional things that you should know.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 27:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: Which will cover in detail is about how the DNS caching works, so that not every time the web browser wants to connect to the same web server, it will make this DNS query flow.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 28:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So it just happened for the first time and for all subsequent connection, it will just use the cached information.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 29:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: So this is how typically DNS works right.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 30:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: And that's where DNS is the backbone of the internet.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 31:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: That means if DNS doesn't work you cannot connect to any internet server.
- Hidden/Implicit Meaning: Constraint or limitation signal; DNS resolution-path and control-plane signal.

Line 32:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So I hope that is clear.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 33:
- Concepts: DNS Resolution Path
- Services: Amazon VPC
- Key Insights: Now with respect to this section we are going to only talk about the VPC DNS, which means if you have VPC, then you can have your private DNS setup.
- Hidden/Implicit Meaning: Constraint or limitation signal; DNS resolution-path and control-plane signal.

Line 34:
- Concepts: DNS Resolution Path
- Services: Amazon VPC
- Key Insights: And then machines inside VPC can have say different DNS name.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 35:
- Concepts: DNS Resolution Path
- Services: Amazon VPC
- Key Insights: Now how that DNS resolution happens within the VPC.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 36:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies
- Services: Amazon VPC
- Key Insights: And second, if your VPC resource, for example EC2 instance wants to reach to the internet, then how that DNS resolution happens.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 37:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: So we are just going to focus on this part of the DNS resolution.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 38:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: But as I said overall the DNS has a wider scope.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 39:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies
- Services: Amazon Route 53
- Key Insights: That means when you launch different AWS services, for example, load balancers or CloudFront, or you access S3 bucket, which are publicly available, then you need to understand how Amazon Route 53 is used to configure that DNS.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 40:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So we will cover that in the separate section.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 41:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So I hope that is clear.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 42:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies
- Services: Amazon Route 53, Amazon VPC, Route 53 Resolver
- Key Insights: Now with that in this section we are going to talk about how the VPC resources resolve the DNS using Amazon VPC DNS server, which is also called as route 53 DNS resolver.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 43:
- Concepts: DHCP and Host Configuration, DNS Resolution Path
- Services: Amazon VPC, DHCP Option Set
- Key Insights: Then we will also talk about how you can configure the DNS options for the VPC resources using Dhcp option sets.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal; Host configuration and bootstrap signal.

Line 44:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: And then we will talk about how EC2 instances get the DNS names.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 45:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: So if you have ever launched the EC2 instance, you might have seen that there is a private DNS name and a public DNS name.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 46:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: So how exactly EC2 instances get those DNS names.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 47:
- Concepts: DNS Resolution Path
- Services: Amazon VPC
- Key Insights: And then we will talk about few important attributes that you need to know, because these attributes will affect how the DNS resolution happens from within the VPC.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; DNS resolution-path and control-plane signal.

Line 48:
- Concepts: DNS Resolution Path
- Services: Amazon VPC
- Key Insights: And finally, we will do some hands on exercises for the private VPC DNS.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 49:
- Concepts: Routing and Reachability Dependencies, Split-Horizon and Namespace Design
- Services: Amazon Route 53, Private Hosted Zone
- Key Insights: And we will do two exercises one using the route 53 private hosted zone.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 50:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: And second by using our own custom DNS server.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 51:
- Concepts: DNS Resolution Path
- Services: Amazon VPC
- Key Insights: So this will be all about the DNS resolution inside the VPC.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 52:
- Concepts: DNS Resolution Path, Hybrid DNS Integration
- Services: (none explicit)
- Key Insights: But you know that in a hybrid world, you might want to resolve the DNS from on premise network as well.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal; Hybrid DNS integration signal.

Line 53:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies
- Services: Amazon Route 53, Route 53 Resolver
- Key Insights: So for that AWS provides a service which is an extension to this DNS resolver called route 53 resolver endpoints.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 54:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies
- Services: Amazon Route 53, Route 53 Resolver
- Key Insights: So in this section we'll just cover the very basics of route 53 resolver endpoint.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 55:
- Concepts: DNS Resolution Path, Hybrid DNS Integration, Routing and Reachability Dependencies
- Services: Amazon Route 53
- Key Insights: And in the route 53 section we will dive deep into this and possibly also do an exercise for the hybrid DNS resolution.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal; Hybrid DNS integration signal.

Line 56:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 57:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So these are the topics that we are going to talk now.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 58:
- Concepts: DNS Resolution Path
- Services: Amazon VPC
- Key Insights: So let's get started with Amazon VPC DNS server.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

### File: outputs/AWS Speciality/advanced-networking-specialty/05_VPC DNS and DHCP/031_Amazon VPC DNS Server (Route53 Resolver).txt

Line 1:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Hi.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 2:
- Concepts: DNS Resolution Path
- Services: Amazon VPC
- Key Insights: So in this lecture let's understand everything about Amazon VPC, DNS server.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 3:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Now for some historic reason there are different names for the same thing.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 4:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies
- Services: Amazon Route 53, Amazon VPC, Route 53 Resolver
- Key Insights: So whether we are talking about Amazon VPC, DNS server or route 53 DNS resolver or local DNS server for the VPC or Amazon provided DNS server all means the same.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 5:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Just that because AWS is adding more and more features, the name also got changed over the time.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 6:
- Concepts: DNS Resolution Path
- Services: Amazon VPC
- Key Insights: But essentially the purpose of this DNS server is to resolve the DNS queries for the resources inside the VPC.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 7:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And typically when we say resource, we are talking about the EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 8:
- Concepts: DNS/DHCP Operational Context
- Services: Amazon VPC
- Key Insights: So there is a VPC, there are subnets and then EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 9:
- Concepts: DNS Resolution Path
- Services: Amazon VPC
- Key Insights: Now if any of these EC2 instance has to resolve some DNS for say google.com or other, if you have multiple machines within the same VPC and you want to access that machine over the DNS rather than IP address, then how that happens.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 10:
- Concepts: DNS Resolution Path
- Services: Amazon VPC
- Key Insights: Now, whenever you create a VPC, AWS will also create something called a default DNS server for that VPC.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; DNS resolution-path and control-plane signal.

Line 11:
- Concepts: DNS Resolution Path
- Services: Amazon VPC
- Key Insights: And this DNS server sits within the VPC.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 12:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: But the question is on which IP address does it run?
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 13:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So we have talked about this briefly in the earlier session.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 14:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies
- Services: Amazon Route 53, Amazon VPC, Route 53 Resolver
- Key Insights: But your route 53 DNS resolver runs on the VPC base address plus two.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 15:
- Concepts: DNS Resolution Path
- Services: Amazon VPC, Route 53 Resolver
- Key Insights: So if your VPC IPv4 cider is ten .1.0.0, then this DNS resolver will run at ten .1.0.2.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 16:
- Concepts: DNS/DHCP Operational Context
- Services: Amazon VPC
- Key Insights: And it can also be accessed over a virtual IP that is 169.254.169.2 53, but note that this IP address is only accessible from within the VPC, right?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 17:
- Concepts: DNS/DHCP Operational Context
- Services: Amazon VPC
- Key Insights: So VPC base address plus two as well as this virtual IP.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 18:
- Concepts: DNS Resolution Path
- Services: Route 53 Resolver
- Key Insights: Now what is the role of this DNS resolver.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 19:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: Of course role is to resolve the DNS queries from the EC2 instances.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 20:
- Concepts: DNS Resolution Path
- Services: Route 53 Resolver
- Key Insights: So which all types of the DNS does this DNS resolver resolve?
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 21:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So there are typically three categories.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 22:
- Concepts: DNS Resolution Path
- Services: Amazon VPC
- Key Insights: Very first, if you need to have a private DNS for your VPC resources.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 23:
- Concepts: DNS Resolution Path, Split-Horizon and Namespace Design
- Services: Amazon VPC
- Key Insights: So in the introductory section we talked about the private DNS where you can have say a domain name example.com for your VPC.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 24:
- Concepts: Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: And then for different EC2 instances you can have different domain names.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 25:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: For example app one dot example.com, app two dot example.com or db dot example.com.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 26:
- Concepts: Routing and Reachability Dependencies, Split-Horizon and Namespace Design
- Services: Amazon Route 53, Private Hosted Zone
- Key Insights: Now this you can configure using Amazon route 53 private hosted zone.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 27:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies, Split-Horizon and Namespace Design
- Services: Amazon Route 53, Private Hosted Zone
- Key Insights: So this DNS server can resolve the private DNS which you configure in the route 53 private hosted zone.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 28:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: Other than that it can resolve the Amazon provided DNS names.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 29:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: So if you remember, whenever you launch EC2 instance, it gets a private and public DNS names.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; DNS resolution-path and control-plane signal.

Line 30:
- Concepts: DNS Resolution Path
- Services: Route 53 Resolver
- Key Insights: Now, this resolver can also resolve those DNS to corresponding private IPS of the EC2 instances.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 31:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: And third, any public DNS name.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 32:
- Concepts: DNS Resolution Path, Hybrid DNS Integration
- Services: Route 53 Resolver
- Key Insights: So if these EC2 instances needs to communicate with, say, google.com, then this DNS resolver will forward all the public DNS queries to the public DNS server and will get you the IP address.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 33:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: Now this is also called as recursive DNS lookup.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 34:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So it can do that.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 35:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies
- Services: Amazon Route 53
- Key Insights: And just a thing to mention that whenever we talk about the public DNS, it means everything on the internet, including Amazon Route 53 public hosted zone.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; DNS resolution-path and control-plane signal.

Line 36:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: Because public hosted zone contains the publicly resolvable DNS records.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 37:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: So that also sits in the internet or public DNS space.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 38:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies
- Services: Amazon Route 53, Route 53 Resolver
- Key Insights: So this route 53 DNS resolver can also resolve any public DNS queries.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 39:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 40:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies, Split-Horizon and Namespace Design
- Services: Amazon Route 53, Amazon VPC, Private Hosted Zone
- Key Insights: So as I said, it can resolve the DNS from route 53 private Hosted zone or VPC, DNS, which is managed by AWS and then any public DNS.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 41:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And one thing to note that it does that in the same order.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 42:
- Concepts: Split-Horizon and Namespace Design
- Services: Private Hosted Zone
- Key Insights: That means, for example, you have google.com as a private hosted zone.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 43:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies
- Services: (none explicit)
- Key Insights: Then even if you are trying to reach to actual google.com, which is a public DNS, it will not look at that.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 44:
- Concepts: DNS Resolution Path, Split-Horizon and Namespace Design
- Services: Private Hosted Zone
- Key Insights: It will try to resolve that query from this private hosted zone.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 45:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And we are going to do some exercise around this so that it is clear to you.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 46:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So there is a preference.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 47:
- Concepts: Split-Horizon and Namespace Design
- Services: Private Hosted Zone
- Key Insights: So first it will check the private hosted zone.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 48:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: If it exists then it will try to resolve the DNS query from there.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 49:
- Concepts: DNS Resolution Path, Split-Horizon and Namespace Design
- Services: Amazon VPC, Private Hosted Zone
- Key Insights: But if you don't have private hosted zone then it will look at VPC, DNS and if not it will go to the public DNS.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 50:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So that's the order.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 51:
- Concepts: DNS Resolution Path
- Services: Amazon VPC, Route 53 Resolver
- Key Insights: And at this moment we are saying that this DNS resolver is accessible only from within the VPC, which is not 100% true.
- Hidden/Implicit Meaning: Constraint or limitation signal; DNS resolution-path and control-plane signal.

Line 52:
- Concepts: DNS/DHCP Operational Context
- Services: Amazon VPC
- Key Insights: But just for this lecture, let's try to limit our scope to the VPC only.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 53:
- Concepts: DNS Resolution Path
- Services: Amazon VPC, Route 53 Resolver
- Key Insights: And towards the end of this section we will talk about the resolver end points, which allows this resolver to be accessible from outside the VPC network.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 54:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 55:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So I hope that is clear.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 56:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies
- Services: Amazon Route 53, Amazon VPC, Route 53 Resolver
- Key Insights: Now before we move again quickly, every VPC comes with a default DNS server, also called as route 53 DNS resolver.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 57:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies, Split-Horizon and Namespace Design
- Services: Amazon Route 53, Amazon VPC, Private Hosted Zone
- Key Insights: It runs at VPC base address plus two and also available on the virtual IP, and it resolves the DNS queries from route 53, private hosted zone, VPC, internal DNS, and any public DNS.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 58:
- Concepts: DNS Resolution Path
- Services: Route 53 Resolver
- Key Insights: So with that, now let's try to see how this resolver resolves the DNS queries across these three types of the DNS.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 59:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So let's look into that.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 60:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies, Split-Horizon and Namespace Design
- Services: Amazon Route 53, Private Hosted Zone
- Key Insights: So very first scenario, how does it resolve the DNS queries from Amazon route 53 private hosted zone.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 61:
- Concepts: Routing and Reachability Dependencies, Split-Horizon and Namespace Design
- Services: Amazon Route 53, Private Hosted Zone
- Key Insights: Now for that, you need to first understand what is route 53 private hosted zone.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 62:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: So this is basically a you can say a private DNS for you.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 63:
- Concepts: Split-Horizon and Namespace Design
- Services: Amazon VPC
- Key Insights: So if your VPC needs to have its own domain name, for example say example.com.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 64:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And then this first server could be then app dot example.com.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 65:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And the second server could be db dot example.com.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 66:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So in that case app server doesn't need to know the IP address of the DB server.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 67:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Rather it will say db dot example.com.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 68:
- Concepts: Split-Horizon and Namespace Design
- Services: Private Hosted Zone
- Key Insights: It will be resolved using the private hosted zone.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 69:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And then it gets the IP address.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 70:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And then it will connect directly to that DB server.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 71:
- Concepts: Routing and Reachability Dependencies, Split-Horizon and Namespace Design
- Services: Amazon Route 53, Private Hosted Zone
- Key Insights: So this you can do using Amazon Route 53 private hosted zone.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 72:
- Concepts: Split-Horizon and Namespace Design
- Services: Private Hosted Zone
- Key Insights: So of course you need to first create a private hosted zone.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 73:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And you can use any name for that.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 74:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Just an example.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 75:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: I'm using example dot internal.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 76:
- Concepts: Split-Horizon and Namespace Design
- Services: Private Hosted Zone
- Key Insights: But as I said, you can even use google.com as your private hosted zone.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 77:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: It doesn't clash with the publicly available google.com.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 78:
- Concepts: Split-Horizon and Namespace Design
- Services: Private Hosted Zone
- Key Insights: Now, once you create the private hosted zone, you have to create the records.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 79:
- Concepts: Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: So in these records, you map your domain name for a particular instance to its private IP address.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 80:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So in this case you will have two records created which you say app one dot example.com which points to first ip and app two example.com which points to this second IP, something like this.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 81:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: Now at this moment, if first instance wants to communicate with the second instance, it will use the DNS name app two dot example dot internal.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 82:
- Concepts: DNS Resolution Path
- Services: Route 53 Resolver
- Key Insights: And in that case the DNS query will first go to this DNS resolver.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 83:
- Concepts: Split-Horizon and Namespace Design
- Services: Private Hosted Zone
- Key Insights: It will check if there is a private hosted zone with the name example dot internal, and if it is there, then it will try to get the IP address for corresponding record, which is this, and then it will get the IP address back.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 84:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: It will give that IP address to first instance.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 85:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And first instance now will connect to the second instance.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 86:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Using that private IP address.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 87:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: So this is how the entire DNS resolution happens right.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 88:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So I hope that is clear.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 89:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Now let's look at the second scenario.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 90:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: Now this is very much AWS managed DNS.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 91:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: As I said whenever you create EC2 instance, AWS may assign the private and public DNS names for your EC2 instances.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; DNS resolution-path and control-plane signal.

Line 92:
- Concepts: DNS Resolution Path
- Services: Route 53 Resolver
- Key Insights: So that is also resolved by this DNS resolver.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 93:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So the EC2 instance names are typically in the format IP, dash private IP address, then region name, dot compute, dot internal.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 94:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And just an example like this or this.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 95:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: And then if any of these instance tries to communicate with other instance using this DNS name, they can very well do that.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 96:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And in that case the flow will be similar.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 97:
- Concepts: DNS Resolution Path
- Services: Route 53 Resolver
- Key Insights: The DNS query goes to the DNS resolver.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 98:
- Concepts: DNS Resolution Path
- Services: Amazon VPC
- Key Insights: It looks at the VPC DNS records, gets the IP address, and then the instance will connect using that IP address.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 99:
- Concepts: DNS Resolution Path, Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: Now this is not very helpful I would say because typically you will rather use your own domain name rather than using AWS provided DNS name.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 100:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies, Split-Horizon and Namespace Design
- Services: Amazon Route 53, Amazon VPC, Private Hosted Zone
- Key Insights: So it makes sense to rather use route 53 private hosted zone instead of using this VPC DNS.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 101:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: But I just wanted to, you know, mention it here for the completeness of how it actually works.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 102:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 103:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So we saw the two types.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 104:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: Now third type is the public DNS which is fairly simple.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 105:
- Concepts: DNS Resolution Path, Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: In this case the EC2 instance will actually make a DNS request for any public domain name.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 106:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And this server is available somewhere in the internet.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 107:
- Concepts: DNS Resolution Path
- Services: Route 53 Resolver
- Key Insights: Now, in that case, your DNS resolver will make a recursive DNS lookup for, you know, public DNS.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 108:
- Concepts: Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: Now this public machines will be assigned this domain name using some domain registrar.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 109:
- Concepts: Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: And there are so many domain registrar out there.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 110:
- Concepts: DNS Resolution Path, Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: Depending on which domain registrar owns this domain name, they will be responsible for resolving this DNS queries.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 111:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies
- Services: Amazon Route 53
- Key Insights: So here even route 53 public hosted zone sits into this public DNS space.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 112:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So you can have your own public hosted zone.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 113:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: And you can create your own DNS records which are resolved over the internet.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 114:
- Concepts: Routing and Reachability Dependencies
- Services: Amazon Route 53
- Key Insights: And we are going to talk about this in more detail in the route 53 section.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 115:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So you get the public IP back from the EC2 instance, and then EC2 instance will make direct connection to the publicly available server.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 116:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Now just remember that we are not talking about the network layer connectivity between the EC2 and the public server.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 117:
- Concepts: DNS/DHCP Operational Context
- Services: Amazon VPC
- Key Insights: For that, of course, your VPC needs to have internet gateway, or if these instances are in the private subnet, then you will need Nat gateway.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 118:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: All that is given here we are just talking about the DNS resolution.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 119:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And for that if you see you don't need any public connectivity for sending actual traffic, you need this internet gateway here.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 120:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So remember this distinction right.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 121:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies
- Services: Amazon Route 53, Route 53 Resolver
- Key Insights: So we talked about a lot of things though basics but very important for your exam because I'm sure there will be some questions around this route 53 DNS resolver.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; DNS resolution-path and control-plane signal.

Line 122:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Now before we stop for this lecture, I just want to make one more point.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 123:
- Concepts: DNS Resolution Path
- Services: Amazon VPC, Route 53 Resolver
- Key Insights: Now, you know that there is this DNS resolver in every VPC.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 124:
- Concepts: DNS Resolution Path
- Services: Amazon VPC
- Key Insights: But the question is how does EC2 instance knows that there is this DNS server and it is running on this IP address that is VPC base address plus two.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 125:
- Concepts: DHCP and Host Configuration
- Services: (none explicit)
- Key Insights: Now this is a part of Dhcp that is dynamic host control protocol.
- Hidden/Implicit Meaning: Host configuration and bootstrap signal.

Line 126:
- Concepts: DHCP and Host Configuration
- Services: Amazon VPC
- Key Insights: So every VPC comes with some default Dhcp configuration.
- Hidden/Implicit Meaning: Host configuration and bootstrap signal.

Line 127:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: And you can modify this information to change your DNS server.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 128:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies
- Services: Amazon Route 53, Amazon VPC, Route 53 Resolver
- Key Insights: By default, VPC will have the configuration, which says that for this VPC, the DNS server is this route 53 resolver.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 129:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: But as I said you can modify this configuration.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 130:
- Concepts: DHCP and Host Configuration
- Services: DHCP Option Set
- Key Insights: And all that happens using something called Dhcp option sets.
- Hidden/Implicit Meaning: Host configuration and bootstrap signal.

Line 131:
- Concepts: DHCP and Host Configuration
- Services: Amazon VPC, DHCP Option Set
- Key Insights: So every VPC comes with a default Dhcp option set in which you would have these configurations.
- Hidden/Implicit Meaning: Host configuration and bootstrap signal.

Line 132:
- Concepts: DHCP and Host Configuration
- Services: DHCP Option Set
- Key Insights: And in the next lecture we are going to talk in detail about this Dhcp option set.
- Hidden/Implicit Meaning: Host configuration and bootstrap signal.

Line 133:
- Concepts: DHCP and Host Configuration, DNS Resolution Path
- Services: Amazon VPC, DHCP Option Set
- Key Insights: But in a nutshell this Dhcp option set tells the VPC resources where to go for DNS queries.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal; Host configuration and bootstrap signal.

Line 134:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies
- Services: Amazon Route 53, Route 53 Resolver
- Key Insights: And in that case that is Amazon provided DNS server, which is nothing but this route 53 DNS resolver.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 135:
- Concepts: DHCP and Host Configuration
- Services: Amazon VPC, DHCP Option Set
- Key Insights: So VPC comes with the default Dhcp option set, which provides this dynamic host configuration to the instances when they launch.
- Hidden/Implicit Meaning: Host configuration and bootstrap signal.

Line 136:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And as I said we can change these configurations.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 137:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So that's it about this lecture.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 138:
- Concepts: DHCP and Host Configuration, DNS Resolution Path
- Services: Amazon VPC
- Key Insights: Now let's look at the Dhcp options sets and other DNS related configurations for your VPC.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal; Host configuration and bootstrap signal.

Line 139:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So thanks for watching and stay tuned.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/05_VPC DNS and DHCP/032_VPC DHCP Option sets.txt

Line 1:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Hi.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 2:
- Concepts: DHCP and Host Configuration, DNS Resolution Path
- Services: Amazon VPC, DHCP Option Set
- Key Insights: So in this lecture let's understand how Dhcp option sets work and what kind of attributes it has which affects your DNS configuration for the VPC.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal; Host configuration and bootstrap signal.

Line 3:
- Concepts: DHCP and Host Configuration
- Services: Amazon VPC, DHCP Option Set
- Key Insights: So as I said every VPC comes with a default Dhcp option set.
- Hidden/Implicit Meaning: Host configuration and bootstrap signal.

Line 4:
- Concepts: DNS/DHCP Operational Context
- Services: Amazon VPC
- Key Insights: And it provides basically a dynamic host configuration protocol attributes for the VPC resources.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 5:
- Concepts: DHCP and Host Configuration, Split-Horizon and Namespace Design
- Services: DHCP Option Set
- Key Insights: So through Dhcp option set you can set what should be the private domain name for your EC2 instances.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Host configuration and bootstrap signal.

Line 6:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies, Split-Horizon and Namespace Design
- Services: Amazon Route 53, Route 53 Resolver
- Key Insights: Then what should be the domain name server which is like route 53 resolver by default.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; DNS resolution-path and control-plane signal.

Line 7:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Then additional thing like network time protocol server that is NTP and net bias node type.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 8:
- Concepts: Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: But out of this I think we are interested mainly in domain name server.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 9:
- Concepts: DHCP and Host Configuration, DNS Resolution Path
- Services: Amazon VPC, DHCP Option Set
- Key Insights: Because using the Dhcp option set, we can tell your VPC that do not look at the AWS provided DNS server, but rather you can look at some other DNS server for resolving the DNS queries.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal; Host configuration and bootstrap signal.

Line 10:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And we will do that exercise little later in this section.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 11:
- Concepts: DHCP and Host Configuration
- Services: Amazon VPC, DHCP Option Set
- Key Insights: But all these configurations are managed at the VPC level using the Dhcp option sets.
- Hidden/Implicit Meaning: Host configuration and bootstrap signal.

Line 12:
- Concepts: DHCP and Host Configuration
- Services: DHCP Option Set
- Key Insights: So as I said, when you launch the EC2 instances, this Dhcp option set parameters are automatically applied for the EC2 instances as you launch them.
- Hidden/Implicit Meaning: Host configuration and bootstrap signal.

Line 13:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies, Split-Horizon and Namespace Design
- Services: Amazon Route 53, Route 53 Resolver
- Key Insights: So it has the default domain name server which points to Amazon provided DNS, which is nothing but the route 53 DNS resolver that we talked about in the last lecture.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 14:
- Concepts: Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: And it also automatically configures the internal domain name for your EC2 machines.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 15:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So the typical format is private IP of the EC2 instance, then the region name and then compute dot internal.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 16:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And we are going to again talk about this in further detail.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 17:
- Concepts: DHCP and Host Configuration
- Services: DHCP Option Set
- Key Insights: But overall this is what Dhcp option set does.
- Hidden/Implicit Meaning: Host configuration and bootstrap signal.

Line 18:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So I hope that is clear.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 19:
- Concepts: DHCP and Host Configuration
- Services: DHCP Option Set
- Key Insights: Now just to show you this is one of the Dhcp option set which is a default one.
- Hidden/Implicit Meaning: Host configuration and bootstrap signal.

Line 20:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And you can see here that it is created in Mumbai region.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 21:
- Concepts: Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: And that's where the domain name is AP South one dot compute dot internal.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 22:
- Concepts: DNS Resolution Path, Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: And the default domain name server is Amazon provided DNS.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 23:
- Concepts: DHCP and Host Configuration
- Services: Amazon VPC, DHCP Option Set
- Key Insights: And this Dhcp option set is automatically associated with your VPC.
- Hidden/Implicit Meaning: Host configuration and bootstrap signal.

Line 24:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: And then as you launch EC2 instances they will have corresponding private DNS name something like this.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 25:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: So what it does basically it sets the host name for your EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 26:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: Now this host names could be private host names or the public host name.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 27:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: Now it really depends on the DNS attribute where your EC2 instance will also receive the public hostname or not.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 28:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: But there are always this private host names.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 29:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: So it sets up the host name which is in a format like IP address, dot region, dot computing internal.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 30:
- Concepts: DHCP and Host Configuration
- Services: (none explicit)
- Key Insights: And additionally the Dhcp will also set the Resolv.conf.
- Hidden/Implicit Meaning: Host configuration and bootstrap signal.

Line 31:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: If it's a Linux machine which tells your EC2 instance, what is the name server for DNS resolution?
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 32:
- Concepts: DNS/DHCP Operational Context
- Services: Amazon VPC
- Key Insights: And here if you see the cursor, it has the name server 10.10.0.2, which is nothing but VPC base address plus two.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 33:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: That means all the DNS queries from the EC2 instance are going to this name server.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 34:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: And we already talked about this DNS server in detail in the earlier lecture, so I hope that is clear.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 35:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Now with that, let me take you to the AWS console and show you some of these configurations.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 36:
- Concepts: DNS/DHCP Operational Context
- Services: Amazon VPC
- Key Insights: So I just created one VPC called demo VPC.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 37:
- Concepts: DHCP and Host Configuration
- Services: DHCP Option Set
- Key Insights: And if you see here it is associated with Dhcp option set which is the default one.
- Hidden/Implicit Meaning: Host configuration and bootstrap signal.

Line 38:
- Concepts: DHCP and Host Configuration, Split-Horizon and Namespace Design
- Services: DHCP Option Set
- Key Insights: And if you just go to this Dhcp option set then you will see the domain name as this.
- Hidden/Implicit Meaning: Host configuration and bootstrap signal.

Line 39:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: And the name server is Amazon provided DNS.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 40:
- Concepts: DHCP and Host Configuration
- Services: Amazon VPC, DHCP Option Set
- Key Insights: And for this VPC I did not make any changes to the default Dhcp option set.
- Hidden/Implicit Meaning: Host configuration and bootstrap signal.

Line 41:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: What I did is I just went to the EC2 and I launched two instances this instance one and instance 2 in 2 different subnets.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 42:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Now instance one has a public IP because it's in a public subnet, and instance two is in a private subnet.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 43:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Now if you look at the instance one, it has the public IP and it has a private IP.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 44:
- Concepts: DHCP and Host Configuration, DNS Resolution Path
- Services: (none explicit)
- Key Insights: Now along with this private IP it also has a private DNS name which is assigned by this Dhcp.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal; Host configuration and bootstrap signal.

Line 45:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: But if you notice there is no public DNS name for this EC2 instance.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 46:
- Concepts: DNS Resolution Path
- Services: Amazon VPC
- Key Insights: Now that's for the reason that there is a setting at the VPC level, which tells whether the EC2 instance with the public IP will receive the public DNS or not.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 47:
- Concepts: DNS/DHCP Operational Context
- Services: Amazon VPC
- Key Insights: So if we go back to our VPC and just go here and look at this VPC attributes.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 48:
- Concepts: DNS Resolution Path
- Services: Amazon VPC
- Key Insights: So this first parameter enabled DNS resolution tells VPC that it can resolve the DNS using the Amazon provided DNS server.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 49:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: And the second attribute which is enable DNS host names.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 50:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: It basically control whether the EC2 instance will receive the public IP or not.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 51:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So let's just enable this and save it.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 52:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: But now, if we launch another instance in a public subnet with the public IP, it should also receive the public DNS.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; DNS resolution-path and control-plane signal.

Line 53:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So let's quickly do that.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 54:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And while we wait for that instance we will also see some other things.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 55:
- Concepts: DNS/DHCP Operational Context
- Services: Amazon VPC
- Key Insights: So let me quickly launch this instance and let's make sure that it is in our VPC.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 56:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And it is launched in a public subnet and it has a public IP.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 57:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Rest of the settings I'm keeping mostly as default and launching this instance.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 58:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 59:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So it will take some time for this instance to be launched.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 60:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 61:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Now if we come back here and see that there is this instance one and it automatically got its public IP.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 62:
- Concepts: DNS Resolution Path
- Services: Amazon VPC
- Key Insights: Now because we have enabled this setting at the VPC level that is enabled DNS hostname.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 63:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And for the instance three it also got this public IP.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 64:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Now we also have instance two which is in private subnet.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 65:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And it just has a private IP.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 66:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Now what we want to quickly do is from any of these instance one or instance three.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 67:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: Let's try to resolve the private DNS of instance two.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 68:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And it should resolve to its corresponding private IP.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 69:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So I'm just getting the public IP address.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 70:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: Or I can use public DNS as well to connect to this instance from my putty session.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 71:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 72:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: So I'm putting this DNS name I'm loading my key and just opening this session.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 73:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And you can see I am into my session now.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 74:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: From here, let's try to ping to our EC2 instance two using its private DNS.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 75:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: Now for that, let's go here and let's pick this private DNS and just try that.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 76:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And you can see that it is resolving to its private IP.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 77:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: So this is being resolved using the Amazon provided DNS server.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 78:
- Concepts: DHCP and Host Configuration
- Services: (none explicit)
- Key Insights: And this is going through our Dhcp configurations.
- Hidden/Implicit Meaning: Host configuration and bootstrap signal.

Line 79:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Now I also want to show you one more thing.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 80:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: That is what if you try to resolve the public DNS of the EC2 instance from, you know, within the EC2 instance itself.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 81:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So let's try that.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 82:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: So let's get this instance three public DNS which is this.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 83:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And let's try to ping to that.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 84:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Now you see it has resolved to its private IP.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 85:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: It hasn't resolved to its public IP.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 86:
- Concepts: DNS Resolution Path
- Services: Amazon VPC
- Key Insights: Now that's because we are making the DNS queries from within the VPC.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 87:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: However, if you do the same thing from your local machine.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 88:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So let me try to go to my CMD and say Nslookup.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 89:
- Concepts: DNS/DHCP Operational Context
- Services: Amazon VPC
- Key Insights: Then you can see that it has resolved to its public IP because we are querying that from outside of the VPC.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 90:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: So that is how public DNS resolution happens.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 91:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Now one more thing I want to show you is how that resolv.conf looks like.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 92:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Right?
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 93:
- Concepts: DNS/DHCP Operational Context
- Services: Amazon VPC
- Key Insights: So if you see Resolv.conf on this machine, the name server is 10.10.0.2, which is the VPC base address plus two.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 94:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: So all the DNS queries are being sent to this particular DNS server.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 95:
- Concepts: Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: And this is the search domain for your EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 96:
- Concepts: DNS Resolution Path, Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: Which means if you don't provide the complete DNS name, it will automatically look at this as a suffix of your domain name.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 97:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Now what do I mean by that?
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 98:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: Instead of pinging to an private DNS which ends in this, you can just say, you know, the first part of the DNS, which is this.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 99:
- Concepts: Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: And if you do that, it still resolves because it is looking at this search domain.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 100:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Now again, not important for your exam, but something that you should know.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 101:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 102:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So I hope this is clear.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 103:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And you can definitely try all these scenarios on your own.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 104:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So with that, let's go back to our presentation.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 105:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: So we saw all these settings, and we also saw how EC2 instance gets private DNS and the public DNS.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 106:
- Concepts: Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: Just there is one difference to know that if EC2 instance is in North Virginia region, that is US east one, then the syntax is little different, but otherwise the syntax is IP dash private IPv4 address, dot region, dot compute, dot internal and similar domain name for the public address as well.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 107:
- Concepts: DNS Resolution Path, Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: And we already talked about domain names, the private and the public DNS.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 108:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So I hope that is clear.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 109:
- Concepts: DHCP and Host Configuration
- Services: Amazon VPC, DHCP Option Set
- Key Insights: Now, one thing to note here is that you cannot modify the existing Dhcp option set, but rather you would have to create a new Dhcp option set and then associate that with your existing VPC.
- Hidden/Implicit Meaning: Constraint or limitation signal; Host configuration and bootstrap signal.

Line 110:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So something like this.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 111:
- Concepts: Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: Now in here we are changing our private domain name to finance dot internal.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 112:
- Concepts: Split-Horizon and Namespace Design
- Services: Amazon VPC
- Key Insights: And once you do that the search domain for this VPC is set to finance dot internal instead of AP South 1.4. internal.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 113:
- Concepts: Routing and Reachability Dependencies, Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: Which means now all these EC2 instances can reach to each other using the domain name, something like IP dash, private IP address, dot finance, dot internal.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 114:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: But you have to wait for a few hours.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 115:
- Concepts: DHCP and Host Configuration
- Services: (none explicit)
- Key Insights: Typically for this or otherwise, depending on your operating system, you can run some Dhcp command to refresh your Dhcp lease.
- Hidden/Implicit Meaning: Host configuration and bootstrap signal.

Line 116:
- Concepts: DHCP and Host Configuration
- Services: DHCP Option Set
- Key Insights: So that's another thing that you need to note is that Dhcp option set cannot be modified.
- Hidden/Implicit Meaning: Constraint or limitation signal; Host configuration and bootstrap signal.

Line 117:
- Concepts: DNS/DHCP Operational Context
- Services: Amazon VPC
- Key Insights: You have to create a new one and then associate that with your VPC.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 118:
- Concepts: Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: Now here we talked about changing the domain name.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 119:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: But very well you can also change the name server.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 120:
- Concepts: DNS Resolution Path, Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: So instead of using Amazon provided DNS, you can point your DNS queries to your custom domain name server.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 121:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And we are going to see that in the hands on exercise.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 122:
- Concepts: DHCP and Host Configuration
- Services: DHCP Option Set
- Key Insights: So which means you can change all the parameters in Dhcp option set.
- Hidden/Implicit Meaning: Host configuration and bootstrap signal.

Line 123:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: And accordingly it will affect your DNS configuration.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 124:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So I hope that is clear.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 125:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 126:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So let's move on.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 127:
- Concepts: DNS Resolution Path
- Services: Amazon VPC
- Key Insights: And let's again talk about the VPC DNS attributes which we already saw in our exercise.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 128:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: So there are two attributes one enabled DNS support.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 129:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And the default is true.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 130:
- Concepts: DNS Resolution Path
- Services: Amazon VPC
- Key Insights: And basically decides if the DNS resolution is supported for the VPC or not.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 131:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: So if it is true, then all the DNS queries are sent to AWS DNS server at the virtual IP or say base address plus two.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 132:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: The another attribute is enabled DNS hostname, and it governs where your EC2 instance with the public IP will receive the public DNS or not.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 133:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So by default this attribute is false, but typically you should turn it on as well.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 134:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So if true, it assigns the public hostname to the EC2 instance which has a public IP.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 135:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Now with the combination of this true, there are a lot of things that may work or may not work.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 136:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies, Split-Horizon and Namespace Design
- Services: Amazon Route 53, Amazon VPC, Private Hosted Zone
- Key Insights: For example, if you are using Amazon Route 53 private hosted zone for managing the private DNS for the VPC, then you should have both these attributes set to true.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; DNS resolution-path and control-plane signal.

Line 137:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: If any of these is false, then it won't resolve your DNS queries.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 138:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So these are a few things which probably you should remember.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 139:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And again if you want to try, you can try this in your AWS account where you set this parameter.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 140:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: And you can check that whether the EC2 instance with public IP has got the public DNS or not.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 141:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: We have already seen that in our exercise.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 142:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And finally, a few things that you need to remember for your exam.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 143:
- Concepts: DHCP and Host Configuration
- Services: Amazon VPC, DHCP Option Set
- Key Insights: So once you create a Dhcp option set you cannot modify the existing one, but rather you can create a new one and associate that with the VPC.
- Hidden/Implicit Meaning: Constraint or limitation signal; Host configuration and bootstrap signal.

Line 144:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: At a given time.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 145:
- Concepts: DHCP and Host Configuration
- Services: Amazon VPC
- Key Insights: You can only have one DSP option set associated with the VPC.
- Hidden/Implicit Meaning: Constraint or limitation signal; Host configuration and bootstrap signal.

Line 146:
- Concepts: DHCP and Host Configuration
- Services: Amazon VPC
- Key Insights: Now you can also have the VPC and say I don't want to have any DSP option set.
- Hidden/Implicit Meaning: Host configuration and bootstrap signal.

Line 147:
- Concepts: DNS Resolution Path
- Services: Amazon VPC
- Key Insights: But the problem is in that case, VPC doesn't know where to send the DNS queries and it cannot resolve then any DNS, which is okay if your instance can communicate with each other directly using the private IP addresses.
- Hidden/Implicit Meaning: Constraint or limitation signal; DNS resolution-path and control-plane signal.

Line 148:
- Concepts: DHCP and Host Configuration
- Services: Amazon VPC, DHCP Option Set
- Key Insights: Further, if you are changing your existing Dhcp option set and associating a new one with your VPC, it may take a few hours to take in effect.
- Hidden/Implicit Meaning: Host configuration and bootstrap signal.

Line 149:
- Concepts: DHCP and Host Configuration
- Services: (none explicit)
- Key Insights: And it depends on your Dhcp lease.
- Hidden/Implicit Meaning: Host configuration and bootstrap signal.

Line 150:
- Concepts: DHCP and Host Configuration
- Services: (none explicit)
- Key Insights: But if you want that this take into effect immediately, then you can probably run some Linux command for example Dhcp client and it refreshes your Dhcp lease.
- Hidden/Implicit Meaning: Host configuration and bootstrap signal.

Line 151:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So this will really depend on your operating system.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 152:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So this is for the Linux and for other operating system.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 153:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: There will be different commands.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 154:
- Concepts: DHCP and Host Configuration
- Services: (none explicit)
- Key Insights: So you can refresh your Dhcp lease on demand.
- Hidden/Implicit Meaning: Host configuration and bootstrap signal.

Line 155:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Otherwise it will happen over few hours.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 156:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So these are all the important things that you should know for your exam.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 157:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And with that we will see few things in action so that you understand it completely.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 158:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So thanks for watching and stay tuned.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/05_VPC DNS and DHCP/033_Hands on exercises scenarios.txt

Line 1:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Hi.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 2:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So with the knowledge that we have, let's do some hands on exercises.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 3:
- Concepts: DNS Resolution Path
- Services: Route 53 Resolver
- Key Insights: So we want to try two scenarios where first we use the default Amazon provided DNS server as our DNS resolver.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 4:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: And second, we want to use our own custom DNS server.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 5:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So for the first scenario the setup will look like this.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 6:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: For example, you have VPCs and a couple of EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 7:
- Concepts: Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: And we want to have our custom domain name which is core dot internal.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 8:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And then one of the EC2 instance will be app dot core, dot internal and other one will be DB dot corp dot internal.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 9:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: And we want to connect to DB dot core, dot internal from the app server using its DNS name.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 10:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: Now here our DNS server will be the default DNS server.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 11:
- Concepts: DHCP and Host Configuration
- Services: DHCP Option Set
- Key Insights: That means in the Dhcp option set we don't need to change the name server.
- Hidden/Implicit Meaning: Host configuration and bootstrap signal.

Line 12:
- Concepts: Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: However, we can change our domain name from the region dot compute dot internal to core dot internal.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 13:
- Concepts: Routing and Reachability Dependencies, Split-Horizon and Namespace Design
- Services: Amazon Route 53, Private Hosted Zone
- Key Insights: And then we need to create a route 53 private hosted zone with the same name as core dot internal.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 14:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And then we will create multiple records which points to the private IP addresses of these EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 15:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And that's it.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 16:
- Concepts: Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: Then we should be able to use this internal domain name for the communication between these EC2 instances.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 17:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So that's the first scenario.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 18:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: And then in the second scenario we want to use our own custom DNS server instead of Amazon provided DNS server.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 19:
- Concepts: DHCP and Host Configuration, DNS Resolution Path
- Services: DHCP Option Set
- Key Insights: And the most important part here is to update the Dhcp option set where the name server points to the same IP address as our custom DNS server.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; DNS resolution-path and control-plane signal; Host configuration and bootstrap signal.

Line 20:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: So in this case, the EC2 instance will send all the DNS queries to this custom DNS server.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 21:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies, Split-Horizon and Namespace Design
- Services: Amazon Route 53, Private Hosted Zone
- Key Insights: And here we will create a zone file for this DNS server, which has the similar record as route 53 private hosted zone, where the domain name points to corresponding IP addresses.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 22:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So that's our second exercise.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 23:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So I hope that is clear.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 24:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Now with that, let's get into the hands on mode and try to implement this on our own.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 25:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So let's get started.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/05_VPC DNS and DHCP/034_Hands On_ VPC DNS with Route53 Private Hosted zone.txt

Line 1:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Hi.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 2:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies, Split-Horizon and Namespace Design
- Services: Amazon Route 53, Amazon VPC, Private Hosted Zone
- Key Insights: So in this exercise, let's try to see how the private DNS works for the VPC using route 53 private hosted zone.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 3:
- Concepts: DNS/DHCP Operational Context
- Services: Amazon VPC
- Key Insights: So our setup will look something like this where we have VPC and then corresponding subnets.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 4:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And in that we need two EC2 instances one as app server and one as the DB server.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 5:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: Now we want to use Amazon provided DNS server.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 6:
- Concepts: DHCP and Host Configuration
- Services: DHCP Option Set
- Key Insights: So we are not going to change anything in the Dhcp option set as a name server.
- Hidden/Implicit Meaning: Host configuration and bootstrap signal.

Line 7:
- Concepts: DHCP and Host Configuration, Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: But because we want our domain name to be core dot internal, then we will create a new option set where we'll just change this domain name.
- Hidden/Implicit Meaning: Host configuration and bootstrap signal.

Line 8:
- Concepts: DHCP and Host Configuration
- Services: Amazon VPC, DHCP Option Set
- Key Insights: And then we will associate this Dhcp option set to the VPC.
- Hidden/Implicit Meaning: Host configuration and bootstrap signal.

Line 9:
- Concepts: DHCP and Host Configuration, Split-Horizon and Namespace Design
- Services: DHCP Option Set
- Key Insights: And to be honest, changing this domain name to CORBA internal in the Dhcp option set is optional and I will talk about that while we implement it, but that's what the Dhcp option set will look like.
- Hidden/Implicit Meaning: Host configuration and bootstrap signal.

Line 10:
- Concepts: Split-Horizon and Namespace Design
- Services: Private Hosted Zone
- Key Insights: And then the most important part here is to create the private hosted zone with the same name as our domain name that is corp dot internal.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; DNS resolution-path and control-plane signal.

Line 11:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And then we'll create corresponding record sets in that with the app and db server pointing to corresponding EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 12:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies
- Services: (none explicit)
- Key Insights: And then from this app server, we will try to reach to the DB server using its DNS name.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 13:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: And then the DNS resolution will happen using this flow.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 14:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 15:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So that's what we are going to implement.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 16:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: I have also listed all these steps here.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 17:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So you can also just look at these steps and try to implement on your own.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 18:
- Concepts: DNS/DHCP Operational Context
- Services: Amazon VPC
- Key Insights: Now to save some time, I have already created the VPC and created a public and private subnet.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 19:
- Concepts: DHCP and Host Configuration, Split-Horizon and Namespace Design
- Services: Amazon Route 53, DHCP Option Set, Private Hosted Zone
- Key Insights: But let's now create the next step that is Dhcp option set and then launch this EC2 instances and then create the Route53 private hosted zone.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal; Host configuration and bootstrap signal.

Line 20:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So let's do that now.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 21:
- Concepts: DNS/DHCP Operational Context
- Services: Amazon VPC
- Key Insights: So you can see I have a VPC.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 22:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And then it has two subnets as of now public and private.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 23:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And that's it right.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 24:
- Concepts: DHCP and Host Configuration
- Services: DHCP Option Set
- Key Insights: So now the next thing that we want to do is we want to create a Dhcp option set.
- Hidden/Implicit Meaning: Host configuration and bootstrap signal.

Line 25:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So this is a default one.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 26:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: What we really need is this server because we want to keep the same server as Amazon provided DNS.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 27:
- Concepts: DHCP and Host Configuration
- Services: DHCP Option Set
- Key Insights: So let's create a new Dhcp option set.
- Hidden/Implicit Meaning: Host configuration and bootstrap signal.

Line 28:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And let's call it say corp dot internal because that's the name that we want to use.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 29:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And same here.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 30:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies
- Services: Amazon Route 53, Route 53 Resolver
- Key Insights: Now the most important part here is use this string because it points to route 53 resolver and rest of the setting.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; DNS resolution-path and control-plane signal.

Line 31:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: You can just keep as it is and that's it.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 32:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 33:
- Concepts: DNS/DHCP Operational Context
- Services: Amazon VPC
- Key Insights: But you have to also associate this with your VPC.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 34:
- Concepts: DNS/DHCP Operational Context
- Services: Amazon VPC
- Key Insights: So let's go to the VPC and just modify this to the corp dot internal.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 35:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And that's it.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 36:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Let's save it.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 37:
- Concepts: DNS/DHCP Operational Context
- Services: Amazon VPC
- Key Insights: So we are done with the VPC settings.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 38:
- Concepts: Routing and Reachability Dependencies
- Services: Amazon Route 53
- Key Insights: And next we want to go to the route 53.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 39:
- Concepts: Routing and Reachability Dependencies
- Services: Amazon Route 53
- Key Insights: And if you go to the route 53 there are hosted zones.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 40:
- Concepts: Split-Horizon and Namespace Design
- Services: Private Hosted Zone
- Key Insights: So we want to create a new private hosted zone.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 41:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So let's say create a hosted zone with the same name as Corp Dot internal.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 42:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And it's a private one.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 43:
- Concepts: DNS/DHCP Operational Context
- Services: Amazon VPC
- Key Insights: So you have to associate that with your VPC in the Mumbai region.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 44:
- Concepts: DNS/DHCP Operational Context
- Services: Amazon VPC
- Key Insights: So this is my VPC and let's create that.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 45:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Now we'll again come back here when we launch EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 46:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Because for creating these records here we will need private IP addresses of the EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 47:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So let's go here into the EC2.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 48:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And let's launch our public EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 49:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Let's call it app instance.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 50:
- Concepts: DNS/DHCP Operational Context
- Services: Amazon VPC
- Key Insights: And I'm going with all the defaults, just that in the networking, make sure that you use your VPC, and I want to launch it in a public subnet.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 51:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: And I want to have a public IP because I'll be connecting to this instance over SSH to test the DNS resolution.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 52:
- Concepts: Routing and Reachability Dependencies
- Services: (none explicit)
- Key Insights: Now with respect to the security group, you can create a new security group.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 53:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And you should allow the SSH from say my IP.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 54:
- Concepts: DNS/DHCP Operational Context
- Services: Amazon VPC
- Key Insights: And also you should have all ICMP IPv4 from the VPC, Cidr itself.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 55:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: That is ten .0.0.0 slash 16.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 56:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: That's it.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 57:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And let's launch the instance.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 58:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Now.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 59:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Similarly, we also want to launch another instance but in a private subnet.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 60:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So let's launch that instance.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 61:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Let's call it a DB instance.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 62:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 63:
- Concepts: DNS/DHCP Operational Context
- Services: Amazon VPC
- Key Insights: Let's edit the VPC.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 64:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And in this case we want to launch it in a private subnet.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 65:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And we don't want a public IP.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 66:
- Concepts: Routing and Reachability Dependencies
- Services: (none explicit)
- Key Insights: However security group we can use the existing one that we just created.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 67:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And that's it.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 68:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Let's launch the instance.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 69:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Okay, so two instances are there app and db.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 70:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: They will come up soon.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 71:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And rest of the things we are already done with.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 72:
- Concepts: Routing and Reachability Dependencies
- Services: Amazon Route 53
- Key Insights: Now last thing we want to do is to use their private IP address to create the record sets in the route 53 hosted zone.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 73:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So this one is for the app.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 74:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So let's go here.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 75:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Let's create a record and let's say app dot Corp dot internal points to this particular private IP.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 76:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And similarly we need to do that for DB instance.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 77:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So let's go here pick its private IP.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 78:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Let's go here.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 79:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Let's create a record say DB dot corp dot internal points to this IP.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 80:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Right?
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 81:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: As simple as that.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 82:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Now let's go to our instances and pick the public IP of this instance and let's SSH into it.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 83:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So this is my Mumbai session with the Mumbai key and I'm putting the public IP.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 84:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And I'm just logging in here.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 85:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Done.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 86:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Let's also look at a few settings like cat, etc.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 87:
- Concepts: Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: Resolvconf and you will see that the search domain is coreboot internal here, and the name server is ten .0.0.2, which means if I do now ping dot db, dot core, dot internal, it should go to my database server.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 88:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: You can see very well it is doing the same.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 89:
- Concepts: Routing and Reachability Dependencies, Split-Horizon and Namespace Design
- Services: Amazon Route 53, Private Hosted Zone
- Key Insights: So this is now being resolved using the route 53 private hosted zone.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 90:
- Concepts: Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: Now also as my search domain is core dot internal, I can also do ping db and it still resolves because it is looking at this particular domain name.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 91:
- Concepts: DHCP and Host Configuration
- Services: DHCP Option Set
- Key Insights: Now that's the thing where I said it's optional to configure this into the Dhcp option set.
- Hidden/Implicit Meaning: Host configuration and bootstrap signal.

Line 92:
- Concepts: DHCP and Host Configuration
- Services: DHCP Option Set
- Key Insights: If you don't change this into the Dhcp option set then it will be AP South one dot compute dot internal.
- Hidden/Implicit Meaning: Host configuration and bootstrap signal.

Line 93:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And then if you say ping db it will ping to db dot AP south one dot compute dot internal.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 94:
- Concepts: Routing and Reachability Dependencies, Split-Horizon and Namespace Design
- Services: Amazon Route 53
- Key Insights: And it won't then resolve because in route 53 hosted zone you don't have that domain name.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 95:
- Concepts: DHCP and Host Configuration, Split-Horizon and Namespace Design
- Services: DHCP Option Set
- Key Insights: But now because we added core dot internal in the Dhcp option set, you don't even have to define the fully qualified domain name here.
- Hidden/Implicit Meaning: Host configuration and bootstrap signal.

Line 96:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Just DB works.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 97:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 98:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So this is just another thing that you need to understand.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 99:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 100:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So that's what our exercise was and it was pretty simple.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 101:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Now if you are also doing this exercise, please don't forget to terminate your instances because you may be charged for that.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 102:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So thanks for watching.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 103:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: And in the next lecture we are going to set up our own custom DNS server and let's see how that works.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

### File: outputs/AWS Speciality/advanced-networking-specialty/05_VPC DNS and DHCP/035_Hands On_ VPC DNS with custom DNS server.txt

Line 1:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Hi.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 2:
- Concepts: DNS Resolution Path
- Services: Amazon VPC
- Key Insights: So in this exercise, let's try the second scenario where we'll be using the custom DNS server to configure and resolve our VPC private DNS now, which means we are not going to use Amazon provided DNS server, but rather set up our own DNS server inside the VPC.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 3:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So at high level the setup will look something like this.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 4:
- Concepts: DNS Resolution Path
- Services: Amazon VPC
- Key Insights: Where inside a VPC, we will also have another EC2 instance which will act as our DNS server.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 5:
- Concepts: DHCP and Host Configuration, DNS Resolution Path, Routing and Reachability Dependencies
- Services: Amazon VPC, DHCP Option Set
- Key Insights: And we then have to modify the Dhcp option set where we will point this Dhcp option set to this DNS server when it comes to the name server, so that all the DNS queries from the EC2 are directed to this DNS server, and this DNS server will have corresponding zone file, which has the entries for mapping this app server and database server to corresponding private IP addresses of this EC2 instances and all these machines can natively reach to this DNS server because all this communication is within the VPC, right.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal; Host configuration and bootstrap signal.

Line 6:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So this is what we want to implement.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 7:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So now let's look at our setup and all the steps that we are going to perform okay.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 8:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So setup is pretty simple.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 9:
- Concepts: DNS/DHCP Operational Context
- Services: Amazon VPC
- Key Insights: Um we'll just have a couple of machines inside VPC.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 10:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Now I'm launching these machines in public subnet because I want to connect and configure, uh, these machines.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 11:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: But in real setup you could have everything into the private subnets.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 12:
- Concepts: DNS/DHCP Operational Context
- Services: Amazon VPC
- Key Insights: Now you need to just create VPC and three machines as I'm showing here.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 13:
- Concepts: Routing and Reachability Dependencies
- Services: (none explicit)
- Key Insights: Uh, just make sure when you open the security group rules, uh, you, uh, have the appropriate ports open.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 14:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So for app server, we just need to have SSH open and ICMP protocol open.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 15:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: And for DNS server, uh, apart from this we also need uh UDP 53, which is uh port for DNS.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 16:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 17:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: Because all these servers are going to send the DNS queries to this server.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 18:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So that's the only thing you need to remember.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 19:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Now, what I did is uh, I already created this setup to save some time.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 20:
- Concepts: DNS/DHCP Operational Context
- Services: Amazon VPC
- Key Insights: So I have VPC and public subnet, private subnet and all these three EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 21:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Let me quickly show you that in my console okay.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 22:
- Concepts: DNS/DHCP Operational Context
- Services: Amazon VPC
- Key Insights: So this is my VPC.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 23:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: You can see the IP address range is 1010 zero zero 16.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 24:
- Concepts: DNS/DHCP Operational Context
- Services: Amazon VPC
- Key Insights: Then I have two subnets inside this VPC one public.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 25:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And you can see the routes.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 26:
- Concepts: Routing and Reachability Dependencies
- Services: (none explicit)
- Key Insights: And then one private which has just um local route.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 27:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Um that's it.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 28:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: I have internet gateway attached.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 29:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And then I have three EC2 machines created.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 30:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: And uh, app server and DNS server are in public subnet and also have public IPS DB server is in private subnet does not have uh, public IP.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 31:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So essentially that's what um, we have.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 32:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Now let's follow the next steps.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 33:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: The first step is to create a DNS server and configure it.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 34:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: So let me connect to this DNS server.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 35:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: I'll grab its public IP and I'll just open a session.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 36:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So I already have my partition ssh key loaded, and I'm just logging in there.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 37:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Okay, let me change my cell to root.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 38:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: Now for configuring the DNS server you need to install some packages.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 39:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So that's where I change myself to root.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 40:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And then you need to make sure that you have the latest packages.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 41:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So let's do jump date minus y.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 42:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: It will fetch the latest yum packages and install okay.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 43:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: Now let's install the packages for our DNS which is bind and bind utils.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 44:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And I have provided all these instructions in the deck.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 45:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So you could use variable those.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 46:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: Okay, so now we need to create a few files to actually configure the DNS server and all the steps I've just captured in the notepad so that I can copy and paste.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 47:
- Concepts: Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: The first thing we need to do is to create a file with the name as the domain name.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 48:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So let me do that.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 49:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And there is content for this file here.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 50:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And you need to make sure that you are replacing the content wherever it is marked as x.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 51:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So most important is like you need to put the IP address of your app server.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 52:
- Concepts: Split-Horizon and Namespace Design
- Services: Private Hosted Zone
- Key Insights: So we are basically creating the A records like we used to do in the private hosted zone.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 53:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So let's grab the IP address for the app server which is 180 1010 zero 180.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 54:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And for DB server it's 1214.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 55:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So let's do that.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 56:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: This is 180.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 57:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And this is sorry I forgot uh 214214.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 58:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: That's it.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 59:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: We are good.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 60:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Just save this file.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 61:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And now we need to also modify Iecee conndot file which actually configures the zone file ATC.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 62:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So we need to just remove everything in this file.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 63:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So I'm just removing everything and just adding the content here.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 64:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: That's it.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 65:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: And we need to make sure that we are adding the DNS server IP here.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 66:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: So let's get the DNS server IP which is 179.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 67:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So 179.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 68:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Now if you are using different Cidr range, of course you need to change the entire IP address.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 69:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: But I'm using the same as ten dot ten dot.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 70:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: That's where I don't need to change those things okay.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 71:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Just save it.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 72:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: That's it.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 73:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Those are the settings we need to just restart the named service.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 74:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So let's do that service named restart.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 75:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And we are good.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 76:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: So so DNS server has been now set up.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 77:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: Um now what we need to do next is to also configure the config so that if we reboot the server, uh, your DNS uh service also comes up automatically.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 78:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So that's it.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 79:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: We have done that.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 80:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: So so far what we have done is just created everything and configure the DNS server.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 81:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: All the steps are given here.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 82:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: You can just follow this okay.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 83:
- Concepts: Split-Horizon and Namespace Design
- Services: Amazon VPC
- Key Insights: So now is the time when we tell VPC that uh you need to use different uh domain name.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 84:
- Concepts: DHCP and Host Configuration
- Services: (none explicit)
- Key Insights: And how do we do that is using the Dhcp options sets.
- Hidden/Implicit Meaning: Host configuration and bootstrap signal.

Line 85:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 86:
- Concepts: DHCP and Host Configuration, Split-Horizon and Namespace Design
- Services: DHCP Option Set
- Key Insights: So in Dhcp option set we are going to create a new one called dot internal as a domain name and name server.
- Hidden/Implicit Meaning: Host configuration and bootstrap signal.

Line 87:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: This time we are going to use this DNS server as a name server.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 88:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So let's do that.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 89:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Let's go to the AWS console again.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 90:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Let's get the name server IP address 1010 zero 179.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 91:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Uh, let me go here and.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 92:
- Concepts: DHCP and Host Configuration
- Services: (none explicit)
- Key Insights: Let's go to the Dhcp options sets and create a new one.
- Hidden/Implicit Meaning: Host configuration and bootstrap signal.

Line 93:
- Concepts: Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: Let's call it Carp dot internal and same as the domain name.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 94:
- Concepts: DHCP and Host Configuration, Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: Dot Dhcp and domain name is ten dot ten .0.179.
- Hidden/Implicit Meaning: Host configuration and bootstrap signal.

Line 95:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: That's it.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 96:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Rest of the settings.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 97:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: You can leave as it is and we're just creating that.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 98:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Now.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 99:
- Concepts: DNS/DHCP Operational Context
- Services: Amazon VPC
- Key Insights: Next thing we need to do is to use our VPC.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 100:
- Concepts: DHCP and Host Configuration
- Services: Amazon VPC, DHCP Option Set
- Key Insights: And in this VPC we need to make sure that it's using the correct Dhcp option set.
- Hidden/Implicit Meaning: Host configuration and bootstrap signal.

Line 101:
- Concepts: DHCP and Host Configuration
- Services: DHCP Option Set
- Key Insights: So we just go here and use our Dhcp option set okay.
- Hidden/Implicit Meaning: Host configuration and bootstrap signal.

Line 102:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So this has been done.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 103:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: That means our machine should now redirect all the queries to the DNS server that we configured.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; DNS resolution-path and control-plane signal.

Line 104:
- Concepts: DHCP and Host Configuration
- Services: (none explicit)
- Key Insights: But it takes time for this Dhcp lease to expire and refresh so that EC2 learns that.
- Hidden/Implicit Meaning: Host configuration and bootstrap signal.

Line 105:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Now configurations have changed the fastest ways to just reboot the server.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 106:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: You don't need to stop and start, but just, uh, reboot it.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 107:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: It's a soft restart, basically.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 108:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Uh, so you can do that from here as well if you want.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 109:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And I'm just doing that for the app server.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 110:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: And similarly I'm doing that for the reboot it for the DNS server.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 111:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Now.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 112:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: That's it.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 113:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Um, if you want, you can also reboot for the DB server.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 114:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: It will take a couple of maybe seconds, for instance, to be up again, and I expect my connection must have been broken by that time.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 115:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Okay, now, one interesting thing.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 116:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: If you could see here, if you have this DNS server, uh, it has got this carved out internal as a hostname.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 117:
- Concepts: DNS Resolution Path
- Services: Amazon VPC
- Key Insights: Similarly for app server, it has got this hostname and there is no public IP DNS because for VPC we did not have the uh DNS hostname flag enabled.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 118:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: That's where you don't see it here.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 119:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: But we can still connect with the public IP which it already had.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 120:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So let me just restart this session.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 121:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: So I'm into the DNS server right now.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 122:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And similarly let me try to get the IP address of my app server and just log into that app server.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 123:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Okay, so I'm in the app server.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 124:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Now let's look at a few things.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 125:
- Concepts: Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: Let's look at uh resolv.conf file first because it reflects what my, uh, search domain is.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 126:
- Concepts: Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: So you can see automatically there is a called dot internal as a search domain.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 127:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And the name server is 1010 zero 179.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 128:
- Concepts: DHCP and Host Configuration
- Services: DHCP Option Set
- Key Insights: Now this is something which has been automatically, uh configured by the Dhcp option set.
- Hidden/Implicit Meaning: Host configuration and bootstrap signal.

Line 129:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And now let's try to do say Nslookup and app dot core dot internal.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 130:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And you can see it's resolving the IP address of itself.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 131:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: At the same time we can do DB dot corp dot internal.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 132:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: Because all these entries we had created in the uh DNS server configuration file.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 133:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And it resolves to this two and four IP.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 134:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: That means whatever we had thought it's working fine.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 135:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: We can also do something like this ping db and it goes to the db.com dot internal.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 136:
- Concepts: Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: Because in our search domain it automatically adds this core dot internal.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 137:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So that means everything is working as expected.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 138:
- Concepts: DHCP and Host Configuration, Split-Horizon and Namespace Design
- Services: DHCP Option Set
- Key Insights: Now in this case we are using custom Dhcp option sets with custom domain name server.
- Hidden/Implicit Meaning: Host configuration and bootstrap signal.

Line 139:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies
- Services: Amazon Route 53
- Key Insights: We are not using the route 53 DNS server.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 140:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So that's it.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 141:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: About this lecture I wanted to just make sure we can do it.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 142:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And uh if you have time please try these things so that you understand everything end to end.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 143:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So thanks for watching this lecture.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 144:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: That's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 145:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Thank you.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/05_VPC DNS and DHCP/036_Introduction to Route53 DNS Resolver Endpoints (Hybrid DNS).txt

Line 1:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Hi.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 2:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies
- Services: Amazon Route 53, Route 53 Resolver
- Key Insights: So before we wrap up this section, I wanted to quickly talk about route 53 resolver Endpoints, which is a relatively new feature of Amazon provided DNS server.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 3:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And there is a purpose why AWS launched this feature.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 4:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So let's try to understand that.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 5:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies
- Services: Amazon Route 53, Route 53 Resolver
- Key Insights: And then we are going to dive deep into resolver endpoints into the route 53 section.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 6:
- Concepts: DNS Resolution Path
- Services: Route 53 Resolver
- Key Insights: So what are these resolver endpoints.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 7:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So before that let's understand the problem.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 8:
- Concepts: DNS Resolution Path
- Services: Amazon VPC
- Key Insights: So we already saw the right side of this picture where we have the VPC and then private DNS.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 9:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies
- Services: Amazon Route 53, Amazon VPC, Route 53 Resolver
- Key Insights: And then this route 53 DNS resolver can resolve the DNS queries which comes from the EC2 instances inside the VPC.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 10:
- Concepts: DNS/DHCP Operational Context
- Services: Amazon VPC
- Key Insights: But as you know, in the real world, you might be operating across your on premise data center and the VPC.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 11:
- Concepts: DNS Resolution Path, Split-Horizon and Namespace Design
- Services: Amazon VPC
- Key Insights: So some servers could be in data center, some servers are in the VPC, and you would want to have a common DNS records to assign the domain name for all these servers.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 12:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So there could be three scenarios.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 13:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: First, maybe you want to have your DNS server on premises.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 14:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: So all the DNS queries from these EC2 instances should go to your on premises DNS server.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; DNS resolution-path and control-plane signal.

Line 15:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies, Split-Horizon and Namespace Design
- Services: Amazon Route 53, Private Hosted Zone
- Key Insights: Or second, you want to manage that in Amazon route 53 private hosted zone, for example, and all the DNS queries from on premises are forwarded to Amazon route 53.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 16:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: And third, it could be bidirectional, so you might have some part of the DNS hosted in AWS and some part in on premise data center.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 17:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Now, if that is the case, you might be assuming that if both these networks are connected over a VPN or a direct connect, then very well.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 18:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies
- Services: Amazon Route 53, Route 53 Resolver
- Key Insights: This DNS server can reach to your route 53 DNS resolver and then everything will work.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 19:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: But that's not the case.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 20:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: By default.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 21:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies
- Services: Amazon Route 53
- Key Insights: This route 53 DNS server is not accessible from your on premises network.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 22:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And that was the problem.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 23:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies
- Services: Amazon Route 53, Route 53 Resolver
- Key Insights: And exactly to solve this problem, AWS launched route 53 DNS resolver endpoints.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 24:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And these endpoints can be accessed over from this corporate data center.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 25:
- Concepts: DNS/DHCP Operational Context
- Services: Amazon VPC
- Key Insights: Because these endpoints have the Enis elastic network interfaces which are created inside your VPC.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 26:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So let's understand what these endpoints are and what problems they solve.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 27:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies
- Services: Amazon Route 53, Route 53 Resolver
- Key Insights: So in almost 2018 or 19, the dot two resolver was officially named as route 53 resolver.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 28:
- Concepts: Hybrid DNS Integration
- Services: (none explicit)
- Key Insights: And this provides both inbound and outbound endpoints.
- Hidden/Implicit Meaning: Hybrid DNS integration signal.

Line 29:
- Concepts: DNS Resolution Path, Hybrid DNS Integration
- Services: Amazon VPC, Inbound Resolver Endpoint, Outbound Resolver Endpoint
- Key Insights: And of course, as the name suggests, the inbound endpoint receives the DNS queries from your on premises network, and outbound endpoint is used to send the DNS queries from the VPC or from the AWS to the on premise network.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal; Hybrid DNS integration signal.

Line 30:
- Concepts: DNS Resolution Path, Hybrid DNS Integration
- Services: Route 53 Resolver
- Key Insights: So with respect to the architecture, this is the architecture for inbound endpoints where you have the DNS resolver, but additionally you are configuring the inbound endpoints which creates the Enis in multiple subnets for high availability.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal; Hybrid DNS integration signal.

Line 31:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: And then all the DNS queries from your on premises network can be forwarded to these IP addresses which these Enis have.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 32:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies, Split-Horizon and Namespace Design
- Services: Amazon Route 53, Private Hosted Zone, Route 53 Resolver
- Key Insights: And then these Enis will ultimately send it to route 53 DNS resolver, which can of course resolve the DNS queries from public or private hosted zone or public DNS.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 33:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: So here you are managing your DNS in the AWS.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 34:
- Concepts: DNS Resolution Path, Hybrid DNS Integration
- Services: Amazon VPC, Route 53 Resolver
- Key Insights: Similarly, if you have the DNS management on the corporate data center side, then you will have outbound resolver endpoints configured in the VPC.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal; Hybrid DNS integration signal.

Line 35:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: And then any request that comes from the EC2 instances will first go to the Amazon provided DNS server.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 36:
- Concepts: Split-Horizon and Namespace Design
- Services: Private Hosted Zone
- Key Insights: And there it will see if it matches any of the private hosted zone.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 37:
- Concepts: DNS Resolution Path, Hybrid DNS Integration
- Services: Route 53 Resolver
- Key Insights: If not, it will send it to the outbound resolver.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal; Hybrid DNS integration signal.

Line 38:
- Concepts: Hybrid DNS Integration, Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: Or you can also configure the conditional forwarder, which checks what is the domain name is, and accordingly it will send that request to this outbound Eni.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal; Hybrid DNS integration signal.

Line 39:
- Concepts: DNS Resolution Path, Hybrid DNS Integration
- Services: (none explicit)
- Key Insights: And this outbound Eni will send the request to the on premises DNS server.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal; Hybrid DNS integration signal.

Line 40:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So that is the other way around.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 41:
- Concepts: DNS Resolution Path, Hybrid DNS Integration
- Services: (none explicit)
- Key Insights: So I would say this is the latest way in which you should think of hybrid DNS in AWS.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; DNS resolution-path and control-plane signal; Hybrid DNS integration signal.

Line 42:
- Concepts: DHCP and Host Configuration, DNS Resolution Path
- Services: DHCP Option Set
- Key Insights: Now earlier we saw that we could have Dhcp option set in which you can configure the IP address of your own DNS server.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal; Host configuration and bootstrap signal.

Line 43:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies
- Services: Amazon Route 53, Route 53 Resolver
- Key Insights: But with this route 53 resolver endpoints this is much simplified.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 44:
- Concepts: DNS Resolution Path, Hybrid DNS Integration
- Services: (none explicit)
- Key Insights: Now you can have both inbound and outbound DNS connectivity if you use this endpoint.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal; Hybrid DNS integration signal.

Line 45:
- Concepts: DNS Resolution Path
- Services: Route 53 Resolver
- Key Insights: So at this moment that's it about this resolver endpoints.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 46:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And as I said we will cover this in very detail.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 47:
- Concepts: Routing and Reachability Dependencies
- Services: Amazon Route 53
- Key Insights: And we will also do some exercises in the route 53 section.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 48:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So I hope that is clear.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 49:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And with that we will wrap up this section with quick exam tips.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 50:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And we will move to the next section.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 51:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So thanks for watching and stay tuned.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/05_VPC DNS and DHCP/037_Exam Essentials.txt

Line 1:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Hi.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 2:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So let's try to recap what we learned in this section.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 3:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And this is important to remember for your exam.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 4:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And we already talked about this.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 5:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: But just trying to summarize this in this lecture.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 6:
- Concepts: DHCP and Host Configuration, DNS Resolution Path
- Services: Amazon VPC, DHCP Option Set
- Key Insights: So very first thing VPC has a default DNS server which is identified as Amazon provided DNS in the Dhcp option set.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal; Host configuration and bootstrap signal.

Line 7:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies
- Services: Amazon Route 53, Route 53 Resolver
- Key Insights: This server is also called as route 53 DNS resolver.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 8:
- Concepts: DNS Resolution Path
- Services: Amazon VPC
- Key Insights: Now this DNS server runs at VPC base address plus two, and it is also available on the virtual IP 1639.254.169.2 53, and this virtual IP can only be accessed from within the VPC.
- Hidden/Implicit Meaning: Constraint or limitation signal; DNS resolution-path and control-plane signal.

Line 9:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies, Split-Horizon and Namespace Design
- Services: Amazon Route 53, Amazon VPC, Private Hosted Zone
- Key Insights: Now, Amazon provided DNS server resolves the DNS from the route 53 private hosted zone VPC internal DNS, which are assigned by the AWS, and then any public DNS.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 10:
- Concepts: DHCP and Host Configuration, DNS Resolution Path
- Services: Amazon VPC
- Key Insights: The DNS configurations for the VPC can be changed using Dhcp options sets, and this option sets cannot be edited.
- Hidden/Implicit Meaning: Constraint or limitation signal; DNS resolution-path and control-plane signal; Host configuration and bootstrap signal.

Line 11:
- Concepts: DHCP and Host Configuration
- Services: Amazon VPC, DHCP Option Set
- Key Insights: If you want to change any setting, you have to create a new Dhcp option set and then associate that with the VPC, and at one time you can only have a single Dhcp option set associated with the VPC.
- Hidden/Implicit Meaning: Constraint or limitation signal; Host configuration and bootstrap signal.

Line 12:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: Further, there are the DNS attributes.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 13:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: That is, enable DNS support and enable DNS host name.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 14:
- Concepts: DNS Resolution Path
- Services: Amazon VPC
- Key Insights: The enable DNS supports enable the VPC to send the DNS queries to Amazon provided DNS server and with enable DNS host name.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 15:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies, Split-Horizon and Namespace Design
- Services: Amazon Route 53, Private Hosted Zone
- Key Insights: The EC2 instances with the public IP also receives the public DNS name, and if you are using Amazon Route 53 Private Hosted zone to manage the private DNS, then you should have both these attributes set to true.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; DNS resolution-path and control-plane signal.

Line 16:
- Concepts: DNS/DHCP Operational Context
- Services: Amazon VPC
- Key Insights: And we are also going to talk about these attributes when we talk about the VPC endpoints and many such features, which connects your VPC to the other AWS services.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 17:
- Concepts: DNS Resolution Path, Hybrid DNS Integration, Routing and Reachability Dependencies
- Services: Amazon Route 53, Route 53 Resolver
- Key Insights: And finally, for hybrid DNS resolution, you should use Amazon Route 53 resolver endpoints.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; DNS resolution-path and control-plane signal; Hybrid DNS integration signal.

Line 18:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And there are two types of the endpoints.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 19:
- Concepts: Hybrid DNS Integration
- Services: (none explicit)
- Key Insights: The inbound and outbound.
- Hidden/Implicit Meaning: Hybrid DNS integration signal.

Line 20:
- Concepts: Hybrid DNS Integration
- Services: Amazon VPC
- Key Insights: Of course inbound are for receiving the queries from your outside network to VPC and then outbound for VPC to the outside network.
- Hidden/Implicit Meaning: Hybrid DNS integration signal.

Line 21:
- Concepts: DNS Resolution Path, Hybrid DNS Integration, Routing and Reachability Dependencies
- Services: Amazon Route 53, Route 53 Resolver
- Key Insights: So in hybrid scenarios you should use route 53 resolver endpoints.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; DNS resolution-path and control-plane signal; Hybrid DNS integration signal.

Line 22:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Now with that we will stop for this section.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 23:
- Concepts: DNS Resolution Path
- Services: Amazon VPC
- Key Insights: I hope you learned about the VPC, DNS, how it works and what are the important features.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; DNS resolution-path and control-plane signal.

Line 24:
- Concepts: Routing and Reachability Dependencies
- Services: Amazon Route 53
- Key Insights: And as I said, we will revisit this in the route 53 section.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 25:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this section.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 26:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Thanks for watching and stay tuned.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/10_Route 53/101_What is a DNS _.txt

Line 1:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies
- Services: Amazon Route 53
- Key Insights: Okay, so before we talk about Route 53 we have to talk about what is a DNS?
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 2:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: So, this is a basic level lecture, but at least it will help you understand how DNS works.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 3:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And this is something you've been using behind the scenes every day but you don't know about it exactly.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 4:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So, let's have a look.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 5:
- Concepts: DNS Resolution Path, Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: So, a DNS is a domain name system, and what it will do is that it will translate human friendly hostnames into the target server IP addresses.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 6:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: For example, when you type in your web browser, www.google.com, it will in the end give you back an IP address and this is IP address that your web browser will be able to access behind the scenes and get some data back from Google.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 7:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: So, the DNS is the backbone of the internet.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 8:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: It is a way for you to understand how to translate these URLs, these hostnames into IPs.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 9:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: So, there is a hierarchical naming structure for DNS and the idea is that at the root of www.google.com for example, there is the .com, but then there is example.com which is a bit more precise.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 10:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Then, www.example.com or api.example.com.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 11:
- Concepts: Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: So, all of these are going to be the hierarchy of your domain names.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 12:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: Next, we need to define a little bit of terminology regarding your DNS.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 13:
- Concepts: Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: So, there is a domain registrar.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 14:
- Concepts: Routing and Reachability Dependencies, Split-Horizon and Namespace Design
- Services: Amazon Route 53
- Key Insights: This is where you're going to register your domain names and it could be Amazon Route 53, or it could be GoDaddy or any other domain registrar you can find online.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 15:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: Then you have DNS Records and they have different types and we'll have a look at them in detail in this section.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 16:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So it could be A, AAAA, CNAME, NS, et cetera, et cetera.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 17:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Don't worry, we'll see those in detail in this section.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 18:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: A zone file which contains all the DNS records.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 19:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So, this is how to match these hostnames to IPs or addresses.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 20:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: Name servers is servers that will actually resolve the DNS queries.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 21:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And we'll have a look at them as well in this section.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 22:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Top level domains which is .com, .us, .in, .gov, .org, et cetera, et cetera.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 23:
- Concepts: Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: Second level domain which is amazon.com and google.com.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 24:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So you can see there are two words in between a dot.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 25:
- Concepts: Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: And so if we take a look for example at this FQDN, so fully qualified domain name, we have http://api.www.example.com.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 26:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 27:
- Concepts: Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: So, the last dot the end is called the root and it is the root of all the domain names.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 28:
- Concepts: Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: Then the .com, so .com is your TLD, so that's your top level domain.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 29:
- Concepts: Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: The example.com is going to be your second level domain.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 30:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Then we have www.example.com.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 31:
- Concepts: Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: That's your subdomain. api.www.example.com is your FQDN, your fully qualified domain name.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 32:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: HTTP is going to be your protocol and all these things together is going to be your URL.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 33:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: So, now that we know a little bit of terminology, let's have a look at how DNS works.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 34:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So we have a web server, and let's say for example that we have an IP, it's a public IP, could be an EC2 instance, for example.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 35:
- Concepts: Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: And the public IP is 9.10.11.12 and we want to be able to access this using the example.com domain name.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 36:
- Concepts: DNS Resolution Path, Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: So, we're going to register this example.com domain name on one of our servers for the DNS.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 37:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: But let's see how the computer, your web browser, can access it and can get that response.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 38:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So, your web browser is going to want to access example.com.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 39:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: And to do so, it's going to ask its local DNS server. "Hey, do you know what example.com is?" Now, this local DNS server is usually assigned and managed by your company or assigned by your internet service provider dynamically.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 40:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: And if the local DNS server has never seen this query before what it's going to do is first ask the root DNS server managed by the I-C-A-N-N, the ICANN organization and is going to say, "Hey, do you know what's example.com?" Which is the first server that's going to be asked.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; DNS resolution-path and control-plane signal.

Line 41:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: And the Root DNS Server is going to say, "I've never seen it, but I know .com." So, .com is NS, so it's an NS Record Name server and go see 1234 this public IP.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; DNS resolution-path and control-plane signal.

Line 42:
- Concepts: DNS Resolution Path, Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: So, this is saying to local DNS, "Hey, I don't have this answer but I'm getting you a little bit closer to your answer because I know the .com domain, and the .com domain name server has this IP, 1234." So the local DNS server saying, "Okay, good.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 43:
- Concepts: DNS Resolution Path, Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: Now I'm going to ask the top level domain." So the .com domain server at 1234. "I'm going to ask for the answer of my query." So, this is another domain managed by I-A-N-A, the IANA and the example.com, okay, is going to be asked again to this DNS server.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 44:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So, do you know about example.com?
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 45:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: And the DNS server is gonna say, "Hey, I do know about example.com.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 46:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: I don't have the answer to your query right away.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 47:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: I don't know which record it is, but there is a server called example.com that I know about which is at 5.6.7.8, that's a public IP that you should ask the answer to your question.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 48:
- Concepts: DNS Resolution Path, Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: So, local DNS server is then going go to our final server which is the second-level domain DNS server and this is a server that is going to be managed by your domain registrar.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 49:
- Concepts: Routing and Reachability Dependencies
- Services: Amazon Route 53
- Key Insights: So it could be, for example, Amazon Route 53 and so on.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 50:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: So the DNS server is gonna say, "Hey, do you know about example.com?" And the DNS server will have an entry for example.com.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 51:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And so it will say, "Hey, yes, of course I know example.com." And it turns out that example.com, I know that it's an A record and that the result of it is the IP 9.10.11.12.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 52:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: So, the DNS server now knows the answer by recursively asking DNS servers and finding the most specific one.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 53:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And then it says, "Okay, hey, yes.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 54:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: I'm going to cache that answer right away because I want to be able to, if someone is asking me again for example.com I want to get it right away, give them the answer." So, it's going to send back the answer into your browser and your web browser now has the answer and using this IP address then is going to be able to access your web server.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 55:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: So, this is how DNS works.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 56:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: So, you've been using DNS behind the scenes all along all your life.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 57:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: For example, when you access www.google.com you're using DNS or any website.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 58:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: But now we see how the DNS queries work.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 59:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies
- Services: Amazon Route 53
- Key Insights: So, this is just some background knowledge because now we're going to go into Route 53 and learn how to manage a DNS server on our own.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 60:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/10_Route 53/102_Route 53 Overview.txt

Line 1:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies
- Services: Amazon Route 53
- Key Insights: So now that we know what is a DNS, let's have a look at Amazon Route 53.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 2:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: So this is a highly available, scalable, and fully managed and authoritative DNS.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 3:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: What does authoritative means?
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 4:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: That means that the customer you can update the DNS records, so you have full control over this DNS.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 5:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So the idea is that you have your clients and they want to access your EC2 Instance @example.com but right now your EC2 Instance only has a public IP.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 6:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies
- Services: Amazon Route 53
- Key Insights: Therefore what's going to happen is that we're going to write some DNS records into Amazon Route 53, into a hosted zone, and when the client is asking for example.com, then the Route 53 service will be able to say, "Hey, you're looking for this IP 54.22.33.44," and then the clients will be able to connect directly into our EC2 Instance.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 7:
- Concepts: Routing and Reachability Dependencies, Split-Horizon and Namespace Design
- Services: Amazon Route 53
- Key Insights: So Route 53 is also a domain registrar, so it will be able to register our own domain names there such as example.com, and we'll be doing this in the hands-on to allow us to get started with this service.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 8:
- Concepts: Routing and Reachability Dependencies
- Services: Amazon Route 53
- Key Insights: So we have the ability to check also the health of the resources within Route 53, we'll see this in the section.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 9:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And this is the only service in AWS that will provide 100% availability SLA.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 10:
- Concepts: Routing and Reachability Dependencies
- Services: Amazon Route 53
- Key Insights: Finally, why is it called Route 53?
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 11:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: Well, 53 is a reference to the traditional DNS port used by DNS services, hence the name.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 12:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies, Split-Horizon and Namespace Design
- Services: Amazon Route 53
- Key Insights: So in Route 53 you're going to define a bunch of DNS records and the records define how you want to route traffic to a specific domain.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 13:
- Concepts: Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: So each record is going to contain a lot of information such as the domain or the subdomain names such as example.com.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 14:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: The record type, and we'll see what types of record we have available to us, for example it could be A or AAAA.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 15:
- Concepts: Routing and Reachability Dependencies
- Services: Amazon Route 53
- Key Insights: Then the value, so the value of the record, for example, 12.34.56.78 The routing policy, which is how a Route 53 will respond to queries.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 16:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: The TTL, which is the amount of time the record is going to be cached at the DNS resolvers, also called time to live.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 17:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies
- Services: Amazon Route 53
- Key Insights: And then we have a lot of different supported DNS report types in Route 53.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 18:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So we have, the ones you must know is A, quadruple A, CNAME, and NS, so we'll have a look at those in the hands-on.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 19:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And the advanced records that you can set, but we don't need to know from an exam perspective, are all the ones I just wrote right here.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 20:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So let's learn about the important record types we need to know from an exam perspective.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 21:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: So the A record is very simple, it's to map a host name into an IPv4 IP.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 22:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So this is when you have, for example, example.com that will be directed into 1.2.3.4.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 23:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Okay, great.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 24:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Then we have quadruple A.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 25:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: So this is the same idea as A, but this time we're going to match our host name into an IPv6 address.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 26:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: Then we have a CNAME, which is used to map a host name into another host name.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 27:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: And then the target host name of course may be an A or a quadruple A record.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 28:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies, Split-Horizon and Namespace Design
- Services: Amazon Route 53
- Key Insights: You can not create CNAMES in Route 53 for the top nodes of a DNS namespace or the Zone Apex, and we'll see this in a future lecture as well to understand how that works.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 29:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: For example, you can not create a CNAME for example.com, but you can create a CNAME record for www.example.com.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 30:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So we'll see how we can deal with this in a future lecture.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 31:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And then finally, NS is for name servers of the hosted zone.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 32:
- Concepts: DNS Resolution Path, Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: They are the DNS names or IP addresses of the servers that can respond to the DNS queries for your hosted zone, and this will control how traffic is routed to a domain.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 33:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So let's have a look at what are hosted zones.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 34:
- Concepts: Routing and Reachability Dependencies, Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: So hosted zones are a container of records, and they will define how to route traffic to a domain and its subdomain.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 35:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So we have two types of hosted zone, we have the public of zones and the private hosted zones.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 36:
- Concepts: DNS Resolution Path, Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: So whenever you buy a public domain name, for example mypublicdomain.com, this is a public domain name and therefore we can create a public hosted zone and these public zone can answer the query, "Hey, what's is the IP, underlying IP of the domain name application1.mypublicdomainname.com?" But we also have private hosted zones.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; DNS resolution-path and control-plane signal.

Line 37:
- Concepts: Split-Horizon and Namespace Design
- Services: Amazon VPC
- Key Insights: And these are for domain names that you, they are not publicly available, they're privates, and only you within your own virtual private cloud or VPC can resolve this URL.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 38:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: For example, application1.company.internal.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 39:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: You may have seen this if you're working for a private company, they sometimes have URLs that you can only access from within your corporate network, that's because this is a private URL, this is a private and behind the scenes there is a private DNS record.
- Hidden/Implicit Meaning: Constraint or limitation signal; DNS resolution-path and control-plane signal.

Line 40:
- Concepts: Routing and Reachability Dependencies
- Services: Amazon Route 53
- Key Insights: So for any hosted zones you're going to create an AWS you're going to pay 50 cents per month, so this is not free to use Route 53.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 41:
- Concepts: Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: And if you are to register a domain name, just like I will in the hands-on, this will cost you a minimum of a $12 per year.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 42:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So just so you know, this section is not free.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 43:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So public versus private hosted zones, just to understand.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 44:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So public hosted zone can be answered, can answer queries from public clients.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 45:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So when you web browser, for example, and say, "Hey, give me example.com," and then it returns an IP.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 46:
- Concepts: Split-Horizon and Namespace Design
- Services: Private Hosted Zone
- Key Insights: And on the other end we have the private hosted zone.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 47:
- Concepts: DNS/DHCP Operational Context
- Services: Amazon VPC
- Key Insights: So this is from within your VPC they live.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 48:
- Concepts: Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: And so they allow you to identify private resources with private domain names.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 49:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So for example, we have one EC2 Instance that we want to identify with webapp.example.internal, we have another EC2 Instance that we want to identify with api.example.internal, and then we have a database we want to identify with database.example.internal.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 50:
- Concepts: Split-Horizon and Namespace Design
- Services: Private Hosted Zone
- Key Insights: In which case we're going to register a private hosted zone, and then in case the first EC2 Instance is requesting for api.example.internal, then the private hosted zone has an answer for it, which is the private IP 10.0.0.10.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 51:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Then the EC2 Instance will connect to the second EC2 Instance, which may need to connect to database.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 52:
- Concepts: Split-Horizon and Namespace Design
- Services: Private Hosted Zone
- Key Insights: So it will say, "Hey, what's database.example.internal?" And the private hosted zone will say, "Well, this is this private IP." And then the EC2 Instance can connect directly into the database.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 53:
- Concepts: DNS Resolution Path, Split-Horizon and Namespace Design
- Services: Amazon VPC, Private Hosted Zone
- Key Insights: So the public hosted zone and the private hosted zone work the exact same way, but just the public hosted zone allows anyone from the internet to query your records, so this is for your public records, whereas a private hosted zone is only queried from within your private resources, for example your VPC.
- Hidden/Implicit Meaning: Constraint or limitation signal; DNS resolution-path and control-plane signal.

Line 54:
- Concepts: Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: So that's it for the theory, now let's go into the next lecture to register a domain and then create some records.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 55:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/10_Route 53/106_Route 53 - TTL.txt

Line 1:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Okay, so let's have a look at TTLs.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 2:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So a record TTL is a Time To Live.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 3:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies
- Services: Amazon Route 53
- Key Insights: And let's take this example where a client is accessing our DNS Route 53 and a web server.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 4:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: So we do a DNS request for myapp.example.com, and we get an answer from the DNS, which is saying, hey, please, this is an A record.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 5:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Here is the IP, and there is a TTL, maybe a TTL of 300 seconds.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 6:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So TTL is saying, hey clients, please cache this result for the duration of the TTL.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 7:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So for 300 seconds, the client is going to cache the results.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 8:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: That means that if the client is requesting again or accessing the same host name, what's going to happen is that the client will not issue a query to the DNS system, because it already knows the answer, because the answer has been cached, and we're still within the cache period, so the cache TTL.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 9:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: The idea behind this is that we don't want to query the DNS too often, because we don't expect records to change a lot, and so, therefore, using the response it has, the client can access our web server and do HTTP request and responses.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 10:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So we have, you know, two extreme cases.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 11:
- Concepts: Routing and Reachability Dependencies
- Services: Amazon Route 53
- Key Insights: For example, if you set a high TTL of, say, 24 hours, then this is going to do a lot less traffic on Route 53, because less clients are doing requests, because the result are cached for 24 hours, and, possibly, while the client will have outdated records.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 12:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: If somehow you want to change the record, you will need to wait 24 hours to make sure that all your clients will have the new records in their cache.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 13:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies
- Services: Amazon Route 53
- Key Insights: If you said set a low TTL, for example, 60 seconds, at the opposite, then it's going to do a lot more traffic on your DNS, so a lot more dollar you're going to spend, because you get price per how many request do reach Route 53.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 14:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: But the records will be outdated for less time, so it's quicker for you to do a record change, and it's easier to change records overall.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 15:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So it's up to you, really, to see what a good TTL or low TTL is.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 16:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: If you plan on changing a record, the idea is that sometimes you will decrease the TTL for, say, 24 hours, and then when you know that all the clients have a new TTL that is low, then you change the record value which gets updated for everyone, and then you increase the TTL.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 17:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: This is a strategy.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 18:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So the TTL is mandatory for every record except the Alias record that we'll see in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 19:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So let's have a look how TTL works in the console.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 20:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So let's have a look at how Time To Live works.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 21:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So let's create a new record, and this one is going to be called demo.stephanetheteacher.com, and the value of it is going to be one of the EC2 instances we know.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 22:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So let's take the one in eu-central-1.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 23:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So I'm gonna take this EC2 instance and paste the value of it.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 24:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And then for the TTL, we're going to set two minutes.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 25:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So to do so I'm going to click twice on this minute button.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 26:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So the TTL is now 120 seconds.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 27:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So let me create this record.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 28:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And now my record has been created.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 29:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So it is an A record pointing to a specific IP at demo.stephanetheteacher.com.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 30:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Now, I want to show you that the record is working, but Firefox is not very nice with me.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 31:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So if I try to open this in Firefox it's going to give me a problem.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 32:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So this is not something I can fix easily, so I'm going to use Google Chrome on the right-hand side to show you this.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 33:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So if I do demo.stephanetheteacher.com on Google, then automatically it should direct me to, yes, my eu-central-1 instance.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 34:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So that means that this record, this A record, is fully functioning.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 35:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And I can also make sure of that, for example, if I'm using CloudShell.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 36:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So if I clear this and do an nslookup on demo.stephanetheteacher.com, as you can see, the address is correct.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 37:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And if I do a dig command on this, then we get an answer.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 38:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And there's a cool number that we're showing here, so the answer section, there's 115.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 39:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: So the idea here, that's because I did do a DNS query.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 40:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Then the record get cached for 120 seconds.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 41:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And if I retype again this dig command right here, as you can see the number got down to 98.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 42:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So that means that for 98 seconds, actually, I will get the same response, because, no matter what, this is what's cached on my computer.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 43:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So if I'm very quick and I go to this record right here and I edit it, so instead of this IP, I want to go to ap-southeast-1, so we'll use the first IP in my list and save this.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 44:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So even though this record was being updated, okay, if I go into CloudShell and, again, do this dig command, as you can see, the insert is still the same as before.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 45:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: That's because for 66 more seconds this is going to be cached.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 46:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And if I go to Chrome, I think I was fast enough, I go to Chrome and refresh this page, as you can see, I still have the answer from eu-central-1.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 47:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And this is because, again, my record got cached for two minutes.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 48:
- Concepts: Routing and Reachability Dependencies
- Services: Amazon Route 53
- Key Insights: So when the cache is expiring, then only then my command line interface or my Chrome web browser will ask again Route 53 for the value of this record.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 49:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And then, again, will I get the answer and will be redirected to this new IP.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 50:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So the best way to check it is just to wait.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 51:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to wait maybe one more minute and then get back to you.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 52:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Okay, so it's been a minute and now if I refresh my web browser, as you can see now, I get a different Hello World and this time it's from ap-southeast-1b.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 53:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And if I go into my CloudShell and do the same dig command, then, as you can see, there's a new TTL, so 120 seconds, and there is a new IP right here which is the IPO menu server.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 54:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So this was a cool demo of the TTL.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 55:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/10_Route 53/107_Route 53 CNAME vs Alias.txt

Line 1:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So now let's have a look at the differences between CNAME and Aliases.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 2:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So when you have an AWS Resource, for example, a Load Balancer or CloudFront, it will expose a hostname.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 3:
- Concepts: Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: And what you want is to maybe map that hostname to a domain you own.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 4:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: For example, you want to map this Load Balancer into myapp.mydomain.com.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 5:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So we have two options.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 6:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: The first one is to use a CNAME record.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 7:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So we've seen A records, but now let's look at CNAME records.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 8:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So CNAME allows you to point a hostname to any other hostname.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 9:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: For example, you can say app.mydomain.com is pointing to blabla.anything.com.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 10:
- Concepts: Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: And this only works if you have a non root domain name, so if you have something.mydomain.com.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 11:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: It does not work for just mydomain.com, as we'll see in the hands-on.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 12:
- Concepts: Routing and Reachability Dependencies
- Services: Amazon Route 53
- Key Insights: On the other hand, you have alias records, and these are specific to Route 53, but they allow you to point a hostname to a specific AWS Resource.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 13:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So app.mydomain.com is pointing to blabla.amazonaws.com.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 14:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And these resources we'll see in a second where they are.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 15:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: But these alias records work for both root domains and non root domains.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 16:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So you can have mydomain.com pointing to, as an alias, to an alias resource which is very, very good.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 17:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So this is something that the exam may test you on, and we'll see this in the hands-on.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 18:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So on top of it, alias is very good because they're free of charge, and they have a native health check capability within them.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 19:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Okay, so if we look at these alias records in details, they are only mapped to resources in AWS.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 20:
- Concepts: Routing and Reachability Dependencies
- Services: Amazon Route 53
- Key Insights: So you would say, "Okay, here is Route 53.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 21:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: I want to have example.com as an alias record of type A, and the value is the DNS name of the load balancer you have.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 22:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: Now, this is an extension to DNS functionalities.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 23:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: That's something that's across all DNS that exist out there.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 24:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And in case the underlying ALB have IP changes, then automatically the alias record will recognize them.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 25:
- Concepts: DNS Resolution Path, Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: So it said unlike CNAME, alias records can be used for top, for the top node of the DNS namespace called the Zone Apex, so you can use a alias record for example.com.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 26:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Now, the alias record is always of type A or AAAA which is for resources, so either IPv4 or IPv6.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 27:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: When you have an alias record, you cannot set the TTL.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 28:
- Concepts: Routing and Reachability Dependencies
- Services: Amazon Route 53
- Key Insights: It is set automatically by Route 53.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 29:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So what are the targets for alias records?
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 30:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Well, it could be Elastic Load Balancers.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 31:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: It could be CloudFront Distributions.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 32:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And some of these you'll see, you'll have seen in this course, some of these you will not have seen in this course, but this is fine.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 33:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: It's just for you to get an idea of what they can be.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 34:
- Concepts: Routing and Reachability Dependencies
- Services: Amazon Route 53, Amazon VPC
- Key Insights: So ELBs, CloudFront Distributions, API Gateway, Elastic Beanstalk environments, S3 Websites, so not S3 Buckets but S3 Websites when these buckets are enabled as websites, VPC Interface Endpoints, Global Accelerator accelerator, and Route 53 records in the same hosted zone.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 35:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: One thing that is not there is that you cannot set an alias for an EC2 DNS name.
- Hidden/Implicit Meaning: Constraint or limitation signal; DNS resolution-path and control-plane signal.

Line 36:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: This is something you need to remember.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 37:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: So EC2 DNS names are not something you can have a target, that can be the target of an alias record, okay?
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 38:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Just, and also to let you to know.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 39:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So now let's have a look in the console to see how CNAMEs and alias records work.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 40:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So let's go ahead and create a record, and this one will be of type CNAME.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 41:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So I will call this one myapp.stephanetheteacher.com.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 42:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And the record type now is not A, it's not AAAA.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 43:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: It's CNAME.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 44:
- Concepts: Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: And then the value must be a domain name.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 45:
- Concepts: Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: And very easy, I already have a domain name available.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 46:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: That's my ALB.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 47:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So what I'm going to do is I'm going to copy those name of my ALB and paste it in here.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 48:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: The idea is that now instead of accessing my ALB through this URL, I want to be access the ALB through myapp.stephanetheteacher.com.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 49:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Okay, so I will just create this record, and now myapp.stephanetheteacher.com has been created.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 50:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And so if I go into my Chrome web browser on the right-hand side and open this URL, now you see that the answer is Hello World from my IP blah, blah, blah in AZ eu-central-1c.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 51:
- Concepts: Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: So this domain name is in fact covered by the ALB, and the ALB is directing the traffic into one EC2 instance, and so therefore I receive back this Hello World.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 52:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So this is good, but this is not AWS native, okay?
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 53:
- Concepts: Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: This is something that will work for many domain names, but we can do something better.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 54:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Because we are redirecting into an ALB, what we can do is create an alias record.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 55:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So I can create a record, and this time it's going to be myalias.stephanetheteacher.com, and the record type is A because my ALB is currently having only IPv4 traffic.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 56:
- Concepts: Routing and Reachability Dependencies
- Services: (none explicit)
- Key Insights: And the value of it, so we have to say, we have to take the alias right here, and we're going to route traffic to, and then we have a list of options, okay?
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 57:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So we can see a lot of different options, but right now it's going to be an Alias to an Application and Classic Load Balancer.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 58:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: We need to choose a region, so it is in eu-central-1 for me.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 59:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And then we need to choose the load balancer, so I will choose this load balancer right here.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 60:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Then automatically we can evaluate the target health as well with a Yes because this is an alias record.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 61:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So we'll click on Create this record, and now I have a new record right here called myalias.stephanetheteacher.com.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 62:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: And the cool thing is that this record is free to query, okay?
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 63:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So I'm not going to pay any money because this is an alias record.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 64:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: So if I click on myalias.stephanetheteacher.com, it's going to perform a few DNS queries, and now, again, I get the same response.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 65:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Okay, nothing has changed, but it is working.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 66:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Okay, so that's perfect.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 67:
- Concepts: Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: But now what if you consider the domain apex, so if you want to have just stephanetheteacher.com to redirect to this page?
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 68:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So what we're going to do is create a record, and let's go ahead.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 69:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So we're going to just have nothing in here, okay?
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 70:
- Concepts: Split-Horizon and Namespace Design
- Services: (none explicit)
- Key Insights: And we're going to have a CNAME record pointing to the domain name of my ALB which is copied from here and pasted in here.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 71:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Okay, so we want to say, "Hey, stephanetheteacher.com is going to be a CNAME for this value." Now, this is not going to work.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 72:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Let's try it.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 73:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: It's saying, "Hey, bad request.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 74:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: The CNAME is not permitted at apex of this zone." So this zone is stephanetheteacher.com, and the apex of the zone is stephanetheteacher.com, and therefore we cannot set up a CNAME at the apex.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 75:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So the only way we can deal with this issue is instead to create an alias and the record is going to be of type A, and the alias is going to point again to an ALB or CLB in the eu-central-1 region, and the load balancer is going to be the one from before.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 76:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: Now, this is going to be accepted because this is an alias record, and this is what the exam may test you on, okay?
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 77:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And so now we can see that stephanetheteacher.com is accessible.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 78:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And so if I go back into my web browser in here, open a new tab and enter stephanetheteacher.com and press Enter, here I get back the Hello World from my load balancer, so everything is working great, so that's it.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 79:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: We've shown how CNAMEs and alias records work in AWS.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 80:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/10_Route 53/119_Route 53 Resolvers & Hybrid DNS.txt

Line 1:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies
- Services: Amazon Route 53, Route 53 Resolver
- Key Insights: Okay, so let's have a little talk about the Route 53 Resolver.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 2:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies, Split-Horizon and Namespace Design
- Services: Amazon Route 53, Route 53 Resolver
- Key Insights: So the idea is that by default, when you have a Route 53 Resolver, which is the basic thing you create in Route 53 when you start using it, it will answer DNS queries for the local domain names for your EC2 instances for the records in your private hosted zones, as well as for the records in your public name server.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 3:
- Concepts: Routing and Reachability Dependencies
- Services: Amazon Route 53
- Key Insights: So everything you create under Route 53 is going to be answered within your account.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 4:
- Concepts: DNS Resolution Path, Hybrid DNS Integration
- Services: (none explicit)
- Key Insights: But you may want to have a situation where you want a hybrid DNS.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal; Hybrid DNS integration signal.

Line 5:
- Concepts: DNS Resolution Path
- Services: Route 53 Resolver
- Key Insights: That means that you want this resolver to resolve as well the DNS of your own network and vice versa.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 6:
- Concepts: DNS Resolution Path
- Services: (none explicit)
- Key Insights: So you want to establish connectivity between your AWS Cloud DNS and the DNS of your on-premises network.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal; Hybrid DNS integration signal.

Line 7:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And so how do we do this?
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 8:
- Concepts: DNS Resolution Path
- Services: Route 53 Resolver
- Key Insights: For this, we're going to use what's called a Resolver endpoint.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 9:
- Concepts: DNS Resolution Path, Hybrid DNS Integration, Split-Horizon and Namespace Design
- Services: Inbound Resolver Endpoint
- Key Insights: So this is just a simplified version, but the idea is that we're going to create an inbound endpoint that will allow the DNS resolvers of on-premises resources to resolve domain names of AWS resources.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal; Hybrid DNS integration signal.

Line 10:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 11:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies, Split-Horizon and Namespace Design
- Services: Amazon Route 53, Private Hosted Zone, Route 53 Resolver
- Key Insights: Say we have established our own Route 53 Resolver in our cloud and we have an EC2 instance, a private hosted zone, and we have our on-premises data center.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal; Hybrid DNS integration signal.

Line 12:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: A server on it is going to be, first of all, we need to establish of course, connectivity between our data center and AWS using a VPN or a direct connect connection.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 13:
- Concepts: DNS Resolution Path, Hybrid DNS Integration, Split-Horizon and Namespace Design
- Services: Inbound Resolver Endpoint, Private Hosted Zone, Route 53 Resolver
- Key Insights: And then this server is going to do a DNS query, for example, to look for a domain name that belongs to our private hosted zone, is going to be passed to the closest DNS resolver, so the on-premises resolver, and these resolver are going to be set up to talk to a resolver inbound endpoint, and to pass on this DNS query into our AWS Cloud.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal; Hybrid DNS integration signal.

Line 14:
- Concepts: DNS Resolution Path, Routing and Reachability Dependencies
- Services: Amazon Route 53, Route 53 Resolver
- Key Insights: And this resolver knows how to talk to the Route 53 Resolver.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal.

Line 15:
- Concepts: Hybrid DNS Integration
- Services: Inbound Resolver Endpoint
- Key Insights: So this is how you have the full chain of lookups from your on-premises data center to your cloud using an inbound endpoint.
- Hidden/Implicit Meaning: Hybrid DNS integration signal.

Line 16:
- Concepts: DNS Resolution Path, Hybrid DNS Integration, Routing and Reachability Dependencies
- Services: Amazon Route 53, Outbound Resolver Endpoint, Route 53 Resolver
- Key Insights: And of course you can do it the other way with an outbound endpoint in which your Route 53 Resolver will forward DNS queries to your resolver on-premises.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal; Hybrid DNS integration signal.

Line 17:
- Concepts: DNS Resolution Path, Hybrid DNS Integration
- Services: Outbound Resolver Endpoint, Route 53 Resolver
- Key Insights: So again, if we have a look, we have the two infrastructures that are connected, and then we're going to have a resolver outbound endpoint.
- Hidden/Implicit Meaning: DNS resolution-path and control-plane signal; Hybrid DNS integration signal.

Line 18:
- Concepts: DNS Resolution Path, Hybrid DNS Integration
- Services: Outbound Resolver Endpoint, Route 53 Resolver
- Key Insights: And this time whenever you EC2 instance queries for a DNS query that is resolved on-premises, for example, web.onpremise.private, is going to be passed through the resolver outbound endpoint to the DNS resolvers of the on-premises data center, and we'll be good to go.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; DNS resolution-path and control-plane signal; Hybrid DNS integration signal.

Line 19:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: So that's it.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 20:
- Concepts: DNS Resolution Path, Hybrid DNS Integration
- Services: Outbound Resolver Endpoint, Route 53 Resolver
- Key Insights: The idea behind this, I think, a bit complicated lecture is that if you want to connect your on-premises data center and AWS and make sure the DNS queries are resolved both ways, you must use the resolver inbound and outbound endpoint.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; DNS resolution-path and control-plane signal; Hybrid DNS integration signal.

Line 21:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: And that's about it.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 22:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: All you should know.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 23:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

Line 24:
- Concepts: DNS/DHCP Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes DNS/DHCP operational detail.

## Step 2 — Consolidation

### 1. Concepts List
- DHCP and Host Configuration
- DNS Resolution Path
- DNS/DHCP Operational Context
- Hybrid DNS Integration
- Routing and Reachability Dependencies
- Split-Horizon and Namespace Design

### 2. Services List
- Amazon Route 53
- Amazon VPC
- DHCP Option Set
- Inbound Resolver Endpoint
- Outbound Resolver Endpoint
- Private Hosted Zone
- Resolver Rule
- Route 53 Resolver

### 3. Features List
- alias
- cname
- dhcp
- forwarding
- inbound endpoint
- outbound endpoint
- private hosted zone
- resolver
- ttl

### 4. Use Cases
- 061_Route 53 - Part 1.txt:7: So, you cannot create a CNAME for example.com.
- 061_Route 53 - Part 1.txt:12: Well, the client wants to access an EC2 instance that has a public IP, is going to first query for example.com in Amazon Route 53, and then get an IP back, and then thanks to the IP, reach our EC2 instance.
- 061_Route 53 - Part 1.txt:15: So, all the resources in AWS, for example Load Balancer, CloudFront, et cetera, they expose an AWS hostname.
- 061_Route 53 - Part 1.txt:16: So, for example, this is the hostname of a Load Balancer, and maybe we want this Load Balancer to be instead myapp.mydomain.com.
- 061_Route 53 - Part 1.txt:28: We're going to get a response, for example A record, but this will have a TTL, and this response is going to be cached for the time of the TTL.
- 061_Route 53 - Part 1.txt:31: So, in case you do a high TTL, for example, 24 hours that means that you're going to get less traffic on the Route 53, but you have possibly updated records, for example, if you update them in DNS side then it will take up to 24 hours for clients to get the new values.
- 061_Route 53 - Part 1.txt:32: Otherwise, if you set a very low TTL, for example 60 seconds that means you're going to get more traffic on the DNS side which is going to cost you some money, but on the flip side, the records are going to be outdated for less time and it's going to be easier to change records, so, it's always a trade off.
- 061_Route 53 - Part 1.txt:45: The use cases for Weighted records is around load balancing between regions, testing the application versions, and so on.
- 061_Route 53 - Part 1.txt:46: Then we have latency based records which is to redirect resources that have the least latency close to us which is super helpful when latency is a user priority.
- 061_Route 53 - Part 1.txt:48: So, it's further possible for Germany users to be directed to the US, if that's the lowest latency, and for example, your app is in Asia.
- 061_Route 53 - Part 1.txt:50: So if we have, for example, two ALB, one in US-East-1 and one in AP-Southeast-1, and our users all around the world it's very possible for these users to go to US-East-1 and for the others to go to AP-Southeast-1.
- 061_Route 53 - Part 1.txt:60: And then use case for geolocation is to be doing website localization, to restrict content distribution or load balancing.
- 061_Route 53 - Part 1.txt:69: But in case you increase the bias in US-East-1 and for example, you set a bias to something much higher, say 50, then if you leave it to zero on US-West-1 then the line is going to be closer to US-West-1 and therefore more users to the right of that line are gonna go to US-East-1, and the other ones are gonna go still to US-West-1.
- 061_Route 53 - Part 1.txt:75: Finally, we have one last type of record called the Multi-Value record which is to use when routing to multiple resources, and then the Route 53 is going to return multiple values and resources.
- 061_Route 53 - Part 1.txt:83: So the use cases will be to optimize performance because you know the IP ahead of time or to reduce network costs because you know where the IP is are coming from.
- 061_Route 53 - Part 1.txt:90: So for example.com, we're going to have location one, so the first CIDR block to send to the value 1,2,3,4, and the second location, the block CIDR number two to send to 5,6,7,8, and these represents the public IP of two EC2 instances.
- 062_Route 53 - Part 2.txt:2: We have the Public Hosted Zones, to allow the internet to resolve them for public domains, but also we get the Private Hosted Zones and these can only be resolved from within your VPC and you can define private URL's.
- 062_Route 53 - Part 2.txt:3: So, the difference is that the Public Hosted Zone is accessible publicly and you can have the target being the Public IP of an EC2 Instance, the Public IP of an Application Load Balancer or a CloudFront distribution or an S3 Bucket website for example.
- 062_Route 53 - Part 2.txt:13: That means that for example, if you have two ALB's in two distinct regions then you can set up two Health Checks to check the health of these ALB.
- 062_Route 53 - Part 2.txt:19: So you can monitor, for example, throttles of DynamoDB alarms on RDS or any custom metrics which is very helpful for private resources.
- 062_Route 53 - Part 2.txt:23: So the use case of a Calculated Health Check is to perform maintenance on your website without causing, for example, all the Health Checks to fail.
- 062_Route 53 - Part 2.txt:26: And when you do set something up you get about fifteen Health Checkers that will check your Endpoint health so it needs to be a Public Endpoint, of course.
- 063_Route 53 - Resolvers & Hybrid DNS.txt:1: Okay, so now let's view an advanced use case that comes up a lot in the exam, which is around Hybrid DNS.
- 063_Route 53 - Resolvers & Hybrid DNS.txt:4: So for example, here's our VPC.
- 063_Route 53 - Resolvers & Hybrid DNS.txt:8: Any records in your private hosted zone as well is going to be easy to answer to, and records in public name servers, for example, for a public hosted zone, or any name server out there that is public on the internet.
- 063_Route 53 - Resolvers & Hybrid DNS.txt:9: Now, if you want to resolve DNS queries between your VPC and other private networks, your own networks that has other DNS resolvers, then you're going to need a hybrid DNS.
- 063_Route 53 - Resolvers & Hybrid DNS.txt:10: So these networks can be PeeredVPC for example, or it could be an on-premises network that is going to be connected to our VPC through Direct Connect or AWS VPN.
- 063_Route 53 - Resolvers & Hybrid DNS.txt:15: So inbound endpoints are allowing DNS resolvers on your external networks to forward DNS queries to your Route 53 resolver and answer these queries.
- 063_Route 53 - Resolvers & Hybrid DNS.txt:16: So these resolvers will help to resolve domain names for the resources of AWS.
- 063_Route 53 - Resolvers & Hybrid DNS.txt:17: For example, your EC2 instances or records that you create in your Route 53 private hosted zone.
- 063_Route 53 - Resolvers & Hybrid DNS.txt:20: And for this, we're going to create resolver rules to forward them.
- 063_Route 53 - Resolvers & Hybrid DNS.txt:27: So let's take an example where we have an EC2 instance, and lives in a VPC, and we have a private hosted zone that we create, for example, aws.private, and we have also an on-premises data center that has a server.
- 063_Route 53 - Resolvers & Hybrid DNS.txt:36: Now, when the server will issue a DNS query for app.aws.private the DNS resolvers are going to say, hey, you know what?
- 063_Route 53 - Resolvers & Hybrid DNS.txt:39: So what's going to happen is that within our DNS resolvers on premises, we're going to say that for the domain name, aws.private, we're going to forward to these two IPs.
- 063_Route 53 - Resolvers & Hybrid DNS.txt:42: So it's going to forward them to these IPs.
- 063_Route 53 - Resolvers & Hybrid DNS.txt:47: But this time we want to be able to resolve the DNS names of the on-premises data center.
- 063_Route 53 - Resolvers & Hybrid DNS.txt:51: So the Route 53 resolver is going to send this to this endpoint, and the endpoint is going to forward the DNS query into the on-premises DNS resolver.
- 063_Route 53 - Resolvers & Hybrid DNS.txt:55: And it's going to explain how to forward DNS queries on your network.
- 063_Route 53 - Resolvers & Hybrid DNS.txt:58: So you can say, for example.com or acme.example.com, here is the target IP, or here are the target IPs for these domains.
- 063_Route 53 - Resolvers & Hybrid DNS.txt:63: For example, domain names that are internal to AWS or private hosted zones, for example compute.amazonaws.com or EC2.internal.
- 030_Section Introduction - How DNS works_.txt:4: Now when you talk about the DNS as a topic it covers everything that means the DNS for VPC or the public DNS.
- 030_Section Introduction - How DNS works_.txt:18: And this local DNS server might have the address for example.com.
- 030_Section Introduction - How DNS works_.txt:21: So then it talks to other DNS server and ultimately gets the IP address for example.com.
- 030_Section Introduction - How DNS works_.txt:23: Now at this point your system knows that the IP address, for example dot com is 9.10.
- 030_Section Introduction - How DNS works_.txt:36: And second, if your VPC resource, for example EC2 instance wants to reach to the internet, then how that DNS resolution happens.
- 030_Section Introduction - How DNS works_.txt:39: That means when you launch different AWS services, for example, load balancers or CloudFront, or you access S3 bucket, which are publicly available, then you need to understand how Amazon Route 53 is used to configure that DNS.
- 030_Section Introduction - How DNS works_.txt:52: But you know that in a hybrid world, you might want to resolve the DNS from on premise network as well.
- 031_Amazon VPC DNS Server (Route53 Resolver).txt:6: But essentially the purpose of this DNS server is to resolve the DNS queries for the resources inside the VPC.
- 031_Amazon VPC DNS Server (Route53 Resolver).txt:7: And typically when we say resource, we are talking about the EC2 instances.
- 031_Amazon VPC DNS Server (Route53 Resolver).txt:9: Now if any of these EC2 instance has to resolve some DNS for say google.com or other, if you have multiple machines within the same VPC and you want to access that machine over the DNS rather than IP address, then how that happens.
- 031_Amazon VPC DNS Server (Route53 Resolver).txt:10: Now, whenever you create a VPC, AWS will also create something called a default DNS server for that VPC.
- 031_Amazon VPC DNS Server (Route53 Resolver).txt:19: Of course role is to resolve the DNS queries from the EC2 instances.
- 031_Amazon VPC DNS Server (Route53 Resolver).txt:25: For example app one dot example.com, app two dot example.com or db dot example.com.
- 031_Amazon VPC DNS Server (Route53 Resolver).txt:29: So if you remember, whenever you launch EC2 instance, it gets a private and public DNS names.
- 031_Amazon VPC DNS Server (Route53 Resolver).txt:35: And just a thing to mention that whenever we talk about the public DNS, it means everything on the internet, including Amazon Route 53 public hosted zone.
- 031_Amazon VPC DNS Server (Route53 Resolver).txt:42: That means, for example, you have google.com as a private hosted zone.
- 031_Amazon VPC DNS Server (Route53 Resolver).txt:44: It will try to resolve that query from this private hosted zone.
- 031_Amazon VPC DNS Server (Route53 Resolver).txt:48: If it exists then it will try to resolve the DNS query from there.
- 031_Amazon VPC DNS Server (Route53 Resolver).txt:63: So if your VPC needs to have its own domain name, for example say example.com.
- 031_Amazon VPC DNS Server (Route53 Resolver).txt:91: As I said whenever you create EC2 instance, AWS may assign the private and public DNS names for your EC2 instances.
- 031_Amazon VPC DNS Server (Route53 Resolver).txt:135: So VPC comes with the default Dhcp option set, which provides this dynamic host configuration to the instances when they launch.
- 032_VPC DHCP Option sets.txt:12: So as I said, when you launch the EC2 instances, this Dhcp option set parameters are automatically applied for the EC2 instances as you launch them.
- 032_VPC DHCP Option sets.txt:67: Let's try to resolve the private DNS of instance two.
- 032_VPC DHCP Option sets.txt:80: That is what if you try to resolve the public DNS of the EC2 instance from, you know, within the EC2 instance itself.
- 032_VPC DHCP Option sets.txt:136: For example, if you are using Amazon Route 53 private hosted zone for managing the private DNS for the VPC, then you should have both these attributes set to true.
- 032_VPC DHCP Option sets.txt:150: But if you want that this take into effect immediately, then you can probably run some Linux command for example Dhcp client and it refreshes your Dhcp lease.
- 033_Hands on exercises scenarios.txt:6: For example, you have VPCs and a couple of EC2 instances.
- 034_Hands On_ VPC DNS with Route53 Private Hosted zone.txt:45: Now we'll again come back here when we launch EC2 instances.
- 035_Hands On_ VPC DNS with custom DNS server.txt:5: And we then have to modify the Dhcp option set where we will point this Dhcp option set to this DNS server when it comes to the name server, so that all the DNS queries from the EC2 are directed to this DNS server, and this DNS server will have corresponding zone file, which has the entries for mapping this app server and database server to corresponding private IP addresses of this EC2 instances and all these machines can natively reach to this DNS server because all this communication is within the VPC, right.
- 035_Hands On_ VPC DNS with custom DNS server.txt:13: Uh, just make sure when you open the security group rules, uh, you, uh, have the appropriate ports open.
- 035_Hands On_ VPC DNS with custom DNS server.txt:83: So now is the time when we tell VPC that uh you need to use different uh domain name.
- 036_Introduction to Route53 DNS Resolver Endpoints (Hybrid DNS).txt:5: And then we are going to dive deep into resolver endpoints into the route 53 section.
- 036_Introduction to Route53 DNS Resolver Endpoints (Hybrid DNS).txt:15: Or second, you want to manage that in Amazon route 53 private hosted zone, for example, and all the DNS queries from on premises are forwarded to Amazon route 53.
- 037_Exam Essentials.txt:16: And we are also going to talk about these attributes when we talk about the VPC endpoints and many such features, which connects your VPC to the other AWS services.
- 101_What is a DNS _.txt:6: For example, when you type in your web browser, www.google.com, it will in the end give you back an IP address and this is IP address that your web browser will be able to access behind the scenes and get some data back from Google.
- 101_What is a DNS _.txt:9: So, there is a hierarchical naming structure for DNS and the idea is that at the root of www.google.com for example, there is the .com, but then there is example.com which is a bit more precise.
- 101_What is a DNS _.txt:25: And so if we take a look for example at this FQDN, so fully qualified domain name, we have http://api.www.example.com.
- 101_What is a DNS _.txt:34: So we have a web server, and let's say for example that we have an IP, it's a public IP, could be an EC2 instance, for example.
- 101_What is a DNS _.txt:49: So it could be, for example, Amazon Route 53 and so on.
- 101_What is a DNS _.txt:50: So the DNS server is gonna say, "Hey, do you know about example.com?" And the DNS server will have an entry for example.com.
- 101_What is a DNS _.txt:54: I'm going to cache that answer right away because I want to be able to, if someone is asking me again for example.com I want to get it right away, give them the answer." So, it's going to send back the answer into your browser and your web browser now has the answer and using this IP address then is going to be able to access your web server.
- 101_What is a DNS _.txt:57: For example, when you access www.google.com you're using DNS or any website.
- 102_Route 53 Overview.txt:6: Therefore what's going to happen is that we're going to write some DNS records into Amazon Route 53, into a hosted zone, and when the client is asking for example.com, then the Route 53 service will be able to say, "Hey, you're looking for this IP 54.22.33.44," and then the clients will be able to connect directly into our EC2 Instance.
- 102_Route 53 Overview.txt:14: The record type, and we'll see what types of record we have available to us, for example it could be A or AAAA.
- 102_Route 53 Overview.txt:15: Then the value, so the value of the record, for example, 12.34.56.78 The routing policy, which is how a Route 53 will respond to queries.
- 102_Route 53 Overview.txt:22: So this is when you have, for example, example.com that will be directed into 1.2.3.4.
- 102_Route 53 Overview.txt:29: For example, you can not create a CNAME for example.com, but you can create a CNAME record for www.example.com.
- 102_Route 53 Overview.txt:36: So whenever you buy a public domain name, for example mypublicdomain.com, this is a public domain name and therefore we can create a public hosted zone and these public zone can answer the query, "Hey, what's is the IP, underlying IP of the domain name application1.mypublicdomainname.com?" But we also have private hosted zones.
- 102_Route 53 Overview.txt:38: For example, application1.company.internal.
- 102_Route 53 Overview.txt:45: So when you web browser, for example, and say, "Hey, give me example.com," and then it returns an IP.
- 102_Route 53 Overview.txt:49: So for example, we have one EC2 Instance that we want to identify with webapp.example.internal, we have another EC2 Instance that we want to identify with api.example.internal, and then we have a database we want to identify with database.example.internal.
- 102_Route 53 Overview.txt:53: So the public hosted zone and the private hosted zone work the exact same way, but just the public hosted zone allows anyone from the internet to query your records, so this is for your public records, whereas a private hosted zone is only queried from within your private resources, for example your VPC.
- 106_Route 53 - TTL.txt:11: For example, if you set a high TTL of, say, 24 hours, then this is going to do a lot less traffic on Route 53, because less clients are doing requests, because the result are cached for 24 hours, and, possibly, while the client will have outdated records.
- 106_Route 53 - TTL.txt:13: If you said set a low TTL, for example, 60 seconds, at the opposite, then it's going to do a lot more traffic on your DNS, so a lot more dollar you're going to spend, because you get price per how many request do reach Route 53.
- 106_Route 53 - TTL.txt:16: If you plan on changing a record, the idea is that sometimes you will decrease the TTL for, say, 24 hours, and then when you know that all the clients have a new TTL that is low, then you change the record value which gets updated for everyone, and then you increase the TTL.
- 106_Route 53 - TTL.txt:35: And I can also make sure of that, for example, if I'm using CloudShell.
- 106_Route 53 - TTL.txt:48: So when the cache is expiring, then only then my command line interface or my Chrome web browser will ask again Route 53 for the value of this record.
- 107_Route 53 CNAME vs Alias.txt:2: So when you have an AWS Resource, for example, a Load Balancer or CloudFront, it will expose a hostname.
- 107_Route 53 CNAME vs Alias.txt:4: For example, you want to map this Load Balancer into myapp.mydomain.com.
- 107_Route 53 CNAME vs Alias.txt:9: For example, you can say app.mydomain.com is pointing to blabla.anything.com.
- 107_Route 53 CNAME vs Alias.txt:25: So it said unlike CNAME, alias records can be used for top, for the top node of the DNS namespace called the Zone Apex, so you can use a alias record for example.com.
- 107_Route 53 CNAME vs Alias.txt:27: When you have an alias record, you cannot set the TTL.
- 107_Route 53 CNAME vs Alias.txt:34: So ELBs, CloudFront Distributions, API Gateway, Elastic Beanstalk environments, S3 Websites, so not S3 Buckets but S3 Websites when these buckets are enabled as websites, VPC Interface Endpoints, Global Accelerator accelerator, and Route 53 records in the same hosted zone.
- 119_Route 53 Resolvers & Hybrid DNS.txt:2: So the idea is that by default, when you have a Route 53 Resolver, which is the basic thing you create in Route 53 when you start using it, it will answer DNS queries for the local domain names for your EC2 instances for the records in your private hosted zones, as well as for the records in your public name server.
- 119_Route 53 Resolvers & Hybrid DNS.txt:5: That means that you want this resolver to resolve as well the DNS of your own network and vice versa.
- 119_Route 53 Resolvers & Hybrid DNS.txt:9: So this is just a simplified version, but the idea is that we're going to create an inbound endpoint that will allow the DNS resolvers of on-premises resources to resolve domain names of AWS resources.
- 119_Route 53 Resolvers & Hybrid DNS.txt:13: And then this server is going to do a DNS query, for example, to look for a domain name that belongs to our private hosted zone, is going to be passed to the closest DNS resolver, so the on-premises resolver, and these resolver are going to be set up to talk to a resolver inbound endpoint, and to pass on this DNS query into our AWS Cloud.
- 119_Route 53 Resolvers & Hybrid DNS.txt:18: And this time whenever you EC2 instance queries for a DNS query that is resolved on-premises, for example, web.onpremise.private, is going to be passed through the resolver outbound endpoint to the DNS resolvers of the on-premises data center, and we'll be good to go.

### 5. Constraints / Limitations
- 061_Route 53 - Part 1.txt:6: And you cannot create a CNAME on top of, the top node of the DNS namespace which is the Zone Apex.
- 061_Route 53 - Part 1.txt:7: So, you cannot create a CNAME for example.com.
- 061_Route 53 - Part 1.txt:19: So, it is very possible for us to do app.mydomain.com points to anything.com, and so therefore it would work for the example above, but this only works for non root domain, so, it must be something.mydomain.com.
- 061_Route 53 - Part 1.txt:21: It's to point hostname only to a specified AWS resource.
- 061_Route 53 - Part 1.txt:22: So, it's app.mydomain.com into something.amazonaws.com, so, it must be a resource from AWS, and this works for root domain and non root domain.
- 061_Route 53 - Part 1.txt:23: So, it works for mydomain.com and it's free of charge and it has native health check as a feature, so that means that for the Load Balancer in AWS you cannot do a CNAME for mydomain.com, but you can do an Alias record for mydomain.com.
- 061_Route 53 - Part 1.txt:25: And you cannot set Alias record for an EC2 DNS name.
- 061_Route 53 - Part 1.txt:33: And except for the Alias record the TTL is mandatory for each DNS record, very important to remember.
- 061_Route 53 - Part 1.txt:34: Okay, now let's look at the routing policy, so we have the simple routing policy which is to route traffic to a single resource and this cannot be associated with the health check and this is the only kind of routing policy that is not associated with the health check.
- 061_Route 53 - Part 1.txt:59: So you should create a default record in case you have no match on location.
- 061_Route 53 - Part 1.txt:76: But because this can be associated with a health check we can only make sure that the return values are full healthy resources.
- 061_Route 53 - Part 1.txt:82: And you're going to say based on the CIDR which location the traffic should be sent to.
- 062_Route 53 - Part 2.txt:2: We have the Public Hosted Zones, to allow the internet to resolve them for public domains, but also we get the Private Hosted Zones and these can only be resolved from within your VPC and you can define private URL's.
- 062_Route 53 - Part 2.txt:5: Other good things to know for Route 53 is that in case you have a Private Hosted Zone with a Private DNS then in your VPC you must enable two settings called the enableDnsHostnames and enable DnsSupport.
- 062_Route 53 - Part 2.txt:9: It only works with Public Hosted Zones.
- 062_Route 53 - Part 2.txt:27: And then the Health Checks are going to pass only if the Endpoint is going to respond with the 200's or the 300's status codes.
- 062_Route 53 - Part 2.txt:32: Well, because the Health Checkers are outside the VPC they cannot access Private Endpoints.
- 063_Route 53 - Resolvers & Hybrid DNS.txt:41: And what's going to happen is that now the DNS query for app.aws.private matches this domain name that was configured on-premises, and therefore the DNS resolver is going to say, hey, I know I should forward these queries to a DNS server that has this information.
- 030_Section Introduction - How DNS works_.txt:5: But in this section we want to only focus on the DNS resolution for the VPC itself.
- 030_Section Introduction - How DNS works_.txt:26: And there are few additional things that you should know.
- 030_Section Introduction - How DNS works_.txt:31: That means if DNS doesn't work you cannot connect to any internet server.
- 030_Section Introduction - How DNS works_.txt:33: Now with respect to this section we are going to only talk about the VPC DNS, which means if you have VPC, then you can have your private DNS setup.
- 030_Section Introduction - How DNS works_.txt:47: And then we will talk about few important attributes that you need to know, because these attributes will affect how the DNS resolution happens from within the VPC.
- 031_Amazon VPC DNS Server (Route53 Resolver).txt:16: And it can also be accessed over a virtual IP that is 169.254.169.2 53, but note that this IP address is only accessible from within the VPC, right?
- 031_Amazon VPC DNS Server (Route53 Resolver).txt:51: And at this moment we are saying that this DNS resolver is accessible only from within the VPC, which is not 100% true.
- 031_Amazon VPC DNS Server (Route53 Resolver).txt:52: But just for this lecture, let's try to limit our scope to the VPC only.
- 031_Amazon VPC DNS Server (Route53 Resolver).txt:121: So we talked about a lot of things though basics but very important for your exam because I'm sure there will be some questions around this route 53 DNS resolver.
- 032_VPC DHCP Option sets.txt:5: So through Dhcp option set you can set what should be the private domain name for your EC2 instances.
- 032_VPC DHCP Option sets.txt:6: Then what should be the domain name server which is like route 53 resolver by default.
- 032_VPC DHCP Option sets.txt:52: But now, if we launch another instance in a public subnet with the public IP, it should also receive the public DNS.
- 032_VPC DHCP Option sets.txt:68: And it should resolve to its corresponding private IP.
- 032_VPC DHCP Option sets.txt:100: Now again, not important for your exam, but something that you should know.
- 032_VPC DHCP Option sets.txt:109: Now, one thing to note here is that you cannot modify the existing Dhcp option set, but rather you would have to create a new Dhcp option set and then associate that with your existing VPC.
- 032_VPC DHCP Option sets.txt:116: So that's another thing that you need to note is that Dhcp option set cannot be modified.
- 032_VPC DHCP Option sets.txt:133: So by default this attribute is false, but typically you should turn it on as well.
- 032_VPC DHCP Option sets.txt:136: For example, if you are using Amazon Route 53 private hosted zone for managing the private DNS for the VPC, then you should have both these attributes set to true.
- 032_VPC DHCP Option sets.txt:138: So these are a few things which probably you should remember.
- 032_VPC DHCP Option sets.txt:143: So once you create a Dhcp option set you cannot modify the existing one, but rather you can create a new one and associate that with the VPC.
- 032_VPC DHCP Option sets.txt:145: You can only have one DSP option set associated with the VPC.
- 032_VPC DHCP Option sets.txt:147: But the problem is in that case, VPC doesn't know where to send the DNS queries and it cannot resolve then any DNS, which is okay if your instance can communicate with each other directly using the private IP addresses.
- 032_VPC DHCP Option sets.txt:156: So these are all the important things that you should know for your exam.
- 033_Hands on exercises scenarios.txt:16: Then we should be able to use this internal domain name for the communication between these EC2 instances.
- 033_Hands on exercises scenarios.txt:19: And the most important part here is to update the Dhcp option set where the name server points to the same IP address as our custom DNS server.
- 034_Hands On_ VPC DNS with Route53 Private Hosted zone.txt:10: And then the most important part here is to create the private hosted zone with the same name as our domain name that is corp dot internal.
- 034_Hands On_ VPC DNS with Route53 Private Hosted zone.txt:30: Now the most important part here is use this string because it points to route 53 resolver and rest of the setting.
- 034_Hands On_ VPC DNS with Route53 Private Hosted zone.txt:53: And you should allow the SSH from say my IP.
- 034_Hands On_ VPC DNS with Route53 Private Hosted zone.txt:54: And also you should have all ICMP IPv4 from the VPC, Cidr itself.
- 034_Hands On_ VPC DNS with Route53 Private Hosted zone.txt:87: Resolvconf and you will see that the search domain is coreboot internal here, and the name server is ten .0.0.2, which means if I do now ping dot db, dot core, dot internal, it should go to my database server.
- 035_Hands On_ VPC DNS with custom DNS server.txt:18: So that's the only thing you need to remember.
- 035_Hands On_ VPC DNS with custom DNS server.txt:51: So most important is like you need to put the IP address of your app server.
- 035_Hands On_ VPC DNS with custom DNS server.txt:103: That means our machine should now redirect all the queries to the DNS server that we configured.
- 035_Hands On_ VPC DNS with custom DNS server.txt:114: It will take a couple of maybe seconds, for instance, to be up again, and I expect my connection must have been broken by that time.
- 036_Introduction to Route53 DNS Resolver Endpoints (Hybrid DNS).txt:14: So all the DNS queries from these EC2 instances should go to your on premises DNS server.
- 036_Introduction to Route53 DNS Resolver Endpoints (Hybrid DNS).txt:41: So I would say this is the latest way in which you should think of hybrid DNS in AWS.
- 037_Exam Essentials.txt:3: And this is important to remember for your exam.
- 037_Exam Essentials.txt:8: Now this DNS server runs at VPC base address plus two, and it is also available on the virtual IP 1639.254.169.2 53, and this virtual IP can only be accessed from within the VPC.
- 037_Exam Essentials.txt:10: The DNS configurations for the VPC can be changed using Dhcp options sets, and this option sets cannot be edited.
- 037_Exam Essentials.txt:11: If you want to change any setting, you have to create a new Dhcp option set and then associate that with the VPC, and at one time you can only have a single Dhcp option set associated with the VPC.
- 037_Exam Essentials.txt:15: The EC2 instances with the public IP also receives the public DNS name, and if you are using Amazon Route 53 Private Hosted zone to manage the private DNS, then you should have both these attributes set to true.
- 037_Exam Essentials.txt:17: And finally, for hybrid DNS resolution, you should use Amazon Route 53 resolver endpoints.
- 037_Exam Essentials.txt:21: So in hybrid scenarios you should use route 53 resolver endpoints.
- 037_Exam Essentials.txt:23: I hope you learned about the VPC, DNS, how it works and what are the important features.
- 101_What is a DNS _.txt:47: I don't know which record it is, but there is a server called example.com that I know about which is at 5.6.7.8, that's a public IP that you should ask the answer to your question.
- 102_Route 53 Overview.txt:5: So the idea is that you have your clients and they want to access your EC2 Instance @example.com but right now your EC2 Instance only has a public IP.
- 102_Route 53 Overview.txt:9: And this is the only service in AWS that will provide 100% availability SLA.
- 102_Route 53 Overview.txt:18: So we have, the ones you must know is A, quadruple A, CNAME, and NS, so we'll have a look at those in the hands-on.
- 102_Route 53 Overview.txt:20: So let's learn about the important record types we need to know from an exam perspective.
- 102_Route 53 Overview.txt:37: And these are for domain names that you, they are not publicly available, they're privates, and only you within your own virtual private cloud or VPC can resolve this URL.
- 102_Route 53 Overview.txt:39: You may have seen this if you're working for a private company, they sometimes have URLs that you can only access from within your corporate network, that's because this is a private URL, this is a private and behind the scenes there is a private DNS record.
- 102_Route 53 Overview.txt:53: So the public hosted zone and the private hosted zone work the exact same way, but just the public hosted zone allows anyone from the internet to query your records, so this is for your public records, whereas a private hosted zone is only queried from within your private resources, for example your VPC.
- 106_Route 53 - TTL.txt:33: So if I do demo.stephanetheteacher.com on Google, then automatically it should direct me to, yes, my eu-central-1 instance.
- 106_Route 53 - TTL.txt:48: So when the cache is expiring, then only then my command line interface or my Chrome web browser will ask again Route 53 for the value of this record.
- 107_Route 53 CNAME vs Alias.txt:10: And this only works if you have a non root domain name, so if you have something.mydomain.com.
- 107_Route 53 CNAME vs Alias.txt:19: Okay, so if we look at these alias records in details, they are only mapped to resources in AWS.
- 107_Route 53 CNAME vs Alias.txt:27: When you have an alias record, you cannot set the TTL.
- 107_Route 53 CNAME vs Alias.txt:35: One thing that is not there is that you cannot set an alias for an EC2 DNS name.
- 107_Route 53 CNAME vs Alias.txt:44: And then the value must be a domain name.
- 107_Route 53 CNAME vs Alias.txt:55: So I can create a record, and this time it's going to be myalias.stephanetheteacher.com, and the record type is A because my ALB is currently having only IPv4 traffic.
- 107_Route 53 CNAME vs Alias.txt:74: The CNAME is not permitted at apex of this zone." So this zone is stephanetheteacher.com, and the apex of the zone is stephanetheteacher.com, and therefore we cannot set up a CNAME at the apex.
- 107_Route 53 CNAME vs Alias.txt:75: So the only way we can deal with this issue is instead to create an alias and the record is going to be of type A, and the alias is going to point again to an ALB or CLB in the eu-central-1 region, and the load balancer is going to be the one from before.
- 119_Route 53 Resolvers & Hybrid DNS.txt:20: The idea behind this, I think, a bit complicated lecture is that if you want to connect your on-premises data center and AWS and make sure the DNS queries are resolved both ways, you must use the resolver inbound and outbound endpoint.
- 119_Route 53 Resolvers & Hybrid DNS.txt:22: All you should know.

### 6. Patterns / Architectures
- 062_Route 53 - Part 2.txt:35: So let's take an example of a Solution Architecture for multi-region failover with RDS.
- 063_Route 53 - Resolvers & Hybrid DNS.txt:1: Okay, so now let's view an advanced use case that comes up a lot in the exam, which is around Hybrid DNS.
- 063_Route 53 - Resolvers & Hybrid DNS.txt:9: Now, if you want to resolve DNS queries between your VPC and other private networks, your own networks that has other DNS resolvers, then you're going to need a hybrid DNS.
- 063_Route 53 - Resolvers & Hybrid DNS.txt:74: This is how you have a hybrid DNS on AWS.
- 030_Section Introduction - How DNS works_.txt:52: But you know that in a hybrid world, you might want to resolve the DNS from on premise network as well.
- 030_Section Introduction - How DNS works_.txt:55: And in the route 53 section we will dive deep into this and possibly also do an exercise for the hybrid DNS resolution.
- 036_Introduction to Route53 DNS Resolver Endpoints (Hybrid DNS).txt:30: So with respect to the architecture, this is the architecture for inbound endpoints where you have the DNS resolver, but additionally you are configuring the inbound endpoints which creates the Enis in multiple subnets for high availability.
- 036_Introduction to Route53 DNS Resolver Endpoints (Hybrid DNS).txt:41: So I would say this is the latest way in which you should think of hybrid DNS in AWS.
- 037_Exam Essentials.txt:17: And finally, for hybrid DNS resolution, you should use Amazon Route 53 resolver endpoints.
- 037_Exam Essentials.txt:21: So in hybrid scenarios you should use route 53 resolver endpoints.
- 119_Route 53 Resolvers & Hybrid DNS.txt:4: But you may want to have a situation where you want a hybrid DNS.

## Step 3 — Deep Expansion (DNS and DHCP Concepts)

### Route 53 Resolver
- What it is: Managed recursive resolver and hybrid forwarding control plane for VPC DNS.
- Why it exists: Centralizes private name resolution and hybrid DNS integration.
- Internal working: Queries resolve locally for hosted zones or forward through resolver rules/endpoints.
- Architecture: Shared-services DNS VPC with resolver endpoints and delegated rule management.
- Key components: Inbound/outbound endpoints, forwarding rules, associations, query logging.

### DHCP Option Sets
- What they are: VPC-level bootstrap options for DNS suffixes and DNS server preferences.
- Why they exist: Standardize host configuration across subnets and environments.
- Internal working: Instances inherit DHCP-provided network settings at launch/renew events.
- Architecture: Environment-specific option sets attached to dedicated VPC boundaries.
- Key components: Domain name, domain-name-servers, NTP and related options.

## Cross-Cloud Mapping (Concept-First)

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| Private DNS in virtual networks | Route 53 private hosted zones + Resolver | Azure Private DNS + DNS Private Resolver | Cloud DNS private zones + forwarding |
| Hybrid DNS forwarding | Route 53 Resolver inbound/outbound endpoints | DNS Private Resolver inbound/outbound endpoints | Cloud DNS forwarding/peering zones |
| Instance bootstrap DNS options | DHCP Option Set | VNet DHCP + custom DNS settings | DHCP/custom DNS via VPC settings |

### Trade-offs and Decision Notes
- Centralized DNS governance improves consistency but increases blast radius if misconfigured.
- Hybrid DNS success depends on clear namespace ownership and deterministic forwarding rules.
- Resolver endpoint design must align with network reachability and security controls.

## Phase-wise Architect-Level Organization

### Phase 1 — Foundations
- Define namespace ownership, resolution paths, and private/public zone boundaries.
- Align host bootstrap behavior with DNS governance and environment segmentation.

### Phase 2 — Core Services
- Implement resolver endpoints/rules and DHCP option sets with clear scope control.
- Validate network reachability and security controls for hybrid DNS paths.

### Phase 3 — Advanced Patterns
- Centralized DNS hub model with delegated administration and logging.
- Split-horizon design for overlapping namespaces and controlled resolution behavior.

### Phase 4 — System Design
- Reference architecture: shared DNS services VPC + resolver endpoints + policy-based forwarding.
- Scaling considerations: rule sprawl, namespace conflicts, hybrid dependency chains.
- Cost considerations: endpoint runtime, query volume, and operational troubleshooting overhead.

<!-- BEGIN PRACTICE_ENHANCEMENTS -->

## Hands-On Practice (Kid-Friendly Step-by-Step)

### Safety First
- Use a sandbox account only.
- Set a budget alert before creating resources.
- Delete resources after practice to avoid surprise cost.

### Hands-On Signals Found In This KB
- Signal 1: So as I said, when you launch the EC2 instances, this Dhcp option set parameters are automatically applied for the EC2 instances as you launch them.
- Signal 2: And then as you launch EC2 instances they will have corresponding private DNS name something like this.
- Signal 3: Transcript signals that as I said, when you launch the EC2 instances, this Dhcp option set parameters are automatically applied for the EC2 instances as you launch them.
- Signal 4: So our setup will look something like this where we have VPC and then corresponding subnets.
- Signal 5: And then the most important part here is to create the private hosted zone with the same name as our domain name that is corp dot internal.
- Signal 6: But let's now create the next step that is Dhcp option set and then launch this EC2 instances and then create the Route53 private hosted zone.
- Signal 7: So now the next thing that we want to do is we want to create a Dhcp option set.
- Signal 8: So let's create a new Dhcp option set.
- Signal 9: Transcript signals that our setup will look something like this where we have VPC and then corresponding subnets.
- Signal 10: Transcript signals that then the most important part here is to create the private hosted zone with the same name as our domain name that is corp dot internal.

### Service-Specific Lab Paths
### Activity 1: Amazon VPC Lab for VPC DNS behavior, Route 53 Resolver, hybrid DNS, DHCP option sets, name-resolution patterns
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

### Activity 2: Amazon EC2 Lab for VPC DNS behavior, Route 53 Resolver, hybrid DNS, DHCP option sets, name-resolution patterns
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

### Activity 3: Elastic Load Balancing Lab for VPC DNS behavior, Route 53 Resolver, hybrid DNS, DHCP option sets, name-resolution patterns
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

### Activity 4: Amazon CloudWatch Lab for VPC DNS behavior, Route 53 Resolver, hybrid DNS, DHCP option sets, name-resolution patterns
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

Use this lens to study VPC DNS behavior, Route 53 Resolver, hybrid DNS, DHCP option sets, name-resolution patterns in a cloud-agnostic way: focus on capability first, provider name second.

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

