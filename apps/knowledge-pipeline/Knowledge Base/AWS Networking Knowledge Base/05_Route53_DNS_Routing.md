# 05_Route53_DNS_Routing.md

## Scope
- Topic: Route 53 records, routing policies, health checks, failover, geolocation/geoproximity, hybrid resolver routing
- Files processed: 54
- Extracted non-empty transcript lines: 3326
- Processing mode: line-by-line (sentence-level), zero-loss

## Real Material - Architect Learning Build (Domain 5: Route 53 DNS Routing)

This section is the study-first architecture guide for DNS record design, traffic steering, health-based failover, and global name-resolution control.

### Phase 1 - Foundations

#### Module 1: Route 53 Mental Model
- Route 53 is both authoritative DNS and a traffic-steering control plane.
- DNS routing influences availability, migration speed, and user geography outcomes.
- TTL and client resolver behavior matter in every failover story.




##### Source Transcript Details
- Module focus: Route 53 Mental Model
- Primary transcript files:
- outputs/AWS Speciality/advanced-networking-specialty/19_Route 53/212_Hands On_ Route53 Resolvers - Part 2 - DNS configuration.txt
- outputs/AWS Speciality/advanced-networking-specialty/19_Route 53/202_Routing Policy - Traffic Flow & Geoproximity Hands On.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/10_Route 53/110_Routing Policy - Latency.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/10_Route 53/108_Routing Policy - Simple.txt
- outputs/AWS Speciality/advanced-networking-specialty/19_Route 53/194_Routing Policy - Simple.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/10_Route 53/117_Routing Policy - Multi Value.txt
- outputs/AWS Speciality/advanced-networking-specialty/19_Route 53/204_Routing Policy - Multi Value.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/10_Route 53/109_Routing Policy - Weighted.txt
- outputs/AWS Speciality/advanced-networking-specialty/19_Route 53/195_Routing Policy - Weighted.txt
- outputs/AWS Speciality/advanced-networking-specialty/19_Route 53/196_Routing Policy - Latency.txt
- Top concept clusters from transcript metadata:
- Route53 Operational Context
- Authoritative DNS and Record Modeling
- Traffic Shaping and Migration
- Latency and Geo Routing Strategy
- Availability and Failover Control
- Hybrid Name Resolution
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 54
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 3326
- Key insights inside selected files: 696
- Unique concept tags in selected files: 6

##### Transcript-Enriched Learning Notes
- And then we will test the DNS resolution from the cloud side itself.
- So for that we need to go to the route 53 and create a hosted zone with the name say Cloud.com.
- Now one more thing that you need to remember is that for resolving the DNS through route 53 local DNS, we need to enable the DNS resolution for the VPC.
- Then only the DNS resolution happens with private hosted zone.
- Now let's go back to the cloud app server and try to resolve this DNS.
- And in your case if it is not resolving you can also reboot the EC2 instance so that new DNS settings change into the effect.
- So which means cloud side of the DNS is working fine.
- Now for that first we need to set up on premises side of the DNS server and view additional configurations.
- And here we will launch this DNS server again on the EC2 instance.
- Now here as you know we need to open the security group for SSH so that we can configure and then DNS traffic all the way from cloud side and also from this particular subnet or the entire VPC Cidr.
- So for that we need to install the bind and bind utils which configures it as a DNS server.
- So let's launch one more and let's call it on prem DNS server and Amazon Linux 2023 Ami.
- So for security group we need to allow the DNS traffic mainly.
- And here let's say dns UDP from 192.168.
- So that other application server in the same VPC can query to the DNS and additionally.
- And from there let's log in to the DNS server.
- And now I will log in to the DNS server.
- So 31 let's say yes and then I'm into the DNS server.

##### Polished Architect Notes
- Transcript signals that then we will test the DNS resolution from the cloud side itself.
- Transcript signals that for that we need to go to the route 53 and create a hosted zone with the name say Cloud.com.
- Transcript signals that one more thing that you need to remember is that for resolving the DNS through route 53 local DNS, we need to enable the DNS resolution for the VPC.
- Transcript signals that only the DNS resolution happens with private hosted zone.
- Transcript signals that in your case if it is not resolving you can also reboot the EC2 instance so that new DNS settings change into the effect.
- Transcript signals that which means cloud side of the DNS is working fine.
- Transcript signals that for that first we need to set up on premises side of the DNS server and view additional configurations.
- Transcript signals that here we will launch this DNS server again on the EC2 instance.
- Transcript signals that for that we need to install the bind and bind utils which configures it as a DNS server.
- Transcript signals that let's launch one more and let's call it on prem DNS server and Amazon Linux 2023 Ami.
- Transcript signals that for security group we need to allow the DNS traffic mainly.
- Transcript signals that here let's say dns UDP from 192.168.

##### Architect Synthesis (Transcript-Derived)
- Treat Route53 Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Authoritative DNS and Record Modeling as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Traffic Shaping and Migration as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Latency and Geo Routing Strategy as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Availability and Failover Control as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: then we will test the DNS resolution from the cloud side itself.
- Design implication: for that we need to go to the route 53 and create a hosted zone with the name say Cloud.com.
- Design implication: one more thing that you need to remember is that for resolving the DNS through route 53 local DNS, we need to enable the DNS resolution for the VPC.
#### Module 2: Record and Alias Design
- Record type choice expresses endpoint intent and compatibility constraints.
- Alias records are AWS-native conveniences with architectural implications.
- Clean DNS models reduce operational confusion during incidents and cutovers.




##### Source Transcript Details
- Module focus: Record and Alias Design
- Primary transcript files:
- outputs/AWS Speciality/advanced-networking-specialty/19_Route 53/212_Hands On_ Route53 Resolvers - Part 2 - DNS configuration.txt
- outputs/AWS Speciality/advanced-networking-specialty/19_Route 53/202_Routing Policy - Traffic Flow & Geoproximity Hands On.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/10_Route 53/107_Route 53 CNAME vs Alias.txt
- outputs/AWS Speciality/advanced-networking-specialty/19_Route 53/193_Route 53 CNAME vs Alias.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/10_Route 53/110_Routing Policy - Latency.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/10_Route 53/108_Routing Policy - Simple.txt
- outputs/AWS Speciality/advanced-networking-specialty/19_Route 53/194_Routing Policy - Simple.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/10_Route 53/117_Routing Policy - Multi Value.txt
- outputs/AWS Speciality/advanced-networking-specialty/19_Route 53/204_Routing Policy - Multi Value.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/10_Route 53/109_Routing Policy - Weighted.txt
- Top concept clusters from transcript metadata:
- Route53 Operational Context
- Authoritative DNS and Record Modeling
- Latency and Geo Routing Strategy
- Traffic Shaping and Migration
- Availability and Failover Control
- Hybrid Name Resolution
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 54
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 3326
- Key insights inside selected files: 756
- Unique concept tags in selected files: 6

##### Transcript-Enriched Learning Notes
- And there we will create the A record with the IP address of the app server.
- And then we will test the DNS resolution from the cloud side itself.
- Now next thing we need to create a record of the type A with the name say app dot cloud.com.
- So let's add that and create the record.
- So this record has been created here.
- Now one more thing that you need to remember is that for resolving the DNS through route 53 local DNS, we need to enable the DNS resolution for the VPC.
- Then only the DNS resolution happens with private hosted zone.
- Now let's go back to the cloud app server and try to resolve this DNS.
- And in your case if it is not resolving you can also reboot the EC2 instance so that new DNS settings change into the effect.
- So which means cloud side of the DNS is working fine.
- Now for that first we need to set up on premises side of the DNS server and view additional configurations.
- And here we will launch this DNS server again on the EC2 instance.
- Now here as you know we need to open the security group for SSH so that we can configure and then DNS traffic all the way from cloud side and also from this particular subnet or the entire VPC Cidr.
- So for that we need to install the bind and bind utils which configures it as a DNS server.
- So let's launch one more and let's call it on prem DNS server and Amazon Linux 2023 Ami.
- So for security group we need to allow the DNS traffic mainly.
- And here let's say dns UDP from 192.168.
- So that other application server in the same VPC can query to the DNS and additionally.

##### Polished Architect Notes
- Transcript signals that there we will create the A record with the IP address of the app server.
- Transcript signals that then we will test the DNS resolution from the cloud side itself.
- Transcript signals that next thing we need to create a record of the type A with the name say app dot cloud.com.
- Transcript signals that let's add that and create the record.
- Transcript signals that this record has been created here.
- Transcript signals that one more thing that you need to remember is that for resolving the DNS through route 53 local DNS, we need to enable the DNS resolution for the VPC.
- Transcript signals that only the DNS resolution happens with private hosted zone.
- Transcript signals that in your case if it is not resolving you can also reboot the EC2 instance so that new DNS settings change into the effect.
- Transcript signals that which means cloud side of the DNS is working fine.
- Transcript signals that for that first we need to set up on premises side of the DNS server and view additional configurations.
- Transcript signals that here we will launch this DNS server again on the EC2 instance.
- Transcript signals that for that we need to install the bind and bind utils which configures it as a DNS server.

##### Architect Synthesis (Transcript-Derived)
- Treat Route53 Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Authoritative DNS and Record Modeling as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Latency and Geo Routing Strategy as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Traffic Shaping and Migration as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Availability and Failover Control as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: there we will create the A record with the IP address of the app server.
- Design implication: then we will test the DNS resolution from the cloud side itself.
- Design implication: next thing we need to create a record of the type A with the name say app dot cloud.com.
#### Module 3: Policy-Driven Traffic Decisions
- Weighted routing is for progressive change and controlled migration.
- Latency and geo policies solve different user-placement problems.
- Failover policies only work well when health and TTL design are coherent.






##### Source Transcript Details
- Module focus: Policy-Driven Traffic Decisions
- Primary transcript files:
- outputs/AWS Speciality/advanced-networking-specialty/19_Route 53/202_Routing Policy - Traffic Flow & Geoproximity Hands On.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/10_Route 53/108_Routing Policy - Simple.txt
- outputs/AWS Speciality/advanced-networking-specialty/19_Route 53/194_Routing Policy - Simple.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/10_Route 53/109_Routing Policy - Weighted.txt
- outputs/AWS Speciality/advanced-networking-specialty/19_Route 53/195_Routing Policy - Weighted.txt
- outputs/AWS Speciality/advanced-networking-specialty/19_Route 53/196_Routing Policy - Latency.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/10_Route 53/117_Routing Policy - Multi Value.txt
- outputs/AWS Speciality/advanced-networking-specialty/19_Route 53/204_Routing Policy - Multi Value.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/10_Route 53/115_Routing Policy - Geoproximity.txt
- outputs/AWS Speciality/advanced-networking-specialty/19_Route 53/201_Routing Policy - Geoproximity.txt
- Top concept clusters from transcript metadata:
- Route53 Operational Context
- Authoritative DNS and Record Modeling
- Traffic Shaping and Migration
- Latency and Geo Routing Strategy
- Availability and Failover Control
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 54
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 3326
- Key insights inside selected files: 533
- Unique concept tags in selected files: 5

##### Transcript-Enriched Learning Notes
- So, let's have a look into a way we can build these complex geoproximity records using a feature called Traffic Flow.
- So, the idea is that we have a UI, a visual editor, that allows us to manage complex routing decision trees.
- Though the idea is that instead of writing the records one by one in your DNS management system in Route 53 we're going to just manage all of them visually.
- And the cool thing about it is that it's going to be saved as a Traffic Flow Policy, and it can be versioned, it can be applied to different hosted zones, and we can easily change them and apply them in our hosted zones.
- We're gonna go on the left-hand side panel, and you will find Traffic policies.
- So, in here we get the UI, we can create a Traffic Policy.
- And I'll call this one DemoGeoPolicy, and click on Next.
- So, now that we have created this policy let's have a look at the map.
- It's going to center more of the traffic onto my instance number two.
- And we'll have the EU-Central-1 in here, paste it, and then Create traffic policy.
- So, we've done this one, and now we need to deploy this traffic policy with policy records.
- So, for this I will just deploy this one into the hosted zone, stephanetheteacher.com, and we can set that, this policy record name is going to be proximity.stephanetheteacher.com.
- And very importantly, the pricing per month is $50 per month, so to just create this policy record you will pay $50 per month.
- So, let's create this policy record.
- As you can see now, the policy versions are here.
- So, we can edit this policy if we wanted to, and edit this and deploy it as a new version.
- And from there we can see the records that have been created with this DemoGeoPolicy.
- So, the policy record has been applied.

##### Polished Architect Notes
- Transcript signals that let's have a look into a way we can build these complex geoproximity records using a feature called Traffic Flow.
- Transcript signals that the idea is that we have a UI, a visual editor, that allows us to manage complex routing decision trees.
- Transcript signals that though the idea is that instead of writing the records one by one in your DNS management system in Route 53 we're going to just manage all of them visually.
- Transcript signals that the cool thing about it is that it's going to be saved as a Traffic Flow Policy, and it can be versioned, it can be applied to different hosted zones, and we can easily change them and apply them in our hosted zones.
- Transcript signals that we're gonna go on the left-hand side panel, and you will find Traffic policies.
- Transcript signals that in here we get the UI, we can create a Traffic Policy.
- Transcript signals that now that we have created this policy let's have a look at the map.
- Transcript signals that it's going to center more of the traffic onto my instance number two.
- Transcript signals that we'll have the EU-Central-1 in here, paste it, and then Create traffic policy.
- Transcript signals that we've done this one, and now we need to deploy this traffic policy with policy records.
- Transcript signals that for this I will just deploy this one into the hosted zone, stephanetheteacher.com, and we can set that, this policy record name is going to be proximity.stephanetheteacher.com.
- Transcript signals that very importantly, the pricing per month is $50 per month, so to just create this policy record you will pay $50 per month.

##### Architect Synthesis (Transcript-Derived)
- Treat Route53 Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Authoritative DNS and Record Modeling as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Traffic Shaping and Migration as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Latency and Geo Routing Strategy as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Availability and Failover Control as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: let's have a look into a way we can build these complex geoproximity records using a feature called Traffic Flow.
- Design implication: the idea is that we have a UI, a visual editor, that allows us to manage complex routing decision trees.
- Design implication: though the idea is that instead of writing the records one by one in your DNS management system in Route 53 we're going to just manage all of them visually.
### Phase 2 - Core Services

#### Record Modeling and Alias Strategy
- Use alias targets when AWS integration and zone-apex support matter.
- Keep DNS names stable while endpoints evolve behind them.
- Treat record design as part of application interface design.

#### Health Checks and Failover
- Health checks are the bridge between endpoint health and DNS steering decisions.
- Active-passive and active-active models should be chosen intentionally.
- DNS failover is never instantaneous; client caching behavior must be expected.

#### Geographic and Policy Routing
- Use latency routing for user experience optimization.
- Use geolocation or geoproximity when policy, locality, or data-boundary control matters.
- Weighted routing is the safest exam and real-world answer for gradual migration patterns.

### Phase 3 - Advanced Patterns

#### Pattern 1: Controlled Migration by DNS
- Use weighted records to shift traffic progressively.
- Observe error rates and latency before increasing cutover percentages.
- Preserve rollback simplicity by avoiding unnecessary parallel complexity.

#### Pattern 2: Multi-Region Resilience
- Pair health-based routing with regionally independent endpoints.
- Design primary/secondary behavior around real application readiness, not just DNS policy settings.
- Separate frontend failover intent from backend data-consistency reality.

#### Pattern 3: Hybrid Resolver Integration
- Keep authoritative DNS and forwarding responsibilities clearly separated.
- Use resolver-based hybrid patterns for namespace continuity across AWS and on-prem.
- Avoid hidden forwarding chains that are hard to troubleshoot under pressure.

### Phase 4 - System Design (Production)

#### Reference Route 53 Architecture
- Stable domain layer with policy-driven records, health-aware failover, and hybrid resolver integration.
- Clean separation between public delivery names and internal/private resolution paths.
- DNS policy treated as a production control-plane with testing and rollback discipline.

#### Scaling Considerations
- Routing-policy sprawl becomes hard to reason about without naming standards.
- Health-check dependencies can create false confidence if application readiness is shallow.
- Multi-region DNS without workload readiness produces elegant outages.

#### Cost Considerations
- Query and health-check charges are minor relative to outage impact.
- The real cost driver is poor DNS change discipline during migrations and incidents.
- Overcomplicated routing policy increases operational burden faster than service spend.

### Cross-Cloud Concept Mapping (Route 53 DNS Routing)

#### Underlying Concept: DNS-Based Traffic Steering
- AWS: Route 53 routing policies and health checks
- Azure: Traffic Manager and DNS-based endpoint steering patterns
- GCP: DNS and load-balancing policy combinations
- Trade-off: the concept is common, but health integration and traffic models differ.

#### Underlying Concept: Gradual Migration Through DNS
- AWS: weighted and failover record strategies
- Azure: weighted and priority traffic policies
- GCP: weighted load-balancing and DNS steering patterns
- Trade-off: progressive cutover is portable, but rollback behavior depends on platform and TTL design.

### Real-World Use Cases from Transcript Signals
- Shift traffic gradually between old and new service versions using weighted policies.
- Build health-aware regional failover for externally exposed workloads.
- Use Route 53 as the stable control plane while backend endpoints change over time.

### Constraints and Exam-Relevant Traps Captured
- DNS failover is bounded by TTL and resolver behavior.
- Weighted, latency, and geolocation policies solve different classes of problem.
- Health checks without true application readiness validation create misleading designs.

## Developer Associate Additions - Route 53 Core Routing Set

### Source Files
- outputs/aws-certified-developer-associate-dva-c01/09_Route 53/088_What is a DNS_.txt
- outputs/aws-certified-developer-associate-dva-c01/09_Route 53/089_Route 53 Overview.txt
- outputs/aws-certified-developer-associate-dva-c01/09_Route 53/090_Route 53 - Registering a domain.txt
- outputs/aws-certified-developer-associate-dva-c01/09_Route 53/091_Route 53 - Creating our first records.txt
- outputs/aws-certified-developer-associate-dva-c01/09_Route 53/092_Route 53 - EC2 Setup.txt
- outputs/aws-certified-developer-associate-dva-c01/09_Route 53/093_Route 53 - TTL.txt
- outputs/aws-certified-developer-associate-dva-c01/09_Route 53/094_Route 53 CNAME vs Alias.txt
- outputs/aws-certified-developer-associate-dva-c01/09_Route 53/095_Routing Policy - Simple.txt
- outputs/aws-certified-developer-associate-dva-c01/09_Route 53/096_Routing Policy - Weighted.txt
- outputs/aws-certified-developer-associate-dva-c01/09_Route 53/097_Routing Policy - Latency.txt
- outputs/aws-certified-developer-associate-dva-c01/09_Route 53/098_Route 53 Health Checks.txt
- outputs/aws-certified-developer-associate-dva-c01/09_Route 53/099_Route 53 - Health Checks Hands On.txt
- outputs/aws-certified-developer-associate-dva-c01/09_Route 53/100_Routing Policy - Failover.txt
- outputs/aws-certified-developer-associate-dva-c01/09_Route 53/101_Routing Policy - Geolocation.txt
- outputs/aws-certified-developer-associate-dva-c01/09_Route 53/102_Routing Policy - Geoproximity.txt
- outputs/aws-certified-developer-associate-dva-c01/09_Route 53/103_Routing Policy - Traffic Flow & Geoproximity Hands On.txt
- outputs/aws-certified-developer-associate-dva-c01/09_Route 53/104_Routing Policy - IP-based.txt
- outputs/aws-certified-developer-associate-dva-c01/09_Route 53/105_Routing Policy - Multi Value.txt
- outputs/aws-certified-developer-associate-dva-c01/09_Route 53/106_3rd Party Domains & Route 53.txt
- outputs/aws-certified-developer-associate-dva-c01/09_Route 53/107_Route 53 - Section Cleanup.txt

### Route 53 Synthesis
- Route 53 architecture decisions begin with record intent and resolver behavior, then branch into policy-specific traffic shaping choices.
- Alias versus CNAME is not only syntax; it affects zone apex compatibility, AWS integration behavior, and operational simplicity.
- TTL controls cutover speed and blast radius, so migration and failover policies must be designed with resolver caching reality in mind.
- Health checks are useful only when they represent real application readiness, not merely endpoint reachability.
- Geolocation, geoproximity, latency, weighted, failover, IP-based, and multivalue routing are complementary tools and should be selected per workload objective.

## Step 1 — Line-by-Line Extraction

Every non-empty line from every source transcript is preserved below with extraction fields.

### File: outputs/aws-solutions-architect-professional/05_Compute & Load Balancing/061_Route 53 - Part 1.txt

Line 1:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: Okay, so now let's talk about Route 53.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 2:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53
- Key Insights: And first, let's talk about the record types that exist within Route 53.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 3:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So we have the A that maps a hostname to IPv4.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 4:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Quadruple A which maps the hostname to IPv6.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 5:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: We have CNAME to map a hostname to another hostname in which the target of the hostname is being A or an AAAA record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 6:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And you cannot create a CNAME on top of, the top node of the DNS namespace which is the Zone Apex.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 7:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So, you cannot create a CNAME for example.com.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 8:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: We can create a CNAME for www.example.com, and we'll see how to solve that problem with Alias records.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 9:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And then finally, NS which are name servers for the hosted zone which control how traffic is rooted to a domain.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 10:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, these records are all you need to know for the Solutions Architect professional exam, so, don't worry about the rest.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 11:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Now, for the A record, how does that work?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 12:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53
- Key Insights: Well, the client wants to access an EC2 instance that has a public IP, is going to first query for example.com in Amazon Route 53, and then get an IP back, and then thanks to the IP, reach our EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 13:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So, this is for a very simple A record, okay?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 14:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Now, let's talk about difference of CNAME and Alias.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 15:
- Concepts: Route53 Operational Context
- Services: CloudFront, Elastic Load Balancing
- Key Insights: So, all the resources in AWS, for example Load Balancer, CloudFront, et cetera, they expose an AWS hostname.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 16:
- Concepts: Authoritative DNS and Record Modeling
- Services: Elastic Load Balancing
- Key Insights: So, for example, this is the hostname of a Load Balancer, and maybe we want this Load Balancer to be instead myapp.mydomain.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 17:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, how do we do this?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 18:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Well, if we have a CNAME, as remembered, it is a hostname that points to any other hostnames.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 19:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, it is very possible for us to do app.mydomain.com points to anything.com, and so therefore it would work for the example above, but this only works for non root domain, so, it must be something.mydomain.com.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal.

Line 20:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So, for an Alias record though it has difference.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 21:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: It's to point hostname only to a specified AWS resource.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 22:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So, it's app.mydomain.com into something.amazonaws.com, so, it must be a resource from AWS, and this works for root domain and non root domain.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 23:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Elastic Load Balancing, Route 53 Health Check
- Key Insights: So, it works for mydomain.com and it's free of charge and it has native health check as a feature, so that means that for the Load Balancer in AWS you cannot do a CNAME for mydomain.com, but you can do an Alias record for mydomain.com.
- Hidden/Implicit Meaning: Constraint or limitation signal; Availability and failover decision-path signal.

Line 24:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53, CloudFront
- Key Insights: In terms of the targets for the Alias records we get Elastic Load Balancers, CloudFront Distribution, API Gateway, Elastic Beanstalk environments, S3 websites, VPC interface endpoints, Global accelerator Accelerator, as well as any other Route 53 record in the same hosted zone.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 25:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And you cannot set Alias record for an EC2 DNS name.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 26:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: Amazon Route 53
- Key Insights: Now each record in Route 53 is going to have a record TTL which is the Time To Live.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 27:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So here's an example, the client wants to talk to our web server, but we have a DNS request for myapp.example.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 28:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: We're going to get a response, for example A record, but this will have a TTL, and this response is going to be cached for the time of the TTL.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 29:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: And then once the TTL expires then the record will be renewed.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 30:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: So while the TTL is still present and the record is saved on the client side, then the requests are going to go to the IP that was refetched from before.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 31:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: Amazon Route 53
- Key Insights: So, in case you do a high TTL, for example, 24 hours that means that you're going to get less traffic on the Route 53, but you have possibly updated records, for example, if you update them in DNS side then it will take up to 24 hours for clients to get the new values.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 32:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: Otherwise, if you set a very low TTL, for example 60 seconds that means you're going to get more traffic on the DNS side which is going to cost you some money, but on the flip side, the records are going to be outdated for less time and it's going to be easier to change records, so, it's always a trade off.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 33:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: And except for the Alias record the TTL is mandatory for each DNS record, very important to remember.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 34:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check, Traffic Policy
- Key Insights: Okay, now let's look at the routing policy, so we have the simple routing policy which is to route traffic to a single resource and this cannot be associated with the health check and this is the only kind of routing policy that is not associated with the health check.
- Hidden/Implicit Meaning: Constraint or limitation signal; Availability and failover decision-path signal.

Line 35:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So, here's an example, so client goes to food.example.com and then gets a value back.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 36:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Super simple.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 37:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: But you can also specify multiple values in the same record, and if that's the case then a random one is going to be chosen by the clients.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 38:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So the client is asking for a DNS request and then gets multiple values as a result.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 39:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: The client is going to choose a random value.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 40:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's very simple.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 41:
- Concepts: Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: Next, we have Weighted.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 42:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: So, Weighted gives you the ability to control the percentage of the request that go to a specific resource.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 43:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So in this example, we have 70% of the request going to my first EC2 instance then 20% to my second EC2 instance and then 10% to my last EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 44:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So, this kind of record can be associated with the health checks to make sure that we don't send traffic to a resource that is not healthy.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 45:
- Concepts: Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: The use cases for Weighted records is around load balancing between regions, testing the application versions, and so on.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 46:
- Concepts: Authoritative DNS and Record Modeling, Latency and Geo Routing Strategy
- Services: (none explicit)
- Key Insights: Then we have latency based records which is to redirect resources that have the least latency close to us which is super helpful when latency is a user priority.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 47:
- Concepts: Latency and Geo Routing Strategy
- Services: (none explicit)
- Key Insights: And the latency is going to be defined on the traffic between the users and the specified AWS region.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 48:
- Concepts: Latency and Geo Routing Strategy
- Services: (none explicit)
- Key Insights: So, it's further possible for Germany users to be directed to the US, if that's the lowest latency, and for example, your app is in Asia.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 49:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: (none explicit)
- Key Insights: So, these kind of records can be associated with health checks as well which gives a failover capability.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 50:
- Concepts: Route53 Operational Context
- Services: Elastic Load Balancing
- Key Insights: So if we have, for example, two ALB, one in US-East-1 and one in AP-Southeast-1, and our users all around the world it's very possible for these users to go to US-East-1 and for the others to go to AP-Southeast-1.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 51:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: (none explicit)
- Key Insights: Next we have Failover for active-passive type of record.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 52:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: (none explicit)
- Key Insights: So, we have a primary record and then a secondary disaster recovery record.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 53:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: And so there's going to be a health check performed on the primary one.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 54:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: (none explicit)
- Key Insights: And then in case the primary fails then we are going to have a failover to the second instance.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 55:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And this will be characterized by DNS request that either reply with the first EC2 instance or the second EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 56:
- Concepts: Latency and Geo Routing Strategy
- Services: (none explicit)
- Key Insights: Then we have Geolocation which is different from latency based, so this is to route based on the user location itself.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 57:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So you can specify by continent, by country or even by US states.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 58:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And if you have overlapping then the most precise location is going to be selected.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 59:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So you should create a default record in case you have no match on location.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 60:
- Concepts: Latency and Geo Routing Strategy
- Services: (none explicit)
- Key Insights: And then use case for geolocation is to be doing website localization, to restrict content distribution or load balancing.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 61:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And these can be associated with health checks, so, here's an example, we have a map of Europe right here, and some Germany users could be sent to this record, French users could be sent to that record and then anyone else could be sent to the default IP right here.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 62:
- Concepts: Latency and Geo Routing Strategy
- Services: (none explicit)
- Key Insights: Another one is called Geoproximity which is to route to resources based on the geographic location of users and resources.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 63:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And thanks to something called the bias you can shift traffic to some resources more or less based on that number.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 64:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, you change the specify, you change the bias value to expand traffic to resource, you're going to increase it from one to 99 or to shrink you're going to decrease it from minus one to minus 99 which is going to send less traffic to the resource.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 65:
- Concepts: Authoritative DNS and Record Modeling, Latency and Geo Routing Strategy
- Services: Amazon Route 53
- Key Insights: And the resource can be an AWS resource or it could be a non-AWS resource, and in that case, we need to specify a latitude and longitude for the Geoproximity and for it to be effective and to be set up, you need to use the traffic flow feature of Route 53.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 66:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, it's better to see where the diagram, how that works.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 67:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So, if you have US-East-1 and US-East-1 then they're going to be bias zero zero, so you're going to get a line in the center of the US geographically.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 68:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And so half the users are gonna go to West and half the users are gonna go to East.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 69:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: But in case you increase the bias in US-East-1 and for example, you set a bias to something much higher, say 50, then if you leave it to zero on US-West-1 then the line is going to be closer to US-West-1 and therefore more users to the right of that line are gonna go to US-East-1, and the other ones are gonna go still to US-West-1.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 70:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So with the bias you're able to really manipulate how much proximity you want users to be next to locations.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 71:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Which brings onto Traffic flow.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 72:
- Concepts: Authoritative DNS and Record Modeling, Latency and Geo Routing Strategy
- Services: Amazon Route 53
- Key Insights: So traffic flow is a feature of Route 53 which allows you to easily create and maintain very complex and large records as well as Geoproximity records.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 73:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So it's a visual editor and it gives you complex routing decision trees available to you that you can set up easily.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 74:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And these configurations are saved as Traffic Flow Policies, and they can even be applied to different hosted zones if it needs to, and they support versioning.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 75:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53
- Key Insights: Finally, we have one last type of record called the Multi-Value record which is to use when routing to multiple resources, and then the Route 53 is going to return multiple values and resources.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 76:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: But because this can be associated with a health check we can only make sure that the return values are full healthy resources.
- Hidden/Implicit Meaning: Constraint or limitation signal; Availability and failover decision-path signal.

Line 77:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So the Multi-Value returns up to eight healthy records at each query.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 78:
- Concepts: Authoritative DNS and Record Modeling
- Services: Elastic Load Balancing
- Key Insights: And a Multi-Value is a good balancer, but it's not a substitute for having a load balancer.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 79:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So here's an example, We can set up a multi A record to set two multiple IPs, and then if they're all healthy then they will all be returned back to the clients.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 80:
- Concepts: Latency and Geo Routing Strategy
- Services: Traffic Policy
- Key Insights: So now let's talk about another routing policy called the IP-based routing which is very intuitive to think about because you're going to define the routing based on the client IP addresses.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 81:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53
- Key Insights: In Route 53, you're going to define a list of CIDRs, they are IP ranges for your clients.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 82:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And you're going to say based on the CIDR which location the traffic should be sent to.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 83:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So the use cases will be to optimize performance because you know the IP ahead of time or to reduce network costs because you know where the IP is are coming from.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 84:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So, an example is that if you know that you have a specific internet provider and they have, they are using a specific CIDR of IP addresses.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 85:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: You can route them to a specific endpoint thanks to this strategy.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 86:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: So let's go for an example, in Route 53 I'm going to define two locations with two different CIDR blocks.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 87:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: As you can see, one start with 203 and the other one start with 200.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 88:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And the defined IP ranges.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 89:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Now, we are going to link these locations to a specific record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 90:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So for example.com, we're going to have location one, so the first CIDR block to send to the value 1,2,3,4, and the second location, the block CIDR number two to send to 5,6,7,8, and these represents the public IP of two EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 91:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Now, as you would expect, if a user comes in with a specific IP that is part of the location one CIDR block, they will be directed to the first EC2 instance of IP 1,2,3,4.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 92:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And the user B with a second IP address that belongs to the location two, will be redirected and will have a DNS query response to the EC2 instance of IP 5,6,7,8.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 93:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: So that's it for the basics of Route 53, I hope there is nothing new for you, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

### File: outputs/aws-solutions-architect-professional/05_Compute & Load Balancing/062_Route 53 - Part 2.txt

Line 1:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53
- Key Insights: So next, the second part of this Route 53 lecture ...so we have Hosted Zones and this is a container of records to define how to route traffic to a domain and its subdomains and we have two kinds.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 2:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: We have the Public Hosted Zones, to allow the internet to resolve them for public domains, but also we get the Private Hosted Zones and these can only be resolved from within your VPC and you can define private URL's.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 3:
- Concepts: Authoritative DNS and Record Modeling
- Services: CloudFront, Elastic Load Balancing
- Key Insights: So, the difference is that the Public Hosted Zone is accessible publicly and you can have the target being the Public IP of an EC2 Instance, the Public IP of an Application Load Balancer or a CloudFront distribution or an S3 Bucket website for example.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 4:
- Concepts: Route53 Operational Context
- Services: Private Hosted Zone
- Key Insights: But in the Private Hosted Zone, it's used from within your VPC and it's very helpful to link to the Private IP of your EC2 Instances or the Private IP of your Database Instances and so on.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 5:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53, Private Hosted Zone
- Key Insights: Other good things to know for Route 53 is that in case you have a Private Hosted Zone with a Private DNS then in your VPC you must enable two settings called the enableDnsHostnames and enable DnsSupport.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 6:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53
- Key Insights: Also, on Route 53 you get support for the DNS Security Extensions (DNSSEC) and it's a protocol for securing DNS traffic to verify the DNS data integrity and origin.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 7:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: It helps you to be protected against Man in the Middle (MITM) attacks on the DNSSEC.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 8:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: And Route 53 has support for both DNSSEC for Domain Registration and also DNSSEC Signing.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 9:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: It only works with Public Hosted Zones.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 10:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53
- Key Insights: Finally, you can use Route 53 with a 3rd Registrar in which case you buy the domain outside of AWS but you still use Route 53 as your DNS provider.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 11:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: For this, you just update the NS records on the Registrar and you appoint them to AWS.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 12:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: Onto Health Checks, so you get Public Health Checks on Route 53.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 13:
- Concepts: Route53 Operational Context
- Services: Elastic Load Balancing
- Key Insights: That means that for example, if you have two ALB's in two distinct regions then you can set up two Health Checks to check the health of these ALB.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 14:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: And you use the Health Check, to link them to a specific DNS record and this gives you automatic DNS Failover.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 15:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, you have three kind of Health Checks.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 16:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: You get Health Checks that will monitor an endpoint health so: application, server or maybe another AWS resource.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 17:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: You get Health Checks that will monitor other Health Checks and they are called Calculated Health Checks.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 18:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And you get Health Checks that monitor CloudWatch Alarms, which gives you full control because you do whatever you want with a CloudWatch alarm.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 19:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So you can monitor, for example, throttles of DynamoDB alarms on RDS or any custom metrics which is very helpful for private resources.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 20:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now all of these Health Checks will publish also CloudWatch metrics if you ever need to.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 21:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: So as we said we have Calculated Health Checks which is to combine Health Checks into a Parent Health Check and for this you can use the OR, AND, or NOT condition.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 22:
- Concepts: Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: You can monitor up to 256 Children Health Checks in one Parent Health Check and you specify how many of the Child Health Checks need to pass to make the Parent Health pass as well.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 23:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: So the use case of a Calculated Health Check is to perform maintenance on your website without causing, for example, all the Health Checks to fail.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 24:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: You can also monitor an Endpoint using Health Checks.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 25:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, we can monitor Public Endpoints and Health Checkers all around the world will do HFTP request to the health route that you set, okay?
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 26:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And when you do set something up you get about fifteen Health Checkers that will check your Endpoint health so it needs to be a Public Endpoint, of course.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 27:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then the Health Checks are going to pass only if the Endpoint is going to respond with the 200's or the 300's status codes.
- Hidden/Implicit Meaning: Constraint or limitation signal; Availability and failover decision-path signal.

Line 28:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Now there's a cool feature that you need to know about that is coming up in the exam.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 29:
- Concepts: Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: Is that the health check can be set up to fail or pass based on the value returned by the Endpoint that you are checking.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 30:
- Concepts: Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: And if in the first 5120 bytes of the response you have some specific text that you specify then you make the Health Check pass or else the Health Check does not pass.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 31:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay, so how do we do Health Checks of stuff in Private Hosted Zones?
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 32:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Well, because the Health Checkers are outside the VPC they cannot access Private Endpoints.
- Hidden/Implicit Meaning: Constraint or limitation signal; Availability and failover decision-path signal.

Line 33:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, Private VPC or on-premises resources.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 34:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: And so therefore to monitor the health of an EC2 Instance, what you can do is that you can create a CloudWatch Metric then you associate a CloudWatch Alarm with it and then you base the Health Check to monitor the CloudWatch Alarm itself and this is how you would effectively monitor the health of an internal resource.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 35:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: (none explicit)
- Key Insights: So let's take an example of a Solution Architecture for multi-region failover with RDS.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 36:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So we have a main database and we have an Async replication into a different region, so we have us-east-1 to us-west-2.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 37:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Then we have two ways, either we set up an EC2 Instance to monitor the health of the database and to expose a HFTP call /health-db route and that is one way of doing it.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 38:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: Or option two which I like more, is to define a CloudWatch Alarm and link the CloudWatch Alarm into a Health Check.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 39:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: Once the Health Check is off, we can link it to a CloudWatch Alarm as well.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 40:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Amazon Route 53
- Key Insights: This is going to be linked to an SNS Topic or an CloudWatch Event which is going to trigger a Lambda function and then the Lambda function will update the DNS of your application into Route 53 and then promote your Read Replica in us-west-2 and effectively you have achieved automated failover using Health Checks and Route 53.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 41:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, I hope that was helpful.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 42:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked this lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 43:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

### File: outputs/aws-solutions-architect-professional/05_Compute & Load Balancing/063_Route 53 - Resolvers & Hybrid DNS.txt

Line 1:
- Concepts: Authoritative DNS and Record Modeling, Hybrid Name Resolution
- Services: (none explicit)
- Key Insights: Okay, so now let's view an advanced use case that comes up a lot in the exam, which is around Hybrid DNS.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 2:
- Concepts: Hybrid Name Resolution
- Services: Amazon Route 53, Route 53 Resolver
- Key Insights: So we have our region and there is the Route 53 resolver.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 3:
- Concepts: Hybrid Name Resolution
- Services: Route 53 Resolver
- Key Insights: And by default, this resolver is going to automatically answer DNS queries for local domain names for EC2 instances.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 4:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So for example, here's our VPC.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 5:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: We have an EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 6:
- Concepts: Hybrid Name Resolution
- Services: Amazon Route 53, Route 53 Resolver
- Key Insights: There is this DNS name, the Route 53 resolver knows how to reply to these queries.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 7:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this is fine.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 8:
- Concepts: Authoritative DNS and Record Modeling
- Services: Private Hosted Zone
- Key Insights: Any records in your private hosted zone as well is going to be easy to answer to, and records in public name servers, for example, for a public hosted zone, or any name server out there that is public on the internet.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 9:
- Concepts: Authoritative DNS and Record Modeling, Hybrid Name Resolution
- Services: (none explicit)
- Key Insights: Now, if you want to resolve DNS queries between your VPC and other private networks, your own networks that has other DNS resolvers, then you're going to need a hybrid DNS.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 10:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So these networks can be PeeredVPC for example, or it could be an on-premises network that is going to be connected to our VPC through Direct Connect or AWS VPN.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 11:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So for this, let me introduce you two concepts that we're going to see with diagrams in the next slides.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 12:
- Concepts: Hybrid Name Resolution
- Services: Route 53 Resolver
- Key Insights: So these are about resolver endpoints.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 13:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So there is two things.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 14:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: There's an inbound endpoint and an outbound endpoint.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 15:
- Concepts: Hybrid Name Resolution
- Services: Amazon Route 53, Route 53 Resolver
- Key Insights: So inbound endpoints are allowing DNS resolvers on your external networks to forward DNS queries to your Route 53 resolver and answer these queries.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 16:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So these resolvers will help to resolve domain names for the resources of AWS.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 17:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53, Private Hosted Zone
- Key Insights: For example, your EC2 instances or records that you create in your Route 53 private hosted zone.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 18:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So you get both answers for your internal systems, and also for AWS private host zones, and I will show you a diagram, it will make a lot more sense very, very soon.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 19:
- Concepts: Hybrid Name Resolution
- Services: (none explicit)
- Key Insights: Now, your outbound endpoint is to conditionally forward DNS queries to your on-premises DNS resolvers.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 20:
- Concepts: Hybrid Name Resolution
- Services: Route 53 Resolver
- Key Insights: And for this, we're going to create resolver rules to forward them.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 21:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now we associate these endpoints with one or more VPCs within the same region, and we create in two availability zones for high availability.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 22:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now each endpoint supports about 10,000 queries per second, per IP address.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 23:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And if you need more, well, you create more IP addresses.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 24:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And these resolvers remove the need from before where people have to run their own DNS resolvers on AWS and link them to their resolvers on premises.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 25:
- Concepts: Hybrid Name Resolution
- Services: Route 53 Resolver
- Key Insights: Now, these are managed resolver endpoints by AWS.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 26:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So let's have a look at a diagram, it will make a lot more sense.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 27:
- Concepts: Authoritative DNS and Record Modeling
- Services: Private Hosted Zone
- Key Insights: So let's take an example where we have an EC2 instance, and lives in a VPC, and we have a private hosted zone that we create, for example, aws.private, and we have also an on-premises data center that has a server.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 28:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Now, if you look at the EC2 instance, I gave it a CNAME of app.aws.private, okay?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 29:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: This is a CNAME, which is linked maybe to its EC2 DNS, or it could be an A record linked to its private IP.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 30:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: It doesn't matter right?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 31:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now what's happening is that the server at web.onpremises.private wants to access this EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 32:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And so first, the on-premises data center and the AWS cloud are going to be linked using a VPN connection, or Direct Connect.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 33:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 34:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now we're going to have on-premises as well as some DNS resolvers, for obviously the zone of our on-premises data center.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 35:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So they're going to be for the zone onpremise.private.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 36:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Now, when the server will issue a DNS query for app.aws.private the DNS resolvers are going to say, hey, you know what?
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 37:
- Concepts: Authoritative DNS and Record Modeling, Hybrid Name Resolution
- Services: Route 53 Resolver
- Key Insights: I don't know these, but what we're going to happen is that we're going to create a resolver inbound endpoint, and behind the scenes this resolver inbound endpoint has two ENIs, again for high availability.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 38:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now these ENIs are associated with private IP addresses.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 39:
- Concepts: Hybrid Name Resolution
- Services: (none explicit)
- Key Insights: So what's going to happen is that within our DNS resolvers on premises, we're going to say that for the domain name, aws.private, we're going to forward to these two IPs.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 40:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 41:
- Concepts: Authoritative DNS and Record Modeling, Hybrid Name Resolution
- Services: Route 53 Resolver
- Key Insights: And what's going to happen is that now the DNS query for app.aws.private matches this domain name that was configured on-premises, and therefore the DNS resolver is going to say, hey, I know I should forward these queries to a DNS server that has this information.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Hybrid DNS control-plane signal.

Line 42:
- Concepts: Hybrid Name Resolution
- Services: (none explicit)
- Key Insights: So it's going to forward them to these IPs.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 43:
- Concepts: Hybrid Name Resolution
- Services: Amazon Route 53, Private Hosted Zone, Route 53 Resolver
- Key Insights: Now the resolver inbound endpoint is linked to the Route 53 resolver, and then from the private hosted zone, we're going to get our final lookup and give us the final information for this query.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 44:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this is what's called inbound endpoints because requests coming from the exterior and go inbound on AWS, so on-premises to AWS.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 45:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: As you may expect, the outbound endpoints are quite similar, but they go the other way.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 46:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So we have again, the same setup, okay?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 47:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: But this time we want to be able to resolve the DNS names of the on-premises data center.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 48:
- Concepts: Hybrid Name Resolution
- Services: Amazon Route 53, Route 53 Resolver
- Key Insights: So our EC2 instance is going to ask our Route 53 resolver, Do you know about web.onprem.private?
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 49:
- Concepts: Authoritative DNS and Record Modeling, Hybrid Name Resolution
- Services: Route 53 Resolver
- Key Insights: And for this, we're going to create a resolver outbound endpoint, which has two different ENIs.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 50:
- Concepts: Authoritative DNS and Record Modeling, Hybrid Name Resolution
- Services: Route 53 Resolver
- Key Insights: And we're going to create a forwarding rule, which is saying, hey, for on-prem.private here is the target IP, and this target IP corresponds to the IP of my DNS resolver on-premises.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 51:
- Concepts: Hybrid Name Resolution
- Services: Amazon Route 53, Route 53 Resolver
- Key Insights: So the Route 53 resolver is going to send this to this endpoint, and the endpoint is going to forward the DNS query into the on-premises DNS resolver.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 52:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then we will have automatically the response from the records stored in the DNS of our on-premises data center.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 53:
- Concepts: Hybrid Name Resolution
- Services: Route 53 Resolver
- Key Insights: Now to manage this outbound endpoint, we need resolver rules.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 54:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So the outbound endpoint is going to set, to have a set of rules, okay?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 55:
- Concepts: Hybrid Name Resolution
- Services: (none explicit)
- Key Insights: And it's going to explain how to forward DNS queries on your network.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 56:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So there's conditional forwarding, which are the forwarding rules.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 57:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So the idea is that we're going to say for specific DNS queries in this domain, please match all of it to a target IP address.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 58:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So you can say, for example.com or acme.example.com, here is the target IP, or here are the target IPs for these domains.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 59:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: You can also override them with a system rule.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 60:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And this is to define overriding behavior, which is saying, hey, for a whole subdomain, do not use these forwarding rules.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 61:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: This could be something you can create.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 62:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then finally we have auto-defined system rules, which is for domains that we know are resolved internally.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 63:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: For example, domain names that are internal to AWS or private hosted zones, for example compute.amazonaws.com or EC2.internal.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 64:
- Concepts: Hybrid Name Resolution
- Services: Amazon Route 53, Route 53 Resolver
- Key Insights: Now in case of multiple rules matched, the Route 53 resolver is going to choose the most specific match, in terms of how to choose which rule to apply.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 65:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 66:
- Concepts: Hybrid Name Resolution
- Services: Route 53 Resolver
- Key Insights: Finally, these resolver rules can be shared across accounts.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 67:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: If you're using AWS resource access manager or RAM.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 68:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: That means that you can share them across multiple accounts.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 69:
- Concepts: Hybrid Name Resolution
- Services: Route 53 Resolver
- Key Insights: That means that you can manage them centrally in one dedicated account for these resolver rules.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 70:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then you can send DNS queries from multiple VPC to the target IP defined in the rules.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 71:
- Concepts: Authoritative DNS and Record Modeling, Hybrid Name Resolution
- Services: Route 53 Resolver
- Key Insights: So there are a way to have a central management of your resolver rules in the central accounts.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 72:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 73:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this is it.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 74:
- Concepts: Authoritative DNS and Record Modeling, Hybrid Name Resolution
- Services: (none explicit)
- Key Insights: This is how you have a hybrid DNS on AWS.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 75:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Remember inbound endpoints and outbound endpoints usually are used together to have in and out traffic from your both DNS systems from AWS and on-premises, and the exam will ask you about them for sure.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 76:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 77:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 78:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/10_Route 53/101_What is a DNS _.txt

Line 1:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53
- Key Insights: Okay, so before we talk about Route 53 we have to talk about what is a DNS?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 2:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So, this is a basic level lecture, but at least it will help you understand how DNS works.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 3:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And this is something you've been using behind the scenes every day but you don't know about it exactly.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 4:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So, let's have a look.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 5:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So, a DNS is a domain name system, and what it will do is that it will translate human friendly hostnames into the target server IP addresses.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 6:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: For example, when you type in your web browser, www.google.com, it will in the end give you back an IP address and this is IP address that your web browser will be able to access behind the scenes and get some data back from Google.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 7:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, the DNS is the backbone of the internet.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 8:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: It is a way for you to understand how to translate these URLs, these hostnames into IPs.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 9:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So, there is a hierarchical naming structure for DNS and the idea is that at the root of www.google.com for example, there is the .com, but then there is example.com which is a bit more precise.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 10:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Then, www.example.com or api.example.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 11:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, all of these are going to be the hierarchy of your domain names.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 12:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Next, we need to define a little bit of terminology regarding your DNS.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 13:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So, there is a domain registrar.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 14:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: This is where you're going to register your domain names and it could be Amazon Route 53, or it could be GoDaddy or any other domain registrar you can find online.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 15:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Then you have DNS Records and they have different types and we'll have a look at them in detail in this section.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 16:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So it could be A, AAAA, CNAME, NS, et cetera, et cetera.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 17:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Don't worry, we'll see those in detail in this section.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 18:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: A zone file which contains all the DNS records.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 19:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, this is how to match these hostnames to IPs or addresses.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 20:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Name servers is servers that will actually resolve the DNS queries.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 21:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And we'll have a look at them as well in this section.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 22:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Top level domains which is .com, .us, .in, .gov, .org, et cetera, et cetera.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 23:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Second level domain which is amazon.com and google.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 24:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So you can see there are two words in between a dot.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 25:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And so if we take a look for example at this FQDN, so fully qualified domain name, we have http://api.www.example.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 26:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 27:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, the last dot the end is called the root and it is the root of all the domain names.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 28:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Then the .com, so .com is your TLD, so that's your top level domain.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 29:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: The example.com is going to be your second level domain.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 30:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Then we have www.example.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 31:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: That's your subdomain. api.www.example.com is your FQDN, your fully qualified domain name.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 32:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: HTTP is going to be your protocol and all these things together is going to be your URL.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 33:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So, now that we know a little bit of terminology, let's have a look at how DNS works.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 34:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So we have a web server, and let's say for example that we have an IP, it's a public IP, could be an EC2 instance, for example.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 35:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And the public IP is 9.10.11.12 and we want to be able to access this using the example.com domain name.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 36:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, we're going to register this example.com domain name on one of our servers for the DNS.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 37:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: But let's see how the computer, your web browser, can access it and can get that response.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 38:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, your web browser is going to want to access example.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 39:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And to do so, it's going to ask its local DNS server. "Hey, do you know what example.com is?" Now, this local DNS server is usually assigned and managed by your company or assigned by your internet service provider dynamically.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 40:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And if the local DNS server has never seen this query before what it's going to do is first ask the root DNS server managed by the I-C-A-N-N, the ICANN organization and is going to say, "Hey, do you know what's example.com?" Which is the first server that's going to be asked.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 41:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And the Root DNS Server is going to say, "I've never seen it, but I know .com." So, .com is NS, so it's an NS Record Name server and go see 1234 this public IP.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 42:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So, this is saying to local DNS, "Hey, I don't have this answer but I'm getting you a little bit closer to your answer because I know the .com domain, and the .com domain name server has this IP, 1234." So the local DNS server saying, "Okay, good.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 43:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Now I'm going to ask the top level domain." So the .com domain server at 1234. "I'm going to ask for the answer of my query." So, this is another domain managed by I-A-N-A, the IANA and the example.com, okay, is going to be asked again to this DNS server.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 44:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, do you know about example.com?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 45:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And the DNS server is gonna say, "Hey, I do know about example.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 46:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I don't have the answer to your query right away.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 47:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: I don't know which record it is, but there is a server called example.com that I know about which is at 5.6.7.8, that's a public IP that you should ask the answer to your question.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 48:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So, local DNS server is then going go to our final server which is the second-level domain DNS server and this is a server that is going to be managed by your domain registrar.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 49:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: So it could be, for example, Amazon Route 53 and so on.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 50:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So the DNS server is gonna say, "Hey, do you know about example.com?" And the DNS server will have an entry for example.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 51:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And so it will say, "Hey, yes, of course I know example.com." And it turns out that example.com, I know that it's an A record and that the result of it is the IP 9.10.11.12.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 52:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, the DNS server now knows the answer by recursively asking DNS servers and finding the most specific one.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 53:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then it says, "Okay, hey, yes.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 54:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I'm going to cache that answer right away because I want to be able to, if someone is asking me again for example.com I want to get it right away, give them the answer." So, it's going to send back the answer into your browser and your web browser now has the answer and using this IP address then is going to be able to access your web server.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 55:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, this is how DNS works.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 56:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, you've been using DNS behind the scenes all along all your life.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 57:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: For example, when you access www.google.com you're using DNS or any website.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 58:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: But now we see how the DNS queries work.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 59:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53
- Key Insights: So, this is just some background knowledge because now we're going to go into Route 53 and learn how to manage a DNS server on our own.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 60:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/10_Route 53/102_Route 53 Overview.txt

Line 1:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53
- Key Insights: So now that we know what is a DNS, let's have a look at Amazon Route 53.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 2:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So this is a highly available, scalable, and fully managed and authoritative DNS.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 3:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: What does authoritative means?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 4:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: That means that the customer you can update the DNS records, so you have full control over this DNS.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 5:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So the idea is that you have your clients and they want to access your EC2 Instance @example.com but right now your EC2 Instance only has a public IP.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 6:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53
- Key Insights: Therefore what's going to happen is that we're going to write some DNS records into Amazon Route 53, into a hosted zone, and when the client is asking for example.com, then the Route 53 service will be able to say, "Hey, you're looking for this IP 54.22.33.44," and then the clients will be able to connect directly into our EC2 Instance.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 7:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53
- Key Insights: So Route 53 is also a domain registrar, so it will be able to register our own domain names there such as example.com, and we'll be doing this in the hands-on to allow us to get started with this service.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 8:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: So we have the ability to check also the health of the resources within Route 53, we'll see this in the section.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 9:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And this is the only service in AWS that will provide 100% availability SLA.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 10:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: Finally, why is it called Route 53?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 11:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Well, 53 is a reference to the traditional DNS port used by DNS services, hence the name.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 12:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53
- Key Insights: So in Route 53 you're going to define a bunch of DNS records and the records define how you want to route traffic to a specific domain.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 13:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So each record is going to contain a lot of information such as the domain or the subdomain names such as example.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 14:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: The record type, and we'll see what types of record we have available to us, for example it could be A or AAAA.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 15:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53, Traffic Policy
- Key Insights: Then the value, so the value of the record, for example, 12.34.56.78 The routing policy, which is how a Route 53 will respond to queries.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 16:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: The TTL, which is the amount of time the record is going to be cached at the DNS resolvers, also called time to live.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 17:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53
- Key Insights: And then we have a lot of different supported DNS report types in Route 53.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 18:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So we have, the ones you must know is A, quadruple A, CNAME, and NS, so we'll have a look at those in the hands-on.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 19:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And the advanced records that you can set, but we don't need to know from an exam perspective, are all the ones I just wrote right here.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 20:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So let's learn about the important record types we need to know from an exam perspective.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 21:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So the A record is very simple, it's to map a host name into an IPv4 IP.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 22:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this is when you have, for example, example.com that will be directed into 1.2.3.4.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 23:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay, great.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 24:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Then we have quadruple A.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 25:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So this is the same idea as A, but this time we're going to match our host name into an IPv6 address.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 26:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Then we have a CNAME, which is used to map a host name into another host name.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 27:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And then the target host name of course may be an A or a quadruple A record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 28:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53
- Key Insights: You can not create CNAMES in Route 53 for the top nodes of a DNS namespace or the Zone Apex, and we'll see this in a future lecture as well to understand how that works.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 29:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: For example, you can not create a CNAME for example.com, but you can create a CNAME record for www.example.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 30:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So we'll see how we can deal with this in a future lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 31:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then finally, NS is for name servers of the hosted zone.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 32:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: They are the DNS names or IP addresses of the servers that can respond to the DNS queries for your hosted zone, and this will control how traffic is routed to a domain.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 33:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So let's have a look at what are hosted zones.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 34:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So hosted zones are a container of records, and they will define how to route traffic to a domain and its subdomain.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 35:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So we have two types of hosted zone, we have the public of zones and the private hosted zones.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 36:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So whenever you buy a public domain name, for example mypublicdomain.com, this is a public domain name and therefore we can create a public hosted zone and these public zone can answer the query, "Hey, what's is the IP, underlying IP of the domain name application1.mypublicdomainname.com?" But we also have private hosted zones.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 37:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And these are for domain names that you, they are not publicly available, they're privates, and only you within your own virtual private cloud or VPC can resolve this URL.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 38:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: For example, application1.company.internal.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 39:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: You may have seen this if you're working for a private company, they sometimes have URLs that you can only access from within your corporate network, that's because this is a private URL, this is a private and behind the scenes there is a private DNS record.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 40:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: So for any hosted zones you're going to create an AWS you're going to pay 50 cents per month, so this is not free to use Route 53.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 41:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And if you are to register a domain name, just like I will in the hands-on, this will cost you a minimum of a $12 per year.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 42:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So just so you know, this section is not free.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 43:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So public versus private hosted zones, just to understand.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 44:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So public hosted zone can be answered, can answer queries from public clients.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 45:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So when you web browser, for example, and say, "Hey, give me example.com," and then it returns an IP.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 46:
- Concepts: Route53 Operational Context
- Services: Private Hosted Zone
- Key Insights: And on the other end we have the private hosted zone.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 47:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this is from within your VPC they live.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 48:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And so they allow you to identify private resources with private domain names.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 49:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So for example, we have one EC2 Instance that we want to identify with webapp.example.internal, we have another EC2 Instance that we want to identify with api.example.internal, and then we have a database we want to identify with database.example.internal.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 50:
- Concepts: Authoritative DNS and Record Modeling
- Services: Private Hosted Zone
- Key Insights: In which case we're going to register a private hosted zone, and then in case the first EC2 Instance is requesting for api.example.internal, then the private hosted zone has an answer for it, which is the private IP 10.0.0.10.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 51:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Then the EC2 Instance will connect to the second EC2 Instance, which may need to connect to database.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 52:
- Concepts: Route53 Operational Context
- Services: Private Hosted Zone
- Key Insights: So it will say, "Hey, what's database.example.internal?" And the private hosted zone will say, "Well, this is this private IP." And then the EC2 Instance can connect directly into the database.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 53:
- Concepts: Authoritative DNS and Record Modeling
- Services: Private Hosted Zone
- Key Insights: So the public hosted zone and the private hosted zone work the exact same way, but just the public hosted zone allows anyone from the internet to query your records, so this is for your public records, whereas a private hosted zone is only queried from within your private resources, for example your VPC.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 54:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So that's it for the theory, now let's go into the next lecture to register a domain and then create some records.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 55:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/10_Route 53/103_Route 53 - Registering a domain.txt

Line 1:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: Okay, so we are in Route 53 and we're going to be registering domains.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 2:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So as you can see, I have one hosted zone and one domain.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 3:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: You should have none right now.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 4:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: It's just because I've been using my accounts before.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 5:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: But let's go and register a domain.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 6:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So on the left hand side, click on register domains and you have a new console experience.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 7:
- Concepts: Hybrid Name Resolution
- Services: (none explicit)
- Key Insights: If you don't have it, you can click on somewhere to use the new console and I will use this because this is what's going to happen moving forward.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 8:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So here we have a domain name.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 9:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: This is stephanetheteacher.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 10:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: It's something I have registered a while ago and you will have nothing.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 11:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So what we need to do to get started with Group 53 is to actually register our own domain.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 12:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So this is going to cost you money and if you don't want to pay say $12 a year to have a domain name, just don't do this and watch this section entirely.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 13:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to follow the step you would follow.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 14:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So register domain, and here you just enter a domain name.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 15:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So something that no one else has chosen before whatever you want.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 16:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 17:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: The idea is that you choose a domain name.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 18:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So hopefully no one has registered domain name.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 19:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay, perfect.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 20:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So I can buy this one for US $13 a year.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 21:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So I will select it and it's in my basket.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 22:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to proceed to checkout.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 23:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So here is my domain name.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 24:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I can choose Duration, for example, one year and I can autorenew or not autorenew.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 25:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So if you intend on keeping a domain, please leave autorenew on.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 26:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: If you don't want it at the end of the year, click it so that it's off.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 27:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: But of course, if you use the domain, it's much better to keep autorenew on.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 28:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Otherwise someone will be able to buy the domain when you lose it.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 29:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And this is not good, so up to you to keep it on or off.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 30:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: But if you just intended to have it for the course, then leave it off.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 31:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay, click on Next.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 32:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Then we have contact information.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 33:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this is the information that you have part of the account that has been pre-populated.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 34:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And so you can enter your own information if you wanted to.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 35:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And so the admin contact and the tech contact can be the same as the registrant contact.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 36:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And finally, you should enable privacy protection so that you don't receive spam.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 37:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And so that the real contact information, your own personal address, phone number, et cetera is hidden from the internet.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 38:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: You click on Next and then you have the review page.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 39:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So make sure everything is correct and you check the terms and condition.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 40:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And if you submit, just so you know, you will pay these $13.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 41:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So please don't do this if you don't want to pay that amount of money.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 42:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Then your domain is going to be registered after a little bit of time.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 43:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: It can take a few minutes or a few hours but you'll be good to go.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 44:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And to confirm everything, just go on the left hand side to hosted zones and then you click on stefanetheteacher.com or whatever domain name you have registered.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 45:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And you will have a few records and you should have two records.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 46:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I have four because I've been using this before.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 47:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: But you should have the NS record and the SOA record.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 48:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And the NS record is simply saying that you should use the AWS DNS to insert DNS queries.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 49:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: And this is Route 53.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 50:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So what this means that now that we have a hosted zone, anytime we will insert DNS records such as this one or that one and I will teach you in the next lecture is how to do it.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 51:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: Then the source of truth for these DNS records will be Route 53 itself.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 52:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So what we're configuring in here, so that's perfect.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 53:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: We're good to go.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 54:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: We have a domain name and we can get started with the hands-on.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 55:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/10_Route 53/104_Route 53 - Creating our first records.txt

Line 1:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: So now let's go ahead and create our first records in Route 53.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 2:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to go into my hosted zone, and in there I'm going to create some simple records.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 3:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So let's have a look.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 4:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: We're going to create a record by clicking on here.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 5:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And in here, I can just have a record name.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 6:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So we want it to be test.stephanetheteacher.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 7:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: But you can enter anything you want here.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 8:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: This is how you would create your domain names.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 9:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Now you have to specify the record type.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 10:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So you can see there's a lot of record types in here, but for now we'll keep it simple.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 11:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: We'll keep it as an A record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 12:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And which is to route an IPv4 address into a domain name, to an IPv4 address.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 13:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So the answer is going to be value is 1, 1, dot, 2, 2, dot, 3, 3, dot, four four.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 14:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Which is just a value we want to have, and this is not a domain, an IP we own right now, but just to show you just a random value.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 15:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Later on, we'll be routing to a real institute instance.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 16:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 17:
- Concepts: Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: TTL is time to live.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 18:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: We'll leave it as 300 seconds right now.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 19:
- Concepts: Authoritative DNS and Record Modeling
- Services: Traffic Policy
- Key Insights: And the routing policy will routing policy will have a look at it later on as well.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 20:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: We'll leave everything as simple routing.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 21:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 22:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So let's go ahead and create this record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 23:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And now my record has been successfully created.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 24:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So the idea is that if I go to test.stephanetheteacher.com, it is going to ask my host zone.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 25:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: What is the value of that?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 26:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And those isn't going to say, well, the value of it is 1, 1, dot, 2, 2, dot, 3, 3, dot, 4, 4.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 27:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So if you try it to do it with a web browser, so if you take your browser and you open it and you press enter, and it's not going to show you many things, because right now we don't have 11.22.33.44, there's probably no server that exists with that IP as well.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 28:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And if I try to just access this URL, it doesn't work.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 29:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 30:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So what we know is what is going on behind the scenes.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 31:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And so for this, we're going to type some command lines.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 32:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now you can be using your command line on your windows laptop, or your Mac, but because I want everyone to follow the same way as me, I'm going to show you how to do it using the CloudTrail environments in AWS.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 33:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So let me open the management console, and then I'm going to click here to open cloud shell and cloud shell is going to allow me to do some commands using a standard Linux command line interface.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 34:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 35:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: But this is fine, if you want to just do it with your own terminal on windows or on Mac.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 36:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 37:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So my terminal is not ready.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 38:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And if you're on windows, the NS lookup command is going to work.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 39:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: If you're on Mac, the dig command is going to work as well.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 40:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: But as you can see, these commands are not found on my cloud shell.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 41:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So I need you to install them.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 42:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So I do sudo yum, and then install minus Y and then bind minus utils.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 43:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And it's going to install both VNS lookup and the dig commands on my cloud shell.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 44:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So lets clear the screen.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 45:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And now let's try to do NS lookup, test.stephanietheteacher.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 46:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And as you can see, I get an answer, which is at test.stephanietheteacher.com, is going to 11.22.33.44, which is corresponding to what is happening right here, which is cool.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 47:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And I presented like the dig command a little bit more because I'm more familiar with it, but if you type dig and then the URL that you have, okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 48:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And press enter, you're going to see that and have the wrong commands.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 49:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So stefantheteacher.com, so let's clear this screen and then retype the comments.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 50:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 51:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Well here, we're going to see is that we have the answer section and says, test.stephanetheteacher.com is an a record, and this is the value of the record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 52:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: So I like it better, better, because it shows you the TTL, as we'll see later on, and also shows you the a record, the fact that isn't a record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 53:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 54:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53
- Key Insights: So we have created our first route 53 record, and we have been able to query it using a terminal, which is cool.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 55:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Obviously loading it from a webpage doesn't work right now, but we'll see how we can do it later on when we have a real server.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 56:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So I hope you liked this lecture and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/10_Route 53/105_Route 53 - EC2 Setup.txt

Line 1:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's get started.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 2:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53, Elastic Load Balancing
- Key Insights: And before we use Route 53, I want to go ahead and create three EC2 instances in different regions, as well as one ALB.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 3:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So in one of these regions I'm going to go into instances and then launch an instance.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 4:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And very simply, I will choose Amazon Linux2 on this architecture, a T2 micro type of instance.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 5:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: I don't need a key pair, because I will use, if I need to, I will use EC2 instance connect.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 6:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And then for network settings, I'm going to create a security group.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 7:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I will allow SSH as well as HTTP from anywhere.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 8:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Then I will just, in advanced details, specify a bootstrap user data script.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 9:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: So, to do so, just go into your Route 53 user script and you copy this entire script.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 10:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And you paste it here.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 11:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So what's going to do is it's going to say hello world from the instance, just as before.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 12:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: But now we're going to add the AZ the instance was launched in, using this environment verbal called EC2, availability, zone that I created from before.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 13:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So it's going to give us a little bit more info about EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 14:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to go ahead and launch this instance.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 15:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this has been launched and it is right here.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 16:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's good.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 17:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Next I'm going to go into another region.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 18:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: For example, Northern Virginia, so US East one.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 19:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then I will launch an instance.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 20:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And same settings.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 21:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So again, no key pair required.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 22:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So proceed without a key pair.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 23:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I will allow HTTP as well.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 24:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And for advanced details, I will provide the exact same EC2 user data script.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 25:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Then we click on launch instance and we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 26:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And finally I'm going to go into one last region, for example Singapore.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 27:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And in Singapore I'm going to launch an instance.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 28:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then we'll leave it as t2 micro, we will choose no key pair.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 29:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: We'll allow HTTP from anywhere.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 30:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then, under advanced details, I'm going to paste in the data and launch this instance.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 31:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay, so we have three instances now being started in three different regions.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 32:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So we have one in Frankfurt, one in Northern Virginia, and one in Singapore.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 33:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this is good.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 34:
- Concepts: Authoritative DNS and Record Modeling
- Services: Elastic Load Balancing
- Key Insights: Lastly, what I'm going to do is that I'm going to launch a load balancer in Frankfurt, for example.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 35:
- Concepts: Authoritative DNS and Record Modeling
- Services: Elastic Load Balancing
- Key Insights: So here I'm going to create a load balancer and choose an application load balancer.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 36:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Create.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 37:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then the unique name will be DemoRoute53ALB.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 38:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: This is fine, it's going to be internet facing, on IPv4.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 39:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I will choose for mapping, one, two, and three subnets.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 40:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And for security group I can choose up to five.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 41:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to choose the one that I've created just from before, which was the launch user two, which had AWS and HTTP enabled.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 42:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: This way we're sure that HTTP is enabled.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 43:
- Concepts: Authoritative DNS and Record Modeling, Hybrid Name Resolution
- Services: (none explicit)
- Key Insights: And the protocol is on 80, you're going to forward to a new target group, that we're going to have to create, based on instances.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 44:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: And I'll call it this one demo tg route 53.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 45:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And, what I want to do is next and register my one instance right now that I just created from before.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 46:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So you do include as pending below.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 47:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Then on the review targets, you have one target.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 48:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then create the target group.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 49:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So the target group is not created.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 50:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So back into model balancers.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 51:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: I can refresh this and select the demo tg group route 53.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 52:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And everything looks good.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 53:
- Concepts: Route53 Operational Context
- Services: Elastic Load Balancing
- Key Insights: Let's create our load balancer, and then click on view the balancer.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 54:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And here we go.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 55:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So now to summarize, let's see if everything has been working properly.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 56:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, we have one EC2 instance right here.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 57:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And let's take the public IP, so I'll just copy the IP itself, make sure using the IP via http.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 58:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And it says hello world from blah, blah, blah.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 59:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So this is good, so what I'm going to do is that I'm going to, under a text file, just to have a mark of a trace of everything, I'm going to put the IP address as well as the region I'm in.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 60:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So EU central one.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 61:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: As you can see, it says hello from AZ EU central one B.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 62:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay, so this instance is working.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 63:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I'm just testing whereas everything's working.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 64:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So I'm going to also take this public IP right here, paste it in, and it says yes hello from US East one A.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 65:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this is perfect, so this is US East one.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 66:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And the last instance right now it's here.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 67:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then I'm going to copy this IPv4 address, paste it in, and it says hello from AP Southeast one b.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 68:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this one's working as well.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 69:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's go here, AP southeast one.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 70:
- Concepts: Route53 Operational Context
- Services: Elastic Load Balancing
- Key Insights: And finally, if I go under my ALB and take the DNS name right here, let's see if it has been provisioned.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 71:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's refresh this.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 72:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So it is provisioned as we can tell.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 73:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So this can take a bit of time.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 74:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So for you, it may not work, for me it worked.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 75:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And so because it is pointing to one EC2 instance, it's a hello world from AZ EU Central one B.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 76:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So now we have properly set up all our instances, as well our GNS.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 77:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 78:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And keep this information handy, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/10_Route 53/106_Route 53 - TTL.txt

Line 1:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Okay, so let's have a look at TTLs.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 2:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: So a record TTL is a Time To Live.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 3:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53
- Key Insights: And let's take this example where a client is accessing our DNS Route 53 and a web server.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 4:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So we do a DNS request for myapp.example.com, and we get an answer from the DNS, which is saying, hey, please, this is an A record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 5:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: Here is the IP, and there is a TTL, maybe a TTL of 300 seconds.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 6:
- Concepts: Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: So TTL is saying, hey clients, please cache this result for the duration of the TTL.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 7:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So for 300 seconds, the client is going to cache the results.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 8:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: That means that if the client is requesting again or accessing the same host name, what's going to happen is that the client will not issue a query to the DNS system, because it already knows the answer, because the answer has been cached, and we're still within the cache period, so the cache TTL.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 9:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: The idea behind this is that we don't want to query the DNS too often, because we don't expect records to change a lot, and so, therefore, using the response it has, the client can access our web server and do HTTP request and responses.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 10:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So we have, you know, two extreme cases.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 11:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: Amazon Route 53
- Key Insights: For example, if you set a high TTL of, say, 24 hours, then this is going to do a lot less traffic on Route 53, because less clients are doing requests, because the result are cached for 24 hours, and, possibly, while the client will have outdated records.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 12:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: If somehow you want to change the record, you will need to wait 24 hours to make sure that all your clients will have the new records in their cache.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 13:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: Amazon Route 53
- Key Insights: If you said set a low TTL, for example, 60 seconds, at the opposite, then it's going to do a lot more traffic on your DNS, so a lot more dollar you're going to spend, because you get price per how many request do reach Route 53.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 14:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: But the records will be outdated for less time, so it's quicker for you to do a record change, and it's easier to change records overall.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 15:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: So it's up to you, really, to see what a good TTL or low TTL is.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 16:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: If you plan on changing a record, the idea is that sometimes you will decrease the TTL for, say, 24 hours, and then when you know that all the clients have a new TTL that is low, then you change the record value which gets updated for everyone, and then you increase the TTL.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 17:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: This is a strategy.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 18:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: So the TTL is mandatory for every record except the Alias record that we'll see in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 19:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: So let's have a look how TTL works in the console.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 20:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So let's have a look at how Time To Live works.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 21:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So let's create a new record, and this one is going to be called demo.stephanetheteacher.com, and the value of it is going to be one of the EC2 instances we know.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 22:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's take the one in eu-central-1.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 23:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So I'm gonna take this EC2 instance and paste the value of it.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 24:
- Concepts: Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: And then for the TTL, we're going to set two minutes.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 25:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So to do so I'm going to click twice on this minute button.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 26:
- Concepts: Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: So the TTL is now 120 seconds.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 27:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So let me create this record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 28:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And now my record has been created.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 29:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So it is an A record pointing to a specific IP at demo.stephanetheteacher.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 30:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Now, I want to show you that the record is working, but Firefox is not very nice with me.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 31:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So if I try to open this in Firefox it's going to give me a problem.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 32:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this is not something I can fix easily, so I'm going to use Google Chrome on the right-hand side to show you this.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 33:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So if I do demo.stephanetheteacher.com on Google, then automatically it should direct me to, yes, my eu-central-1 instance.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 34:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So that means that this record, this A record, is fully functioning.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 35:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And I can also make sure of that, for example, if I'm using CloudShell.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 36:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So if I clear this and do an nslookup on demo.stephanetheteacher.com, as you can see, the address is correct.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 37:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And if I do a dig command on this, then we get an answer.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 38:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And there's a cool number that we're showing here, so the answer section, there's 115.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 39:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So the idea here, that's because I did do a DNS query.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 40:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Then the record get cached for 120 seconds.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 41:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And if I retype again this dig command right here, as you can see the number got down to 98.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 42:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So that means that for 98 seconds, actually, I will get the same response, because, no matter what, this is what's cached on my computer.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 43:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So if I'm very quick and I go to this record right here and I edit it, so instead of this IP, I want to go to ap-southeast-1, so we'll use the first IP in my list and save this.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 44:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So even though this record was being updated, okay, if I go into CloudShell and, again, do this dig command, as you can see, the insert is still the same as before.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 45:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: That's because for 66 more seconds this is going to be cached.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 46:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And if I go to Chrome, I think I was fast enough, I go to Chrome and refresh this page, as you can see, I still have the answer from eu-central-1.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 47:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And this is because, again, my record got cached for two minutes.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 48:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53
- Key Insights: So when the cache is expiring, then only then my command line interface or my Chrome web browser will ask again Route 53 for the value of this record.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 49:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then, again, will I get the answer and will be redirected to this new IP.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 50:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So the best way to check it is just to wait.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 51:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to wait maybe one more minute and then get back to you.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 52:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Okay, so it's been a minute and now if I refresh my web browser, as you can see now, I get a different Hello World and this time it's from ap-southeast-1b.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 53:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: And if I go into my CloudShell and do the same dig command, then, as you can see, there's a new TTL, so 120 seconds, and there is a new IP right here which is the IPO menu server.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 54:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: So this was a cool demo of the TTL.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 55:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/10_Route 53/107_Route 53 CNAME vs Alias.txt

Line 1:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So now let's have a look at the differences between CNAME and Aliases.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 2:
- Concepts: Authoritative DNS and Record Modeling
- Services: CloudFront, Elastic Load Balancing
- Key Insights: So when you have an AWS Resource, for example, a Load Balancer or CloudFront, it will expose a hostname.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 3:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And what you want is to maybe map that hostname to a domain you own.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 4:
- Concepts: Route53 Operational Context
- Services: Elastic Load Balancing
- Key Insights: For example, you want to map this Load Balancer into myapp.mydomain.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 5:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So we have two options.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 6:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: The first one is to use a CNAME record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 7:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So we've seen A records, but now let's look at CNAME records.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 8:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So CNAME allows you to point a hostname to any other hostname.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 9:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: For example, you can say app.mydomain.com is pointing to blabla.anything.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 10:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And this only works if you have a non root domain name, so if you have something.mydomain.com.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 11:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: It does not work for just mydomain.com, as we'll see in the hands-on.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 12:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53
- Key Insights: On the other hand, you have alias records, and these are specific to Route 53, but they allow you to point a hostname to a specific AWS Resource.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 13:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So app.mydomain.com is pointing to blabla.amazonaws.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 14:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And these resources we'll see in a second where they are.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 15:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: But these alias records work for both root domains and non root domains.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 16:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So you can have mydomain.com pointing to, as an alias, to an alias resource which is very, very good.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 17:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this is something that the exam may test you on, and we'll see this in the hands-on.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 18:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: So on top of it, alias is very good because they're free of charge, and they have a native health check capability within them.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 19:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Okay, so if we look at these alias records in details, they are only mapped to resources in AWS.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 20:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: So you would say, "Okay, here is Route 53.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 21:
- Concepts: Authoritative DNS and Record Modeling
- Services: Elastic Load Balancing
- Key Insights: I want to have example.com as an alias record of type A, and the value is the DNS name of the load balancer you have.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 22:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now, this is an extension to DNS functionalities.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 23:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: That's something that's across all DNS that exist out there.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 24:
- Concepts: Authoritative DNS and Record Modeling
- Services: Elastic Load Balancing
- Key Insights: And in case the underlying ALB have IP changes, then automatically the alias record will recognize them.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 25:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So it said unlike CNAME, alias records can be used for top, for the top node of the DNS namespace called the Zone Apex, so you can use a alias record for example.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 26:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Now, the alias record is always of type A or AAAA which is for resources, so either IPv4 or IPv6.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 27:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: When you have an alias record, you cannot set the TTL.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 28:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: It is set automatically by Route 53.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 29:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So what are the targets for alias records?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 30:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Well, it could be Elastic Load Balancers.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 31:
- Concepts: Route53 Operational Context
- Services: CloudFront
- Key Insights: It could be CloudFront Distributions.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 32:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And some of these you'll see, you'll have seen in this course, some of these you will not have seen in this course, but this is fine.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 33:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: It's just for you to get an idea of what they can be.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 34:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53, CloudFront
- Key Insights: So ELBs, CloudFront Distributions, API Gateway, Elastic Beanstalk environments, S3 Websites, so not S3 Buckets but S3 Websites when these buckets are enabled as websites, VPC Interface Endpoints, Global Accelerator accelerator, and Route 53 records in the same hosted zone.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 35:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: One thing that is not there is that you cannot set an alias for an EC2 DNS name.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 36:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: This is something you need to remember.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 37:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So EC2 DNS names are not something you can have a target, that can be the target of an alias record, okay?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 38:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Just, and also to let you to know.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 39:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So now let's have a look in the console to see how CNAMEs and alias records work.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 40:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So let's go ahead and create a record, and this one will be of type CNAME.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 41:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So I will call this one myapp.stephanetheteacher.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 42:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And the record type now is not A, it's not AAAA.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 43:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: It's CNAME.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 44:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And then the value must be a domain name.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 45:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And very easy, I already have a domain name available.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 46:
- Concepts: Route53 Operational Context
- Services: Elastic Load Balancing
- Key Insights: That's my ALB.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 47:
- Concepts: Route53 Operational Context
- Services: Elastic Load Balancing
- Key Insights: So what I'm going to do is I'm going to copy those name of my ALB and paste it in here.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 48:
- Concepts: Route53 Operational Context
- Services: Elastic Load Balancing
- Key Insights: The idea is that now instead of accessing my ALB through this URL, I want to be access the ALB through myapp.stephanetheteacher.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 49:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Okay, so I will just create this record, and now myapp.stephanetheteacher.com has been created.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 50:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And so if I go into my Chrome web browser on the right-hand side and open this URL, now you see that the answer is Hello World from my IP blah, blah, blah in AZ eu-central-1c.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 51:
- Concepts: Route53 Operational Context
- Services: Elastic Load Balancing
- Key Insights: So this domain name is in fact covered by the ALB, and the ALB is directing the traffic into one EC2 instance, and so therefore I receive back this Hello World.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 52:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this is good, but this is not AWS native, okay?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 53:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: This is something that will work for many domain names, but we can do something better.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 54:
- Concepts: Authoritative DNS and Record Modeling
- Services: Elastic Load Balancing
- Key Insights: Because we are redirecting into an ALB, what we can do is create an alias record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 55:
- Concepts: Authoritative DNS and Record Modeling
- Services: Elastic Load Balancing
- Key Insights: So I can create a record, and this time it's going to be myalias.stephanetheteacher.com, and the record type is A because my ALB is currently having only IPv4 traffic.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 56:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And the value of it, so we have to say, we have to take the alias right here, and we're going to route traffic to, and then we have a list of options, okay?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 57:
- Concepts: Authoritative DNS and Record Modeling
- Services: Elastic Load Balancing
- Key Insights: So we can see a lot of different options, but right now it's going to be an Alias to an Application and Classic Load Balancer.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 58:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: We need to choose a region, so it is in eu-central-1 for me.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 59:
- Concepts: Route53 Operational Context
- Services: Elastic Load Balancing
- Key Insights: And then we need to choose the load balancer, so I will choose this load balancer right here.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 60:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Then automatically we can evaluate the target health as well with a Yes because this is an alias record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 61:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So we'll click on Create this record, and now I have a new record right here called myalias.stephanetheteacher.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 62:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And the cool thing is that this record is free to query, okay?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 63:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So I'm not going to pay any money because this is an alias record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 64:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So if I click on myalias.stephanetheteacher.com, it's going to perform a few DNS queries, and now, again, I get the same response.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 65:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay, nothing has changed, but it is working.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 66:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay, so that's perfect.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 67:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: But now what if you consider the domain apex, so if you want to have just stephanetheteacher.com to redirect to this page?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 68:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So what we're going to do is create a record, and let's go ahead.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 69:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So we're going to just have nothing in here, okay?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 70:
- Concepts: Authoritative DNS and Record Modeling
- Services: Elastic Load Balancing
- Key Insights: And we're going to have a CNAME record pointing to the domain name of my ALB which is copied from here and pasted in here.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 71:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Okay, so we want to say, "Hey, stephanetheteacher.com is going to be a CNAME for this value." Now, this is not going to work.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 72:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Let's try it.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 73:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: It's saying, "Hey, bad request.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 74:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: The CNAME is not permitted at apex of this zone." So this zone is stephanetheteacher.com, and the apex of the zone is stephanetheteacher.com, and therefore we cannot set up a CNAME at the apex.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 75:
- Concepts: Authoritative DNS and Record Modeling
- Services: Elastic Load Balancing
- Key Insights: So the only way we can deal with this issue is instead to create an alias and the record is going to be of type A, and the alias is going to point again to an ALB or CLB in the eu-central-1 region, and the load balancer is going to be the one from before.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 76:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Now, this is going to be accepted because this is an alias record, and this is what the exam may test you on, okay?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 77:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And so now we can see that stephanetheteacher.com is accessible.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 78:
- Concepts: Authoritative DNS and Record Modeling
- Services: Elastic Load Balancing
- Key Insights: And so if I go back into my web browser in here, open a new tab and enter stephanetheteacher.com and press Enter, here I get back the Hello World from my load balancer, so everything is working great, so that's it.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 79:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: We've shown how CNAMEs and alias records work in AWS.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 80:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/10_Route 53/108_Routing Policy - Simple.txt

Line 1:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: So now let's talk about routing policies for Route 53.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 2:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53, Traffic Policy
- Key Insights: So a routing policy is helping Route 53 respond to DNS queries, and we shouldn't be confused about the word routing.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 3:
- Concepts: Authoritative DNS and Record Modeling
- Services: Elastic Load Balancing
- Key Insights: This is not like when you have a load balancer and the actual load balancer will route traffic to the backend EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 4:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: No, no, no.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 5:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: This routing is from a DNS perspective.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 6:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So the DNS does not respond, does not route any traffic.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 7:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So the traffic doesn't go through the DNS.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 8:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: The DNS only will respond to the DNS queries and then the clients will know to which way they should be doing these HTTP queries, for example.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal.

Line 9:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So the DNS just helps translate host names into actual endpoints that the clients can use.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 10:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53, Traffic Policy
- Key Insights: So Route 53 will support the following routing policy.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 11:
- Concepts: Availability and Failover Control, Latency and Geo Routing Strategy, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: There's simple, weighted, failover, latency based, geolocation, multi-value answer, and geoproximity.
- Hidden/Implicit Meaning: Availability and failover decision-path signal; Routing-policy strategy signal.

Line 12:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And we're going to have a look at all of them in this section.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 13:
- Concepts: Route53 Operational Context
- Services: Traffic Policy
- Key Insights: So the first one is going to be the simple routing policy.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 14:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And the idea is that with this, that we've actually been using before, we're going to route traffic to a single resource typically.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 15:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So here's an example.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 16:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: The clients that will say, hey, I want to go to foo.example.com, and Routes 53 will say, hey, go to this IP address.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 17:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And this is an A record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 18:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So it is possible for us to specify multiple values in the same record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 19:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And if so, if multiple values are returned by the DNS, then a random one will be chosen by the clients or client side.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 20:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53
- Key Insights: So in this example, we have the client's asking again for foo.example.com, and Amazon Route 53 will just reply with three IP addresses that occur embedded into the A record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 21:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then the clients will pick one of them randomly and apply it for the routing.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 22:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So if you have enabled an alias record alongside the simple policy, then you can only specify on AWS resource as a target.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 23:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And finally, it's called simple because it's very simple.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 24:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And therefore you can not associate this with health checks and we'll see health checks later on in this section and how they work.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 25:
- Concepts: Authoritative DNS and Record Modeling
- Services: Traffic Policy
- Key Insights: So let's go in the console to see how a routing policy of step simple can be created.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 26:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So let's create a record, and the record name is going to be simple.stephanetheteacher.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 27:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: It's an A record, and the value of which is going to be, for example, my instance in ap-southeast-1.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 28:
- Concepts: Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: Now for TTL, it will say something very low, like 20 seconds.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 29:
- Concepts: Route53 Operational Context
- Services: Traffic Policy
- Key Insights: And the routing policy is going to be here.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 30:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So as you can see, we have different possibilities, six of them, and then one other that is somewhere else in the UI.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 31:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: So we have a TTL 20 seconds as simple writing policy, and let's just create this record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 32:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So we've been doing this before.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 33:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: We know how this works.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 34:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So now if we go to simple.stephanetheteacher.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 35:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And go to this URL, we get Hello World from my instance in ap-southeast-1b, which is awesome.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 36:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And if we do a dig command and have a look, so we need to reinstall dig.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 37:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So sudo yum install bind-utils.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 38:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this is because I restarted my machine here.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 39:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay, we're going to redo the dig command.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 40:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So we do the dig command on this.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 41:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: As we can see, we have an A record of a TTL of 20 seconds pointing to this IP.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 42:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: But we can change this record now.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 43:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: We're going to edit the record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 44:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So I will just simply click on it and edit the record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 45:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And for the value, now, I can enter multiple IPs.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 46:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So I can insert my one in ap-southeast-1 or one in us-east-1, for example.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 47:
- Concepts: Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: So when I do so and save this, what's going to happen is that once the TTL expires from before, we're going to get two records back.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 48:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's use CloudShell to verify this.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 49:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So I'm going to do a dig command.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 50:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And as you can see, now we have in the intersection, we have two responses.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 51:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: We have one in this IP and one in this IP.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 52:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So it's a client side choice.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 53:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So that means that if I go to this website and refresh, I have one chance out of two to go into us-east-1.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 54:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And I didn't.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 55:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So I was back into ap-southeast-1b, but let me pause for 20 seconds and I'll get back to you.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 56:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And I'm refreshing.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 57:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And I get back the Hello World from us-east-1a.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 58:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this worked.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 59:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: This absolutely shows how simple records work.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 60:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/10_Route 53/109_Routing Policy - Weighted.txt

Line 1:
- Concepts: Traffic Shaping and Migration
- Services: Traffic Policy
- Key Insights: So now let's talk about the weighted routing policy.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 2:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: The idea is that you can have a percentage of requests you can control to go to a specific resource thanks to weights.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 3:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: So, put it simply in the diagram, we have Amazon route 53, and then we have three EC2 instance that have been assigned different weights, so 70, 20, and 10.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 4:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: In my example, these weights sum up to 100, but you don't have to in the real life, okay?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 5:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: But what this means that 70% of the DNS responses from Amazon as on route 53 are going to be redirecting to the first EC2 instance, then 20% to the second and 10% to the third.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 6:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So what we have to do in our weight is to assign each record a relative weights.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 7:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And then the traffic percentage is going to be sent to each record, as just the weight of the record divided by the sum of all the weights of all the records which is like a percentage of all the weights, okay?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 8:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: The weights don't need to sum up to 100, they're just indicative of how much we want to send to this instance, compared to all the other records in your DNS name.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 9:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So to make this work, the DNS records must have the same name and type, and you can associate them with health checks, although we haven't seen with health checks are again yet, but we'll have a look at them very, very soon.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Availability and failover decision-path signal.

Line 10:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: Traffic Policy
- Key Insights: Now the use cases for a weighted routing policy is pretty obvious, is to do for example, load balancing, maybe across different regions, or to test a new application version by sending a small amount of traffic to it, and so on.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 11:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And then if you're sending to sort of a weight of zero, then you're going to stop sending traffic to a specific resource, so you can shift weight over time.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 12:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And if all the resource records will have a weight of zero, then all the records will be returned with equal weights.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 13:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So let's have a look in the console to see how that works.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 14:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: So let's create a new record, and this one is going to be called weighted.stephanethetaccher.com.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 15:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: Traffic Policy
- Key Insights: It's an A record, and the routing policy is going to be weighted.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 16:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So first for the first value, let's enter the one from the ap-southeast-1, and the weights I'm going to assign to it this time is going to be 10, okay?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 17:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So it's very, very small weights.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 18:
- Concepts: Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: For the TTL, I'm going to set it to something really low, three seconds to just show you the impact of weighted.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 19:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: But obviously, this is not a TTL you would use in real life.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 20:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: So as we can see, we can associate a health check with it, but for now we won't.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 21:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And we have a record ID that we can set.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 22:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: And this is to identify this specific record within the weighted record sets.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 23:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So for this one, I got this instance from the southeast, I'm just going to write southeast.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 24:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Okay, and then we can add another record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 25:
- Concepts: Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: And again, we're going to use the same weighted.stephanetheteache.com, okay?
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 26:
- Concepts: Traffic Shaping and Migration
- Services: Traffic Policy
- Key Insights: And the routing policy is going to be weighted.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 27:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And the value of which is going to be the one from us-east-1.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 28:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to copy this IP and paste it here.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 29:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: The weight is going to be on this time 70.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 30:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So we're going to send 70% of the traffic to us-east-1, and then the record ID is US East.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 31:
- Concepts: Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: Great, and the TTL again, three seconds.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 32:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: And one last record we're going to add, so again, weighted, and then the value of which is going to be eu-central-1, in here.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 33:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: And I'm going to send it as a weighted record.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 34:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: I'm going to send 20 as weights, and the record ID is going to be EU okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 35:
- Concepts: Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: And the TTL three seconds.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 36:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So now let's go ahead and create these records.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 37:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And as we can see, we now have three records in this table, okay?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 38:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So this is why it's different from, for example, a simple record has two values, here, we have three records and each record has one value as an answer, but we have a weight of 10, 20 and 70.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 39:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: So if I go to the URL now, if I go to weighted.stephanetheteacher.com and press Enter, I'm getting a first response from the us-east-1a which makes sense because, well, this is where 70% of the traffic is supposed to be going okay, to this region.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 40:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: But if I refresh and I need to refresh maybe every three seconds, at some points, I should be getting a response from another region.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 41:
- Concepts: Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: And this is just based on weight, so this is the (indistinct) behind the weighted resources.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 42:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: So as you can see, this one is not changing a lot, so let's do a dig command just to show you the output of what it is, so dig weighted.stephanetheteacher.com. and here we get a TTL of three and the answer is, I think still the one from the us-east-1, But so let's try to issue one more, and see if we get any luckier.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 43:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So the weight of 70 definitely is a big weight.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 44:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Okay, but here as we can see, we just got an answer, and this one is a different IP, 3.70.14, which is corresponding to the weight of 20.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 45:
- Concepts: Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: So as we can see, weighted does exactly what it's supposed to do, it's redirecting most of the queries into the one that has the most weight, but from time to time, you will get other answers, okay?
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 46:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And so on.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 47:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this is something you can practice in your web browser as well as we can see, cool.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 48:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I just get redacted into eu-central-1c.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 49:
- Concepts: Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: So that's it for this lecture, and hopefully it shows you the power of weighted records.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 50:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/10_Route 53/110_Routing Policy - Latency.txt

Line 1:
- Concepts: Authoritative DNS and Record Modeling, Latency and Geo Routing Strategy
- Services: Traffic Policy
- Key Insights: So let's talk about a routing policy that's super easy to understand, which is the latency-based routing policy.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 2:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 3:
- Concepts: Latency and Geo Routing Strategy
- Services: (none explicit)
- Key Insights: So now let's talk about latency-based routing policies.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 4:
- Concepts: Latency and Geo Routing Strategy
- Services: (none explicit)
- Key Insights: And the idea is that you want to redirect the resource that is going to have the lowest latency.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 5:
- Concepts: Latency and Geo Routing Strategy
- Services: (none explicit)
- Key Insights: So the closest to us, which is super helpful when latency is your main concern for your websites or applications.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 6:
- Concepts: Authoritative DNS and Record Modeling, Latency and Geo Routing Strategy
- Services: (none explicit)
- Key Insights: Now latency is going to be measured based on how quick it is for users to connect to the closest, identified AWS region for that record.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 7:
- Concepts: Authoritative DNS and Record Modeling, Latency and Geo Routing Strategy
- Services: (none explicit)
- Key Insights: So for example, if user in Germany and you have the lowest latency to a resource in the US, then this is where you will be redirected.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 8:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And this can be combined with health checks that we'll see in the very next lecture.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 9:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So let's have a look at the map of the world to understand it.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 10:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Say we deploy our applications in two different parts of the world, one in us-east-1 and one in ap-southeast-1.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 11:
- Concepts: Latency and Geo Routing Strategy
- Services: Amazon Route 53
- Key Insights: Then the users are all around the world and the latency is going to be evaluated by Route 53.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 12:
- Concepts: Latency and Geo Routing Strategy
- Services: Elastic Load Balancing
- Key Insights: And so the users closest and with the lowest latency to the ALB, us-east-1, will be redirected there.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 13:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Whereas, the other users will be redirected to ap-southeast-1.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 14:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now let's put this into practice in the console.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 15:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's create new records.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 16:
- Concepts: Authoritative DNS and Record Modeling, Latency and Geo Routing Strategy
- Services: (none explicit)
- Key Insights: And the Record name is going to be, latency.stephanetheteacher.com.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 17:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And the first Value is going to be the one in ap-southeast-1.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 18:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So I'm good to paste the value in here.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 19:
- Concepts: Latency and Geo Routing Strategy
- Services: Traffic Policy
- Key Insights: And then the Routing policy is going to be Latency.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 20:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So when we do this thing, because we just put an IP address in here, we need to specify the region of our record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 21:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this one is going to be corresponding to ap-southeast-1, which is at Singapore.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 22:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 23:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And the reason is that Alias is not smart enough, at least in this stage, to take this IP and know that it comes from an EC2 instance that I have in Singapore, because this could be any IP in the world actually.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 24:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So it's for us to specify, this IP corresponds to the region, Asia Pacific, Singapore.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 25:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: And then we can associate a Health check and a Record ID.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 26:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So I'll call this one, ap-southeast-1.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 27:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And it's just a name that I give it.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 28:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Now we can add another record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 29:
- Concepts: Authoritative DNS and Record Modeling, Latency and Geo Routing Strategy
- Services: (none explicit)
- Key Insights: Again, the Record name is going to be Latency and the value of which this one is going to be for us-east-1.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 30:
- Concepts: Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: So I'll have the Value here, and it's going to be Weighted.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 31:
- Concepts: Latency and Geo Routing Strategy
- Services: (none explicit)
- Key Insights: No, Latency.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 32:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Excuse me, of course.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 33:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then it's us-east-1.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 34:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And again, I will just have it as a us-east-1 for my Record ID.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 35:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And then one last record is going to be for eu-central-1.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 36:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So I will copy this IP.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 37:
- Concepts: Authoritative DNS and Record Modeling, Latency and Geo Routing Strategy
- Services: Traffic Policy
- Key Insights: And the Record name is this, the Value is here, the Routing policy is Latency and the Region is eu-central-1, so will be the Name.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 38:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 39:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So as we can see, we have three records being created, successfully created, and this is it right here.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 40:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And so now let's try them out.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 41:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So right now I'm in Europe.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 42:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And so if I open this, I'm expecting it to go to my instance in Europe.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 43:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So I go to this URL, and I get a response, Hello World, from this IP in eu-central-1c.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 44:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: If I use CloudShell to try it out and we do a dig command on this.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 45:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: As we can see, we get an error code back of just one value.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 46:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 47:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So just one value of the same IP address as this one.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 48:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this is my instance in eu-central-1c.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 49:
- Concepts: Latency and Geo Routing Strategy
- Services: (none explicit)
- Key Insights: And if I keep on refreshing, because my latency hasn't changed to eu-central-1, I'm going to get, always the same answer.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Routing-policy strategy signal.

Line 50:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 51:
- Concepts: Authoritative DNS and Record Modeling, Latency and Geo Routing Strategy
- Services: (none explicit)
- Key Insights: But, so how do we test whether or not that latency record is working?
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 52:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Well, for this I can use a VPN.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 53:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And so let's go to Canada, for example.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 54:
- Concepts: Latency and Geo Routing Strategy
- Services: (none explicit)
- Key Insights: And in Canada, it turns out that my latency is going to be the closest to the U.S.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 55:
- Concepts: Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: So if I refresh this page now, I get the Hello World from the U.S. and when I did change my location, thanks to the VPN, it cleared all the TTL that I had for my DNS cache, locally on my laptop.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 56:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And so this is why automatically by refreshing it, I was able to get the newest value for us-east-1a.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 57:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: But again, if I use dig because this hasn't changed, okay, my CloudShell is still in Europe, okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 58:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: If I use the dig command and use the exact same command as here, I'm still going to get the exact same value as before, okay, because, this computer right here, this CloudShell sits in eu-central-1.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 59:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And so this is still the closest location to eu-central-1.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 60:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And how do we test the one for AP Southeast?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 61:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Let's go into Hong Kong.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 62:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 63:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So I'm close to Singapore now.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 64:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And I will refresh this.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 65:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And the answer is, Hello World, from ap-southeast-1b.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 66:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So the latencies record are working and they're really, really good and very common to use online.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 67:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/10_Route 53/111_Route 53 - Health Checks.txt

Line 1:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: So let's talk about Health Checks in Route 53.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 2:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So health checks are a way for you to check the health of mainly public resources, although there's a way for us to do it for private resources as well, as we'll see in this lecture.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 3:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So the idea is that, for example, we have two Load balancers in different regions and they're public load balancers, okay?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 4:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And behind the scenes, we have our application running in both of them.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 5:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So we're running into a multi-region setup because we want high availability, and so on, at the region level.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 6:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: Then we're going to use Route 53 to create DNS records.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 7:
- Concepts: Route53 Operational Context
- Services: Elastic Load Balancing
- Key Insights: So that's when users access our URL, for example, mydomain.com, then they get redirected to, for example, the closest load balancer they have.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 8:
- Concepts: Authoritative DNS and Record Modeling, Latency and Geo Routing Strategy
- Services: (none explicit)
- Key Insights: So this would be the case with a latency type of record.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 9:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: But we want to make sure that, if one region is down, then we don't send our users to that region, obviously, right?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 10:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: So to do so, we're going to create health checks from Route 53.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 11:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: So we'll create health checks on the one in us-east-1, and we will create a health check on our instance in eu-west-1.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 12:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: Well, with these two health checks, we're going to be able to associate them with our Route 53 records.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 13:
- Concepts: Availability and Failover Control
- Services: (none explicit)
- Key Insights: And the reason we do so is to get automated DNS failover.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 14:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So we have three health checks that are possible.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 15:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: The ones I just showed you, which are the health check that monitor an endpoint, which is a public endpoint.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 16:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So it could be an application, a server, or another AWS resource.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 17:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: It could be a health check that monitors other health checks, also called a calculated health check, or it could be a health check that monitors a CloudWatch Alarm, which gives you more control and is helpful for private resources as we'll see in this lecture.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 18:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Finally, these health checks have their own metric and you can view them in CloudWatch metrics as well.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 19:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So let's look at how health checks work with a specific endpoint.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 20:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Elastic Load Balancing, Route 53 Health Check
- Key Insights: So if we have a health check for eu-west-1, for an ALB, then the health checkers of AWS are coming from all around the world.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 21:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So it's not just one health checker.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 22:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: It's about 15 health checkers from all around the world.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 23:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And they're all going to send requests into our public endpoint to wherever routes we set.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 24:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then if it gets 200 OK code back or the code we defined, then the resource is deemed healthy.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 25:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So about 15 global health checkers will check the endpoint health, and then you can set a threshold for healthy or unhealthy.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 26:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: You can set an interval, so we have two options.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 27:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: It could be either 30 seconds for regular health checks or every 10 seconds, which is a higher cost, which is what's called a fast health check.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 28:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: It supports many protocols, so HTTP, and HTTPS, and TCP.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 29:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: And the rule is that if over 18% of the health checkers say that the endpoint is healthy, then Route 53 will consider it healthy, otherwise it's deemed unhealthy.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 30:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And you have the ability to choose which locations you want to use for the health checks.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 31:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Elastic Load Balancing, Route 53 Health Check
- Key Insights: Now the health checks will only pass if you have the status 2xx or 3xx status code back from the load balancer and the health check has a cool capability.
- Hidden/Implicit Meaning: Constraint or limitation signal; Availability and failover decision-path signal.

Line 32:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So if it is a text-based response, then the health checkers can check the first 5,120 bytes of the response to look for some specific texts in the response itself.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 33:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Finally, very important from a network perspective, if you want for it to work, obviously, the health checkers must be able to access your Application Balancer or whatever endpoints you have.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Availability and failover decision-path signal.

Line 34:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: And so therefore you must allow incoming requests coming from the Route 53 health checkers' IP address range.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Availability and failover decision-path signal.

Line 35:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And you can find this address range at the URL in the bottom right of the screen.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 36:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now the second type of health checks we have are calculated health checks.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 37:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: And so this is to combine the results of multiple health checks into a single health check.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 38:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: And so if you look at Route 53, with three EC2 instance, we can create three health checks.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 39:
- Concepts: Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: They're all going to be children health check, and they can all monitor each EC2 instance one by one.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 40:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: And then we can define a parent health check, which is going to be defined on all these child health checks.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 41:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And so the conditions to combine all these health checks could be an OR, an AND, or a NOT.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 42:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: You can monitor up to 256 child health checks, and you can specify how many of the health checks need to pass to make the parent pass.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 43:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: So the use case for this, for example, if you want to have a parent health check to perform maintenance on your website without causing all the health checks to fail.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 44:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And so how do we monitor the health of a private resource?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 45:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: So in case you want to monitor something private, it's going to be difficult because while all the Route 53 health checkers live on the public web, they're outside of your VPC, so they cannot access private endpoints.
- Hidden/Implicit Meaning: Constraint or limitation signal; Availability and failover decision-path signal.

Line 46:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So if it's a private VPC or an on-premises resource.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 47:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And so the way we can do it, though, is to create a CloudWatch Metric and assign a CloudWatch Alarm on it.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 48:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then you can assign the CloudWatch Alarm into the health checker.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 49:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So the idea is that we're going to monitor the health of our EC2 instance in a private subnet with a CloudWatch Metric.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 50:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And then if the metric is breached, we're going to create a CloudWatch Alarm on it.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 51:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: And when the alarm goes into the alarm state, then the health checker is going to be automatically unhealthy and therefore will have created exactly what we want, which is a health check on a private resource, which is the most common use case on how to do it.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 52:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 53:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/10_Route 53/112_Route 53 - Health Checks Hands On.txt

Line 1:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's go ahead and create some health checks.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 2:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So on the left hand side, I'm going to go into the health checks, and we're going to create health checks for all our EC2 instances.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 3:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So we're going to check three health checks.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 4:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So the first one is going to be from an instance in US east one, and is going to be an end point.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 5:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And then you'd just specify either an IP address or a domain name.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 6:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So we'll keep it as an IP address.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 7:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And my instance in US east one is right here.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 8:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So we'll paste that in.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 9:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: We have to specify a port, so we'll keep it as 80, because this is the HTTP port.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 10:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And for path, we're just going to be keeping the path as slash because while this is the same as the IP slash, which is the root of our website, if we had a real application, sometimes it is very common to have a path slash health, for example, which responds with the health of the endpoint itself.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 11:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay, so we have this ready, so I'll just remove the slash health.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 12:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then we can look at some advanced configuration.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 13:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: So we can have either have a standard every thirty seconds or a fast every ten seconds health check.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 14:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: We'll keep it as standard because this is otherwise more expensive.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 15:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: How many times does it need to fail before being considered as a failure?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 16:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Do you want to do string matching so do you want to look for a string in the first 5,120 bytes?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 17:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Yes or no?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 18:
- Concepts: Authoritative DNS and Record Modeling, Latency and Geo Routing Strategy
- Services: (none explicit)
- Key Insights: Do we want a latency graph, to see how latency evolves over time?
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 19:
- Concepts: Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: Do we want to invert the health check status.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 20:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Do we want to be healthy and vise-versa.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 21:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Or disable it.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 22:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then do you want to customize the regions of the health checkers?
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 23:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Or do you want to use the recommended and we'll just keep it as is with using recommended?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 24:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So every option is pretty much as default.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 25:
- Concepts: Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: And do we want to be notified whenever this health check fails?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Availability and failover decision-path signal.

Line 26:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Yes or no by creating alarm?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 27:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I will just say no for now.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 28:
- Concepts: Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: So we have created our first health check.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 29:
- Concepts: Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: Now let's create our second health check and it's going to be for AP Southeast one.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 30:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So AP Southeast one, and then IP address right here, not host name.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 31:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then next and create.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 32:
- Concepts: Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: And the last health check is for EU central one.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 33:
- Concepts: Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: So let's create this health check and I will name it EU central one.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 34:
- Concepts: Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: And then here is the IP address and click on next and create health check.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 35:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 36:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So our health checks are created.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 37:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And what I'm going to do is I'm going to go to one of my instances, for example, the one in Singapore and for the security group, I'm going to start blocking the port 80, removing this rule.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 38:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: And the idea is that I want to get a failing health check.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 39:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to go into the security group right here.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 40:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I will do action and end it's the inbound rules, and it will delete my HTTP based rules.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 41:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: And what this will do is that's the one health check for AP Southeast one should give me a unhealthy status.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Availability and failover decision-path signal.

Line 42:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So let me wait a little bit for the health checkers to do their thing, and then we'll get back to you.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 43:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 44:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So as we can see, we have three health checkers, and one of them is unhealthy, obviously because I locked at the security group and the other two healthy because I don't see any security group event.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 45:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So we can have a look at the health checkers and to give you some information around when it was last checked and so on.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 46:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And for the unhealthy one, we can view the error status.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 47:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So if we look at view last failed check, we can see that there was a connection timeout, and maybe the requests are being blocked by my firewall and firewall is your security group.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 48:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So that makes sense.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 49:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So at least it gives us some information and they are working just as expected.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 50:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: And one last thing and you can create is a calculated health check.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 51:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: And this one is going to be a calculated health check, Cal-cu-lated.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 52:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Here we go.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 53:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And this going to check for the status of other health checks.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 54:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And now we can specify which health checks we want to monitor.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 55:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And okay, we're saying maybe you want to report healthy when one of the three health checks are healthy or when 2, or when all of them are healthy.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 56:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this is an AND or one or more health checks are healthy.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 57:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this is, so we can definitely create as complicated rule.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 58:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So I would just keep it as this should be healthy when all of my health checks are healthy and then click on next, next.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Availability and failover decision-path signal.

Line 59:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: And we have created a calculated health check and the last kind of a health check we can create is to monitor the state of a CloudWatch alarm.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 60:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: In which case we need to specify the region the alarm is going to be in, and then this alarm could be monitoring.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 61:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Obviously the state have a private EC2 instance for example.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 62:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Amazon Route 53, Route 53 Health Check
- Key Insights: And this is how we would link the health check, the health of a private resource into a route 53 health check.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 63:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 64:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: But I can't create it right now because I don't have an alarm available for us.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 65:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 66:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 67:
- Concepts: Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: So my calculated health check is now reported unhealthy because well, one of the health checks, I'm trying to monitor is unhealthy, and this is how we define it.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 68:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So that really shows you the power of health checks.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 69:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: And in the next lecture, we'll be using them of course, alongside records in route 53.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 70:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So I hope you liked this lecture and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/10_Route 53/113_Routing Policy - Failover.txt

Line 1:
- Concepts: Availability and Failover Control
- Services: (none explicit)
- Key Insights: Okay, so now let's talk about routing policies and this one is going to be for the failover.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 2:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Amazon Route 53
- Key Insights: So the idea is that we have route 53 in the middle and we have EC2 instances, one is going to be our primary EC2 instance, and the second one is going to be a secondary, or disaster recovery, EC2 instance.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 3:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: In this case, what's going to happen is that we're going to associate our primary record with a health check, and this is mandatory.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 4:
- Concepts: Availability and Failover Control
- Services: Amazon Route 53, Route 53 Health Check
- Key Insights: And if the health check it becomes unhealthy, then route 53 is going to automatically failover to the second EC2 instance, and start sending that result back instead.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 5:
- Concepts: Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: And of course the secondary EC2 can also be associated with the health check as well, if we want it to.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 6:
- Concepts: Availability and Failover Control
- Services: (none explicit)
- Key Insights: But there can only be one primary and one secondary.
- Hidden/Implicit Meaning: Constraint or limitation signal; Availability and failover decision-path signal.

Line 7:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now the client, when it makes DNS requests, will automatically get the resource that is deemed healthy.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 8:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Amazon Route 53
- Key Insights: So if our primary is healthy, then route 53 will answer with a primary record.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 9:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: But if the health check is unhealthy, automatically, we will get the response of the second record, which really helps us do (indistinct) a failover.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 10:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So that's it, let's go in the hands-on to see how we can practice this.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 11:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: (none explicit)
- Key Insights: Okay, so now let's leverage these health checks and create a failover record.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 12:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Traffic Policy
- Key Insights: So in my hosted zone, I'm going to create a record, and this one's going to be called failover.stephanetheteacher.com, and it's the A record, and the first value is going to be for my EU-central-1 instance, so the one close to me, and the routing policy is going to be a failover.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 13:
- Concepts: Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: So the TTL will set it something really low, like 60 seconds.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 14:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: (none explicit)
- Key Insights: And the failover record type has two options.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 15:
- Concepts: Availability and Failover Control
- Services: (none explicit)
- Key Insights: It could be either primary or secondary, just these two.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 16:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: So this is my primary record, and I will associate it with a health check, I have to.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 17:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: So it will associate with my health check named EU-central-1, and the record ID is going to be E.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 18:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: So what this is saying is that this record should be my primary one, but this is going to be associated with a health check, which means that you can failover to a second record.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Availability and failover decision-path signal.

Line 19:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: (none explicit)
- Key Insights: So let's add a new record, and I will keep the record name as failover.stephanetheteacher.com, and the value of which is going to be my instance in US-east-1.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 20:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: Okay, we're still going to have to do a failover, the TTL is 60 seconds, and the failover record type is going to be secondary.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 21:
- Concepts: Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: Now we can optionally associate your health check with it, okay, of US-East-1, but you don't have to.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 22:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And the record ID is going to be US.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 23:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Now let's create this record, and notice it was successfully created.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 24:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And so let's go back into our health checks.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 25:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And currently these two health checks I've associated with my records are healthy.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 26:
- Concepts: Availability and Failover Control
- Services: (none explicit)
- Key Insights: So if I go into the URL, so if I go to failover.stephanetheteacher.com, right now, I get an answer from EU-central-1c, That's perfect.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 27:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: But what I'm going to do is trigger a failure.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 28:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's go into the EU-central-1 region, and I'm going to find my instances, here, and I'm going to find the security group, and I'm going to, again, stop some security group roles.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 29:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's refresh this page.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 30:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: It does exist, that's perfect.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 31:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And for the inbound rule, I'm going to edit it, and it will remove the rule on port A.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 32:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So that will make my instance completely unreachable from the health checkers.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 33:
- Concepts: Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: So what I have to do now is to wait for this health check to become unhealthy, and then we'll be able to test the failover.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 34:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: So let's refresh, and as we can see now, my EU-central-1 health check is deemed unhealthy, and we can look into the monitoring tab and see really when it got a unhealthy, so this is quite cool.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 35:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So the health checker was positive, and then it went to zero, and then we can see how many percentage of the health checkers did report healthy, and again, this went one down to zero.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 36:
- Concepts: Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: So what this means, is that now that this health check is unhealthy because of the way we set up the failover that was linked to this health check.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 37:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Then next time I refresh this, I should not be in Eu-central-1c, I should be in US-east-1.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 38:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's refresh this (indistinct) page, and yes, the answer is that we are in US-east-1.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 39:
- Concepts: Availability and Failover Control
- Services: (none explicit)
- Key Insights: And so the failover did work seamlessly behind the scenes.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 40:
- Concepts: Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: And while to fix it, you just go back into your security group, you would edit the inbound rule, and then you would add back the HTTP rule, and then automatically the health check is going to pass again, and therefore we are going to failover back to our primary location, okay.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 41:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture, I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/10_Route 53/114_Routing Policy - Geolocation.txt

Line 1:
- Concepts: Latency and Geo Routing Strategy
- Services: Traffic Policy
- Key Insights: So now let's talk about the Routing Policy-Geolocation, which is very different from Latency-based.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 2:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, this is based on where the user is actually located.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 3:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So, for example, you can say, if a user comes from a specific continent, or a country, or even more precise, on the U.S. states, and, the most precise location is going to be selected at first, then routed to this IP.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 4:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So, you should create a default record, in case there's going to be no match on location, and the use case for this is going to be for website localization, to restrict content distribution, do load balancing, and so on.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 5:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And these type of records can be associated with health checks.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 6:
- Concepts: Authoritative DNS and Record Modeling, Latency and Geo Routing Strategy
- Services: (none explicit)
- Key Insights: So the idea is that, if we have a map of Europe, with multiple countries, we can define a geolocation record for Germany, to see the German users should go to this IP, which contains my German version of my app.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Routing-policy strategy signal.

Line 7:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And if I go to France, then go to this IP, which contains a French version of my app.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 8:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: But for anywhere else, go to the default IP here, which contains maybe the English version of my app.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 9:
- Concepts: Authoritative DNS and Record Modeling, Latency and Geo Routing Strategy
- Services: (none explicit)
- Key Insights: So, this is how you would use a geolocation.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 10:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now, let's go practice in the console.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 11:
- Concepts: Authoritative DNS and Record Modeling, Latency and Geo Routing Strategy
- Services: (none explicit)
- Key Insights: Okay, so, let's go ahead, and create our first geo record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 12:
- Concepts: Authoritative DNS and Record Modeling, Latency and Geo Routing Strategy
- Services: (none explicit)
- Key Insights: So, I'm going to create a record, and I'm gonna make geo, and, the record type would be A, the value of it is, let's link it first to the ap-southeast-1.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 13:
- Concepts: Latency and Geo Routing Strategy
- Services: Traffic Policy
- Key Insights: And, what we're going to do here is going to say, the routing policy is going to be geolocation.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 14:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And we're saying, okay, all of Asia, so, any user located in Asia, should go to my ap-southeast-1 EC2 instance.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 15:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: We could associate a health check with it if we wanted to, we need to give a record ID, so, here we go.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 16:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now, let's add another two records.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 17:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So what I'm going to do is that, I'm going to say that's, for us-east-1.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 18:
- Concepts: Latency and Geo Routing Strategy
- Services: (none explicit)
- Key Insights: I want to send any user from, and, we can say geolocation yet again.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 19:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And let's say, for example, just a country, so we can say, United States.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 20:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And, we could say lastly, so this is record ID, U.S., and so, as you can see here, I specified a country, and here's specified a whole continent, it doesn't matter.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 21:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And then lastly, we'll add one more record, here's the record name, and the value of which, is going to be eu-central-1.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 22:
- Concepts: Latency and Geo Routing Strategy
- Services: (none explicit)
- Key Insights: And, this one is going to be my defaults, so, I'm going to say, geolocation, and the location is default, that means that anything that doesn't match Asia or United States, is going to go to my default location, and this one is going to be called, Default EU.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 23:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now, it's create these records, and they've been successfully created.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 24:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, what I can do now is that I can test it, right?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 25:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, currently, I am not in the U.S., and I'm not in Asia.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 26:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So, if I open this URL, I will get the eu-central-1 region, so, this is good, that means that this is the default record, that is pure, that is working properly.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 27:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So now, let's change geographic location, and to do so, I'm going to use my VPN, and now let's go to an, a country in Asia, so let's go to India.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 28:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, I'm now connected into India.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 29:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And, when I refresh this page now, what I expect is to get a Hello World, from my ap-southeast-1 instance.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 30:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Oh, as you can see, there's a, a long load, so, I know what's happening, so, this is a timeout, and so, whenever you see a timeout in AWS, usually you have to think about security groups.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 31:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, if I go to my security group, yes, I'm in the right region, so in the Singapore region, and look at the Inbound rules, and edit them.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 32:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: If you remember, I had removed that the HTTP rule to make the health check fail, so, we need to add back that HTTP rule, so, let's add it back, and it's a good edit on your screen.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 33:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, the HTTP rule has been added back, and so now, if I go back into this page, as we can see, now, we get the Hello World from ap-southeast-1b, so, the Asia thing is working.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 34:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Now, if I go to a country in the U.S., if I go to the United States, overall, and, I'm in the U.S., and refresh, I'm going to get Hello World from us-east-1a, so, this is perfect.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 35:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And, if I go to something right next to the U.S., but not in the U.S., for example, if I go to Mexico.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 36:
- Concepts: Authoritative DNS and Record Modeling, Latency and Geo Routing Strategy
- Services: Amazon Route 53
- Key Insights: And refresh, as you can see, I get my eu-central-1c, because this is my default record, and, the Mexico was not specified as a rule in the geolocation Route 53 record.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 37:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay, so this is it, this is working perfectly.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 38:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I hope you like this lecture, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/10_Route 53/115_Routing Policy - Geoproximity.txt

Line 1:
- Concepts: Latency and Geo Routing Strategy
- Services: (none explicit)
- Key Insights: So now, let's talk about another feature which is called Geoproximity Routing.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 2:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And it can be a little bit confusing but I will try to explain with diagrams in the very next slide to make it clear.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 3:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this allows you to route traffic to your resources based on the geographic location of your users and resources.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 4:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So the idea is that with this policy, you're able using a number called the bias to shift more traffic to resources based on specific locations.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 5:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And it will show you this in a diagram in the very next slide.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 6:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So the idea is that to change the size of a geographic location, you need to specify a bias value.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 7:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: If you want more traffic to go to a specific resource, you expand the bias value by increasing it.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 8:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And if you want less traffic to go to your resource, you shrink it, you decrease the bias values to a negative number.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 9:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So the resources can be resources from AWS, in which case you specify the region they're in and automatically a list will compute the correct routing.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 10:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Or if there are none, AWS resources exercise such as your on premises data center.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 11:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Then, you will just need to specify the latitude and longitude, so the AWS knows where they are right now.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 12:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: And then it chooses feature, you need to use the advanced Route 53 Traffic flow to be able to leverage the bias.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 13:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So the diagram should make everything more simple.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 14:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And to me, this is what you should remember.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 15:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So let's take an example of a resource in us-west-1, and one resource in us-east-1.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 16:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And the bias is set to zero in both regions.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 17:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So that means that if you have users all around the US trying to access these resources, there's going to be a line dividing the US is too into two, and users left of that line will go to us-west-1, and user rights of that line will go to us-east-1.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 18:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now, this is simple, this is when there is no bias, okay?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 19:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And this looks like going to the closest resource region based on the user location.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 20:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: But thanks to the bias, we can have the same setup but a different way to have the users routed to different regions.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 21:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's take an example.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 22:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: We have us-west-1 and us-east-1, and the bias is set to zero in us-west-1, but we're going to have a positive bias of 50 in us-east-1.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 23:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And we've seen that the bias make more users and more traffic to that resource.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 24:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Why?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 25:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Well, because of the bias now the quote in quote, dividing line between the first.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 26:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: The two resources is going to be a little bit more to the left because of the higher bias of us-east-1.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 27:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And so that means is that's the user left of that line can go to us-west-1, but the users right or that one will go to us-east-1.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 28:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So what we do this?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 29:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Well, for example, you would set your resources all around the world and say you needed to shift more traffic to a specific region.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 30:
- Concepts: Authoritative DNS and Record Modeling, Latency and Geo Routing Strategy
- Services: Traffic Policy
- Key Insights: What you would do is that you will use a Geoproximity Routing Policy to increase the bias in that specific region.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 31:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And therefore, have more users dragged and more users have traffic attracted to that region.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 32:
- Concepts: Latency and Geo Routing Strategy
- Services: (none explicit)
- Key Insights: So what you to remember going into an exam is that the Geoproximity Routing is really helpful when you need to shift traffic from one region to another, by increasing the bias.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 33:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 34:
- Concepts: Latency and Geo Routing Strategy
- Services: Traffic Policy
- Key Insights: So hopefully the diagrams helped you make more sense of the Geoproximity Routing Policy.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 35:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked this lecture, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/10_Route 53/116_Routing Policy - IP-based.txt

Line 1:
- Concepts: Latency and Geo Routing Strategy
- Services: Traffic Policy
- Key Insights: So now let's talk about another routing policy called the IP-based Routing which is very intuitive to think about because you're going to define the routing based on the client IP addresses.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 2:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53
- Key Insights: In Route 53, you're going to define a list of CIDRs, they are IP ranges for your clients, and you're going to say, based on the CIDR which location the traffic should be sent to.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 3:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So the use cases will be to optimize performance because you know the IP ahead of time or to reduce network costs because you know where the IPs are coming from.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 4:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So an example is that if you know that you have a specific internet provider and they are using a specific CIDR of IP addresses you can route them to a specific endpoint thanks to this strategy.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 5:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's go for an example.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 6:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: In Route 53, I'm going to define two locations with two different CIDR blocks.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 7:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: As you can see, one start with 203 and the other one start with 200 and the defined IP ranges.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 8:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Now we are going to link these locations to a specific record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 9:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So for example.com we're going to have location one.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 10:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So the first CIDR block to send to the value 1.2.3.4, and the second location, the CIDR block number two, to send it to 5.6.7.8.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 11:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And these represents the public IP of two EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 12:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Now, as you would expect, if a user comes in with a specific IP that is part of the location one CIDR block, they will be directed to the first EC2 instance of IP 1.2.3.4, and the user B, with a second IP address that belongs to the location two, will be redirected and will have a DNS query response to the EC2 instance of IP 5.6.7.8.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 13:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And that's it for IP based routing.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 14:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: It's very simple and I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 15:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/10_Route 53/117_Routing Policy - Multi Value.txt

Line 1:
- Concepts: Route53 Operational Context
- Services: Traffic Policy
- Key Insights: Let's talk about the last routing policy, which is Multi-Value, which is going to be used when you want to route traffic to multiple resources.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 2:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: And Route 53 will therefore return multiple values or resources.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 3:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: Now, you can associate them with Health Checks, and so therefore the only resources returned via the Multi-Value policy are going to be the ones that are associated with a healthy Health Check.
- Hidden/Implicit Meaning: Constraint or limitation signal; Availability and failover decision-path signal.

Line 4:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So up to eight healthy records are going to be returned for each Multi-Value query.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 5:
- Concepts: Authoritative DNS and Record Modeling
- Services: Elastic Load Balancing
- Key Insights: And although it looks like an ELB, it's not a substitute for having an ELB.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 6:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: The idea is that it's the client-side load balancing.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 7:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's look at an example.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 8:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: We are going to set up multiple A Records for our example.com, and we associate them with Health Checks.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 9:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So when a Multi-Value query is done by our clients, it's going to receive up to eight records back, and then the clients will choose one of them.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 10:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: But at least by combining this with Health Checks, we know that one of the eight records being returned, or up to eight, are going to be healthy.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 11:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And therefore the client can have very safe queries into them.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 12:
- Concepts: Authoritative DNS and Record Modeling
- Services: Traffic Policy
- Key Insights: This is going to be different, for example, when you have a simple routing with multiple values in it, because as you know, the simple routing policy does not allow for Health Checks, and therefore it's possible that one of the resources returned in the query of a simple routing policy will be unhealthy.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 13:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: This is why Multi-Value are a little bit more powerful as types of records.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 14:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So let's have a look in the UI at how we can test them.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 15:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So let's practice the Multi-Value record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 16:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So let's go and create a multi-record, so a multi dot blah blah blah.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 17:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then the value of it is going to be linked to us-east-1.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 18:
- Concepts: Route53 Operational Context
- Services: Traffic Policy
- Key Insights: So I will add this value here, and then the Routing policy is going to be Multivalue.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 19:
- Concepts: Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: The Health check is going to be us-east-1.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 20:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And the Record is going to be US.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 21:
- Concepts: Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: And TTL is going to be 60 seconds.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 22:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Let's add another Record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 23:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So, multi, and again, we're going to route to a different region, so this one is ap-southeast-1.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 24:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So the answer is Multivalue answer.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 25:
- Concepts: Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: The Health check is ap-southeast-1.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 26:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And the Record ID is going to be Asia.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 27:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: And then the record TTL is one minute.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 28:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And then finally, the last one, so again, one more Record name.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 29:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: The Value is going to be linked to eu-central-1 right here.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 30:
- Concepts: Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: The TTL is one minute.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 31:
- Concepts: Route53 Operational Context
- Services: Traffic Policy
- Key Insights: And the Routing policy is Multivalue answer.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 32:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And for the Health checks, we're going to use the one from eu-central-1.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 33:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And the Record ID is EU.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 34:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay, so let's create these records.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 35:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And the records are successfully created.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 36:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now let's test it out.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 37:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So for this, we're going to use our CloudShell in here.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 38:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's reconnect to CloudShell.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 39:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And what I want to do is to test this record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 40:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So I will copy the record in here, and then I will clear my screen.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 41:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And so if I test a dig on this, then I get three answers.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 42:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So the three IPs are returned, and the reason is, well, the three health checks are fully working.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 43:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So as you can see, they're all healthy.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 44:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: But if I take one of them, for example, I remove the eu-central-1, so I'm gonna make this one unhealthy, and I'm just going to trick it by editing and do an Invert health status.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 45:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this is going to make the healthy unhealthy, and vice versa.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 46:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: It's just a quick way for me to create an unhealthy health check.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 47:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let me pause right now.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 48:
- Concepts: Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: Okay, so now my eu-central-1 health check is Unhealthy.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 49:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And so if I reissue a dig command right here, I should expect to see only two values, yes, as a result.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal.

Line 50:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So the Multivalue answer has worked, and it worked really well.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 51:
- Concepts: Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: So just to revert this, edit this health check, and let's untick this Invert health check status, and we're good to go.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 52:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay, so that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 53:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 54:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/10_Route 53/118_3rd Party Domains & Route 53.txt

Line 1:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So we need to make the distinction between a domain registrar and a DNS service.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 2:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So actually you can buy your domain name with any kind of domain registrar you want, and you're going to pay annual charges.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 3:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: So the way we did it so far in this course was to use the Amazon Registrar, through the Route 53 console, but it's possible for you to use any domain name registrar.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 4:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So for example, you can use GoDaddy, you can just Google Domains, and so on.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 5:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And usually whenever you register a domain with a domain registrar, they will provide you as well with a DNS service to manage your DNS records.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 6:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53
- Key Insights: So when we created a, when registered a DNS name with a host name with Amazon, we had a Route 53 hosted zone to manage our DNS records.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 7:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: But it's possible for you to choose not to use, for example, AWS Route 53 as your DNS records, when you have registered your domain with Amazon Registrar.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 8:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Or vice versa, you can, for example, register your domain with GoDaddy.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 9:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: So you're going to purchase example.com, yet you're going to use Amazon Route 53 to manage your DNS records.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 10:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: It's a perfectly acceptable combination.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 11:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So how do we do this?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 12:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Well, on GoDaddy you're going to register your domain, and then you're going to have the name servers option, and you can specify custom name servers.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 13:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So what do we put in there?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 14:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53
- Key Insights: Well, first we're going to go to Amazon Route 53, and we're going to create a public hosted zone, for any domain we want.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 15:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then in the hosted zone details, we're going to find name servers on the right-hand side.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 16:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So these four name servers are the ones we're are going to have to change on the GoDaddy websites.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 17:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53
- Key Insights: So that's when GoDaddy answers a query, "Hey, which name server should I use?" the name servers are going to be pointing to Amazon Route 53 name servers, and therefore we can use Amazon Route 53 to manage all the EDNS records that are cleaved from that console.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 18:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53
- Key Insights: So to summarize, if you buy your domain on a third-party registrar, you can still use Route 53 as your DNS service provider.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 19:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53
- Key Insights: For this, you will create a public hosted zone in Route 53, and then you will update the NS, or name server's records, on the third-party website, where you bought your domain.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 20:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then you're going to point them to the Routes 53 name servers.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 21:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So, just so you know, a domain registrar looks like, but is different from a DNS service, even though every domain registrar usually comes with some DNS features.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 22:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 23:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 24:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/10_Route 53/119_Route 53 Resolvers & Hybrid DNS.txt

Line 1:
- Concepts: Authoritative DNS and Record Modeling, Hybrid Name Resolution
- Services: Amazon Route 53, Route 53 Resolver
- Key Insights: Okay, so let's have a little talk about the Route 53 Resolver.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 2:
- Concepts: Authoritative DNS and Record Modeling, Hybrid Name Resolution
- Services: Amazon Route 53, Route 53 Resolver
- Key Insights: So the idea is that by default, when you have a Route 53 Resolver, which is the basic thing you create in Route 53 when you start using it, it will answer DNS queries for the local domain names for your EC2 instances for the records in your private hosted zones, as well as for the records in your public name server.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 3:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: So everything you create under Route 53 is going to be answered within your account.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 4:
- Concepts: Authoritative DNS and Record Modeling, Hybrid Name Resolution
- Services: (none explicit)
- Key Insights: But you may want to have a situation where you want a hybrid DNS.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 5:
- Concepts: Hybrid Name Resolution
- Services: Route 53 Resolver
- Key Insights: That means that you want this resolver to resolve as well the DNS of your own network and vice versa.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 6:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So you want to establish connectivity between your AWS Cloud DNS and the DNS of your on-premises network.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 7:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And so how do we do this?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 8:
- Concepts: Authoritative DNS and Record Modeling, Hybrid Name Resolution
- Services: Route 53 Resolver
- Key Insights: For this, we're going to use what's called a Resolver endpoint.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 9:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So this is just a simplified version, but the idea is that we're going to create an inbound endpoint that will allow the DNS resolvers of on-premises resources to resolve domain names of AWS resources.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 10:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 11:
- Concepts: Authoritative DNS and Record Modeling, Hybrid Name Resolution
- Services: Amazon Route 53, Private Hosted Zone, Route 53 Resolver
- Key Insights: Say we have established our own Route 53 Resolver in our cloud and we have an EC2 instance, a private hosted zone, and we have our on-premises data center.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 12:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: A server on it is going to be, first of all, we need to establish of course, connectivity between our data center and AWS using a VPN or a direct connect connection.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 13:
- Concepts: Authoritative DNS and Record Modeling, Hybrid Name Resolution
- Services: Private Hosted Zone, Route 53 Resolver
- Key Insights: And then this server is going to do a DNS query, for example, to look for a domain name that belongs to our private hosted zone, is going to be passed to the closest DNS resolver, so the on-premises resolver, and these resolver are going to be set up to talk to a resolver inbound endpoint, and to pass on this DNS query into our AWS Cloud.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 14:
- Concepts: Hybrid Name Resolution
- Services: Amazon Route 53, Route 53 Resolver
- Key Insights: And this resolver knows how to talk to the Route 53 Resolver.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 15:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this is how you have the full chain of lookups from your on-premises data center to your cloud using an inbound endpoint.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 16:
- Concepts: Hybrid Name Resolution
- Services: Amazon Route 53, Route 53 Resolver
- Key Insights: And of course you can do it the other way with an outbound endpoint in which your Route 53 Resolver will forward DNS queries to your resolver on-premises.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 17:
- Concepts: Authoritative DNS and Record Modeling, Hybrid Name Resolution
- Services: Route 53 Resolver
- Key Insights: So again, if we have a look, we have the two infrastructures that are connected, and then we're going to have a resolver outbound endpoint.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 18:
- Concepts: Authoritative DNS and Record Modeling, Hybrid Name Resolution
- Services: Route 53 Resolver
- Key Insights: And this time whenever you EC2 instance queries for a DNS query that is resolved on-premises, for example, web.onpremise.private, is going to be passed through the resolver outbound endpoint to the DNS resolvers of the on-premises data center, and we'll be good to go.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Hybrid DNS control-plane signal.

Line 19:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So that's it.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 20:
- Concepts: Authoritative DNS and Record Modeling, Hybrid Name Resolution
- Services: Route 53 Resolver
- Key Insights: The idea behind this, I think, a bit complicated lecture is that if you want to connect your on-premises data center and AWS and make sure the DNS queries are resolved both ways, you must use the resolver inbound and outbound endpoint.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Hybrid DNS control-plane signal.

Line 21:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And that's about it.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 22:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: All you should know.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 23:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 24:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/10_Route 53/120_Route 53 - Section Cleanup.txt

Line 1:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: Okay, so let's clean up what we've done in the Route 53 if you wanted to avoid some costs.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 2:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So the domain name you've bought, of course stays in your accounts, and it will cost you $12 a year if you wanted to renew it or more if you've bought a more pricey domain name And the domain name itself, so the hosted zone, if you're not using it, you can delete this hosted zone by first emptying all the records.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 3:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Otherwise it will cost you 50 cents per month to keep this hosting zone alive, okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 4:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Within it, it doesn't matter if you have many records, you can just leave them as is.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 5:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: This is fine.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 6:
- Concepts: Route53 Operational Context
- Services: Elastic Load Balancing
- Key Insights: The other thing we have to delete is all our EC2 instances in our different regions, as well as our ALB.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 7:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So we had EC2 instances in three different regions.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 8:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So what I'm going to do is just delete them one by one.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 9:
- Concepts: Route53 Operational Context
- Services: Elastic Load Balancing
- Key Insights: So there was one from me in Frankfurt, and I believe that the load balancer I had created is also here.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 10:
- Concepts: Route53 Operational Context
- Services: Elastic Load Balancing
- Key Insights: So let me delete this load balancer as well.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 11:
- Concepts: Route53 Operational Context
- Services: Elastic Load Balancing
- Key Insights: And we can also delete the associated target group with that load balancer, okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 12:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: This is good.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 13:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And we have to perform the same kind of cleanup in other regions.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 14:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So for me was us-east-1 where I'm going to go ahead and delete another, terminate another EC2 instance, and finally do the exact same thing in ap-southeast-1.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 15:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 16:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: After this, you should not incur any costs out of this lectures.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 17:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay, so I really hope you liked this section and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/19_Route 53/187_What is a DNS _.txt

Line 1:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53
- Key Insights: Okay, so before we talk about Route 53 we have to talk about what is a DNS?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 2:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So, this is a basic level lecture, but at least it will help you understand how DNS works.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 3:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And this is something you've been using behind the scenes every day but you don't know about it exactly.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 4:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So, let's have a look.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 5:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So, a DNS is a domain name system, and what it will do is that it will translate human friendly hostnames into the target server IP addresses.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 6:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: For example, when you type in your web browser, www.google.com, it will in the end give you back an IP address and this is IP address that your web browser will be able to access behind the scenes and get some data back from Google.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 7:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, the DNS is the backbone of the internet.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 8:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: It is a way for you to understand how to translate these URLs, these hostnames into IPs.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 9:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So, there is a hierarchical naming structure for DNS and the idea is that at the root of www.google.com for example, there is the .com, but then there is example.com which is a bit more precise.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 10:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Then, www.example.com or api.example.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 11:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, all of these are going to be the hierarchy of your domain names.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 12:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Next, we need to define a little bit of terminology regarding your DNS.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 13:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So, there is a domain registrar.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 14:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: This is where you're going to register your domain names and it could be Amazon Route 53, or it could be GoDaddy or any other domain registrar you can find online.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 15:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Then you have DNS Records and they have different types and we'll have a look at them in detail in this section.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 16:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So it could be A, AAAA, CNAME, NS, et cetera, et cetera.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 17:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Don't worry, we'll see those in detail in this section.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 18:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: A zone file which contains all the DNS records.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 19:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, this is how to match these hostnames to IPs or addresses.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 20:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Name servers is servers that will actually resolve the DNS queries.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 21:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And we'll have a look at them as well in this section.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 22:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Top level domains which is .com, .us, .in, .gov, .org, et cetera, et cetera.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 23:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Second level domain which is amazon.com and google.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 24:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So you can see there are two words in between a dot.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 25:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And so if we take a look for example at this FQDN, so fully qualified domain name, we have http://api.www.example.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 26:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 27:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, the last dot the end is called the root and it is the root of all the domain names.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 28:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Then the .com, so .com is your TLD, so that's your top level domain.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 29:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: The example.com is going to be your second level domain.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 30:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Then we have www.example.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 31:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: That's your subdomain. api.www.example.com is your FQDN, your fully qualified domain name.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 32:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: HTTP is going to be your protocol and all these things together is going to be your URL.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 33:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So, now that we know a little bit of terminology, let's have a look at how DNS works.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 34:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So we have a web server, and let's say for example that we have an IP, it's a public IP, could be an EC2 instance, for example.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 35:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And the public IP is 9.10.11.12 and we want to be able to access this using the example.com domain name.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 36:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, we're going to register this example.com domain name on one of our servers for the DNS.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 37:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: But let's see how the computer, your web browser, can access it and can get that response.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 38:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, your web browser is going to want to access example.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 39:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And to do so, it's going to ask its local DNS server. "Hey, do you know what example.com is?" Now, this local DNS server is usually assigned and managed by your company or assigned by your internet service provider dynamically.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 40:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And if the local DNS server has never seen this query before what it's going to do is first ask the root DNS server managed by the I-C-A-N-N, the ICANN organization and is going to say, "Hey, do you know what's example.com?" Which is the first server that's going to be asked.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 41:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And the Root DNS Server is going to say, "I've never seen it, but I know .com." So, .com is NS, so it's an NS Record Name server and go see 1234 this public IP.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 42:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So, this is saying to local DNS, "Hey, I don't have this answer but I'm getting you a little bit closer to your answer because I know the .com domain, and the .com domain name server has this IP, 1234." So the local DNS server saying, "Okay, good.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 43:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Now I'm going to ask the top level domain." So the .com domain server at 1234. "I'm going to ask for the answer of my query." So, this is another domain managed by I-A-N-A, the IANA and the example.com, okay, is going to be asked again to this DNS server.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 44:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, do you know about example.com?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 45:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And the DNS server is gonna say, "Hey, I do know about example.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 46:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I don't have the answer to your query right away.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 47:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: I don't know which record it is, but there is a server called example.com that I know about which is at 5.6.7.8, that's a public IP that you should ask the answer to your question.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 48:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So, local DNS server is then going go to our final server which is the second-level domain DNS server and this is a server that is going to be managed by your domain registrar.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 49:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: So it could be, for example, Amazon Route 53 and so on.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 50:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So the DNS server is gonna say, "Hey, do you know about example.com?" And the DNS server will have an entry for example.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 51:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And so it will say, "Hey, yes, of course I know example.com." And it turns out that example.com, I know that it's an A record and that the result of it is the IP 9.10.11.12.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 52:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, the DNS server now knows the answer by recursively asking DNS servers and finding the most specific one.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 53:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then it says, "Okay, hey, yes.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 54:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I'm going to cache that answer right away because I want to be able to, if someone is asking me again for example.com I want to get it right away, give them the answer." So, it's going to send back the answer into your browser and your web browser now has the answer and using this IP address then is going to be able to access your web server.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 55:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, this is how DNS works.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 56:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, you've been using DNS behind the scenes all along all your life.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 57:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: For example, when you access www.google.com you're using DNS or any website.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 58:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: But now we see how the DNS queries work.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 59:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53
- Key Insights: So, this is just some background knowledge because now we're going to go into Route 53 and learn how to manage a DNS server on our own.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 60:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/19_Route 53/188_Route 53 Overview.txt

Line 1:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53
- Key Insights: So now that we know what is a DNS, let's have a look at Amazon Route 53.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 2:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So this is a highly available, scalable, and fully managed and authoritative DNS.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 3:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: What does authoritative means?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 4:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: That means that the customer you can update the DNS records, so you have full control over this DNS.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 5:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So the idea is that you have your clients and they want to access your EC2 Instance @example.com but right now your EC2 Instance only has a public IP.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 6:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53
- Key Insights: Therefore what's going to happen is that we're going to write some DNS records into Amazon Route 53, into a hosted zone, and when the client is asking for example.com, then the Route 53 service will be able to say, "Hey, you're looking for this IP 54.22.33.44," and then the clients will be able to connect directly into our EC2 Instance.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 7:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53
- Key Insights: So Route 53 is also a domain registrar, so it will be able to register our own domain names there such as example.com, and we'll be doing this in the hands-on to allow us to get started with this service.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 8:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: So we have the ability to check also the health of the resources within Route 53, we'll see this in the section.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 9:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And this is the only service in AWS that will provide 100% availability SLA.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 10:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: Finally, why is it called Route 53?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 11:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Well, 53 is a reference to the traditional DNS port used by DNS services, hence the name.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 12:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53
- Key Insights: So in Route 53 you're going to define a bunch of DNS records and the records define how you want to route traffic to a specific domain.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 13:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So each record is going to contain a lot of information such as the domain or the subdomain names such as example.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 14:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: The record type, and we'll see what types of record we have available to us, for example it could be A or AAAA.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 15:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53, Traffic Policy
- Key Insights: Then the value, so the value of the record, for example, 12.34.56.78 The routing policy, which is how a Route 53 will respond to queries.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 16:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: The TTL, which is the amount of time the record is going to be cached at the DNS resolvers, also called time to live.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 17:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53
- Key Insights: And then we have a lot of different supported DNS report types in Route 53.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 18:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So we have, the ones you must know is A, quadruple A, CNAME, and NS, so we'll have a look at those in the hands-on.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 19:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And the advanced records that you can set, but we don't need to know from an exam perspective, are all the ones I just wrote right here.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 20:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So let's learn about the important record types we need to know from an exam perspective.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 21:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So the A record is very simple, it's to map a host name into an IPv4 IP.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 22:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this is when you have, for example, example.com that will be directed into 1.2.3.4.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 23:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay, great.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 24:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Then we have quadruple A.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 25:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So this is the same idea as A, but this time we're going to match our host name into an IPv6 address.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 26:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Then we have a CNAME, which is used to map a host name into another host name.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 27:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And then the target host name of course may be an A or a quadruple A record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 28:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53
- Key Insights: You can not create CNAMES in Route 53 for the top nodes of a DNS namespace or the Zone Apex, and we'll see this in a future lecture as well to understand how that works.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 29:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: For example, you can not create a CNAME for example.com, but you can create a CNAME record for www.example.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 30:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So we'll see how we can deal with this in a future lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 31:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then finally, NS is for name servers of the hosted zone.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 32:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: They are the DNS names or IP addresses of the servers that can respond to the DNS queries for your hosted zone, and this will control how traffic is routed to a domain.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 33:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So let's have a look at what are hosted zones.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 34:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So hosted zones are a container of records, and they will define how to route traffic to a domain and its subdomain.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 35:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So we have two types of hosted zone, we have the public of zones and the private hosted zones.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 36:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So whenever you buy a public domain name, for example mypublicdomain.com, this is a public domain name and therefore we can create a public hosted zone and these public zone can answer the query, "Hey, what's is the IP, underlying IP of the domain name application1.mypublicdomainname.com?" But we also have private hosted zones.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 37:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And these are for domain names that you, they are not publicly available, they're privates, and only you within your own virtual private cloud or VPC can resolve this URL.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 38:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: For example, application1.company.internal.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 39:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: You may have seen this if you're working for a private company, they sometimes have URLs that you can only access from within your corporate network, that's because this is a private URL, this is a private and behind the scenes there is a private DNS record.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 40:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: So for any hosted zones you're going to create an AWS you're going to pay 50 cents per month, so this is not free to use Route 53.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 41:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And if you are to register a domain name, just like I will in the hands-on, this will cost you a minimum of a $12 per year.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 42:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So just so you know, this section is not free.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 43:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So public versus private hosted zones, just to understand.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 44:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So public hosted zone can be answered, can answer queries from public clients.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 45:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So when you web browser, for example, and say, "Hey, give me example.com," and then it returns an IP.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 46:
- Concepts: Route53 Operational Context
- Services: Private Hosted Zone
- Key Insights: And on the other end we have the private hosted zone.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 47:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this is from within your VPC they live.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 48:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And so they allow you to identify private resources with private domain names.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 49:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So for example, we have one EC2 Instance that we want to identify with webapp.example.internal, we have another EC2 Instance that we want to identify with api.example.internal, and then we have a database we want to identify with database.example.internal.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 50:
- Concepts: Authoritative DNS and Record Modeling
- Services: Private Hosted Zone
- Key Insights: In which case we're going to register a private hosted zone, and then in case the first EC2 Instance is requesting for api.example.internal, then the private hosted zone has an answer for it, which is the private IP 10.0.0.10.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 51:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Then the EC2 Instance will connect to the second EC2 Instance, which may need to connect to database.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 52:
- Concepts: Route53 Operational Context
- Services: Private Hosted Zone
- Key Insights: So it will say, "Hey, what's database.example.internal?" And the private hosted zone will say, "Well, this is this private IP." And then the EC2 Instance can connect directly into the database.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 53:
- Concepts: Authoritative DNS and Record Modeling
- Services: Private Hosted Zone
- Key Insights: So the public hosted zone and the private hosted zone work the exact same way, but just the public hosted zone allows anyone from the internet to query your records, so this is for your public records, whereas a private hosted zone is only queried from within your private resources, for example your VPC.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 54:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So that's it for the theory, now let's go into the next lecture to register a domain and then create some records.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 55:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/19_Route 53/189_Route 53 - Registering a domain.txt

Line 1:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: Okay, so we are in Route 53 and we're going to be registering domains.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 2:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So as you can see, I have one hosted zone and one domain.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 3:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: You should have none right now.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 4:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: It's just because I've been using my accounts before.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 5:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: But let's go and register a domain.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 6:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So on the left hand side, click on register domains and you have a new console experience.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 7:
- Concepts: Hybrid Name Resolution
- Services: (none explicit)
- Key Insights: If you don't have it, you can click on somewhere to use the new console and I will use this because this is what's going to happen moving forward.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 8:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So here we have a domain name.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 9:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: This is stephanetheteacher.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 10:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: It's something I have registered a while ago and you will have nothing.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 11:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So what we need to do to get started with Group 53 is to actually register our own domain.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 12:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So this is going to cost you money and if you don't want to pay say $12 a year to have a domain name, just don't do this and watch this section entirely.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 13:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to follow the step you would follow.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 14:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So register domain, and here you just enter a domain name.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 15:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So something that no one else has chosen before whatever you want.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 16:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 17:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: The idea is that you choose a domain name.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 18:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So hopefully no one has registered domain name.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 19:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay, perfect.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 20:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So I can buy this one for US $13 a year.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 21:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So I will select it and it's in my basket.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 22:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to proceed to checkout.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 23:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So here is my domain name.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 24:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I can choose Duration, for example, one year and I can autorenew or not autorenew.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 25:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So if you intend on keeping a domain, please leave autorenew on.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 26:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: If you don't want it at the end of the year, click it so that it's off.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 27:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: But of course, if you use the domain, it's much better to keep autorenew on.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 28:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Otherwise someone will be able to buy the domain when you lose it.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 29:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And this is not good, so up to you to keep it on or off.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 30:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: But if you just intended to have it for the course, then leave it off.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 31:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay, click on Next.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 32:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Then we have contact information.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 33:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this is the information that you have part of the account that has been pre-populated.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 34:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And so you can enter your own information if you wanted to.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 35:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And so the admin contact and the tech contact can be the same as the registrant contact.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 36:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And finally, you should enable privacy protection so that you don't receive spam.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 37:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And so that the real contact information, your own personal address, phone number, et cetera is hidden from the internet.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 38:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: You click on Next and then you have the review page.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 39:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So make sure everything is correct and you check the terms and condition.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 40:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And if you submit, just so you know, you will pay these $13.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 41:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So please don't do this if you don't want to pay that amount of money.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 42:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Then your domain is going to be registered after a little bit of time.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 43:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: It can take a few minutes or a few hours but you'll be good to go.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 44:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And to confirm everything, just go on the left hand side to hosted zones and then you click on stefanetheteacher.com or whatever domain name you have registered.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 45:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And you will have a few records and you should have two records.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 46:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I have four because I've been using this before.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 47:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: But you should have the NS record and the SOA record.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 48:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And the NS record is simply saying that you should use the AWS DNS to insert DNS queries.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 49:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: And this is Route 53.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 50:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So what this means that now that we have a hosted zone, anytime we will insert DNS records such as this one or that one and I will teach you in the next lecture is how to do it.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 51:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: Then the source of truth for these DNS records will be Route 53 itself.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 52:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So what we're configuring in here, so that's perfect.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 53:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: We're good to go.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 54:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: We have a domain name and we can get started with the hands-on.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 55:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/19_Route 53/190_Route 53 - Creating our first records.txt

Line 1:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: So now let's go ahead and create our first records in Route 53.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 2:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to go into my hosted zone, and in there I'm going to create some simple records.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 3:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So let's have a look.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 4:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: We're going to create a record by clicking on here.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 5:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And in here, I can just have a record name.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 6:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So we want it to be test.stephanetheteacher.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 7:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: But you can enter anything you want here.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 8:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: This is how you would create your domain names.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 9:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Now you have to specify the record type.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 10:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So you can see there's a lot of record types in here, but for now we'll keep it simple.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 11:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: We'll keep it as an A record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 12:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And which is to route an IPv4 address into a domain name, to an IPv4 address.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 13:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So the answer is going to be value is 1, 1, dot, 2, 2, dot, 3, 3, dot, four four.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 14:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Which is just a value we want to have, and this is not a domain, an IP we own right now, but just to show you just a random value.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 15:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Later on, we'll be routing to a real institute instance.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 16:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 17:
- Concepts: Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: TTL is time to live.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 18:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: We'll leave it as 300 seconds right now.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 19:
- Concepts: Authoritative DNS and Record Modeling
- Services: Traffic Policy
- Key Insights: And the routing policy will routing policy will have a look at it later on as well.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 20:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: We'll leave everything as simple routing.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 21:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 22:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So let's go ahead and create this record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 23:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And now my record has been successfully created.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 24:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So the idea is that if I go to test.stephanetheteacher.com, it is going to ask my host zone.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 25:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: What is the value of that?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 26:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And those isn't going to say, well, the value of it is 1, 1, dot, 2, 2, dot, 3, 3, dot, 4, 4.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 27:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So if you try it to do it with a web browser, so if you take your browser and you open it and you press enter, and it's not going to show you many things, because right now we don't have 11.22.33.44, there's probably no server that exists with that IP as well.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 28:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And if I try to just access this URL, it doesn't work.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 29:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 30:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So what we know is what is going on behind the scenes.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 31:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And so for this, we're going to type some command lines.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 32:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now you can be using your command line on your windows laptop, or your Mac, but because I want everyone to follow the same way as me, I'm going to show you how to do it using the CloudTrail environments in AWS.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 33:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So let me open the management console, and then I'm going to click here to open cloud shell and cloud shell is going to allow me to do some commands using a standard Linux command line interface.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 34:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 35:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: But this is fine, if you want to just do it with your own terminal on windows or on Mac.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 36:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 37:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So my terminal is not ready.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 38:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And if you're on windows, the NS lookup command is going to work.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 39:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: If you're on Mac, the dig command is going to work as well.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 40:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: But as you can see, these commands are not found on my cloud shell.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 41:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So I need you to install them.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 42:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So I do sudo yum, and then install minus Y and then bind minus utils.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 43:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And it's going to install both VNS lookup and the dig commands on my cloud shell.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 44:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So lets clear the screen.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 45:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And now let's try to do NS lookup, test.stephanietheteacher.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 46:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And as you can see, I get an answer, which is at test.stephanietheteacher.com, is going to 11.22.33.44, which is corresponding to what is happening right here, which is cool.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 47:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And I presented like the dig command a little bit more because I'm more familiar with it, but if you type dig and then the URL that you have, okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 48:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And press enter, you're going to see that and have the wrong commands.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 49:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So stefantheteacher.com, so let's clear this screen and then retype the comments.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 50:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 51:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Well here, we're going to see is that we have the answer section and says, test.stephanetheteacher.com is an a record, and this is the value of the record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 52:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: So I like it better, better, because it shows you the TTL, as we'll see later on, and also shows you the a record, the fact that isn't a record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 53:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 54:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53
- Key Insights: So we have created our first route 53 record, and we have been able to query it using a terminal, which is cool.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 55:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Obviously loading it from a webpage doesn't work right now, but we'll see how we can do it later on when we have a real server.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 56:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So I hope you liked this lecture and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/19_Route 53/191_Route 53 - EC2 Setup.txt

Line 1:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's get started.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 2:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53, Elastic Load Balancing
- Key Insights: And before we use Route 53, I want to go ahead and create three EC2 instances in different regions, as well as one ALB.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 3:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So in one of these regions I'm going to go into instances and then launch an instance.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 4:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And very simply, I will choose Amazon Linux2 on this architecture, a T2 micro type of instance.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 5:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: I don't need a key pair, because I will use, if I need to, I will use EC2 instance connect.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 6:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And then for network settings, I'm going to create a security group.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 7:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I will allow SSH as well as HTTP from anywhere.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 8:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Then I will just, in advanced details, specify a bootstrap user data script.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 9:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: So, to do so, just go into your Route 53 user script and you copy this entire script.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 10:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And you paste it here.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 11:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So what's going to do is it's going to say hello world from the instance, just as before.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 12:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: But now we're going to add the AZ the instance was launched in, using this environment verbal called EC2, availability, zone that I created from before.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 13:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So it's going to give us a little bit more info about EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 14:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to go ahead and launch this instance.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 15:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this has been launched and it is right here.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 16:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's good.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 17:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Next I'm going to go into another region.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 18:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: For example, Northern Virginia, so US East one.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 19:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then I will launch an instance.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 20:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And same settings.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 21:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So again, no key pair required.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 22:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So proceed without a key pair.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 23:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I will allow HTTP as well.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 24:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And for advanced details, I will provide the exact same EC2 user data script.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 25:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Then we click on launch instance and we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 26:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And finally I'm going to go into one last region, for example Singapore.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 27:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And in Singapore I'm going to launch an instance.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 28:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then we'll leave it as t2 micro, we will choose no key pair.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 29:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: We'll allow HTTP from anywhere.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 30:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then, under advanced details, I'm going to paste in the data and launch this instance.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 31:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay, so we have three instances now being started in three different regions.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 32:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So we have one in Frankfurt, one in Northern Virginia, and one in Singapore.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 33:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this is good.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 34:
- Concepts: Authoritative DNS and Record Modeling
- Services: Elastic Load Balancing
- Key Insights: Lastly, what I'm going to do is that I'm going to launch a load balancer in Frankfurt, for example.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 35:
- Concepts: Authoritative DNS and Record Modeling
- Services: Elastic Load Balancing
- Key Insights: So here I'm going to create a load balancer and choose an application load balancer.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 36:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Create.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 37:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then the unique name will be DemoRoute53ALB.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 38:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: This is fine, it's going to be internet facing, on IPv4.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 39:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I will choose for mapping, one, two, and three subnets.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 40:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And for security group I can choose up to five.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 41:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to choose the one that I've created just from before, which was the launch user two, which had AWS and HTTP enabled.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 42:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: This way we're sure that HTTP is enabled.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 43:
- Concepts: Authoritative DNS and Record Modeling, Hybrid Name Resolution
- Services: (none explicit)
- Key Insights: And the protocol is on 80, you're going to forward to a new target group, that we're going to have to create, based on instances.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 44:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: And I'll call it this one demo tg route 53.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 45:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And, what I want to do is next and register my one instance right now that I just created from before.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 46:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So you do include as pending below.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 47:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Then on the review targets, you have one target.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 48:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then create the target group.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 49:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So the target group is not created.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 50:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So back into model balancers.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 51:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: I can refresh this and select the demo tg group route 53.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 52:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And everything looks good.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 53:
- Concepts: Route53 Operational Context
- Services: Elastic Load Balancing
- Key Insights: Let's create our load balancer, and then click on view the balancer.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 54:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And here we go.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 55:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So now to summarize, let's see if everything has been working properly.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 56:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, we have one EC2 instance right here.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 57:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And let's take the public IP, so I'll just copy the IP itself, make sure using the IP via http.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 58:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And it says hello world from blah, blah, blah.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 59:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So this is good, so what I'm going to do is that I'm going to, under a text file, just to have a mark of a trace of everything, I'm going to put the IP address as well as the region I'm in.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 60:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So EU central one.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 61:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: As you can see, it says hello from AZ EU central one B.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 62:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay, so this instance is working.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 63:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I'm just testing whereas everything's working.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 64:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So I'm going to also take this public IP right here, paste it in, and it says yes hello from US East one A.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 65:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this is perfect, so this is US East one.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 66:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And the last instance right now it's here.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 67:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then I'm going to copy this IPv4 address, paste it in, and it says hello from AP Southeast one b.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 68:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this one's working as well.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 69:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's go here, AP southeast one.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 70:
- Concepts: Route53 Operational Context
- Services: Elastic Load Balancing
- Key Insights: And finally, if I go under my ALB and take the DNS name right here, let's see if it has been provisioned.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 71:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's refresh this.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 72:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So it is provisioned as we can tell.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 73:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So this can take a bit of time.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 74:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So for you, it may not work, for me it worked.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 75:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And so because it is pointing to one EC2 instance, it's a hello world from AZ EU Central one B.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 76:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So now we have properly set up all our instances, as well our GNS.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 77:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 78:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And keep this information handy, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/19_Route 53/192_Route 53 - TTL.txt

Line 1:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Okay, so let's have a look at TTLs.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 2:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: So a record TTL is a Time To Live.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 3:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53
- Key Insights: And let's take this example where a client is accessing our DNS Route 53 and a web server.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 4:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So we do a DNS request for myapp.example.com, and we get an answer from the DNS, which is saying, hey, please, this is an A record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 5:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: Here is the IP, and there is a TTL, maybe a TTL of 300 seconds.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 6:
- Concepts: Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: So TTL is saying, hey clients, please cache this result for the duration of the TTL.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 7:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So for 300 seconds, the client is going to cache the results.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 8:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: That means that if the client is requesting again or accessing the same host name, what's going to happen is that the client will not issue a query to the DNS system, because it already knows the answer, because the answer has been cached, and we're still within the cache period, so the cache TTL.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 9:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: The idea behind this is that we don't want to query the DNS too often, because we don't expect records to change a lot, and so, therefore, using the response it has, the client can access our web server and do HTTP request and responses.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 10:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So we have, you know, two extreme cases.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 11:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: Amazon Route 53
- Key Insights: For example, if you set a high TTL of, say, 24 hours, then this is going to do a lot less traffic on Route 53, because less clients are doing requests, because the result are cached for 24 hours, and, possibly, while the client will have outdated records.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 12:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: If somehow you want to change the record, you will need to wait 24 hours to make sure that all your clients will have the new records in their cache.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 13:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: Amazon Route 53
- Key Insights: If you said set a low TTL, for example, 60 seconds, at the opposite, then it's going to do a lot more traffic on your DNS, so a lot more dollar you're going to spend, because you get price per how many request do reach Route 53.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 14:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: But the records will be outdated for less time, so it's quicker for you to do a record change, and it's easier to change records overall.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 15:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: So it's up to you, really, to see what a good TTL or low TTL is.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 16:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: If you plan on changing a record, the idea is that sometimes you will decrease the TTL for, say, 24 hours, and then when you know that all the clients have a new TTL that is low, then you change the record value which gets updated for everyone, and then you increase the TTL.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 17:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: This is a strategy.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 18:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: So the TTL is mandatory for every record except the Alias record that we'll see in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 19:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: So let's have a look how TTL works in the console.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 20:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So let's have a look at how Time To Live works.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 21:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So let's create a new record, and this one is going to be called demo.stephanetheteacher.com, and the value of it is going to be one of the EC2 instances we know.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 22:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's take the one in eu-central-1.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 23:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So I'm gonna take this EC2 instance and paste the value of it.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 24:
- Concepts: Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: And then for the TTL, we're going to set two minutes.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 25:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So to do so I'm going to click twice on this minute button.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 26:
- Concepts: Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: So the TTL is now 120 seconds.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 27:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So let me create this record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 28:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And now my record has been created.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 29:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So it is an A record pointing to a specific IP at demo.stephanetheteacher.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 30:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Now, I want to show you that the record is working, but Firefox is not very nice with me.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 31:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So if I try to open this in Firefox it's going to give me a problem.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 32:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this is not something I can fix easily, so I'm going to use Google Chrome on the right-hand side to show you this.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 33:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So if I do demo.stephanetheteacher.com on Google, then automatically it should direct me to, yes, my eu-central-1 instance.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 34:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So that means that this record, this A record, is fully functioning.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 35:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And I can also make sure of that, for example, if I'm using CloudShell.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 36:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So if I clear this and do an nslookup on demo.stephanetheteacher.com, as you can see, the address is correct.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 37:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And if I do a dig command on this, then we get an answer.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 38:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And there's a cool number that we're showing here, so the answer section, there's 115.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 39:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So the idea here, that's because I did do a DNS query.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 40:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Then the record get cached for 120 seconds.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 41:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And if I retype again this dig command right here, as you can see the number got down to 98.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 42:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So that means that for 98 seconds, actually, I will get the same response, because, no matter what, this is what's cached on my computer.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 43:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So if I'm very quick and I go to this record right here and I edit it, so instead of this IP, I want to go to ap-southeast-1, so we'll use the first IP in my list and save this.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 44:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So even though this record was being updated, okay, if I go into CloudShell and, again, do this dig command, as you can see, the insert is still the same as before.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 45:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: That's because for 66 more seconds this is going to be cached.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 46:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And if I go to Chrome, I think I was fast enough, I go to Chrome and refresh this page, as you can see, I still have the answer from eu-central-1.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 47:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And this is because, again, my record got cached for two minutes.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 48:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53
- Key Insights: So when the cache is expiring, then only then my command line interface or my Chrome web browser will ask again Route 53 for the value of this record.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 49:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then, again, will I get the answer and will be redirected to this new IP.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 50:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So the best way to check it is just to wait.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 51:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to wait maybe one more minute and then get back to you.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 52:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Okay, so it's been a minute and now if I refresh my web browser, as you can see now, I get a different Hello World and this time it's from ap-southeast-1b.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 53:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: And if I go into my CloudShell and do the same dig command, then, as you can see, there's a new TTL, so 120 seconds, and there is a new IP right here which is the IPO menu server.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 54:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: So this was a cool demo of the TTL.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 55:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/19_Route 53/193_Route 53 CNAME vs Alias.txt

Line 1:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So now let's have a look at the differences between CNAME and Aliases.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 2:
- Concepts: Authoritative DNS and Record Modeling
- Services: CloudFront, Elastic Load Balancing
- Key Insights: So when you have an AWS Resource, for example, a Load Balancer or CloudFront, it will expose a hostname.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 3:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And what you want is to maybe map that hostname to a domain you own.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 4:
- Concepts: Route53 Operational Context
- Services: Elastic Load Balancing
- Key Insights: For example, you want to map this Load Balancer into myapp.mydomain.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 5:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So we have two options.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 6:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: The first one is to use a CNAME record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 7:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So we've seen A records, but now let's look at CNAME records.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 8:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So CNAME allows you to point a hostname to any other hostname.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 9:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: For example, you can say app.mydomain.com is pointing to blabla.anything.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 10:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And this only works if you have a non root domain name, so if you have something.mydomain.com.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 11:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: It does not work for just mydomain.com, as we'll see in the hands-on.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 12:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53
- Key Insights: On the other hand, you have alias records, and these are specific to Route 53, but they allow you to point a hostname to a specific AWS Resource.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 13:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So app.mydomain.com is pointing to blabla.amazonaws.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 14:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And these resources we'll see in a second where they are.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 15:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: But these alias records work for both root domains and non root domains.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 16:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So you can have mydomain.com pointing to, as an alias, to an alias resource which is very, very good.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 17:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this is something that the exam may test you on, and we'll see this in the hands-on.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 18:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: So on top of it, alias is very good because they're free of charge, and they have a native health check capability within them.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 19:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Okay, so if we look at these alias records in details, they are only mapped to resources in AWS.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 20:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: So you would say, "Okay, here is Route 53.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 21:
- Concepts: Authoritative DNS and Record Modeling
- Services: Elastic Load Balancing
- Key Insights: I want to have example.com as an alias record of type A, and the value is the DNS name of the load balancer you have.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 22:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now, this is an extension to DNS functionalities.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 23:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: That's something that's across all DNS that exist out there.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 24:
- Concepts: Authoritative DNS and Record Modeling
- Services: Elastic Load Balancing
- Key Insights: And in case the underlying ALB have IP changes, then automatically the alias record will recognize them.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 25:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So it said unlike CNAME, alias records can be used for top, for the top node of the DNS namespace called the Zone Apex, so you can use a alias record for example.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 26:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Now, the alias record is always of type A or AAAA which is for resources, so either IPv4 or IPv6.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 27:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: When you have an alias record, you cannot set the TTL.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 28:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: It is set automatically by Route 53.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 29:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So what are the targets for alias records?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 30:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Well, it could be Elastic Load Balancers.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 31:
- Concepts: Route53 Operational Context
- Services: CloudFront
- Key Insights: It could be CloudFront Distributions.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 32:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And some of these you'll see, you'll have seen in this course, some of these you will not have seen in this course, but this is fine.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 33:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: It's just for you to get an idea of what they can be.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 34:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53, CloudFront
- Key Insights: So ELBs, CloudFront Distributions, API Gateway, Elastic Beanstalk environments, S3 Websites, so not S3 Buckets but S3 Websites when these buckets are enabled as websites, VPC Interface Endpoints, Global Accelerator accelerator, and Route 53 records in the same hosted zone.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 35:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: One thing that is not there is that you cannot set an alias for an EC2 DNS name.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 36:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: This is something you need to remember.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 37:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So EC2 DNS names are not something you can have a target, that can be the target of an alias record, okay?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 38:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Just, and also to let you to know.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 39:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So now let's have a look in the console to see how CNAMEs and alias records work.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 40:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So let's go ahead and create a record, and this one will be of type CNAME.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 41:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So I will call this one myapp.stephanetheteacher.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 42:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And the record type now is not A, it's not AAAA.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 43:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: It's CNAME.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 44:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And then the value must be a domain name.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 45:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And very easy, I already have a domain name available.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 46:
- Concepts: Route53 Operational Context
- Services: Elastic Load Balancing
- Key Insights: That's my ALB.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 47:
- Concepts: Route53 Operational Context
- Services: Elastic Load Balancing
- Key Insights: So what I'm going to do is I'm going to copy those name of my ALB and paste it in here.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 48:
- Concepts: Route53 Operational Context
- Services: Elastic Load Balancing
- Key Insights: The idea is that now instead of accessing my ALB through this URL, I want to be access the ALB through myapp.stephanetheteacher.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 49:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Okay, so I will just create this record, and now myapp.stephanetheteacher.com has been created.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 50:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And so if I go into my Chrome web browser on the right-hand side and open this URL, now you see that the answer is Hello World from my IP blah, blah, blah in AZ eu-central-1c.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 51:
- Concepts: Route53 Operational Context
- Services: Elastic Load Balancing
- Key Insights: So this domain name is in fact covered by the ALB, and the ALB is directing the traffic into one EC2 instance, and so therefore I receive back this Hello World.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 52:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this is good, but this is not AWS native, okay?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 53:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: This is something that will work for many domain names, but we can do something better.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 54:
- Concepts: Authoritative DNS and Record Modeling
- Services: Elastic Load Balancing
- Key Insights: Because we are redirecting into an ALB, what we can do is create an alias record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 55:
- Concepts: Authoritative DNS and Record Modeling
- Services: Elastic Load Balancing
- Key Insights: So I can create a record, and this time it's going to be myalias.stephanetheteacher.com, and the record type is A because my ALB is currently having only IPv4 traffic.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 56:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And the value of it, so we have to say, we have to take the alias right here, and we're going to route traffic to, and then we have a list of options, okay?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 57:
- Concepts: Authoritative DNS and Record Modeling
- Services: Elastic Load Balancing
- Key Insights: So we can see a lot of different options, but right now it's going to be an Alias to an Application and Classic Load Balancer.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 58:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: We need to choose a region, so it is in eu-central-1 for me.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 59:
- Concepts: Route53 Operational Context
- Services: Elastic Load Balancing
- Key Insights: And then we need to choose the load balancer, so I will choose this load balancer right here.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 60:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Then automatically we can evaluate the target health as well with a Yes because this is an alias record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 61:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So we'll click on Create this record, and now I have a new record right here called myalias.stephanetheteacher.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 62:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And the cool thing is that this record is free to query, okay?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 63:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So I'm not going to pay any money because this is an alias record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 64:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So if I click on myalias.stephanetheteacher.com, it's going to perform a few DNS queries, and now, again, I get the same response.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 65:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay, nothing has changed, but it is working.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 66:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay, so that's perfect.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 67:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: But now what if you consider the domain apex, so if you want to have just stephanetheteacher.com to redirect to this page?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 68:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So what we're going to do is create a record, and let's go ahead.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 69:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So we're going to just have nothing in here, okay?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 70:
- Concepts: Authoritative DNS and Record Modeling
- Services: Elastic Load Balancing
- Key Insights: And we're going to have a CNAME record pointing to the domain name of my ALB which is copied from here and pasted in here.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 71:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Okay, so we want to say, "Hey, stephanetheteacher.com is going to be a CNAME for this value." Now, this is not going to work.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 72:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Let's try it.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 73:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: It's saying, "Hey, bad request.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 74:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: The CNAME is not permitted at apex of this zone." So this zone is stephanetheteacher.com, and the apex of the zone is stephanetheteacher.com, and therefore we cannot set up a CNAME at the apex.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 75:
- Concepts: Authoritative DNS and Record Modeling
- Services: Elastic Load Balancing
- Key Insights: So the only way we can deal with this issue is instead to create an alias and the record is going to be of type A, and the alias is going to point again to an ALB or CLB in the eu-central-1 region, and the load balancer is going to be the one from before.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 76:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Now, this is going to be accepted because this is an alias record, and this is what the exam may test you on, okay?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 77:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And so now we can see that stephanetheteacher.com is accessible.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 78:
- Concepts: Authoritative DNS and Record Modeling
- Services: Elastic Load Balancing
- Key Insights: And so if I go back into my web browser in here, open a new tab and enter stephanetheteacher.com and press Enter, here I get back the Hello World from my load balancer, so everything is working great, so that's it.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 79:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: We've shown how CNAMEs and alias records work in AWS.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 80:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/19_Route 53/194_Routing Policy - Simple.txt

Line 1:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: So now let's talk about routing policies for Route 53.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 2:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53, Traffic Policy
- Key Insights: So a routing policy is helping Route 53 respond to DNS queries, and we shouldn't be confused about the word routing.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 3:
- Concepts: Authoritative DNS and Record Modeling
- Services: Elastic Load Balancing
- Key Insights: This is not like when you have a load balancer and the actual load balancer will route traffic to the backend EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 4:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: No, no, no.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 5:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: This routing is from a DNS perspective.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 6:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So the DNS does not respond, does not route any traffic.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 7:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So the traffic doesn't go through the DNS.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 8:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: The DNS only will respond to the DNS queries and then the clients will know to which way they should be doing these HTTP queries, for example.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal.

Line 9:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So the DNS just helps translate host names into actual endpoints that the clients can use.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 10:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53, Traffic Policy
- Key Insights: So Route 53 will support the following routing policy.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 11:
- Concepts: Availability and Failover Control, Latency and Geo Routing Strategy, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: There's simple, weighted, failover, latency based, geolocation, multi-value answer, and geoproximity.
- Hidden/Implicit Meaning: Availability and failover decision-path signal; Routing-policy strategy signal.

Line 12:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And we're going to have a look at all of them in this section.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 13:
- Concepts: Route53 Operational Context
- Services: Traffic Policy
- Key Insights: So the first one is going to be the simple routing policy.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 14:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And the idea is that with this, that we've actually been using before, we're going to route traffic to a single resource typically.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 15:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So here's an example.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 16:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: The clients that will say, hey, I want to go to foo.example.com, and Routes 53 will say, hey, go to this IP address.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 17:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And this is an A record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 18:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So it is possible for us to specify multiple values in the same record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 19:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And if so, if multiple values are returned by the DNS, then a random one will be chosen by the clients or client side.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 20:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53
- Key Insights: So in this example, we have the client's asking again for foo.example.com, and Amazon Route 53 will just reply with three IP addresses that occur embedded into the A record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 21:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then the clients will pick one of them randomly and apply it for the routing.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 22:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So if you have enabled an alias record alongside the simple policy, then you can only specify on AWS resource as a target.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 23:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And finally, it's called simple because it's very simple.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 24:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And therefore you can not associate this with health checks and we'll see health checks later on in this section and how they work.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 25:
- Concepts: Authoritative DNS and Record Modeling
- Services: Traffic Policy
- Key Insights: So let's go in the console to see how a routing policy of step simple can be created.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 26:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So let's create a record, and the record name is going to be simple.stephanetheteacher.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 27:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: It's an A record, and the value of which is going to be, for example, my instance in ap-southeast-1.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 28:
- Concepts: Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: Now for TTL, it will say something very low, like 20 seconds.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 29:
- Concepts: Route53 Operational Context
- Services: Traffic Policy
- Key Insights: And the routing policy is going to be here.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 30:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So as you can see, we have different possibilities, six of them, and then one other that is somewhere else in the UI.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 31:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: So we have a TTL 20 seconds as simple writing policy, and let's just create this record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 32:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So we've been doing this before.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 33:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: We know how this works.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 34:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So now if we go to simple.stephanetheteacher.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 35:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And go to this URL, we get Hello World from my instance in ap-southeast-1b, which is awesome.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 36:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And if we do a dig command and have a look, so we need to reinstall dig.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 37:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So sudo yum install bind-utils.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 38:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this is because I restarted my machine here.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 39:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay, we're going to redo the dig command.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 40:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So we do the dig command on this.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 41:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: As we can see, we have an A record of a TTL of 20 seconds pointing to this IP.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 42:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: But we can change this record now.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 43:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: We're going to edit the record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 44:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So I will just simply click on it and edit the record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 45:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And for the value, now, I can enter multiple IPs.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 46:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So I can insert my one in ap-southeast-1 or one in us-east-1, for example.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 47:
- Concepts: Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: So when I do so and save this, what's going to happen is that once the TTL expires from before, we're going to get two records back.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 48:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's use CloudShell to verify this.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 49:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So I'm going to do a dig command.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 50:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And as you can see, now we have in the intersection, we have two responses.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 51:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: We have one in this IP and one in this IP.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 52:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So it's a client side choice.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 53:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So that means that if I go to this website and refresh, I have one chance out of two to go into us-east-1.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 54:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And I didn't.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 55:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So I was back into ap-southeast-1b, but let me pause for 20 seconds and I'll get back to you.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 56:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And I'm refreshing.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 57:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And I get back the Hello World from us-east-1a.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 58:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this worked.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 59:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: This absolutely shows how simple records work.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 60:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/19_Route 53/195_Routing Policy - Weighted.txt

Line 1:
- Concepts: Traffic Shaping and Migration
- Services: Traffic Policy
- Key Insights: So now let's talk about the weighted routing policy.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 2:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: The idea is that you can have a percentage of requests you can control to go to a specific resource thanks to weights.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 3:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: So, put it simply in the diagram, we have Amazon route 53, and then we have three EC2 instance that have been assigned different weights, so 70, 20, and 10.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 4:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: In my example, these weights sum up to 100, but you don't have to in the real life, okay?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 5:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: But what this means that 70% of the DNS responses from Amazon as on route 53 are going to be redirecting to the first EC2 instance, then 20% to the second and 10% to the third.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 6:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So what we have to do in our weight is to assign each record a relative weights.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 7:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And then the traffic percentage is going to be sent to each record, as just the weight of the record divided by the sum of all the weights of all the records which is like a percentage of all the weights, okay?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 8:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: The weights don't need to sum up to 100, they're just indicative of how much we want to send to this instance, compared to all the other records in your DNS name.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 9:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So to make this work, the DNS records must have the same name and type, and you can associate them with health checks, although we haven't seen with health checks are again yet, but we'll have a look at them very, very soon.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Availability and failover decision-path signal.

Line 10:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: Traffic Policy
- Key Insights: Now the use cases for a weighted routing policy is pretty obvious, is to do for example, load balancing, maybe across different regions, or to test a new application version by sending a small amount of traffic to it, and so on.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 11:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And then if you're sending to sort of a weight of zero, then you're going to stop sending traffic to a specific resource, so you can shift weight over time.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 12:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And if all the resource records will have a weight of zero, then all the records will be returned with equal weights.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 13:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So let's have a look in the console to see how that works.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 14:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: So let's create a new record, and this one is going to be called weighted.stephanethetaccher.com.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 15:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: Traffic Policy
- Key Insights: It's an A record, and the routing policy is going to be weighted.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 16:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So first for the first value, let's enter the one from the ap-southeast-1, and the weights I'm going to assign to it this time is going to be 10, okay?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 17:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So it's very, very small weights.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 18:
- Concepts: Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: For the TTL, I'm going to set it to something really low, three seconds to just show you the impact of weighted.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 19:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: But obviously, this is not a TTL you would use in real life.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 20:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: So as we can see, we can associate a health check with it, but for now we won't.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 21:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And we have a record ID that we can set.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 22:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: And this is to identify this specific record within the weighted record sets.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 23:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So for this one, I got this instance from the southeast, I'm just going to write southeast.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 24:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Okay, and then we can add another record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 25:
- Concepts: Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: And again, we're going to use the same weighted.stephanetheteache.com, okay?
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 26:
- Concepts: Traffic Shaping and Migration
- Services: Traffic Policy
- Key Insights: And the routing policy is going to be weighted.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 27:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And the value of which is going to be the one from us-east-1.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 28:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to copy this IP and paste it here.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 29:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: The weight is going to be on this time 70.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 30:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So we're going to send 70% of the traffic to us-east-1, and then the record ID is US East.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 31:
- Concepts: Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: Great, and the TTL again, three seconds.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 32:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: And one last record we're going to add, so again, weighted, and then the value of which is going to be eu-central-1, in here.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 33:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: And I'm going to send it as a weighted record.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 34:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: I'm going to send 20 as weights, and the record ID is going to be EU okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 35:
- Concepts: Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: And the TTL three seconds.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 36:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So now let's go ahead and create these records.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 37:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And as we can see, we now have three records in this table, okay?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 38:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So this is why it's different from, for example, a simple record has two values, here, we have three records and each record has one value as an answer, but we have a weight of 10, 20 and 70.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 39:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: So if I go to the URL now, if I go to weighted.stephanetheteacher.com and press Enter, I'm getting a first response from the us-east-1a which makes sense because, well, this is where 70% of the traffic is supposed to be going okay, to this region.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 40:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: But if I refresh and I need to refresh maybe every three seconds, at some points, I should be getting a response from another region.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 41:
- Concepts: Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: And this is just based on weight, so this is the (indistinct) behind the weighted resources.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 42:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: So as you can see, this one is not changing a lot, so let's do a dig command just to show you the output of what it is, so dig weighted.stephanetheteacher.com. and here we get a TTL of three and the answer is, I think still the one from the us-east-1, But so let's try to issue one more, and see if we get any luckier.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 43:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So the weight of 70 definitely is a big weight.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 44:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Okay, but here as we can see, we just got an answer, and this one is a different IP, 3.70.14, which is corresponding to the weight of 20.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 45:
- Concepts: Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: So as we can see, weighted does exactly what it's supposed to do, it's redirecting most of the queries into the one that has the most weight, but from time to time, you will get other answers, okay?
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 46:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And so on.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 47:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this is something you can practice in your web browser as well as we can see, cool.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 48:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I just get redacted into eu-central-1c.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 49:
- Concepts: Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: So that's it for this lecture, and hopefully it shows you the power of weighted records.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 50:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/19_Route 53/196_Routing Policy - Latency.txt

Line 1:
- Concepts: Traffic Shaping and Migration
- Services: Traffic Policy
- Key Insights: So now let's talk about the weighted routing policy.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 2:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: The idea is that you can have a percentage of requests you can control to go to a specific resource thanks to weights.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 3:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: So, put it simply in the diagram, we have Amazon route 53, and then we have three EC2 instance that have been assigned different weights, so 70, 20, and 10.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 4:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: In my example, these weights sum up to 100, but you don't have to in the real life, okay?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 5:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: But what this means that 70% of the DNS responses from Amazon as on route 53 are going to be redirecting to the first EC2 instance, then 20% to the second and 10% to the third.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 6:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So what we have to do in our weight is to assign each record a relative weights.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 7:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And then the traffic percentage is going to be sent to each record, as just the weight of the record divided by the sum of all the weights of all the records which is like a percentage of all the weights, okay?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 8:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: The weights don't need to sum up to 100, they're just indicative of how much we want to send to this instance, compared to all the other records in your DNS name.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 9:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So to make this work, the DNS records must have the same name and type, and you can associate them with health checks, although we haven't seen with health checks are again yet, but we'll have a look at them very, very soon.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Availability and failover decision-path signal.

Line 10:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: Traffic Policy
- Key Insights: Now the use cases for a weighted routing policy is pretty obvious, is to do for example, load balancing, maybe across different regions, or to test a new application version by sending a small amount of traffic to it, and so on.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 11:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And then if you're sending to sort of a weight of zero, then you're going to stop sending traffic to a specific resource, so you can shift weight over time.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 12:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And if all the resource records will have a weight of zero, then all the records will be returned with equal weights.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 13:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So let's have a look in the console to see how that works.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 14:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: So let's create a new record, and this one is going to be called weighted.stephanethetaccher.com.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 15:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: Traffic Policy
- Key Insights: It's an A record, and the routing policy is going to be weighted.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 16:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So first for the first value, let's enter the one from the ap-southeast-1, and the weights I'm going to assign to it this time is going to be 10, okay?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 17:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So it's very, very small weights.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 18:
- Concepts: Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: For the TTL, I'm going to set it to something really low, three seconds to just show you the impact of weighted.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 19:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: But obviously, this is not a TTL you would use in real life.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 20:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: So as we can see, we can associate a health check with it, but for now we won't.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 21:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And we have a record ID that we can set.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 22:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: And this is to identify this specific record within the weighted record sets.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 23:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So for this one, I got this instance from the southeast, I'm just going to write southeast.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 24:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Okay, and then we can add another record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 25:
- Concepts: Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: And again, we're going to use the same weighted.stephanetheteache.com, okay?
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 26:
- Concepts: Traffic Shaping and Migration
- Services: Traffic Policy
- Key Insights: And the routing policy is going to be weighted.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 27:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And the value of which is going to be the one from us-east-1.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 28:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to copy this IP and paste it here.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 29:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: The weight is going to be on this time 70.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 30:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So we're going to send 70% of the traffic to us-east-1, and then the record ID is US East.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 31:
- Concepts: Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: Great, and the TTL again, three seconds.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 32:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: And one last record we're going to add, so again, weighted, and then the value of which is going to be eu-central-1, in here.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 33:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: And I'm going to send it as a weighted record.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 34:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: I'm going to send 20 as weights, and the record ID is going to be EU okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 35:
- Concepts: Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: And the TTL three seconds.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 36:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So now let's go ahead and create these records.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 37:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And as we can see, we now have three records in this table, okay?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 38:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So this is why it's different from, for example, a simple record has two values, here, we have three records and each record has one value as an answer, but we have a weight of 10, 20 and 70.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 39:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: So if I go to the URL now, if I go to weighted.stephanetheteacher.com and press Enter, I'm getting a first response from the us-east-1a which makes sense because, well, this is where 70% of the traffic is supposed to be going okay, to this region.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 40:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: But if I refresh and I need to refresh maybe every three seconds, at some points, I should be getting a response from another region.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 41:
- Concepts: Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: And this is just based on weight, so this is the (indistinct) behind the weighted resources.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 42:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: So as you can see, this one is not changing a lot, so let's do a dig command just to show you the output of what it is, so dig weighted.stephanetheteacher.com. and here we get a TTL of three and the answer is, I think still the one from the us-east-1, But so let's try to issue one more, and see if we get any luckier.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 43:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So the weight of 70 definitely is a big weight.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 44:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Okay, but here as we can see, we just got an answer, and this one is a different IP, 3.70.14, which is corresponding to the weight of 20.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 45:
- Concepts: Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: So as we can see, weighted does exactly what it's supposed to do, it's redirecting most of the queries into the one that has the most weight, but from time to time, you will get other answers, okay?
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 46:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And so on.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 47:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this is something you can practice in your web browser as well as we can see, cool.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 48:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I just get redacted into eu-central-1c.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 49:
- Concepts: Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: So that's it for this lecture, and hopefully it shows you the power of weighted records.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 50:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/19_Route 53/197_Route 53 - Health Checks.txt

Line 1:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: So let's talk about Health Checks in Route 53.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 2:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So health checks are a way for you to check the health of mainly public resources, although there's a way for us to do it for private resources as well, as we'll see in this lecture.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 3:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So the idea is that, for example, we have two Load balancers in different regions and they're public load balancers, okay?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 4:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And behind the scenes, we have our application running in both of them.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 5:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So we're running into a multi-region setup because we want high availability, and so on, at the region level.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 6:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: Then we're going to use Route 53 to create DNS records.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 7:
- Concepts: Route53 Operational Context
- Services: Elastic Load Balancing
- Key Insights: So that's when users access our URL, for example, mydomain.com, then they get redirected to, for example, the closest load balancer they have.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 8:
- Concepts: Authoritative DNS and Record Modeling, Latency and Geo Routing Strategy
- Services: (none explicit)
- Key Insights: So this would be the case with a latency type of record.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 9:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: But we want to make sure that, if one region is down, then we don't send our users to that region, obviously, right?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 10:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: So to do so, we're going to create health checks from Route 53.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 11:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: So we'll create health checks on the one in us-east-1, and we will create a health check on our instance in eu-west-1.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 12:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: Well, with these two health checks, we're going to be able to associate them with our Route 53 records.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 13:
- Concepts: Availability and Failover Control
- Services: (none explicit)
- Key Insights: And the reason we do so is to get automated DNS failover.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 14:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So we have three health checks that are possible.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 15:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: The ones I just showed you, which are the health check that monitor an endpoint, which is a public endpoint.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 16:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So it could be an application, a server, or another AWS resource.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 17:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: It could be a health check that monitors other health checks, also called a calculated health check, or it could be a health check that monitors a CloudWatch Alarm, which gives you more control and is helpful for private resources as we'll see in this lecture.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 18:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Finally, these health checks have their own metric and you can view them in CloudWatch metrics as well.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 19:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So let's look at how health checks work with a specific endpoint.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 20:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Elastic Load Balancing, Route 53 Health Check
- Key Insights: So if we have a health check for eu-west-1, for an ALB, then the health checkers of AWS are coming from all around the world.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 21:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So it's not just one health checker.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 22:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: It's about 15 health checkers from all around the world.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 23:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And they're all going to send requests into our public endpoint to wherever routes we set.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 24:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then if it gets 200 OK code back or the code we defined, then the resource is deemed healthy.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 25:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So about 15 global health checkers will check the endpoint health, and then you can set a threshold for healthy or unhealthy.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 26:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: You can set an interval, so we have two options.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 27:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: It could be either 30 seconds for regular health checks or every 10 seconds, which is a higher cost, which is what's called a fast health check.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 28:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: It supports many protocols, so HTTP, and HTTPS, and TCP.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 29:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: And the rule is that if over 18% of the health checkers say that the endpoint is healthy, then Route 53 will consider it healthy, otherwise it's deemed unhealthy.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 30:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And you have the ability to choose which locations you want to use for the health checks.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 31:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Elastic Load Balancing, Route 53 Health Check
- Key Insights: Now the health checks will only pass if you have the status 2xx or 3xx status code back from the load balancer and the health check has a cool capability.
- Hidden/Implicit Meaning: Constraint or limitation signal; Availability and failover decision-path signal.

Line 32:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So if it is a text-based response, then the health checkers can check the first 5,120 bytes of the response to look for some specific texts in the response itself.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 33:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Finally, very important from a network perspective, if you want for it to work, obviously, the health checkers must be able to access your Application Balancer or whatever endpoints you have.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Availability and failover decision-path signal.

Line 34:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: And so therefore you must allow incoming requests coming from the Route 53 health checkers' IP address range.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Availability and failover decision-path signal.

Line 35:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And you can find this address range at the URL in the bottom right of the screen.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 36:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now the second type of health checks we have are calculated health checks.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 37:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: And so this is to combine the results of multiple health checks into a single health check.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 38:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: And so if you look at Route 53, with three EC2 instance, we can create three health checks.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 39:
- Concepts: Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: They're all going to be children health check, and they can all monitor each EC2 instance one by one.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 40:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: And then we can define a parent health check, which is going to be defined on all these child health checks.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 41:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And so the conditions to combine all these health checks could be an OR, an AND, or a NOT.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 42:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: You can monitor up to 256 child health checks, and you can specify how many of the health checks need to pass to make the parent pass.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 43:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: So the use case for this, for example, if you want to have a parent health check to perform maintenance on your website without causing all the health checks to fail.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 44:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And so how do we monitor the health of a private resource?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 45:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: So in case you want to monitor something private, it's going to be difficult because while all the Route 53 health checkers live on the public web, they're outside of your VPC, so they cannot access private endpoints.
- Hidden/Implicit Meaning: Constraint or limitation signal; Availability and failover decision-path signal.

Line 46:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So if it's a private VPC or an on-premises resource.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 47:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And so the way we can do it, though, is to create a CloudWatch Metric and assign a CloudWatch Alarm on it.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 48:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then you can assign the CloudWatch Alarm into the health checker.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 49:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So the idea is that we're going to monitor the health of our EC2 instance in a private subnet with a CloudWatch Metric.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 50:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And then if the metric is breached, we're going to create a CloudWatch Alarm on it.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 51:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: And when the alarm goes into the alarm state, then the health checker is going to be automatically unhealthy and therefore will have created exactly what we want, which is a health check on a private resource, which is the most common use case on how to do it.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 52:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 53:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/19_Route 53/198_Route 53 - Health Checks Hands On.txt

Line 1:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's go ahead and create some health checks.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 2:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So on the left hand side, I'm going to go into the health checks, and we're going to create health checks for all our EC2 instances.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 3:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So we're going to check three health checks.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 4:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So the first one is going to be from an instance in US east one, and is going to be an end point.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 5:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And then you'd just specify either an IP address or a domain name.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 6:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So we'll keep it as an IP address.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 7:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And my instance in US east one is right here.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 8:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So we'll paste that in.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 9:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: We have to specify a port, so we'll keep it as 80, because this is the HTTP port.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 10:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And for path, we're just going to be keeping the path as slash because while this is the same as the IP slash, which is the root of our website, if we had a real application, sometimes it is very common to have a path slash health, for example, which responds with the health of the endpoint itself.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 11:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay, so we have this ready, so I'll just remove the slash health.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 12:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then we can look at some advanced configuration.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 13:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: So we can have either have a standard every thirty seconds or a fast every ten seconds health check.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 14:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: We'll keep it as standard because this is otherwise more expensive.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 15:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: How many times does it need to fail before being considered as a failure?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 16:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Do you want to do string matching so do you want to look for a string in the first 5,120 bytes?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 17:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Yes or no?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 18:
- Concepts: Authoritative DNS and Record Modeling, Latency and Geo Routing Strategy
- Services: (none explicit)
- Key Insights: Do we want a latency graph, to see how latency evolves over time?
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 19:
- Concepts: Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: Do we want to invert the health check status.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 20:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Do we want to be healthy and vise-versa.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 21:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Or disable it.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 22:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then do you want to customize the regions of the health checkers?
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 23:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Or do you want to use the recommended and we'll just keep it as is with using recommended?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 24:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So every option is pretty much as default.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 25:
- Concepts: Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: And do we want to be notified whenever this health check fails?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Availability and failover decision-path signal.

Line 26:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Yes or no by creating alarm?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 27:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I will just say no for now.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 28:
- Concepts: Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: So we have created our first health check.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 29:
- Concepts: Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: Now let's create our second health check and it's going to be for AP Southeast one.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 30:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So AP Southeast one, and then IP address right here, not host name.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 31:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then next and create.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 32:
- Concepts: Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: And the last health check is for EU central one.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 33:
- Concepts: Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: So let's create this health check and I will name it EU central one.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 34:
- Concepts: Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: And then here is the IP address and click on next and create health check.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 35:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 36:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So our health checks are created.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 37:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And what I'm going to do is I'm going to go to one of my instances, for example, the one in Singapore and for the security group, I'm going to start blocking the port 80, removing this rule.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 38:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: And the idea is that I want to get a failing health check.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 39:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to go into the security group right here.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 40:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I will do action and end it's the inbound rules, and it will delete my HTTP based rules.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 41:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: And what this will do is that's the one health check for AP Southeast one should give me a unhealthy status.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Availability and failover decision-path signal.

Line 42:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So let me wait a little bit for the health checkers to do their thing, and then we'll get back to you.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 43:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 44:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So as we can see, we have three health checkers, and one of them is unhealthy, obviously because I locked at the security group and the other two healthy because I don't see any security group event.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 45:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So we can have a look at the health checkers and to give you some information around when it was last checked and so on.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 46:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And for the unhealthy one, we can view the error status.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 47:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So if we look at view last failed check, we can see that there was a connection timeout, and maybe the requests are being blocked by my firewall and firewall is your security group.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 48:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So that makes sense.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 49:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So at least it gives us some information and they are working just as expected.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 50:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: And one last thing and you can create is a calculated health check.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 51:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: And this one is going to be a calculated health check, Cal-cu-lated.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 52:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Here we go.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 53:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And this going to check for the status of other health checks.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 54:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And now we can specify which health checks we want to monitor.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 55:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And okay, we're saying maybe you want to report healthy when one of the three health checks are healthy or when 2, or when all of them are healthy.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 56:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this is an AND or one or more health checks are healthy.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 57:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this is, so we can definitely create as complicated rule.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 58:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So I would just keep it as this should be healthy when all of my health checks are healthy and then click on next, next.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Availability and failover decision-path signal.

Line 59:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: And we have created a calculated health check and the last kind of a health check we can create is to monitor the state of a CloudWatch alarm.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 60:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: In which case we need to specify the region the alarm is going to be in, and then this alarm could be monitoring.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 61:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Obviously the state have a private EC2 instance for example.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 62:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Amazon Route 53, Route 53 Health Check
- Key Insights: And this is how we would link the health check, the health of a private resource into a route 53 health check.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 63:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 64:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: But I can't create it right now because I don't have an alarm available for us.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 65:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 66:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 67:
- Concepts: Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: So my calculated health check is now reported unhealthy because well, one of the health checks, I'm trying to monitor is unhealthy, and this is how we define it.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 68:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So that really shows you the power of health checks.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 69:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: And in the next lecture, we'll be using them of course, alongside records in route 53.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 70:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So I hope you liked this lecture and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/19_Route 53/199_Routing Policy - Failover.txt

Line 1:
- Concepts: Availability and Failover Control
- Services: (none explicit)
- Key Insights: Okay, so now let's talk about routing policies and this one is going to be for the failover.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 2:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Amazon Route 53
- Key Insights: So the idea is that we have route 53 in the middle and we have EC2 instances, one is going to be our primary EC2 instance, and the second one is going to be a secondary, or disaster recovery, EC2 instance.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 3:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: In this case, what's going to happen is that we're going to associate our primary record with a health check, and this is mandatory.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 4:
- Concepts: Availability and Failover Control
- Services: Amazon Route 53, Route 53 Health Check
- Key Insights: And if the health check it becomes unhealthy, then route 53 is going to automatically failover to the second EC2 instance, and start sending that result back instead.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 5:
- Concepts: Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: And of course the secondary EC2 can also be associated with the health check as well, if we want it to.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 6:
- Concepts: Availability and Failover Control
- Services: (none explicit)
- Key Insights: But there can only be one primary and one secondary.
- Hidden/Implicit Meaning: Constraint or limitation signal; Availability and failover decision-path signal.

Line 7:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now the client, when it makes DNS requests, will automatically get the resource that is deemed healthy.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 8:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Amazon Route 53
- Key Insights: So if our primary is healthy, then route 53 will answer with a primary record.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 9:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: But if the health check is unhealthy, automatically, we will get the response of the second record, which really helps us do (indistinct) a failover.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 10:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So that's it, let's go in the hands-on to see how we can practice this.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 11:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: (none explicit)
- Key Insights: Okay, so now let's leverage these health checks and create a failover record.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 12:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Traffic Policy
- Key Insights: So in my hosted zone, I'm going to create a record, and this one's going to be called failover.stephanetheteacher.com, and it's the A record, and the first value is going to be for my EU-central-1 instance, so the one close to me, and the routing policy is going to be a failover.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 13:
- Concepts: Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: So the TTL will set it something really low, like 60 seconds.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 14:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: (none explicit)
- Key Insights: And the failover record type has two options.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 15:
- Concepts: Availability and Failover Control
- Services: (none explicit)
- Key Insights: It could be either primary or secondary, just these two.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 16:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: So this is my primary record, and I will associate it with a health check, I have to.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 17:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: So it will associate with my health check named EU-central-1, and the record ID is going to be E.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 18:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: So what this is saying is that this record should be my primary one, but this is going to be associated with a health check, which means that you can failover to a second record.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Availability and failover decision-path signal.

Line 19:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: (none explicit)
- Key Insights: So let's add a new record, and I will keep the record name as failover.stephanetheteacher.com, and the value of which is going to be my instance in US-east-1.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 20:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: Okay, we're still going to have to do a failover, the TTL is 60 seconds, and the failover record type is going to be secondary.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 21:
- Concepts: Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: Now we can optionally associate your health check with it, okay, of US-East-1, but you don't have to.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 22:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And the record ID is going to be US.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 23:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Now let's create this record, and notice it was successfully created.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 24:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And so let's go back into our health checks.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 25:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And currently these two health checks I've associated with my records are healthy.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 26:
- Concepts: Availability and Failover Control
- Services: (none explicit)
- Key Insights: So if I go into the URL, so if I go to failover.stephanetheteacher.com, right now, I get an answer from EU-central-1c, That's perfect.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 27:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: But what I'm going to do is trigger a failure.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 28:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's go into the EU-central-1 region, and I'm going to find my instances, here, and I'm going to find the security group, and I'm going to, again, stop some security group roles.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 29:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's refresh this page.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 30:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: It does exist, that's perfect.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 31:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And for the inbound rule, I'm going to edit it, and it will remove the rule on port A.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 32:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So that will make my instance completely unreachable from the health checkers.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 33:
- Concepts: Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: So what I have to do now is to wait for this health check to become unhealthy, and then we'll be able to test the failover.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 34:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: So let's refresh, and as we can see now, my EU-central-1 health check is deemed unhealthy, and we can look into the monitoring tab and see really when it got a unhealthy, so this is quite cool.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 35:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So the health checker was positive, and then it went to zero, and then we can see how many percentage of the health checkers did report healthy, and again, this went one down to zero.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 36:
- Concepts: Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: So what this means, is that now that this health check is unhealthy because of the way we set up the failover that was linked to this health check.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 37:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Then next time I refresh this, I should not be in Eu-central-1c, I should be in US-east-1.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 38:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's refresh this (indistinct) page, and yes, the answer is that we are in US-east-1.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 39:
- Concepts: Availability and Failover Control
- Services: (none explicit)
- Key Insights: And so the failover did work seamlessly behind the scenes.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 40:
- Concepts: Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: And while to fix it, you just go back into your security group, you would edit the inbound rule, and then you would add back the HTTP rule, and then automatically the health check is going to pass again, and therefore we are going to failover back to our primary location, okay.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 41:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture, I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/19_Route 53/200_Routing Policy - Geolocation.txt

Line 1:
- Concepts: Latency and Geo Routing Strategy
- Services: Traffic Policy
- Key Insights: So now let's talk about the Routing Policy-Geolocation, which is very different from Latency-based.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 2:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, this is based on where the user is actually located.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 3:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So, for example, you can say, if a user comes from a specific continent, or a country, or even more precise, on the U.S. states, and, the most precise location is going to be selected at first, then routed to this IP.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 4:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So, you should create a default record, in case there's going to be no match on location, and the use case for this is going to be for website localization, to restrict content distribution, do load balancing, and so on.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 5:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And these type of records can be associated with health checks.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 6:
- Concepts: Authoritative DNS and Record Modeling, Latency and Geo Routing Strategy
- Services: (none explicit)
- Key Insights: So the idea is that, if we have a map of Europe, with multiple countries, we can define a geolocation record for Germany, to see the German users should go to this IP, which contains my German version of my app.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Routing-policy strategy signal.

Line 7:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And if I go to France, then go to this IP, which contains a French version of my app.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 8:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: But for anywhere else, go to the default IP here, which contains maybe the English version of my app.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 9:
- Concepts: Authoritative DNS and Record Modeling, Latency and Geo Routing Strategy
- Services: (none explicit)
- Key Insights: So, this is how you would use a geolocation.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 10:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now, let's go practice in the console.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 11:
- Concepts: Authoritative DNS and Record Modeling, Latency and Geo Routing Strategy
- Services: (none explicit)
- Key Insights: Okay, so, let's go ahead, and create our first geo record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 12:
- Concepts: Authoritative DNS and Record Modeling, Latency and Geo Routing Strategy
- Services: (none explicit)
- Key Insights: So, I'm going to create a record, and I'm gonna make geo, and, the record type would be A, the value of it is, let's link it first to the ap-southeast-1.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 13:
- Concepts: Latency and Geo Routing Strategy
- Services: Traffic Policy
- Key Insights: And, what we're going to do here is going to say, the routing policy is going to be geolocation.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 14:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And we're saying, okay, all of Asia, so, any user located in Asia, should go to my ap-southeast-1 EC2 instance.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 15:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: We could associate a health check with it if we wanted to, we need to give a record ID, so, here we go.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 16:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now, let's add another two records.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 17:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So what I'm going to do is that, I'm going to say that's, for us-east-1.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 18:
- Concepts: Latency and Geo Routing Strategy
- Services: (none explicit)
- Key Insights: I want to send any user from, and, we can say geolocation yet again.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 19:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And let's say, for example, just a country, so we can say, United States.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 20:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And, we could say lastly, so this is record ID, U.S., and so, as you can see here, I specified a country, and here's specified a whole continent, it doesn't matter.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 21:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And then lastly, we'll add one more record, here's the record name, and the value of which, is going to be eu-central-1.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 22:
- Concepts: Latency and Geo Routing Strategy
- Services: (none explicit)
- Key Insights: And, this one is going to be my defaults, so, I'm going to say, geolocation, and the location is default, that means that anything that doesn't match Asia or United States, is going to go to my default location, and this one is going to be called, Default EU.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 23:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now, it's create these records, and they've been successfully created.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 24:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, what I can do now is that I can test it, right?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 25:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, currently, I am not in the U.S., and I'm not in Asia.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 26:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So, if I open this URL, I will get the eu-central-1 region, so, this is good, that means that this is the default record, that is pure, that is working properly.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 27:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So now, let's change geographic location, and to do so, I'm going to use my VPN, and now let's go to an, a country in Asia, so let's go to India.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 28:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, I'm now connected into India.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 29:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And, when I refresh this page now, what I expect is to get a Hello World, from my ap-southeast-1 instance.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 30:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Oh, as you can see, there's a, a long load, so, I know what's happening, so, this is a timeout, and so, whenever you see a timeout in AWS, usually you have to think about security groups.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 31:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, if I go to my security group, yes, I'm in the right region, so in the Singapore region, and look at the Inbound rules, and edit them.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 32:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: If you remember, I had removed that the HTTP rule to make the health check fail, so, we need to add back that HTTP rule, so, let's add it back, and it's a good edit on your screen.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 33:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, the HTTP rule has been added back, and so now, if I go back into this page, as we can see, now, we get the Hello World from ap-southeast-1b, so, the Asia thing is working.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 34:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Now, if I go to a country in the U.S., if I go to the United States, overall, and, I'm in the U.S., and refresh, I'm going to get Hello World from us-east-1a, so, this is perfect.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 35:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And, if I go to something right next to the U.S., but not in the U.S., for example, if I go to Mexico.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 36:
- Concepts: Authoritative DNS and Record Modeling, Latency and Geo Routing Strategy
- Services: Amazon Route 53
- Key Insights: And refresh, as you can see, I get my eu-central-1c, because this is my default record, and, the Mexico was not specified as a rule in the geolocation Route 53 record.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 37:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay, so this is it, this is working perfectly.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 38:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I hope you like this lecture, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/19_Route 53/201_Routing Policy - Geoproximity.txt

Line 1:
- Concepts: Latency and Geo Routing Strategy
- Services: (none explicit)
- Key Insights: So now, let's talk about another feature which is called Geoproximity Routing.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 2:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And it can be a little bit confusing but I will try to explain with diagrams in the very next slide to make it clear.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 3:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this allows you to route traffic to your resources based on the geographic location of your users and resources.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 4:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So the idea is that with this policy, you're able using a number called the bias to shift more traffic to resources based on specific locations.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 5:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And it will show you this in a diagram in the very next slide.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 6:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So the idea is that to change the size of a geographic location, you need to specify a bias value.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 7:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: If you want more traffic to go to a specific resource, you expand the bias value by increasing it.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 8:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And if you want less traffic to go to your resource, you shrink it, you decrease the bias values to a negative number.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 9:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So the resources can be resources from AWS, in which case you specify the region they're in and automatically a list will compute the correct routing.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 10:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Or if there are none, AWS resources exercise such as your on premises data center.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 11:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Then, you will just need to specify the latitude and longitude, so the AWS knows where they are right now.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 12:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: And then it chooses feature, you need to use the advanced Route 53 Traffic flow to be able to leverage the bias.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 13:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So the diagram should make everything more simple.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 14:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And to me, this is what you should remember.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 15:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So let's take an example of a resource in us-west-1, and one resource in us-east-1.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 16:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And the bias is set to zero in both regions.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 17:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So that means that if you have users all around the US trying to access these resources, there's going to be a line dividing the US is too into two, and users left of that line will go to us-west-1, and user rights of that line will go to us-east-1.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 18:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now, this is simple, this is when there is no bias, okay?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 19:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And this looks like going to the closest resource region based on the user location.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 20:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: But thanks to the bias, we can have the same setup but a different way to have the users routed to different regions.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 21:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's take an example.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 22:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: We have us-west-1 and us-east-1, and the bias is set to zero in us-west-1, but we're going to have a positive bias of 50 in us-east-1.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 23:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And we've seen that the bias make more users and more traffic to that resource.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 24:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Why?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 25:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Well, because of the bias now the quote in quote, dividing line between the first.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 26:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: The two resources is going to be a little bit more to the left because of the higher bias of us-east-1.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 27:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And so that means is that's the user left of that line can go to us-west-1, but the users right or that one will go to us-east-1.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 28:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So what we do this?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 29:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Well, for example, you would set your resources all around the world and say you needed to shift more traffic to a specific region.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 30:
- Concepts: Authoritative DNS and Record Modeling, Latency and Geo Routing Strategy
- Services: Traffic Policy
- Key Insights: What you would do is that you will use a Geoproximity Routing Policy to increase the bias in that specific region.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 31:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And therefore, have more users dragged and more users have traffic attracted to that region.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 32:
- Concepts: Latency and Geo Routing Strategy
- Services: (none explicit)
- Key Insights: So what you to remember going into an exam is that the Geoproximity Routing is really helpful when you need to shift traffic from one region to another, by increasing the bias.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 33:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 34:
- Concepts: Latency and Geo Routing Strategy
- Services: Traffic Policy
- Key Insights: So hopefully the diagrams helped you make more sense of the Geoproximity Routing Policy.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 35:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked this lecture, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/19_Route 53/202_Routing Policy - Traffic Flow & Geoproximity Hands On.txt

Line 1:
- Concepts: Authoritative DNS and Record Modeling, Latency and Geo Routing Strategy
- Services: (none explicit)
- Key Insights: So, let's have a look into a way we can build these complex geoproximity records using a feature called Traffic Flow.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 2:
- Concepts: Latency and Geo Routing Strategy
- Services: (none explicit)
- Key Insights: This is not just applying to geoproximity, but applies to everything.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 3:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So, the idea is that we have a UI, a visual editor, that allows us to manage complex routing decision trees.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 4:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, this is the UI we'll have, and in there we can specify different rules.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 5:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: We'll have a play with it.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 6:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: Though the idea is that instead of writing the records one by one in your DNS management system in Route 53 we're going to just manage all of them visually.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 7:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And the cool thing about it is that it's going to be saved as a Traffic Flow Policy, and it can be versioned, it can be applied to different hosted zones, and we can easily change them and apply them in our hosted zones.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 8:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So, let's have a look in the hands-on right now to see how we can do it.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 9:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay, so let's go ahead.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 10:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: We're gonna go on the left-hand side panel, and you will find Traffic policies.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 11:
- Concepts: Authoritative DNS and Record Modeling
- Services: Traffic Policy
- Key Insights: So, in here we get the UI, we can create a Traffic Policy.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 12:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And I'll call this one DemoGeoPolicy, and click on Next.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 13:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So, here we have a starting point, and the starting point is you have to specify the type of record you want to create.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 14:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Is it an A, AAAA, CNAME, etcetera, etcetera, and it gives you a detail about what each record is.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 15:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So, we'll have an A record, and here we have to connect to a specific rule.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 16:
- Concepts: Availability and Failover Control, Latency and Geo Routing Strategy, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: And as you can see, we can get Weighted rule, Failover rule, Geolocation rule, Latency rule, Multivalue, Geoproximity, or just an endpoint.
- Hidden/Implicit Meaning: Availability and failover decision-path signal; Routing-policy strategy signal.

Line 17:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So, if you wanted to specify something very simple, for example an A into an endpoint, you could say the A record will point to this value one, two, three, four, five, six, seven, right?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 18:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And this would be the record itself, a very, very simple record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 19:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: But obviously we can create more complicated policies.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 20:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: So, we can connect to a Weighted rule, and here we can specify multiple weights.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 21:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: (none explicit)
- Key Insights: So, we say a weight of 10 goes to, and then again, we could have some advanced records, for example, a Failover and so on.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 22:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, we can get some really complicated stuff.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 23:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And when you're ready you can say endpoint, and specify the value of the IPv4 that you want.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 24:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, obviously we're not going to build something as complicated.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 25:
- Concepts: Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: As you can see, on the Weighted rule for example we can add another weight, and so on, and so on.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 26:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: And so, all of it is visual, and it really allows us to make sense of what is happening within Route 53.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 27:
- Concepts: Authoritative DNS and Record Modeling, Latency and Geo Routing Strategy, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: So, we are not going to create a Weighted rule though, we are going to create a Geoproximity rule.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 28:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And we can show the map as well to have a visual feedback of what we're trying to do.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 29:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, here we have to enter the first region, and then we can have the second region.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 30:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, now for the first endpoint location you can enter custom coordinates, or you can, for example, have one of these regions of AWS available to you.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 31:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, we're going to use the ones we have created from before.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 32:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So, we'll choose US-East-1, and then we have to specify a bias.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 33:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And then I will move the map a little bit to the left, I will just remove it for now.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 34:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And then this record right here is going to connect to a new endpoint, and the value of it is going to be my US-East-1 EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 35:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, I will paste the value, and we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 36:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: For now we'll leave the bias as zero.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 37:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Then for the second region we can enter some coordinates.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 38:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, we can say for example Singapore, which was AP Southeast 1.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 39:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And let's do it, Singapore, again, here we go.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 40:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And then this is going to connect to a new endpoint, and that endpoint has to be my IP address of AP-Southeast-1.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 41:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Press Enter, and we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 42:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So, now that we have created this policy let's have a look at the map.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 43:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, for this I will click on Show Map.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 44:
- Concepts: Latency and Geo Routing Strategy
- Services: (none explicit)
- Key Insights: And so, this geoproximity map is going to show me, based on the input I have right now, which users are going to go to which instance.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 45:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: So, if you're on that side of the world, the blue side of the world, as you can see there's a line dividing the blue and the orange side of the world, then you're going to go to my first instance.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 46:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: If you're on the second side of the world you're gonna go to my second instance.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 47:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And if we change the bias, so if we increase the bias for example of my instance in here, so we put a bias of 34, this is going to increase the surface of the world that is going to be redirected to my instance in North America.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 48:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: If I decrease the bias to something negative it's going to do the opposite thing.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 49:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: It's going to center more of the traffic onto my instance number two.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 50:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So, we can really play it and really have a visual aspect, and the cool thing is that we can consider more than two instances.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 51:
- Concepts: Latency and Geo Routing Strategy
- Services: (none explicit)
- Key Insights: Of course, we can add another geoproximity location, and for the details we're going to say this is in Frankfurt.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 52:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And then we're going to have, as you can see now, a new map.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 53:
- Concepts: Latency and Geo Routing Strategy
- Services: (none explicit)
- Key Insights: And again, you can play with the bias, and see how the bias is going to impact your geoproximity map.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 54:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And so, this Frankfurt, we're going to have it to a new endpoint.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 55:
- Concepts: Route53 Operational Context
- Services: Traffic Policy
- Key Insights: And we'll have the EU-Central-1 in here, paste it, and then Create traffic policy.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 56:
- Concepts: Route53 Operational Context
- Services: Traffic Policy
- Key Insights: So, we've done this one, and now we need to deploy this traffic policy with policy records.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 57:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So, for this I will just deploy this one into the hosted zone, stephanetheteacher.com, and we can set that, this policy record name is going to be proximity.stephanetheteacher.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 58:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: And we can specify a TTL.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 59:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And very importantly, the pricing per month is $50 per month, so to just create this policy record you will pay $50 per month.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 60:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: It's prorated obviously for how long you keep it, but if you want to remain within the free tier and, you shouldn't create it obviously.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 61:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, I'll just create it just to show you what it means, and I will delete it right after.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 62:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: But this is not necessary for you to go all the way, obviously.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 63:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So, let's create this policy record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 64:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: As you can see now, the policy versions are here.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 65:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So, we can edit this policy if we wanted to, and edit this and deploy it as a new version.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 66:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And from there we can see the records that have been created with this DemoGeoPolicy.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 67:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And so, if we have a look again at the map we can demonstrate how this works.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 68:
- Concepts: Authoritative DNS and Record Modeling, Latency and Geo Routing Strategy
- Services: (none explicit)
- Key Insights: So, let's click on this Geoproximity rule in here, so let's edit this as a new version, Next, and then click on this map.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 69:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, as we can see, if I'm in Europe, like I'm in France, I will be able to connect to this instance, if I'm in Brazil I will connect to that instance, and if I am in, for example, India, again, I will connect to that region.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 70:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So, we'll verify this in a second by testing the record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 71:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, let's cancel and wait for this to be created.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 72:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So, the policy record has been applied.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 73:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: As you can see, the version used is number one.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 74:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, if I connect from where I am, I'm in Europe right now, I will get the EU-Central-1, and so, which is perfect.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 75:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: If I go to Brazil, for example, zed, and refresh my page, and then it should be connecting to my American instance.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 76:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So, let's verify this in a second.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 77:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Yes, and finally, if I connect to something in Asia, so let's change this.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 78:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Let's go to Thailand, for example, and then refresh, I'm gonna get my AP-Southeast-1b instance.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 79:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, this is perfect.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 80:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53, Traffic Policy
- Key Insights: And if we go back into Route 53 now and refresh this you can see if I go to Filter and type proximity the record itself, this proximity record, is directly routing to a traffic policy record, okay?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 81:
- Concepts: Authoritative DNS and Record Modeling
- Services: Traffic Policy
- Key Insights: And the only way I can edit this record is if I click on Edit right here, and this will take me directly into the traffic policy UI, okay?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 82:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 83:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: I'm just going to save some money, obviously, and delete this policy record right now so it doesn't cost me $50 a month.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 84:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And I hope you liked this lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 85:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/19_Route 53/203_Routing Policy - IP-based.txt

Line 1:
- Concepts: Latency and Geo Routing Strategy
- Services: Traffic Policy
- Key Insights: So now let's talk about another routing policy called the IP-based Routing which is very intuitive to think about because you're going to define the routing based on the client IP addresses.
- Hidden/Implicit Meaning: Routing-policy strategy signal.

Line 2:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53
- Key Insights: In Route 53, you're going to define a list of CIDRs, they are IP ranges for your clients, and you're going to say, based on the CIDR which location the traffic should be sent to.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 3:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So the use cases will be to optimize performance because you know the IP ahead of time or to reduce network costs because you know where the IPs are coming from.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 4:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So an example is that if you know that you have a specific internet provider and they are using a specific CIDR of IP addresses you can route them to a specific endpoint thanks to this strategy.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 5:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's go for an example.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 6:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: In Route 53, I'm going to define two locations with two different CIDR blocks.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 7:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: As you can see, one start with 203 and the other one start with 200 and the defined IP ranges.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 8:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Now we are going to link these locations to a specific record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 9:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So for example.com we're going to have location one.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 10:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So the first CIDR block to send to the value 1.2.3.4, and the second location, the CIDR block number two, to send it to 5.6.7.8.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 11:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And these represents the public IP of two EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 12:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Now, as you would expect, if a user comes in with a specific IP that is part of the location one CIDR block, they will be directed to the first EC2 instance of IP 1.2.3.4, and the user B, with a second IP address that belongs to the location two, will be redirected and will have a DNS query response to the EC2 instance of IP 5.6.7.8.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 13:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And that's it for IP based routing.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 14:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: It's very simple and I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 15:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/19_Route 53/204_Routing Policy - Multi Value.txt

Line 1:
- Concepts: Route53 Operational Context
- Services: Traffic Policy
- Key Insights: Let's talk about the last routing policy, which is Multi-Value, which is going to be used when you want to route traffic to multiple resources.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 2:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: And Route 53 will therefore return multiple values or resources.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 3:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: Now, you can associate them with Health Checks, and so therefore the only resources returned via the Multi-Value policy are going to be the ones that are associated with a healthy Health Check.
- Hidden/Implicit Meaning: Constraint or limitation signal; Availability and failover decision-path signal.

Line 4:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So up to eight healthy records are going to be returned for each Multi-Value query.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 5:
- Concepts: Authoritative DNS and Record Modeling
- Services: Elastic Load Balancing
- Key Insights: And although it looks like an ELB, it's not a substitute for having an ELB.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 6:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: The idea is that it's the client-side load balancing.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 7:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's look at an example.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 8:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: We are going to set up multiple A Records for our example.com, and we associate them with Health Checks.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 9:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So when a Multi-Value query is done by our clients, it's going to receive up to eight records back, and then the clients will choose one of them.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 10:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: But at least by combining this with Health Checks, we know that one of the eight records being returned, or up to eight, are going to be healthy.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 11:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And therefore the client can have very safe queries into them.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 12:
- Concepts: Authoritative DNS and Record Modeling
- Services: Traffic Policy
- Key Insights: This is going to be different, for example, when you have a simple routing with multiple values in it, because as you know, the simple routing policy does not allow for Health Checks, and therefore it's possible that one of the resources returned in the query of a simple routing policy will be unhealthy.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 13:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: This is why Multi-Value are a little bit more powerful as types of records.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 14:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So let's have a look in the UI at how we can test them.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 15:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So let's practice the Multi-Value record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 16:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So let's go and create a multi-record, so a multi dot blah blah blah.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 17:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then the value of it is going to be linked to us-east-1.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 18:
- Concepts: Route53 Operational Context
- Services: Traffic Policy
- Key Insights: So I will add this value here, and then the Routing policy is going to be Multivalue.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 19:
- Concepts: Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: The Health check is going to be us-east-1.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 20:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And the Record is going to be US.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 21:
- Concepts: Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: And TTL is going to be 60 seconds.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 22:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Let's add another Record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 23:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So, multi, and again, we're going to route to a different region, so this one is ap-southeast-1.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 24:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So the answer is Multivalue answer.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 25:
- Concepts: Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: The Health check is ap-southeast-1.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 26:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And the Record ID is going to be Asia.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 27:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: And then the record TTL is one minute.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 28:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And then finally, the last one, so again, one more Record name.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 29:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: The Value is going to be linked to eu-central-1 right here.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 30:
- Concepts: Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: The TTL is one minute.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 31:
- Concepts: Route53 Operational Context
- Services: Traffic Policy
- Key Insights: And the Routing policy is Multivalue answer.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 32:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And for the Health checks, we're going to use the one from eu-central-1.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 33:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And the Record ID is EU.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 34:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay, so let's create these records.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 35:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And the records are successfully created.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 36:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now let's test it out.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 37:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So for this, we're going to use our CloudShell in here.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 38:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's reconnect to CloudShell.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 39:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And what I want to do is to test this record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 40:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So I will copy the record in here, and then I will clear my screen.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 41:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And so if I test a dig on this, then I get three answers.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 42:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So the three IPs are returned, and the reason is, well, the three health checks are fully working.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 43:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So as you can see, they're all healthy.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 44:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: But if I take one of them, for example, I remove the eu-central-1, so I'm gonna make this one unhealthy, and I'm just going to trick it by editing and do an Invert health status.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 45:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this is going to make the healthy unhealthy, and vice versa.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 46:
- Concepts: Authoritative DNS and Record Modeling, Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: It's just a quick way for me to create an unhealthy health check.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 47:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let me pause right now.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 48:
- Concepts: Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: Okay, so now my eu-central-1 health check is Unhealthy.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 49:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And so if I reissue a dig command right here, I should expect to see only two values, yes, as a result.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal.

Line 50:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So the Multivalue answer has worked, and it worked really well.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 51:
- Concepts: Availability and Failover Control
- Services: Route 53 Health Check
- Key Insights: So just to revert this, edit this health check, and let's untick this Invert health check status, and we're good to go.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 52:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay, so that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 53:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 54:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/19_Route 53/205_3rd Party Domains & Route 53.txt

Line 1:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So we need to make the distinction between a domain registrar and a DNS service.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 2:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So actually you can buy your domain name with any kind of domain registrar you want, and you're going to pay annual charges.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 3:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: So the way we did it so far in this course was to use the Amazon Registrar, through the Route 53 console, but it's possible for you to use any domain name registrar.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 4:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So for example, you can use GoDaddy, you can just Google Domains, and so on.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 5:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And usually whenever you register a domain with a domain registrar, they will provide you as well with a DNS service to manage your DNS records.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 6:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53
- Key Insights: So when we created a, when registered a DNS name with a host name with Amazon, we had a Route 53 hosted zone to manage our DNS records.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 7:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: But it's possible for you to choose not to use, for example, AWS Route 53 as your DNS records, when you have registered your domain with Amazon Registrar.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 8:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Or vice versa, you can, for example, register your domain with GoDaddy.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 9:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: So you're going to purchase example.com, yet you're going to use Amazon Route 53 to manage your DNS records.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 10:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: It's a perfectly acceptable combination.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 11:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So how do we do this?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 12:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Well, on GoDaddy you're going to register your domain, and then you're going to have the name servers option, and you can specify custom name servers.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 13:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So what do we put in there?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 14:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53
- Key Insights: Well, first we're going to go to Amazon Route 53, and we're going to create a public hosted zone, for any domain we want.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 15:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then in the hosted zone details, we're going to find name servers on the right-hand side.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 16:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So these four name servers are the ones we're are going to have to change on the GoDaddy websites.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 17:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53
- Key Insights: So that's when GoDaddy answers a query, "Hey, which name server should I use?" the name servers are going to be pointing to Amazon Route 53 name servers, and therefore we can use Amazon Route 53 to manage all the EDNS records that are cleaved from that console.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 18:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53
- Key Insights: So to summarize, if you buy your domain on a third-party registrar, you can still use Route 53 as your DNS service provider.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 19:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53
- Key Insights: For this, you will create a public hosted zone in Route 53, and then you will update the NS, or name server's records, on the third-party website, where you bought your domain.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 20:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then you're going to point them to the Routes 53 name servers.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 21:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So, just so you know, a domain registrar looks like, but is different from a DNS service, even though every domain registrar usually comes with some DNS features.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 22:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 23:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 24:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/19_Route 53/206_DNS Migration in Route 53.txt

Line 1:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So here is a short lecture on a question that can come up in the exam, which is how to migrate the DNS service for a domain that is already in use, so that means that users are already accessing it, without making the domain offline and to do it as fast as possible?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 2:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So it should make sense to you, but it's still good to know the steps.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 3:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: So first of all, the DNS service is hosted somewhere else than Route 53.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 4:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And so we need to get the current DNS configuration.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 5:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: That basically means we want to have all the DNS records.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 6:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: We need to duplicate and copy over to Route 53.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 7:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53
- Key Insights: Then you're going to create a public hosted zone in Route 53 and then you're going to recreate all these records in the newly created zone.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 8:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: So there is an import feature in Route 53 you can also use as well.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 9:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Then the reason why the DNS service is currently external is that the name servers are pointing to an external DNS service.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 10:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: And so therefore, we want to change the name servers record, but before we do so, to make it as effective and as quick as possible, we want to lower the TTL setting of the NS record on the external DNS service to 15 minutes to be able to quickly roll back just in case.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 11:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: And then because the default time usually for an NS record is two days, we need to wait two days to ensure that every new client will have the new NS record TTL of 15 minutes.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 12:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53
- Key Insights: So two days later, we're going to come back and then we're going to update the NS record to point to the Route 53 name servers.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 13:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: And so now the domain is pointing to the Route 53 DNS service.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 14:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: That means that all the DNS queries are now going to be originating, being served by Route 53.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 15:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: So therefore, we need to monitor traffic for the domain, making sure that everything is working as expected, making sure we have the correct queries done on Route 53 and that they succeed.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 16:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: Amazon Route 53
- Key Insights: Then once everything is done and working, we must change the NS record TTL on Route 53 this time to a higher value, for example, two days, so back to the default.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 17:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: And then in your own time, you can optionally transfer the domain registration from your external service onto Amazon Route 53.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 18:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So that's it, it should make sense to you, but now you know how you would see the steps in case it comes up in the exam.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 19:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/19_Route 53/207_Common Route 53 scenarios.txt

Line 1:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53
- Key Insights: Okay, so now let's talk about a few scenarios you can find with Route 53.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 2:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And the first one is for an EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 3:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So we can, for example, create a record, an A record that points to a specific, for example, a public IP or an elastic IP of an EC2 instance, this is very simple.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 4:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Now, it becomes a little bit trickier and there's something that you need to know about this, when you want to point to a DNS name of an EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 5:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So why would you do so why would you point a record into a CNAME of an EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 6:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Well, the idea is that's, for example, if you take EC2 instance and you create it on your cloud, then it has two IP, right?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 7:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: It has its public IP, and it has its private IP, but it only has one public DNS name.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 8:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And the idea is that this DNS name is a bit special.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 9:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this DNS name will send you to the public IPv4 if you created it from outside of AWS.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 10:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And will give you the result of a private IPv4, if you create from inside of AWS, that means that we can not create an alias record on this, by the way, we can only create a CNAME record.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 11:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So, if we create a CNAME record for the value of being the DNS name of the EC2 instance, then a clients from outside of AWS, when requesting app.example.com will eventually resolve to the public IP of the EC2 instance, but an Institute instance, for example, or anything within your VPC that uses the same app.example.com will resolve to the private IP of that EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 12:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's verify this right now.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 13:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So if I have a look at my EC2 instance right here, as you can see, there is a private IPv4 address and a public IPv4 address, and there's only one public IPv4 DNS.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 14:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, we'll copy this public IPv4 DNS, okay?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 15:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And I'm going to connect to my instance using EC2 instance connects.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 16:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And so if I do a dig command, if it is installed, let's see, yes, dig is installed so I will clear my screen.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 17:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: If I do a dig commands on this DNS, as we can see, the result we get from the answer section is 172 at 31, which is the private IP domain space.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 18:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So from within my VPC, this IP address resolves, this DNS resolved to the private IP address, right?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 19:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: But if I take cloud shell, for example, this is considered as a public one from a network perspective.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 20:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So if I do a dig on and I will have to copy the exact same DNS name, of course.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 21:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's copy it from here.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 22:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 23:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So if I do a dig at this time on the same obviously DNS name, the result is going to be different.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 24:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now the insert section is saying, that's the resolve is, resolving is 3.70.14.223.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 25:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So that means that it has the same DNS name, got us both a public IP from outside and a private IP from inside.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 26:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And we can also verify this with the records, so if you create a record and this will, I call it EC2.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 27:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: As we can see, it has to be a CNAME.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 28:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: It could not be an alias, if you want you to have an alias.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 29:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So CNAME alias only works for other records, but if it wasn't A record, for example, there is no, EC2 DNS name you can choose from here.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 30:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 31:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So alias is not possible to an EC2 instance for this you have to use a CNAME.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 32:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And then for the CNAME, we'll remove the alias.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 33:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: For the CNAME, the value has to be obviously this DNS name right here.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 34:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So if I paste that in, okay, and we're good to go and we are just doing a simple routing and create this record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 35:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 36:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So now what's going to happen is that I'm going to just try to do a DNS query against this record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 37:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So I will do dig, EC2 dot (typing) and here we go, press enter.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 38:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And as you can see, now we can look at how it's resolved.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 39:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So this, was resolved as a CNAME for the public IPv4 DNS of my EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 40:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then one of them were down in one to two V private IP.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 41:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: But if I do the exact same command here, so I clear the screen and repeat this command, oops, clear the screen.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 42:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And then do a dig on EC2 that's in my domain name. (typing) As we can see, we have the CNAME that's exactly the same but now when this gets resolved, it gets resolved to the public IPv4 of my EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 43:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So next, some other common records you will see.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 44:
- Concepts: Route53 Operational Context
- Services: Elastic Load Balancing
- Key Insights: So for an ALB, for example, we can point to the DNS name to the ALB.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 45:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: In which case we can have two ways of doing it.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 46:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: We can use an alias record and I would recommend of using an alias.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 47:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And this would work for both apex and non apex or if you're using a non apex type of record, for example, lb.example.com, you could use a CNAME but as a rule of thumb, I would use alias whenever possible in AWS.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 48:
- Concepts: Authoritative DNS and Record Modeling
- Services: CloudFront
- Key Insights: For CloudFront there is similar so we can have a CloudFront distribution, and again, we can create an alias for an apex or an alias or CNAME for non apex.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 49:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And as we can see, we just point one to CloudFronts and within CloudFronts, then we can connect to multiple origins and redirect to whatever we want.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 50:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53, CloudFront
- Key Insights: But this is more of a CloudFront configuration than a route 53 configuration.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 51:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: For the API gateway, same thing.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 52:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So by using an alias record, we're going to point the clean to the gateway region or edge up to my DNS name.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 53:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And for an RDS database, I'm not going to say alias because this time alias does not work for RDS databases.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 54:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: In this case, you must create a CNAME record because well, alias doesn't work.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 55:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So we can create db.example.com and have it as a CNAME into our RDS database.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 56:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now, for the S3 buckets, we have S3 buckets used for static website hosting, and then we want to point our DNS name to the S3 website endpoints.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 57:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So in this case, we must create an alias record for it.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 58:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And the bucket name must be the exact same as the domain name of your extra bucket.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 59:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this is very, very, very important.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 60:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So if you have a domain name, for example, example.com, then you have an alias to S3 websites.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 61:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 62:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And the bucket of your buckets must be as well, example.com, otherwise, things will not work.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 63:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Okay, and finally, we can have a domain name pointing to a VPC interface endpoint, so backed by private link.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 64:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So this is a classic private link set up in which we have a service provider, private linked, linked to a VPC interface end points for the service consumer VPC.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 65:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53
- Key Insights: And what we can do is that, we can have a route 53 alias pointing to that VPC interface end points, okay?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 66:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Well, that's it for this lecture, I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 67:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/19_Route 53/208_Route 53 - Subdomain Zones.txt

Line 1:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay, so now that's use advance concepts around Hosted Zones.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 2:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53
- Key Insights: So, when you create a Hosted Zone, Route 53 will automatically create the Name Servers and the SOA Records.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 3:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53
- Key Insights: And in case you have both, a Public or Private, and Private Hosted Zones, that will have overlapping Name Spaces and I will show this diagram right now, then the resolvers of Route 53 will route traffic to the most specific match.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 4:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So what does that mean?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 5:
- Concepts: Authoritative DNS and Record Modeling
- Services: Private Hosted Zone
- Key Insights: That means you have your EC2 instance inside your VPC and you have a Public Hosted Zone for example.com, the domain you own, and also Private Hosted Zone for accounting.example.com Now, if you're EC2 Instance issues some DNS queries such as example.com or hr.example.com, they will be matched obviously to the first one, because, well, they don't comply with the accounting.example.com But if your EC2 Instance is going for accounting.example.com or seattle.accounting.example.com or whatever, as you can see, the most specific match is going to be around the Private Hosted Zone.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 6:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, no matter what Records you will have in that Public Hosted Zones for these DNS, for these host names, you will be redirected to the most specific Hosted Zone.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 7:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this is also true, if you have two Private Zones, again, one for example.com and one for accounting.example.com Again, the most specific Records will go to the most specific Zone.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 8:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now, why would you do that?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 9:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Why would you have two Hosted Zones?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 10:
- Concepts: Authoritative DNS and Record Modeling
- Services: Private Hosted Zone
- Key Insights: Well, maybe you want to apply some permissions around AIM about who can manage a Public Hosted Zone, or who can manage a Private Hosted Zone that is more specific, in which case it's reliable and more advised to have two Hosted Zones.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 11:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, now let's talk about Subdomains.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 12:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, the idea is that we have Hosted Zone example.com, but we want to create this Subhosted, these smaller Subdomains Hosted Zones.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 13:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So, we reach a Hosted Zone, example.com and under one Record, for example, acme.exaple.com we're going to create a NS type of Record with four named servers.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 14:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And it turns out that if we create the Hosted Zone acme.example.com, we have to match the values of the Hosted Zone to the one, to the one above.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 15:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: But the idea is that now we delegate, okay, all the Records from the first Hosted Zone to the second Hosted Zone when they match the Subdomain acme.example.com And so, this is known as "Delegation Responsibility for a Subdomain to Hosted Zone" or "Delegating a Subdomain to Another Name Servers." And the use cases for this will be to have, for example, different Subdomains managed by different teams.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 16:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: For example, you have accounting.example.com, you have engineering.example.com, internal.example.com, et cetera, et cetera.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 17:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Or, this is also very helpful as said, because IAM permissions can be only applied at the Hosted Zone level, not at the Records level.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 18:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And so therefore, you may want you to have different Hosted Zones and different users with different permissions to manage these Hosted Zones.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 19:
- Concepts: Availability and Failover Control
- Services: Amazon Route 53
- Key Insights: And you're going to apply this same logic if the primary Hosted Zone is not even in Route 53.
- Hidden/Implicit Meaning: Availability and failover decision-path signal.

Line 20:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53
- Key Insights: So if we created these Subdomain Hosted Zone for acme.example.com with these Name Servers, then we can use any 3rd Party DNS Service again for the Parent Domain example.com and point the Subdomain NS Record into the ones from Route 53.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 21:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53
- Key Insights: And therefore, we'll have a Subdomain management just for that Subdomain on the Route 53.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 22:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53
- Key Insights: So this is some advanced use cases of Domain Name Services, but at least we see how we can split them and maybe partly use a 3rd Party DNS Service in Route 53.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 23:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's go into the UI to see how these things work.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 24:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So, the idea is that I would like to have a Subhosted Zone for sub.stephanetheteacher.com So, I'll go into my Hosted Zones and I will create a new one.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 25:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And it's going to be called sub.stephanetheteacher.com and it's going to be a Public Hosted Zone, okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 26:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And I will create it.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 27:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And as we can see now, I look at the Hosted Zone details and I get four named servers available for that specific Hosted Zone.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 28:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now you have to copy and paste them somewhere else.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 29:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So, the idea is that here, we're going to have a Record in sub.stephanetheteacher.com and we're going to create this Record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 30:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So we can create, for example, the Record test.sub.stephanetheteacher.com Okay?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 31:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And the value is going to be 11.22.33.44, just a random Record, okay?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 32:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Let's create this Record, and we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 33:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So, as we can see right now, if I go into my shell, any shell, really, so I'll use my cloud shell, and I do a DNS query for sub, sorry for test.sub.stephanetheteacher.com and press enter.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 34:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, let me reinstall y bind-utils.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 35:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay, and let's run de query again.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 36:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, as we can see, we don't have any answer for test.sub.stephanetheteacher.com As you can see, there's no answer in here.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 37:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: That's because we don't know yet how to send the queries into this Subhosted Zone.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 38:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And what I can do is go to my main Hosted Zone.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 39:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So this one, stephanetheteacher.com, and what I'm going to do here is to create a Record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 40:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And so the Record is going to be sub.stephanetheteacher.com so should be link to my second Hosted Zone, okay?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 41:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And in here the Record type is going to be NS, so it's Name Servers for a Hosted Zone.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 42:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And the value has to be the exact same value we got from here, because we're saying "Hey, for this Subdomain, really, I go to these names servers, and these names servers we'll know in here what to do." So, what I'm going to do here is paste the value and let's make sure to remove any white space before these Records.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 43:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 44:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And let's make sure that we create these Records right now.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 45:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So, this Record was successfully created.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 46:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And now if we look at sub, here's my Record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 47:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And so, what was going to happen is on now, any queries that goes into this Hosted Zone, but that will match this sub.stephanetheteacher.com is saying, "Hey, delegate these queries to these Name Servers." And these Name Servers are actually linked to this Hosted Zone right here.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 48:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And this Hosted Zone will have a look at it, look it up and say, "Yes, I know test.sub.stephanetheteacher.com it's this value." So let's obviously test it out and make sure that it works.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 49:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's clear the screen and repeat the command.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 50:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: So, currently we still have no results because while we have a TTL associated with the previous query, and it turns out that I need to wait 159 seconds now for the new query to be issued.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 51:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So I'm going to have to wait a little bit and get back to you.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 52:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 53:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's try the command again.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 54:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So test.sub.stephanetheteacher.com, press enter.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 55:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And, as we can see now, well, we give the answer section, which is an A Record as 11.22.33.44 So, the Subdomain delegation works, and for this we have to set up a Name Services, Name Server Record in the main Hosted Zone.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 56:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And in the Subhosted Zone would be able to answer the queries for this one.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 57:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So, I hope it made sense and a few things to note.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 58:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So first of all, this sub Hosted Zone could be in a completely different AWS accounts.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 59:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 60:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, this is something that could be living in other accounts.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 61:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And so you could do like, Subdomain delegation across accounts, which is quite nice, because the only things you have to specify are the Name Servers.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 62:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: It's also very, very helpful from a security perspective, because now thinks to IAM.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 63:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: We can restrict maybe some users to only this sub, the main name.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 64:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Whereas the main Hosted Zone is reserved for administrators, something like this.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 65:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So, you have a lot of different combinations you can do with this, but hopefully that makes sense.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 66:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: You see the power of these kinds of Hosted Zone delegation.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 67:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, I hope you liked this lecture and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/19_Route 53/209_Route 53 - DNSSEC.txt

Line 1:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: Let's talk about Route 53 DNSSEC.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 2:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: But before I introduce a solution, let me expose in a simplified version the problem.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 3:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So we have DNS poisoning or spoofing.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 4:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: It's a type of attack.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 5:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So for example say we have our web server, it's hosting the website we want, for example.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 6:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And it is at a specific IP 9.10.11.12.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 7:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So the web browser of a client is going to ask the local DNS server for example.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 8:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Then the local DNS server needs to actually get the record for it.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 9:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: So it's going to figure out that Route 53 has, on its DNS, the solution for where example.com is located.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 10:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: So it's going to ask, for example.com and Route 53 is going to return well, it's the IP 9.10.11.12.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 11:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 12:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Fair enough.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 13:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: But then a hacker through some process manages to inject the value example.com equals 21.22.23.24 in our local DNS server.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 14:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And this is because, to very much simplify it, the DNS works on the UDP protocol which makes it somewhat easy to hack and also when we don't have a DNSSEC there is no cryptographic DNS verification process.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 15:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So therefore our local DNS server has been spoofed and now is going to return to our web browser, the wrong IP.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 16:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So 21.22.23.24.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 17:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And therefore the web browser is going to think it accesses the correct server but actually it accesses a malicious website at a different IP.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 18:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So that's call DNS poisoning and spoofing and DNSSEC actually is going to help mitigate that issue.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 19:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So DNSSEC is for DNS Security Extension and it's a protocol that helps you secure DNS traffic to verify the DNS data integrity as well at its origin.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 20:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: It only works when the hosted zones are public, so for public domain names.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 21:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: So Route 53 is going to support DNSSEC both for domain registration and signing of the DNS records.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 22:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53
- Key Insights: So the DNSSEC signing is the ability to validate that a DNS response actually came from Route 53 and has not been tempered with.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 23:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So no record has been injected.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 24:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And how does it work?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 25:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53
- Key Insights: Well, Route 53 is going to sign each record in the hosted zone using a private key.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 26:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And then the clients can verify with a public key that the signature is correct.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 27:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So the client needs to have some sort of logic to understand the DNSSEC process.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 28:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So we have two keys happening within the DNSSEC process.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 29:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And the first one is managed by you and you must remember it.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 30:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: It is the key signing key, the KSK, and it's based on an asymmetric CMK that you create in KMS.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 31:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this key is managed by you and then you have another one managed by AWS which is call the ZSK, the zone signing key.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 32:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And you must know which one is yours.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 33:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So the one we manage is the KSK.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 34:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: The ZSK is managed by Route 53 directly.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 35:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: So when you enable Route 53 there's going to be some DNS signing in DNSSEC and so therefore you can verify cryptographically your records.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 36:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: And there's also a second measure of security which is that the TTL becomes at most one week for all records in the hosted zone.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 37:
- Concepts: Authoritative DNS and Record Modeling, Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: And if you have a TTL of less than one week, then they're not affected, of course.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 38:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So the exam may ask you, "How do you enable DNSSEC on a hosted zone?" So first one you need to prepare for DNSSEC signing that needs make sure that the zone availability is working good.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 39:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: That means that the DNS is responding correctly.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 40:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And this is done through customer feedback.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 41:
- Concepts: Traffic Shaping and Migration
- Services: (none explicit)
- Key Insights: Then you lower the TTL for all your records to, for example, one hour and you lower the TTL of the SOA to, the SOA minimum, sorry, to five minutes.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 42:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this is to prepare for DNSSEC signing.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 43:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Then you are going to enable DNSSEC signing on your hosted zone and you're going to create a key signing key, a KSK.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 44:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So to enable DNSSEC you can use the console or the CLI.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 45:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53
- Key Insights: And then Route 53 is going to create a KSK for us and we link it to a customer managed CMK from KMS.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 46:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So once this is done, we have enabled DNSSEC signing but that's not all.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 47:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: You need to establish a chain of trust.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 48:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And I will show you in the next slide what that means, visually.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 49:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So chain of trust means that the hosted zone, where we enable DNSSEC, is going to tell the parent hosted zone to trust it.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 50:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And this is done by creating a delegation signer, DS, record in the parent zone.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 51:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So it's very important.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 52:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: The parent zone must have a record to trust the child zone.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 53:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So the DS record contains a hash of the public key that's used to sign DNS records and that's how the trust is established.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 54:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53
- Key Insights: So your registrar that needs to trust your child zone could be, for example, Route 53, or it could be a third party registrar.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 55:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So once we've done that, we are signing all the records using the key from step two.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 56:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And from step three, the parent hosted zone knows to trust that signing key thanks to the delegation signer, DS, record that we insert in the parent zone.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 57:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And then finally, a very good to have in this setup is to monitor for errors using CloudWatch Alarms so you can create CloudWatch Alarms for two specific type of metrics and they can come in the exam.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 58:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: We have the DNSSEC internal failure and the DNSSEC key signing key needing action.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 59:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay, so all these things allow you to enable DNSSEC.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 60:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: To remember them, okay: step one, step two, three, and four.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 61:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And what is a chain of trust just to understand?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 62:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So in a DNS way, when we, for example, query for a specific record, we're first going to go to the root DNS server which is going to point to the TLD DNS server's .com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 63:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: Then the registrar, for example, for example.com on Route 53, then the hosted zone, which contains the records.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 64:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And maybe if we have a second hosted zone in there that is a sub.example.com, then we may have children of children of hosted zones.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 65:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So the chain of trust can only work if all of these DNS servers along the way are DNSSEC aware.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 66:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So what's happening is that the root DNS server is going to have a trust on the TLD DNS server.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 67:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then the TLD DNS server is going to trust the registrar.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 68:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And then we set up DNSSEC on the hosted zone and we insert a DS record so that the registrar trusts the hosted zone.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 69:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And then if we have a sub hosted zone, we insert, again in the parent hosted zone, we insert a DNS DS record to trust the sub hosted zone and so on.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 70:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And so that means that your client when it does its queries, is going to query every DNS server all at once.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 71:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then all along the way, thanks to this chain of trust, we can verify each DNS response and we can make sure, and this is of course some logic implemented in the libraries you're already using, we can verify that all these units responses have been encrypted correctly and signed correctly, thanks to the associated public key.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 72:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And this is how DNSSEC works.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 73:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So that was a pretty long lecture but hopefully now you understand how this works.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 74:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 75:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/19_Route 53/210_Route 53 Resolvers & Hybrid DNS.txt

Line 1:
- Concepts: Authoritative DNS and Record Modeling, Hybrid Name Resolution
- Services: (none explicit)
- Key Insights: Okay, so now let's view an advanced use case that comes up a lot in the exam, which is around Hybrid DNS.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 2:
- Concepts: Hybrid Name Resolution
- Services: Amazon Route 53, Route 53 Resolver
- Key Insights: So we have our region and there is the Route 53 resolver.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 3:
- Concepts: Hybrid Name Resolution
- Services: Route 53 Resolver
- Key Insights: And by default, this resolver is going to automatically answer DNS queries for local domain names for EC2 instances.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 4:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So for example, here's our VPC.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 5:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: We have an EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 6:
- Concepts: Hybrid Name Resolution
- Services: Amazon Route 53, Route 53 Resolver
- Key Insights: There is this DNS name, the Route 53 resolver knows how to reply to these queries.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 7:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this is fine.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 8:
- Concepts: Authoritative DNS and Record Modeling
- Services: Private Hosted Zone
- Key Insights: Any records in your private hosted zone as well is going to be easy to answer to, and records in public name servers, for example, for a public hosted zone, or any name server out there that is public on the internet.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 9:
- Concepts: Authoritative DNS and Record Modeling, Hybrid Name Resolution
- Services: (none explicit)
- Key Insights: Now, if you want to resolve DNS queries between your VPC and other private networks, your own networks that has other DNS resolvers, then you're going to need a hybrid DNS.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 10:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So these networks can be PeeredVPC for example, or it could be an on-premises network that is going to be connected to our VPC through Direct Connect or AWS VPN.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 11:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So for this, let me introduce you two concepts that we're going to see with diagrams in the next slides.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 12:
- Concepts: Hybrid Name Resolution
- Services: Route 53 Resolver
- Key Insights: So these are about resolver endpoints.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 13:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So there is two things.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 14:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: There's an inbound endpoint and an outbound endpoint.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 15:
- Concepts: Hybrid Name Resolution
- Services: Amazon Route 53, Route 53 Resolver
- Key Insights: So inbound endpoints are allowing DNS resolvers on your external networks to forward DNS queries to your Route 53 resolver and answer these queries.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 16:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So these resolvers will help to resolve domain names for the resources of AWS.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 17:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53, Private Hosted Zone
- Key Insights: For example, your EC2 instances or records that you create in your Route 53 private hosted zone.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 18:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So you get both answers for your internal systems, and also for AWS private host zones, and I will show you a diagram, it will make a lot more sense very, very soon.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 19:
- Concepts: Hybrid Name Resolution
- Services: (none explicit)
- Key Insights: Now, your outbound endpoint is to conditionally forward DNS queries to your on-premises DNS resolvers.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 20:
- Concepts: Hybrid Name Resolution
- Services: Route 53 Resolver
- Key Insights: And for this, we're going to create resolver rules to forward them.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 21:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now we associate these endpoints with one or more VPCs within the same region, and we create in two availability zones for high availability.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 22:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now each endpoint supports about 10,000 queries per second, per IP address.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 23:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And if you need more, well, you create more IP addresses.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 24:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And these resolvers remove the need from before where people have to run their own DNS resolvers on AWS and link them to their resolvers on premises.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 25:
- Concepts: Hybrid Name Resolution
- Services: Route 53 Resolver
- Key Insights: Now, these are managed resolver endpoints by AWS.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 26:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So let's have a look at a diagram, it will make a lot more sense.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 27:
- Concepts: Authoritative DNS and Record Modeling
- Services: Private Hosted Zone
- Key Insights: So let's take an example where we have an EC2 instance, and lives in a VPC, and we have a private hosted zone that we create, for example, aws.private, and we have also an on-premises data center that has a server.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 28:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Now, if you look at the EC2 instance, I gave it a CNAME of app.aws.private, okay?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 29:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: This is a CNAME, which is linked maybe to its EC2 DNS, or it could be an A record linked to its private IP.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 30:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: It doesn't matter right?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 31:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now what's happening is that the server at web.onpremises.private wants to access this EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 32:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And so first, the on-premises data center and the AWS cloud are going to be linked using a VPN connection, or Direct Connect.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 33:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 34:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now we're going to have on-premises as well as some DNS resolvers, for obviously the zone of our on-premises data center.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 35:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So they're going to be for the zone onpremise.private.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 36:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Now, when the server will issue a DNS query for app.aws.private the DNS resolvers are going to say, hey, you know what?
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 37:
- Concepts: Authoritative DNS and Record Modeling, Hybrid Name Resolution
- Services: Route 53 Resolver
- Key Insights: I don't know these, but what we're going to happen is that we're going to create a resolver inbound endpoint, and behind the scenes this resolver inbound endpoint has two ENIs, again for high availability.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 38:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now these ENIs are associated with private IP addresses.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 39:
- Concepts: Hybrid Name Resolution
- Services: (none explicit)
- Key Insights: So what's going to happen is that within our DNS resolvers on premises, we're going to say that for the domain name, aws.private, we're going to forward to these two IPs.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 40:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 41:
- Concepts: Authoritative DNS and Record Modeling, Hybrid Name Resolution
- Services: Route 53 Resolver
- Key Insights: And what's going to happen is that now the DNS query for app.aws.private matches this domain name that was configured on-premises, and therefore the DNS resolver is going to say, hey, I know I should forward these queries to a DNS server that has this information.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Hybrid DNS control-plane signal.

Line 42:
- Concepts: Hybrid Name Resolution
- Services: (none explicit)
- Key Insights: So it's going to forward them to these IPs.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 43:
- Concepts: Hybrid Name Resolution
- Services: Amazon Route 53, Private Hosted Zone, Route 53 Resolver
- Key Insights: Now the resolver inbound endpoint is linked to the Route 53 resolver, and then from the private hosted zone, we're going to get our final lookup and give us the final information for this query.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 44:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this is what's called inbound endpoints because requests coming from the exterior and go inbound on AWS, so on-premises to AWS.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 45:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: As you may expect, the outbound endpoints are quite similar, but they go the other way.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 46:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So we have again, the same setup, okay?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 47:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: But this time we want to be able to resolve the DNS names of the on-premises data center.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 48:
- Concepts: Hybrid Name Resolution
- Services: Amazon Route 53, Route 53 Resolver
- Key Insights: So our EC2 instance is going to ask our Route 53 resolver, Do you know about web.onprem.private?
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 49:
- Concepts: Authoritative DNS and Record Modeling, Hybrid Name Resolution
- Services: Route 53 Resolver
- Key Insights: And for this, we're going to create a resolver outbound endpoint, which has two different ENIs.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 50:
- Concepts: Authoritative DNS and Record Modeling, Hybrid Name Resolution
- Services: Route 53 Resolver
- Key Insights: And we're going to create a forwarding rule, which is saying, hey, for on-prem.private here is the target IP, and this target IP corresponds to the IP of my DNS resolver on-premises.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 51:
- Concepts: Hybrid Name Resolution
- Services: Amazon Route 53, Route 53 Resolver
- Key Insights: So the Route 53 resolver is going to send this to this endpoint, and the endpoint is going to forward the DNS query into the on-premises DNS resolver.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 52:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then we will have automatically the response from the records stored in the DNS of our on-premises data center.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 53:
- Concepts: Hybrid Name Resolution
- Services: Route 53 Resolver
- Key Insights: Now to manage this outbound endpoint, we need resolver rules.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 54:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So the outbound endpoint is going to set, to have a set of rules, okay?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 55:
- Concepts: Hybrid Name Resolution
- Services: (none explicit)
- Key Insights: And it's going to explain how to forward DNS queries on your network.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 56:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So there's conditional forwarding, which are the forwarding rules.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 57:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So the idea is that we're going to say for specific DNS queries in this domain, please match all of it to a target IP address.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 58:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So you can say, for example.com or acme.example.com, here is the target IP, or here are the target IPs for these domains.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 59:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: You can also override them with a system rule.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 60:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And this is to define overriding behavior, which is saying, hey, for a whole subdomain, do not use these forwarding rules.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 61:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: This could be something you can create.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 62:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then finally we have auto-defined system rules, which is for domains that we know are resolved internally.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 63:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: For example, domain names that are internal to AWS or private hosted zones, for example compute.amazonaws.com or EC2.internal.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 64:
- Concepts: Hybrid Name Resolution
- Services: Amazon Route 53, Route 53 Resolver
- Key Insights: Now in case of multiple rules matched, the Route 53 resolver is going to choose the most specific match, in terms of how to choose which rule to apply.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 65:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 66:
- Concepts: Hybrid Name Resolution
- Services: Route 53 Resolver
- Key Insights: Finally, these resolver rules can be shared across accounts.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 67:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: If you're using AWS resource access manager or RAM.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 68:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: That means that you can share them across multiple accounts.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 69:
- Concepts: Hybrid Name Resolution
- Services: Route 53 Resolver
- Key Insights: That means that you can manage them centrally in one dedicated account for these resolver rules.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 70:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then you can send DNS queries from multiple VPC to the target IP defined in the rules.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 71:
- Concepts: Authoritative DNS and Record Modeling, Hybrid Name Resolution
- Services: Route 53 Resolver
- Key Insights: So there are a way to have a central management of your resolver rules in the central accounts.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 72:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 73:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this is it.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 74:
- Concepts: Authoritative DNS and Record Modeling, Hybrid Name Resolution
- Services: (none explicit)
- Key Insights: This is how you have a hybrid DNS on AWS.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 75:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Remember inbound endpoints and outbound endpoints usually are used together to have in and out traffic from your both DNS systems from AWS and on-premises, and the exam will ask you about them for sure.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 76:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 77:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 78:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/19_Route 53/211_Hands On_ Route53 Resolvers - Part 1 - Setting up VPN.txt

Line 1:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Hi.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 2:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Now, this is one of the most interesting exercises in this entire course because in this exercise we are going to set up a lot of things.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 3:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And that's where this exercise is divided into three parts.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 4:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And I encourage you to do this exercise on your own because if you could do it, I sincerely think that you understand how AWS networking works.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 5:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 6:
- Concepts: Hybrid Name Resolution
- Services: (none explicit)
- Key Insights: So in this exercise we want to try and set up the hybrid DNS.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 7:
- Concepts: Hybrid Name Resolution
- Services: (none explicit)
- Key Insights: Now when we say hybrid, which means DNS can be resolved on AWS side or DNS can also be resolved on the on premises side.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 8:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So in this exercise we are going to do both.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 9:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So our lab architecture will look something like this.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 10:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Now I know that this looks a little complex but let's try to simplify that.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 11:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So on the left side we will have the cloud DNS with the name Cloud.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 12:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And on the right side we have on prem.com as a domain name.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 13:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now what we want to achieve that if any query for the domain name cloud.com or the subdomains.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 14:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53, Private Hosted Zone
- Key Insights: For example, app dot cloud.com should go to AWS route 53 private hosted zone.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 15:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And if there are any DNS queries for on prem.com domain name, then all should be routed to this DNS server which is hosted in the simulated on premise network.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 16:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And how do we do that?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 17:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now for that let's first start with the left side.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 18:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So here as you can see we just have a VPC and a simple server which we will use to test our DNS query resolution.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 19:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53, Private Hosted Zone
- Key Insights: Now in here because AWS has route 53 private hosted zone, we can just create a private hosted zone with the name as Cloud.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 20:
- Concepts: Hybrid Name Resolution
- Services: Amazon Route 53, Route 53 Resolver
- Key Insights: And then of course, you know that this app server, EC2 instance or any other instances in the VPC on the left side can directly query the DNS using the route 53 local resolver.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 21:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Right, so this will work.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 22:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: But what about if the query is coming from the on premises network.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 23:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now for that, the first thing we need to have the site to site VPN connection or the direct connect connection between this VPC and the on premises network.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 24:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So we will have this site to site VPN connection.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 25:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And this VPN server here will act as a router to send all the traffic for AWS through this VPN tunnels.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 26:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 27:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So that's the first thing.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 28:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Second, this app servers on the on premises site, which are nothing but any normal application, basically will send the DNS queries to the DNS server, which is there in the on premises site.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 29:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53, Private Hosted Zone
- Key Insights: So now if you want to send all the DNS queries for the Cloud.com to this private hosted zone, the thing that we need on the AWS side, as we learned in the previous lectures, is the route 53 resolvers, and it will be inbound resolvers.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 30:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So on the AWS side, we will create inbound resolvers.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 31:
- Concepts: Hybrid Name Resolution
- Services: (none explicit)
- Key Insights: And then on the on premises side, we need to tell this DNS server that if you receive any DNS queries for the cloud.com domain, then forward it to this IP addresses of this inbound resolvers.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 32:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 33:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So any application server there on the on premises, if it wants to hit app dot Cloud.com that DNS query will be first sent to the DNS server.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 34:
- Concepts: Hybrid Name Resolution
- Services: Route 53 Resolver
- Key Insights: And from there it will go to the inbound resolver endpoint.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 35:
- Concepts: Route53 Operational Context
- Services: Private Hosted Zone
- Key Insights: And from there it will go to the private hosted zone.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 36:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So that's where all the servers will resolve the cloud.com domain name Rthy.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 37:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 38:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So I hope it is clear.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 39:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now the second part, how can you set up and resolve the DNS queries for the on premises?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 40:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 41:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Now for that very first thing we need to have a DNS server on the on premises site.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 42:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So we will set that up and we will configure it with a domain name as on prem.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 43:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now again if the DNS query is coming from the local application server on the right side, then the DNS query will be resolved from there itself, right?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 44:
- Concepts: Hybrid Name Resolution
- Services: Amazon Route 53, Route 53 Resolver
- Key Insights: But if the DNS query is coming from the AWS side of the network, then we need the route 53 outbound resolver endpoints.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 45:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 46:
- Concepts: Hybrid Name Resolution
- Services: Route 53 Resolver
- Key Insights: So for that we will create the outbound resolver endpoints.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 47:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And in that we will have a conditional forwarder which says if the DNS query is for on prem dccom then send it to this DNS server which is hosted on the on premises network.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 48:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Then all this traffic will again go through this VPN connection and will hit the DNS server.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 49:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And that's how on prem Dccom will be resolved.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 50:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 51:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So that's our entire setup.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 52:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And that's our goal to achieve bidirectional DNS resolution.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 53:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And we are going to now implement this.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 54:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now at this point I assume that you already know how to create VPCs and subnets and Nat gateways.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 55:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So in order to save some time I have just pre-created some part of this setup.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 56:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So for the AWS side of the network I have VPC with Cidr range 20.0.0.0, slash 16 and then public subnet and the private subnets as shown.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 57:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So I hope you can also do the same.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 58:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Similarly on the right side of the network I do have similar VPC with 192 Cidr range.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 59:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And then I have a public subnet.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 60:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And in that I have also created a Nat gateway.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 61:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then I have modified the route table of both the private subnets to send the traffic for the internet through the Nat gateway.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 62:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And this Nat gateway is required because in this one of the subnets, we want to create a VPN server.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 63:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And we need to download some packages from the internet.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 64:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And that's where we need this outbound internet connection.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 65:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 66:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So I have already set this up.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 67:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let me just show you quickly in the AWS console.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 68:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then we will proceed with the next steps.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 69:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 70:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So as you can see I have this on premises VPC and the cloud VPC with the respective Cidr ranges.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 71:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Then I have the subnets.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 72:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Nothing fancy about that.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 73:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then I have the route tables.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 74:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Again, these are very normal route tables that we have been creating and using all the time, right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 75:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: As I said in the private route table for the on premises VPC, I have the Nat gateway entries, so just don't forget about that okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 76:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now with that setup let's go to the next step.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 77:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And in here let's launch these two app server on both the side.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 78:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And these are very simple server.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 79:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: We don't need to install any software on that.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 80:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: They are there just to test the connectivity and the DNS resolution.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 81:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So on the AWS side we will launch that in a public subnet.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 82:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And on the on premises side we will launch that in the private subnet.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 83:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And further if you look at the security groups.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 84:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So I want to allow SSH because I can connect to that machine.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 85:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And also I'm enabling ICMP that is a ping from the on premises network.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 86:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's do that okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 87:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So I am into my Mumbai region.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 88:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let me launch the instance and let's call it say cloud.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 89:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Make sure that you give right name so that you can identify your instances.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 90:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So Cloud App Server and Amazon Linux 23 Ami that is okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 91:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: The key pair that I have and the networking make sure that you select the cloud VPC and the public subnet.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 92:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's select that.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 93:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And let's also have the public IP so that we can connect to that.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 94:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Now for the security group let's create a new security group so that we can have the specific rules for this instance.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 95:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And in there I want SSH.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 96:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then additionally I want ICMP that is ping.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 97:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And I want to allow that from 192.168 range to test the connectivity.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 98:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: That's it.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 99:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And let's launch the instance okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 100:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: That's done.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 101:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now let's also launch the on premises side of the app server.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 102:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And in here we just need to again create similar instance.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 103:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: But at this time we need to allow the SSH from this particular subnet or this particular VPC, Cidr, because then we can connect and try the connectivity.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 104:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And again ICMP from the AWS side of the network.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 105:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's do that.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 106:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay going back to the instances and say launch the instance and let's call it on prem app server.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 107:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Again make sure that you use Amazon 2023 Ami.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 108:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Then select the key pair.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 109:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And on the networking side make sure you select the on premises VPC and the private subnet so you can launch it in private subnet two.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 110:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Then we don't need a public IP.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 111:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And then we need to create a security group for this as well.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 112:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's use similar name now ssh I want to allow from either anywhere or you can be specific with 192 Cidr.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 113:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's do that.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 114:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And additionally let's allow ICMP, IPv4 and the range should be ten .0.0 so that AWS network can ping to this instance.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 115:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 116:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: That's done.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 117:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Let's launch the instance.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 118:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Right now both the instances are launched.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 119:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And now the most important thing is to set up the site to site VPN.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 120:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Without that, you cannot really access this private instances across these two networks right now.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 121:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: How to set VPN.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 122:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: We have already done that exercise in the site to site VPN section, and if you remember, you can do it on your own.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 123:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: But if not, let's follow the steps here and let's quickly set up this VPN connection and then test it.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 124:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now, one thing about the VPN is that it really depends on the underlying operating system and then which VPN software you are using.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 125:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So as of today, I am using Amazon Linux 23 as an Ami for this VPN server, and I am using Libreswan as a VPN server.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 126:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now, in your case, if you are watching this video in say, 2025.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 127:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Maybe there is a new army and these settings might not work, so please try to adhere to the same settings.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 128:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 129:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So now let's quickly set up the VPN connection.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 130:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And for that first thing we need is this VPN server.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 131:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And for this VPN server we will have the security group with the SSH open from anywhere.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 132:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So that I can connect to that and configure the VPN server.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 133:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And further, as you know, this VPN server will also act as a router to send traffic or receive traffic from these instances, which are in a private subnet.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 134:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And that's where in order to send the DNS queries to the cloud or send the ping request to the cloud, we will allow ICMP, IPv4 and UDP traffic on port 53 from this subnets or say entire VPC Cidr range.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 135:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Right?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 136:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So now let's create this VPN server and configure that okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 137:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now back to the EC2 console.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 138:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And we should already have two servers.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 139:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now this is our third server.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 140:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And let's call it say on prem VPN server and make sure that you use Amazon Linux 2023 Ami and the key pair.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 141:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Whatever you have in the network, we should have it in the on premises VPC, and it should be in the public subnet so that this VPN server can communicate with AWS side of the Virtual Private gateway.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 142:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Now we need a public IP, and then we need to create a security group for this VPN server.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 143:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: As we learned.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 144:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And in there I'm allowing SSH.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 145:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And on top of that we need to have the DNS traffic.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 146:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So DNS UDP.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 147:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And this should be from 192 168 range.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 148:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And also we are going to add ICMP traffic from the same range.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 149:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Right okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 150:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So everything is done.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 151:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now let's launch the instance.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 152:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 153:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So we should now have three instances.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 154:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And in order to set up the VPN connection we need the public IP of this VPN server which is this.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 155:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 156:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So we created just the VPN server.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 157:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: But we need to actually set up the VPN connection.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 158:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And for that on the AWS side we need to create this virtual private gateway.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 159:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: We need to create the customer gateway with the public IP of this VPN server.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 160:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And then we need to create a site to site VPN connection.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 161:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's do that okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 162:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So for that let's go to the VPC console again.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 163:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And on the left side if you just go down here the first thing we need to create a virtual private gateway.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 164:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's call it cloud VW and rest of the settings as it is.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 165:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this is our VW.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 166:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then we need to attach that to the VPC.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 167:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So it won't allow us until it is fully created, but by that time, let's also create the customer gateway, which is the other side of the VPN network.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 168:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's create the customer gateway and let's call it on prem.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 169:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: GW and the IP address should be the public IP of the VPN server.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 170:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 171:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: That's it.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 172:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Let's create this customer gateway.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 173:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And let's go back here and see if it is created.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 174:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Yes.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 175:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And we need to attach that to our VPC.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 176:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's select the cloud VPC and attach it right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 177:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So once it is attached then we can create the VPN connection basically between the virtual private gateway and the customer gateway.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 178:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So let's go here and let's create a VPN connection.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 179:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And let's call it cloud on prem VPN connection.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 180:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now from AWS side we need to have the virtual private gateway.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 181:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And on the customer gateway side we already have it.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 182:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now routing is static.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 183:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: We are not using BGP and here we need to.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 184:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Provide the Cidr range from the on premises network.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 185:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's use this range.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 186:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And rest of the settings we can leave as it is.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 187:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And let's create this VPN connection.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 188:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Aethes okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 189:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now again it will take maybe few minutes for this VPN connection to.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 190:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Be up and running.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 191:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And by that time we can set up our on premises VPN server.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 192:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's select this and download the VPN configurations.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 193:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now here the vendor will be open Swan right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 194:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's just download this and I'm just saving it somewhere.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 195:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Maybe on the desktop.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 196:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Let's save it now.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 197:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Next thing we need to open this configuration file.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 198:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And we need to use those settings to configure on premises side of the VPN server okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 199:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So I opened this file which is a simple text file.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 200:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then we need to follow all these steps and few additional steps to set up the VPN connection, and all the settings needs to be done on the on premises side of the VPN server.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 201:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So in order to do that, let's log in over SSH to the on premises VPN server and configure this settings.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 202:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Arthur.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 203:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 204:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 205:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's go to the EC2 and pick this public IP again.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 206:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And I'm just opening my putty session.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 207:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And I will just put this IP address and I will load my SSH keys.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 208:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Which is this one.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 209:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And I can optionally also save this session so that I don't have to load my key again and again.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 210:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And with respect to the color, I want to have the white background and let me sorry.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 211:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Let me save this session say AWS with Chethan key.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 212:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 213:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And I can load this session.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 214:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: The user will be EC2 dash user.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 215:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 216:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: That's done.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 217:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now we need to install the VPN software.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 218:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Right now, all the commands for setting up the VPN server are there in the slides.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 219:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And as I said, please try to adhere to the same VPN server settings, right?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 220:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Okay, so let's install the Libreswan as a VPN software.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 221:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then we will additionally do some settings by referring to the text file that we downloaded.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 222:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 223:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's do sudo yum install liberation.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 224:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And just press y and then it will install the Libreswan VPN server.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 225:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay that's done.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 226:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now next thing we need to refer to our text downloaded file okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 227:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So it says that we need to add these entries into slash etc.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 228:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Sysctl dot conf file.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 229:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's do that.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 230:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's do sudo.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 231:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: That is for the root permission VI, etc..
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 232:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Sysctl.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 233:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Conf and just go to the end and paste this lines.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 234:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Let's save it.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 235:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then we have to do sudo sysctl minus p to apply these changes.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 236:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Sorry.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 237:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 238:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So that's done.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 239:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Next we want to make sure that this line is not hashed out in this etc.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 240:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: IPsec dot conf file.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 241:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's verify that.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 242:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So I'm just copying this and let's do cat right click.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 243:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And you can see here this line is not hashed out.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 244:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this is what we want right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 245:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Next we need to create this file which has all the VPN configurations.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 246:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's copy this first and create the file and then paste this contents there.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 247:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 248:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's again do sudo VI this file and now I'll paste the content.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 249:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay so I pasted the content.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 250:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Now a few things you need to change here.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 251:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 252:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Very first thing the left subnet that is the left side of the network.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 253:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And that is our on premises network because we are doing these settings on the on premise server.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 254:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: The left is itself right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 255:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's configure that.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 256:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And the right side is the AWS side of the network.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 257:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So that is ten 000 slash 16.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 258:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now other settings we need to remove this auth equal to ESP.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 259:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And then for the algorithms we need to change this alias 128 to 256 and mod 102 4 to 2 048.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 260:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 261:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And we need to do the same here.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 262:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So 256 and here it should be 2048 Right.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 263:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: If we do these settings, I think we are good.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 264:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Further, we need to just create this secrets file and then we need to add the line which is there.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 265:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's do that.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 266:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 267:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's do sudo VI this secrets file.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 268:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Press I for the insert mode.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 269:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Right click and escape colon wq.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 270:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 271:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So it has been saved.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 272:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay so the VPN configurations are done.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 273:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: The last thing we need to do is to just start the VPN service.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 274:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And for that let's do sudo systemctl start IPsec dot service.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 275:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 276:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: It has been started.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 277:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And just to check the status let's do this.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 278:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And if you see this kind of message that means your VPN server is running fine.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 279:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And in order to verify that let's go to the AWS side of the VPN tunnels and lets see if one of the tunnel is up.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 280:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay, so lets go to the VPC again and inside to site VPN connection.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 281:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Lets select this and lets go to the tunnel details.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 282:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So right now it's down, but lets wait for a couple of minutes.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 283:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So I'm pausing this video and I'll come back here okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 284:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Generally it takes up to 30s for this status to turn up here okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 285:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So which means our VPN is working.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 286:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And now let's proceed with additional settings with respect to the VPN routes so that we can test the connectivity between the on premises side and the AWS side.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 287:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Ether.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 288:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 289:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So we have done everything which is listed on this slide.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 290:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And now let's configure the routes.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 291:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So on the AWS side we need to tell all these subnets that if the traffic is going to or coming from the on premises network, then all the traffic should be routed through the virtual private gateway.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 292:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now how do we do that.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 293:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So either you can add the static routes into the route table itself, or you can also propagate the Cidr range automatically into this route tables.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 294:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's do that.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 295:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 296:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So if you come to the VPCs and go to the route tables, there are two route tables for the cloud and two route tables for the on premises network.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 297:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So if you go to say cloud route table here then you will see there is only route for the local Cidr range.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 298:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 299:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And here we need to add a route for virtual Private gateway.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 300:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Now as I said one option is to just add a static entry for the destination as the on premises Cidr range.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 301:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: But the better way is to propagate that route automatically.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 302:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So for that let's go here edit the route propagation and enable this.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 303:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now what it does is it automatically brings this particular Cidr range here in the route table.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 304:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 305:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So that's something that you need to do.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 306:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Second we will do the same thing for other route table on the cloud side.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 307:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And here also let's go to the route root propagation and enable that right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 308:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And you can see that this entry has been added automatically.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 309:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So remember this step.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 310:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 311:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So cloud side of the VPN configuration has been done.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 312:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now let's go on the on premises side.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 313:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And in here we need to do few settings.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 314:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: First we need to disable the source destination check on the VPN server.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 315:
- Concepts: Hybrid Name Resolution
- Services: (none explicit)
- Key Insights: And that is because it is going to forward all the traffic ultimately to this server.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 316:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So which means that traffic is not for this VPN server.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 317:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And we learned that earlier in the EC2 section as well.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 318:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So we will disable that.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 319:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And second, we will update the route table for the private subnets to send or receive traffic through this VPN server.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 320:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 321:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's do that okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 322:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's go here.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 323:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Let's select the on premises VPN server action networking and change the source destination check.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 324:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And let's say stop Right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 325:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And second, let's go to the private subnet for the on premises site which is this one.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 326:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Then let's go to the routes, then edit the routes.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 327:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And let's say if the traffic is going to or coming from ten 000 slash 16, then it has to go through this Eni of the VPN server.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 328:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So instance and the VPN server.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 329:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 330:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So at this point we are done with the entire VPN setup.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 331:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So from the cloud EC2 instance we should be able to ping to the on premises EC2 instance using its private IP and the other way round.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 332:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 333:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So for that we need to log in to one of the server.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 334:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's go to the cloud App server and we can just log in with the public IP.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 335:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's do that.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 336:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And here what I can do is just I can load my this session and just change the IP address so that I don't have to load the keys again and again.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 337:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 338:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So EC2 dash user.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 339:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And now let's ping to the on premises servers private IP address which was 192.168.1. something.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 340:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's see that that is 157.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 341:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 342:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And you can see that I can ping.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 343:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: That means our VPN connection is working perfectly.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 344:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 345:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So we need to test this connectivity.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 346:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So we tested the first one that is from the cloud to the app server on the on premises side.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 347:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now we need to do the other way around as well.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 348:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now for that we need to log in to the app server.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 349:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And it's in a private subnet.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 350:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So first we log in to the VPN server.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 351:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: From there we can SSH into the app server on the on premises side.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 352:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And from there we can try to ping to the cloud EC2 instance using its private IP.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 353:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And further from the app server we can also test the internet connectivity because that traffic will go through the Nat gateway.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 354:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 355:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So what do I mean?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 356:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So from this app server we need to first test connectivity to the app server in the cloud.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 357:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then from app server to the internet through this Nat gateway.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 358:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 359:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's do that.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 360:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And for that I need to first log in over SSH to this VPN server.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 361:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Then I need to bring in the SSH key which is a private key.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 362:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then using that private key I will ssh into this particular instance.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 363:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 364:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's do that okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 365:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So I am already onto the VPN server.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 366:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let me do VI.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 367:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And I need to create the PEM file for the app server.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 368:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And I'll copy the content here okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 369:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this is my ssh pem file.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 370:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I'm copying it and I'm just pasting it here escape colon wq.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 371:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Then I need to change the permission to 400.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 372:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then I need to ssh using this pem file ec2 dash user at the rate 192.168.1.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 373:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I think 157.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 374:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Yes.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 375:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay, so I am into the app server and from there we need to ping to the cloud server.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 376:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's check what's the IP address of the cloud server.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 377:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So for that let's go here.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 378:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So cloud app server IP address is 163.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 379:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 380:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And I'm able to ping which means the connectivity from both the side is working fine.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 381:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Finally let's try to just ping say google.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 382:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And it is also working.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 383:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: That means traffic is going to the internet.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 384:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 385:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this means we have completed our setup for the VPN.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 386:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's stop here for this particular lab.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 387:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So that was our first step basically.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 388:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And now let's move to the second step where we are going to configure now the DNS on both the sides right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 389:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So now let's go to the second step.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 390:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Thank you.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/19_Route 53/212_Hands On_ Route53 Resolvers - Part 2 - DNS configuration.txt

Line 1:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 2:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now this is step two where we will configure the domain names on both the sides of the network.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 3:
- Concepts: Route53 Operational Context
- Services: Private Hosted Zone
- Key Insights: And for that we need to first start with the AWS site where we'll create the private hosted zone with the name Cloud.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 4:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And there we will create the A record with the IP address of the app server.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 5:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then we will test the DNS resolution from the cloud side itself.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 6:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 7:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's do this okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 8:
- Concepts: Authoritative DNS and Record Modeling
- Services: Amazon Route 53
- Key Insights: So for that we need to go to the route 53 and create a hosted zone with the name say Cloud.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 9:
- Concepts: Authoritative DNS and Record Modeling
- Services: Private Hosted Zone
- Key Insights: It's a private hosted zone.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 10:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And that's where it has to be attached to our VPC on the cloud side.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 11:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So it's in Mumbai region and it has to be attached to the cloud VPC.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 12:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And let's create the hosted zone.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 13:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Now next thing we need to create a record of the type A with the name say app dot cloud.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 14:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And it should be the private IP address of the app server itself, which is 163.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 15:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So let's add that and create the record.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 16:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 17:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So this record has been created here.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 18:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: Now one more thing that you need to remember is that for resolving the DNS through route 53 local DNS, we need to enable the DNS resolution for the VPC.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 19:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So for that let's go to the VPC settings action edit VPC settings and enable this both the settings.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 20:
- Concepts: Route53 Operational Context
- Services: Private Hosted Zone
- Key Insights: Then only the DNS resolution happens with private hosted zone.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 21:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's do that.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 22:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 23:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So that is done.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 24:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now let's go back to the cloud app server and try to resolve this DNS.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 25:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay so I was already logged in there.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 26:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let me try Nslookup then app.cloud.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 27:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So it takes some time.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 28:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So let me wait for maybe a couple of minutes and then I will come back here.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 29:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Okay so I waited for a couple of minutes.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 30:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And in your case if it is not resolving you can also reboot the EC2 instance so that new DNS settings change into the effect.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 31:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 32:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And you can do that using sudo reboot command.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 33:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 34:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's do nslookup and then app.cloud.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 35:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And you can see that it is resolving this to IP address.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 36:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So which means cloud side of the DNS is working fine.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 37:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: But this is just on the cloud side.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 38:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: We actually want to do that from the on premises side.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 39:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now for that first we need to set up on premises side of the DNS server and view additional configurations.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 40:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So now let's do that.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 41:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay so we just completed this step.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 42:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And now let's do the other part.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 43:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And here we will launch this DNS server again on the EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 44:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then we will configure it.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 45:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now here as you know we need to open the security group for SSH so that we can configure and then DNS traffic all the way from cloud side and also from this particular subnet or the entire VPC Cidr.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 46:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 47:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So again let's launch this instance and then let's configure it.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 48:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So for that we need to install the bind and bind utils which configures it as a DNS server.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 49:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So we will do that.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 50:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then we need to create some additional configuration files okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 51:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So going back to the EC2 console.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 52:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So we have this three servers.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 53:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's launch one more and let's call it on prem DNS server and Amazon Linux 2023 Ami.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 54:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Then the key pair as it is.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 55:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And then we need to launch this in on premises VPC and in a different subnet that is a private subnet.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 56:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So for security group we need to allow the DNS traffic mainly.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 57:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's do that.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 58:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So SSH from anywhere.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 59:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: That's okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 60:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And here let's say dns UDP from 192.168.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 61:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So that other application server in the same VPC can query to the DNS and additionally.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 62:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: From the cloud side.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 63:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So for that ten .0.0.0 slash 16.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 64:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 65:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So that's done.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 66:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Let's launch the instance.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 67:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 68:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So now we need to log in to this instance.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 69:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Now this instance is in a private subnet.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 70:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So we can't directly log in.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 71:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: But we can SSH from the VPN server because VPN server is in a public subnet.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 72:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 73:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So let's take a private IP of this instance which is this.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 74:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And let's go to the SSH session of the VPN server.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 75:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And from there let's log in to the DNS server.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 76:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 77:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So I had this putty session already to log in to the app server.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 78:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So I can just duplicate this session which will get me into the VPN server first.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 79:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 80:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And you can verify that using the IP address range.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 81:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And from there I can use the same SSH key which I had created.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 82:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And now I will log in to the DNS server.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 83:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So the IP was 192.168, then dot ten something.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 84:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So that was 31.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 85:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Sorry I keep forgetting about these IP addresses.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 86:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 87:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So 31 let's say yes and then I'm into the DNS server.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 88:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now next thing I need to install the DNS packages.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 89:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So first thing let's update the yum packages sudo yum update minus y.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 90:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So it will take some time to update the entire yum repository.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 91:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay, surprisingly there was nothing to update.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 92:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And now let's install the DNS packages.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 93:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So sudo yum install bind and then bind utils as well.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 94:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Yes.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 95:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 96:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So that's done.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 97:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So we did these steps.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 98:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Next we need to create zone files for on prem dotcom.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 99:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And for that I have provided a text file because it is easy to copy from the text file.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 100:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So we need to create a zone file in this particular directory and paste this content and replace this particular IP addresses with the IP address of our app server.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 101:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's do that.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 102:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And this is the text file that has been provided with this lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 103:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So you can just copy it from here and replace the IP addresses as required.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 104:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's create this var named on prem.com dot zone file okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 105:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So again sudo viswa named on prem.com dot zone file insert.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 106:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And here we need to replace this IP addresses with the app server IP address which is 11 dot I think.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 107:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: One 5711 dot 157 let's verify that once.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 108:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Yeah that's correct.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 109:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So here a few things.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 110:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: You might see some text misalignment.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 111:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So if you want to correct that you can do that escape colon wq right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 112:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So that's done.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 113:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Next we need to configure Etsy Named.conf and paste this content again here.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 114:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: We need to replace this with the IP address of the DNS server itself.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 115:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's do this.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 116:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So again I'm going back to the text file and just copying this content from here.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 117:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now one thing to note is that because you have multiple putty session open, make sure that you are in the right server and that you can verify using the IP address.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 118:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Right?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 119:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's do sudo VI slash, etc..
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 120:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Named.conf.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 121:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Just delete everything so D and shift G deletes everything.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 122:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I for insert mode, right click.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 123:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Sorry.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 124:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Let me copy the content again.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 125:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And here make sure that you replace this with the IP address of the DNS server itself.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 126:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So it is dot ten.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 127:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then something which is 31 because we are on the DNS server itself.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 128:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 129:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So that is done.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 130:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Let's save this file.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 131:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And now let's start the named service which is a DNS service basically.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 132:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So so for that we can use systemctl command.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 133:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's say sudo systemctl start or restart anything works name t dot service.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 134:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And if you don't see any error then that means service is probably started well.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 135:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And you can check that using the status command.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 136:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And it says that it is running and active, and it has also imported this zone file so it can resolve the DNS for on prem.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 137:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now in some cases, if you miss some syntax in the zone file then this service will not start.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 138:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And for that you can use named dash check conf command.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 139:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And you can provide the path of the configuration files.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 140:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And it will tell you if the file is okay or not.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 141:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So if required you can do that okay.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 142:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this is done.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 143:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Next thing we need to make sure that this app server sends all the DNS queries to this DNS server.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 144:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And for that on this app server we can say the name server is the DNS server private IP address.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 145:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And we can do that using the result dot conf file.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 146:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's do that okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 147:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So I am on to the app server.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 148:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And you can verify using the IP address.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 149:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And at this point if I do say ping app dot on prem com it won't resolve because it doesn't know right?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 150:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Until we update the name server.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 151:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's do sudo VI slash, etc. resolv.conf.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 152:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And in here the IP address should be the IP address of our DNS server, which is 10.31 I think.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 153:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's save it and let's try again.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 154:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And you see the DNS is being resolved to this private IP address which is itself.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 155:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: But then it is happening.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 156:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 157:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So which means DNS is working fine on the on premises side as well.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 158:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 159:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So which means we have configured the DNS but they are still isolated.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 160:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: That means cloud DNS on the cloud side on premise DNS on the on premises side working fine.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 161:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And this is one of the milestone.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 162:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So congratulations.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 163:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now that was step two.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 164:
- Concepts: Hybrid Name Resolution
- Services: (none explicit)
- Key Insights: And now in step three let's actually set up the hybrid DNS.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 165:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So we should be able to resolve the DNS from across both the networks right.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 166:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's stop here and let's go to the step three.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/19_Route 53/213_Hands On_ Route53 Resolvers - Part 3 - Resolver endpoints.txt

Line 1:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 2:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this is step three.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 3:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now where we need to set up the rest of the things.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 4:
- Concepts: Hybrid Name Resolution
- Services: Amazon Route 53, Route 53 Resolver
- Key Insights: And that will be primarily around this route 53 resolver endpoints.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 5:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 6:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And here first thing we need to do is to make sure that on premises can resolve the cloud.com domain name.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 7:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And for that we need this inbound end points on the AWS side of the VPC.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 8:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So for that we need to create this inbound end points as I said.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 9:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And these endpoints are Enis which means they also have the security group.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 10:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So we will allow the UDP traffic on port 53 from the on premises VPC cider network range.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 11:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's follow these steps and create these inbound endpoints.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 12:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's first create the security group and then let's create these endpoints.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 13:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 14:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's go here on the left side in the EC2 console or in the VPC console as well.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 15:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: You can go and create the security groups.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 16:
- Concepts: Authoritative DNS and Record Modeling, Hybrid Name Resolution
- Services: Amazon Route 53, Route 53 Resolver
- Key Insights: So let's create a security groups and let's call it route 53 Inbound Resolver SG.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 17:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Or you can also call this cloud site and the VPC should be the cloud one.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 18:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Let's add inbound rule and say udp DNS 53 from the 192.168.0.0 slash 16.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 19:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And that's it.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 20:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Let's create the security group.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 21:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: Now let's go to the route 53 service.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 22:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And here let's go to the inbound endpoints.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 23:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And here make sure that you are in the right AWS region.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 24:
- Concepts: Hybrid Name Resolution
- Services: Route 53 Resolver
- Key Insights: Let's create the inbound resolver endpoint.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 25:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Let's give it a name.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 26:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: The VPC should be the cloud VPC.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 27:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: The security group that we just created.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 28:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: This one and endpoint type is just IPv4.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 29:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: As of now we don't have IPv6 traffic and protocol.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 30:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Let's keep it as it is.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 31:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now we need to create this in two different subnets and that will be in the private subnets.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 32:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's select this private subnet.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 33:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And we can also select another AZ and another private subnet.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 34:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Alright that is done.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 35:
- Concepts: Hybrid Name Resolution
- Services: Route 53 Resolver
- Key Insights: Let's create this inbound resolver endpoint.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 36:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 37:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now endpoint has been created.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 38:
- Concepts: Hybrid Name Resolution
- Services: (none explicit)
- Key Insights: Next thing is we need to configure this IP addresses in the on premises side of the DNS server to forward traffic for the Cloud.com to these IP addresses.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 39:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And here are those two IP addresses okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 40:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So we are done with this.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 41:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now let's go here on the on premises DNS server.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 42:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then add this zone for Cloud.com in the same named.conf file.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 43:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Now for this again you can refer to this text file here which is there as a part of your lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 44:
- Concepts: Hybrid Name Resolution
- Services: Route 53 Resolver
- Key Insights: So I'm just copying this and I need to replace these two IP addresses with the inbound resolver IP addresses.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 45:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Now just remember, one thing is that you should be on the DNS server many a times.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 46:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: There is a confusion and you might set this up in the wrong server, so make sure that you are there.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 47:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay so let's do sudo VI slash etc. name t dot conf.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 48:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Let's go towards the end and paste this content.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 49:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now I need to replace this end points.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 50:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So it should be ten .0.10. something.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 51:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So it's a 10.2 24 and 11 dot 210.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 52:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So ten dot 224 and then ten .0.11.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 53:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: 210 and then remove rest of the things.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 54:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 55:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So that's done.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 56:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Let's save it.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 57:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And we need to restart the service.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 58:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So again let's do sudo systemctl restart nemty dot service, and you can also check the status.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 59:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Yeah it is running.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 60:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay so we are done with this.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 61:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now next thing we need to check if we can resolve the cloud domain name from the on premises app server.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 62:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So again let's go to the app server and try to resolve app.cloud.com domain name.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 63:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And let's check this Nslookup app dot cloud.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 64:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And this doesn't resolve which is not expected.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 65:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And it may happen right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 66:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Because sometimes the DNS settings change automatically.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 67:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So for that you need to just check slash etc..
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 68:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Resolv.conf.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 69:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And you can see it has been reverted back.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 70:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now, in order to permanently set this, there are few additional things you might have to do, but to save time, let's just modify this file again and configure it for the DNS server that is ten .31.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 71:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And let's try again.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 72:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And now it resolves to the app server on the cloud side.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 73:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 74:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And you can also do ping.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 75:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And it works right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 76:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So that means from on premises to AWS cloud domain we are able to resolve the DNS queries.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 77:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now as I said, in order to permanently set this name server, you can either change the DHCP option set for the entire VPC, or you can do that at the EC2 instance level by modifying this file here.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 78:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So there is a file called Ifcfg for eth0.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 79:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And there at the end you can add DNS one equal to 192168.10.31.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 80:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then this setting will persist basically.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 81:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 82:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So again we can resolve the DNS.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 83:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And that's what we wanted to do.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 84:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay, so we have won half the battle.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 85:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And again congratulations for this.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 86:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now the last part where from the cloud side we want to resolve app dot on prem com domain name.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 87:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 88:
- Concepts: Hybrid Name Resolution
- Services: Route 53 Resolver
- Key Insights: And for that we need to set up the outbound resolver here.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 89:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And for that we again need to have the security group.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 90:
- Concepts: Hybrid Name Resolution
- Services: Route 53 Resolver
- Key Insights: And then we will create the outbound resolver.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 91:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And then we will add a condition saying that if the domain name is on prem.com then the traffic should go to the DNS server private IP address.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 92:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 93:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's do this.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 94:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 95:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's go to the security groups again.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 96:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And let's create another security group.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 97:
- Concepts: Hybrid Name Resolution
- Services: Amazon Route 53, Route 53 Resolver
- Key Insights: And let's call it say cloud route 53 outbound resolver SG.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 98:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: It has to be in the cloud VPC.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 99:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And we don't need inbound rules.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 100:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: We just need outbound rules.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 101:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Generally, the default outbound rule is okay, but in order to make it a little specific, let's call it 19216800 16.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 102:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And here again it should be DNS UDP traffic.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 103:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's create the outbound rule.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 104:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: Next let's go to the route 53 outbound endpoints.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 105:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Let's create the endpoint with the name that we had created in the cloud VPC.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 106:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: The security group for the outbound one endpoint type is IPv4 and protocol is the default one.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 107:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now again it will be in the same private subnet.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 108:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's select both the subnets one by one.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 109:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And that's it.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 110:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Basically let's create the outbound endpoint.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 111:
- Concepts: Hybrid Name Resolution
- Services: (none explicit)
- Key Insights: Now once the endpoint has been created now here let's create the rule let's call it say on prem rule and traffic is forward.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 112:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Domain name is on prem.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 113:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: The VPC is cloud VPC.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 114:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: That means it will only accept traffic from this VPC, and the endpoint is the one that is being created and the target IP.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 115:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So we know that it is 192.168.1.31.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 116:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: That's it.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 117:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Let's submit this and let's wait for this endpoint to be created.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 118:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 119:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So we are done with all these settings.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 120:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And now if everything is okay then we should be able to resolve app dot on prem com to the private IP address of that EC2 instance.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 121:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And we should be able to ping as well because we have the right security groups.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 122:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's try this.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 123:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay so I'm into the cloud side of the app server.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 124:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And you can very well see that from the IP address.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 125:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So let's do Nslookup app dot on prem.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 126:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And you see it is resolving the DNS.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 127:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now That's the core exercise that we wanted to do.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 128:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And optionally you can also try to ping to on prem com and it works right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 129:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And if it is working for you that's what we wanted to do.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 130:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So we could resolve the DNS from both the sides.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 131:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 132:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And if you could do this and probably troubleshoot some issues on the fly then congratulations.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 133:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: You really did a great job.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 134:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So it's really time to celebrate.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 135:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: But before you do that the most important thing do the cleanup.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 136:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: The first thing, terminate all EC2 instances and then terminate the VPN connection because VPN connection doesn't come in the free tier quota and also delete the route 53 hosted zone and everything that you might have created in this setup.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 137:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Right?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 138:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So remember to do this cleanup and then you can probably celebrate a little.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 139:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 140:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So I hope you enjoyed this exercise.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 141:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And that's it really.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 142:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So thanks for watching and stay tuned.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 143:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Ay ay ay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/19_Route 53/214_Route 53 Logging.txt

Line 1:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: So for security and logging purposes, it is possible to log the DNS queries made to Route 53.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 2:
- Concepts: Authoritative DNS and Record Modeling, Hybrid Name Resolution
- Services: Amazon Route 53, Route 53 Resolver
- Key Insights: So the DNS query logging is going to be a feature to log information about all the public DNS queries that your Route 53 Resolver receives.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 3:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this is only applicable to the public hosted zones.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 4:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And these can be sent to CloudWatch Logs, for example, and then from CloudWatch Logs, you can export them into Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 5:
- Concepts: Hybrid Name Resolution
- Services: Route 53 Resolver
- Key Insights: So this is what would happen in your CloudWatch log, and we have the log format version, we'll have the timestamp, we'll have the hosted zone ID that received this query, the query name, then the query type, the response code, the protocol, the edge location, the Resolver IP address, and the EDNS client subnets.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 6:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this is the DNS query logging feature for public hosted zone, and they go directly into CloudWatch Logs.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 7:
- Concepts: Hybrid Name Resolution
- Services: Route 53 Resolver
- Key Insights: Now, the second kind we have is the Resolver query logging.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 8:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this is to log all DNS queries made by resources within your VPC.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 9:
- Concepts: Hybrid Name Resolution
- Services: Route 53 Resolver
- Key Insights: So we have private hosted zones, or the Resolver inbound and outbound endpoints, or the Resolver DNS Firewall.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 10:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So a second example, we have an EC2 instance within a VPC.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 11:
- Concepts: Hybrid Name Resolution
- Services: Amazon Route 53, Route 53 Resolver
- Key Insights: It's going to send an example.com query into your Route 53 Resolver.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 12:
- Concepts: Hybrid Name Resolution
- Services: Route 53 Resolver
- Key Insights: Then thanks to the Resolver query logging, okay?
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 13:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this is for private resources, then is going to be sent to either your S3 buckets or CloudWatch Logs, or even Kinesis Data Firehose.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 14:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Remember this?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 15:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And then, this configuration can be shared with other AWS accounts using, again, the AWS Resource Access Manager service, or the RAM, AWS RAM service.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 16:
- Concepts: Authoritative DNS and Record Modeling, Hybrid Name Resolution
- Services: Route 53 Resolver
- Key Insights: What is logged within a Resolver query logging?
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 17:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Well, this is a JSON document that looks like this, which again, contains a lot of queries and inserts, versions, account IDs, and so on, okay?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 18:
- Concepts: Hybrid Name Resolution
- Services: Amazon Route 53, Route 53 Resolver
- Key Insights: So let's say for this lecture now you know the two ways Route 53 can do logging, either using DNS query logging or Resolver query logging.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 19:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/19_Route 53/215_Route 53 DNS Firewall.txt

Line 1:
- Concepts: Hybrid Name Resolution
- Services: Amazon Route 53, Route 53 Resolver
- Key Insights: So let's talk about the Route 53 Resolver DNS Firewall.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 2:
- Concepts: Authoritative DNS and Record Modeling, Hybrid Name Resolution
- Services: Amazon Route 53, Route 53 Resolver
- Key Insights: So this is a managed firewall, and it enables you to filter outbound DNS requests that are going out through your Route 53 Resolver from your VPC.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 3:
- Concepts: Authoritative DNS and Record Modeling, Hybrid Name Resolution
- Services: Amazon Route 53, Route 53 Resolver
- Key Insights: So if you have a look at this diagram, we see we have an EC2 instance and is going to ask our Route 53 Resolver for the DNS query for example.com.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 4:
- Concepts: Authoritative DNS and Record Modeling, Hybrid Name Resolution
- Services: Amazon Route 53, Route 53 Resolver
- Key Insights: Now we also have set up a Resolver DNS firewall, and so the Route 53 Resolver is going to perform the DNS query on the firewall saying, hey, what about example.com?
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 5:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And it's possible for us to set up rules on the firewall, for example, to block this kind of domain, we don't want to query for this domain.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 6:
- Concepts: Hybrid Name Resolution
- Services: Route 53 Resolver
- Key Insights: Therefore the resolver will say, back to the firewall, will say back to the resolver that it's blocked and so therefore the EC2 instance will not be able to resolve the domain example.com from our resolver.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 7:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So why would we do this?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 8:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Well, this is to Blacklist any malicious domains or to Whitelist trusted domains.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 9:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And what is the risk behind the DNS?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 10:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Well some attackers, they like to use the DNS protocol to send data out.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 11:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So for example, the malicious attacker will set up a DNS and through DNS queries is going to send data to it and it's called DNS exfiltration.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 12:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So it's just the little hack that can happen.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 13:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And so therefore you can manage a Whitelist or a Blacklist of domains directly from your DNS firewall.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 14:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now you can also manage the configuration of all this from the overall service called AWS Firewall Manager.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 15:
- Concepts: Hybrid Name Resolution
- Services: Amazon Route 53, Route 53 Resolver
- Key Insights: And in case you wanna look at some logging well you have integrations with CloudWatch Logs, and also the Route 53 Resolver query logs that we just saw.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 16:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now, one important piece of information and configuration need to know for the exam is the DNS firewall configuration.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 17:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And you have two ways of configuring it, Fail-close, or Fail-open.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 18:
- Concepts: Authoritative DNS and Record Modeling, Hybrid Name Resolution
- Services: Route 53 Resolver
- Key Insights: So Fail-close is going to make sure that if you don't have any response for your DNS firewall, for example, if it's down or there's a problem on AWS, if there is no response then the resolver is going to block the query.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 19:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this is to have security over availability.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 20:
- Concepts: Hybrid Name Resolution
- Services: Route 53 Resolver
- Key Insights: That means that if your Resolver DNS Firewall is down then all DNS queries will just block, okay.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 21:
- Concepts: Hybrid Name Resolution
- Services: Route 53 Resolver
- Key Insights: But if you have Fail-open that means that if your DNS firewall is down then the resolver will allow the query, and this is to make sure that you have availability over security.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 22:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So this is something the exam will ask you and you'll have to choose between Fail-open and Fail-close at some point during maybe a question.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 23:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 24:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 25:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/19_Route 53/216_Solution Architectures for DNS.txt

Line 1:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So now let's talk about some solution architecture around DNS, and one of them is called a split-view DNS or split-horizon.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 2:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: This is when you want to use the same domain name for internal and external uses, and that means that the public and the private hosted zones will have the exact same name.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 3:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: For example, example.com.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 4:
- Concepts: Authoritative DNS and Record Modeling
- Services: Private Hosted Zone
- Key Insights: So imagine a VPC, we have a public hosted zone example.com, and we'll also have private hosted zone associated with a VPC for example.com as well.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 5:
- Concepts: Route53 Operational Context
- Services: Private Hosted Zone
- Key Insights: Now, if we enter some records in the public hosted zone and we enter other records in the private hosted zone with different values, obviously, then what's going to happen?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 6:
- Concepts: Authoritative DNS and Record Modeling
- Services: Private Hosted Zone
- Key Insights: Well, if a client is outside of your VPC and issues a DNS query for app.example.com, there is going to be sent automatically, of course, to the public hosted zone because it doesn't have access to their private hosted zone, because it's outside of the VPC.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 7:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: Therefore the IP returned by this record is going to be a public IP.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 8:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And maybe this is the public IP of an EC2 instance in a public subnet as so the client knows how to get to this EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 9:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: If the client is training for db.example.com, of course, that record does not exist in the public hosted zone, and it's not going to be forwarded to the private hosted on either.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 10:
- Concepts: Route53 Operational Context
- Services: Private Hosted Zone
- Key Insights: So the records in the private hosted zone are not going to be accessible from the internet, so there will just be an empty response from the DNS query.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 11:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Now, if we consider instances or systems in our VPC, for example, EC2 instance in the workspaces.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 12:
- Concepts: Authoritative DNS and Record Modeling
- Services: Private Hosted Zone
- Key Insights: Now, if workspaces is going to ask for app.example.com, it is within your VPC, the VPC is associated with a private hosted zone, and so therefore, what's going to happen is that this workspace is going to get a new reply from the private zone with a private IP, and is going to be redirected for example, to another EC2 instance in the private subnets.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 13:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So as you can see, the same DNS query made from two different places is going to return two different IPs, and therefore send us to two different EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 14:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So, why do we do this?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 15:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Well, maybe because sometimes we want you to serve different contents, or we want to require different authentication for internal and external users or whatever.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 16:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: There are tons of efficacy for this, but as you can see, it is doable in AWS.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 17:
- Concepts: Authoritative DNS and Record Modeling
- Services: Private Hosted Zone
- Key Insights: It is completely fine to have a public hosted zone and the private hosted zone for the same domain, and this can come up again in the exam.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 18:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: Another architecture is around at multi-account DNS management while using Route 53 Resolvers.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 19:
- Concepts: Authoritative DNS and Record Modeling, Hybrid Name Resolution
- Services: (none explicit)
- Key Insights: So imagine we want to extend what we learned before about hybrid DNS, but now we have a lot of different accounts.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 20:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: We don't wanna link all these accounts together, and create resolvers in all the accounts.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 21:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: That would be highly inefficient.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 22:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So how do we do an architecture with that?
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 23:
- Concepts: Hybrid Name Resolution
- Services: Route 53 Resolver
- Key Insights: Well, we have our on-premises data center, which contains our server and our DNS resolver at onprem.private.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 24:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: This is connected obviously to your central DNS accounts.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 25:
- Concepts: Authoritative DNS and Record Modeling
- Services: Private Hosted Zone
- Key Insights: And then in our DNS accounts, we're going to have a classic architecture with a private hosted zone.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 26:
- Concepts: Authoritative DNS and Record Modeling, Hybrid Name Resolution
- Services: Route 53 Resolver
- Key Insights: A resolver inbound endpoints, a resolver outbound endpoints, and by default, the Routes 53 Resolvers.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 27:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So this is something we've seen from the past lectures.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 28:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: But now what's going to happen is that we want to delegate the sub domains to the other accounts.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 29:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So we're linking two lectures together right now.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 30:
- Concepts: Authoritative DNS and Record Modeling
- Services: Private Hosted Zone
- Key Insights: So in each account, we're going to create a private hosted zone for a sub domain.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 31:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: For example, account one dot blah, blah, blah, account two dot blah, blah, blah, and so on.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 32:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And we're, of course, going to associate them together by creating an association, and also making sure that the name servers have matched based on the sub domains.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 33:
- Concepts: Route53 Operational Context
- Services: Private Hosted Zone
- Key Insights: So once this is associated, what's going to happen is that any request that comes inbound, of course, is going to be redirected to my private hosted zone.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 34:
- Concepts: Route53 Operational Context
- Services: Private Hosted Zone
- Key Insights: The private hosted zone knows about the name servers of the other private hosted zones, and so therefore, the inbound requests from on-premises into our multi-accounts will be working just fine, and they will be managed, obviously, within each accounts.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 35:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So these three EC2 instances are now accessible from your on-premises data center.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 36:
- Concepts: Authoritative DNS and Record Modeling
- Services: Private Hosted Zone
- Key Insights: Now for the outbound is a little bit more tricky, because the private hosted zone is to go up one level to the private hosted zone in the main DNS account, and then all the way to the on-premises data center.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 37:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And to do this, well, we're going to create the forwarding rules on the central DNS accounts, of course, saying, "Hey, for on-premises data center, "please go to this IP." But these forwarding rules do not have to be recreated in every single accounts, otherwise that would be extremely painful.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 38:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So there is the AWS RAM service, which allows you to share resources with other accounts.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 39:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And some things that can be shared with other accounts are forwarding rules.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 40:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So we can share these forwarding rules with other accounts and associate them, of course, with the private hosted zones and so on.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 41:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And the idea behind this is that now there's only one central place in the central DNS accounts where these forwarding rules are going to be managed.
- Hidden/Implicit Meaning: Constraint or limitation signal; Hybrid DNS control-plane signal.

Line 42:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: And then therefore, the account A, B and C now have the capability of also resolving the DNS names of on-premises data center servers, for example.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 43:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And this is how you do multi-account DNS management using resolvers.
- Hidden/Implicit Meaning: Hybrid DNS control-plane signal.

Line 44:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So I hope that makes sense.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 45:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked this lecture, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/19_Route 53/217_Route 53 - Cleanup.txt

Line 1:
- Concepts: Route53 Operational Context
- Services: Amazon Route 53
- Key Insights: Okay, so let's clean up what we've done in the Route 53 if you wanted to avoid some costs.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 2:
- Concepts: Authoritative DNS and Record Modeling
- Services: (none explicit)
- Key Insights: So the domain name you've bought, of course stays in your accounts, and it will cost you $12 a year if you wanted to renew it or more if you've bought a more pricey domain name And the domain name itself, so the hosted zone, if you're not using it, you can delete this hosted zone by first emptying all the records.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 3:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Otherwise it will cost you 50 cents per month to keep this hosting zone alive, okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 4:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Within it, it doesn't matter if you have many records, you can just leave them as is.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 5:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: This is fine.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 6:
- Concepts: Route53 Operational Context
- Services: Elastic Load Balancing
- Key Insights: The other thing we have to delete is all our EC2 instances in our different regions, as well as our ALB.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 7:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So we had EC2 instances in three different regions.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 8:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So what I'm going to do is just delete them one by one.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 9:
- Concepts: Route53 Operational Context
- Services: Elastic Load Balancing
- Key Insights: So there was one from me in Frankfurt, and I believe that the load balancer I had created is also here.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 10:
- Concepts: Route53 Operational Context
- Services: Elastic Load Balancing
- Key Insights: So let me delete this load balancer as well.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 11:
- Concepts: Route53 Operational Context
- Services: Elastic Load Balancing
- Key Insights: And we can also delete the associated target group with that load balancer, okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 12:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: This is good.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 13:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: And we have to perform the same kind of cleanup in other regions.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 14:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: So for me was us-east-1 where I'm going to go ahead and delete another, terminate another EC2 instance, and finally do the exact same thing in ap-southeast-1.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 15:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

Line 16:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: After this, you should not incur any costs out of this lectures.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 17:
- Concepts: Route53 Operational Context
- Services: (none explicit)
- Key Insights: Okay, so I really hope you liked this section and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes Route 53 operational detail.

## Step 2 — Consolidation

### 1. Concepts List
- Authoritative DNS and Record Modeling
- Availability and Failover Control
- Hybrid Name Resolution
- Latency and Geo Routing Strategy
- Route53 Operational Context
- Traffic Shaping and Migration

### 2. Services List
- Amazon Route 53
- CloudFront
- Elastic Load Balancing
- Private Hosted Zone
- Route 53 Health Check
- Route 53 Resolver
- Traffic Policy

### 3. Features List
- alias
- cname
- failover
- geolocation
- geoproximity
- health check
- ip-based
- latency
- resolver
- ttl
- weighted

### 4. Use Cases
- 061_Route 53 - Part 1.txt:7: So, you cannot create a CNAME for example.com.
- 061_Route 53 - Part 1.txt:12: Well, the client wants to access an EC2 instance that has a public IP, is going to first query for example.com in Amazon Route 53, and then get an IP back, and then thanks to the IP, reach our EC2 instance.
- 061_Route 53 - Part 1.txt:15: So, all the resources in AWS, for example Load Balancer, CloudFront, et cetera, they expose an AWS hostname.
- 061_Route 53 - Part 1.txt:16: So, for example, this is the hostname of a Load Balancer, and maybe we want this Load Balancer to be instead myapp.mydomain.com.
- 061_Route 53 - Part 1.txt:28: We're going to get a response, for example A record, but this will have a TTL, and this response is going to be cached for the time of the TTL.
- 061_Route 53 - Part 1.txt:31: So, in case you do a high TTL, for example, 24 hours that means that you're going to get less traffic on the Route 53, but you have possibly updated records, for example, if you update them in DNS side then it will take up to 24 hours for clients to get the new values.
- 061_Route 53 - Part 1.txt:32: Otherwise, if you set a very low TTL, for example 60 seconds that means you're going to get more traffic on the DNS side which is going to cost you some money, but on the flip side, the records are going to be outdated for less time and it's going to be easier to change records, so, it's always a trade off.
- 061_Route 53 - Part 1.txt:34: Okay, now let's look at the routing policy, so we have the simple routing policy which is to route traffic to a single resource and this cannot be associated with the health check and this is the only kind of routing policy that is not associated with the health check.
- 061_Route 53 - Part 1.txt:45: The use cases for Weighted records is around load balancing between regions, testing the application versions, and so on.
- 061_Route 53 - Part 1.txt:46: Then we have latency based records which is to redirect resources that have the least latency close to us which is super helpful when latency is a user priority.
- 061_Route 53 - Part 1.txt:48: So, it's further possible for Germany users to be directed to the US, if that's the lowest latency, and for example, your app is in Asia.
- 061_Route 53 - Part 1.txt:50: So if we have, for example, two ALB, one in US-East-1 and one in AP-Southeast-1, and our users all around the world it's very possible for these users to go to US-East-1 and for the others to go to AP-Southeast-1.
- 061_Route 53 - Part 1.txt:56: Then we have Geolocation which is different from latency based, so this is to route based on the user location itself.
- 061_Route 53 - Part 1.txt:60: And then use case for geolocation is to be doing website localization, to restrict content distribution or load balancing.
- 061_Route 53 - Part 1.txt:62: Another one is called Geoproximity which is to route to resources based on the geographic location of users and resources.
- 061_Route 53 - Part 1.txt:69: But in case you increase the bias in US-East-1 and for example, you set a bias to something much higher, say 50, then if you leave it to zero on US-West-1 then the line is going to be closer to US-West-1 and therefore more users to the right of that line are gonna go to US-East-1, and the other ones are gonna go still to US-West-1.
- 061_Route 53 - Part 1.txt:75: Finally, we have one last type of record called the Multi-Value record which is to use when routing to multiple resources, and then the Route 53 is going to return multiple values and resources.
- 061_Route 53 - Part 1.txt:83: So the use cases will be to optimize performance because you know the IP ahead of time or to reduce network costs because you know where the IP is are coming from.
- 061_Route 53 - Part 1.txt:90: So for example.com, we're going to have location one, so the first CIDR block to send to the value 1,2,3,4, and the second location, the block CIDR number two to send to 5,6,7,8, and these represents the public IP of two EC2 instances.
- 062_Route 53 - Part 2.txt:1: So next, the second part of this Route 53 lecture ...so we have Hosted Zones and this is a container of records to define how to route traffic to a domain and its subdomains and we have two kinds.
- 062_Route 53 - Part 2.txt:3: So, the difference is that the Public Hosted Zone is accessible publicly and you can have the target being the Public IP of an EC2 Instance, the Public IP of an Application Load Balancer or a CloudFront distribution or an S3 Bucket website for example.
- 062_Route 53 - Part 2.txt:13: That means that for example, if you have two ALB's in two distinct regions then you can set up two Health Checks to check the health of these ALB.
- 062_Route 53 - Part 2.txt:19: So you can monitor, for example, throttles of DynamoDB alarms on RDS or any custom metrics which is very helpful for private resources.
- 062_Route 53 - Part 2.txt:23: So the use case of a Calculated Health Check is to perform maintenance on your website without causing, for example, all the Health Checks to fail.
- 062_Route 53 - Part 2.txt:26: And when you do set something up you get about fifteen Health Checkers that will check your Endpoint health so it needs to be a Public Endpoint, of course.
- 062_Route 53 - Part 2.txt:40: This is going to be linked to an SNS Topic or an CloudWatch Event which is going to trigger a Lambda function and then the Lambda function will update the DNS of your application into Route 53 and then promote your Read Replica in us-west-2 and effectively you have achieved automated failover using Health Checks and Route 53.
- 063_Route 53 - Resolvers & Hybrid DNS.txt:1: Okay, so now let's view an advanced use case that comes up a lot in the exam, which is around Hybrid DNS.
- 063_Route 53 - Resolvers & Hybrid DNS.txt:4: So for example, here's our VPC.
- 063_Route 53 - Resolvers & Hybrid DNS.txt:8: Any records in your private hosted zone as well is going to be easy to answer to, and records in public name servers, for example, for a public hosted zone, or any name server out there that is public on the internet.
- 063_Route 53 - Resolvers & Hybrid DNS.txt:10: So these networks can be PeeredVPC for example, or it could be an on-premises network that is going to be connected to our VPC through Direct Connect or AWS VPN.
- 063_Route 53 - Resolvers & Hybrid DNS.txt:17: For example, your EC2 instances or records that you create in your Route 53 private hosted zone.
- 063_Route 53 - Resolvers & Hybrid DNS.txt:27: So let's take an example where we have an EC2 instance, and lives in a VPC, and we have a private hosted zone that we create, for example, aws.private, and we have also an on-premises data center that has a server.
- 063_Route 53 - Resolvers & Hybrid DNS.txt:36: Now, when the server will issue a DNS query for app.aws.private the DNS resolvers are going to say, hey, you know what?
- 063_Route 53 - Resolvers & Hybrid DNS.txt:58: So you can say, for example.com or acme.example.com, here is the target IP, or here are the target IPs for these domains.
- 063_Route 53 - Resolvers & Hybrid DNS.txt:63: For example, domain names that are internal to AWS or private hosted zones, for example compute.amazonaws.com or EC2.internal.
- 101_What is a DNS _.txt:6: For example, when you type in your web browser, www.google.com, it will in the end give you back an IP address and this is IP address that your web browser will be able to access behind the scenes and get some data back from Google.
- 101_What is a DNS _.txt:9: So, there is a hierarchical naming structure for DNS and the idea is that at the root of www.google.com for example, there is the .com, but then there is example.com which is a bit more precise.
- 101_What is a DNS _.txt:25: And so if we take a look for example at this FQDN, so fully qualified domain name, we have http://api.www.example.com.
- 101_What is a DNS _.txt:34: So we have a web server, and let's say for example that we have an IP, it's a public IP, could be an EC2 instance, for example.
- 101_What is a DNS _.txt:49: So it could be, for example, Amazon Route 53 and so on.
- 101_What is a DNS _.txt:50: So the DNS server is gonna say, "Hey, do you know about example.com?" And the DNS server will have an entry for example.com.
- 101_What is a DNS _.txt:54: I'm going to cache that answer right away because I want to be able to, if someone is asking me again for example.com I want to get it right away, give them the answer." So, it's going to send back the answer into your browser and your web browser now has the answer and using this IP address then is going to be able to access your web server.
- 101_What is a DNS _.txt:57: For example, when you access www.google.com you're using DNS or any website.
- 101_What is a DNS _.txt:59: So, this is just some background knowledge because now we're going to go into Route 53 and learn how to manage a DNS server on our own.
- 102_Route 53 Overview.txt:6: Therefore what's going to happen is that we're going to write some DNS records into Amazon Route 53, into a hosted zone, and when the client is asking for example.com, then the Route 53 service will be able to say, "Hey, you're looking for this IP 54.22.33.44," and then the clients will be able to connect directly into our EC2 Instance.
- 102_Route 53 Overview.txt:12: So in Route 53 you're going to define a bunch of DNS records and the records define how you want to route traffic to a specific domain.
- 102_Route 53 Overview.txt:14: The record type, and we'll see what types of record we have available to us, for example it could be A or AAAA.
- 102_Route 53 Overview.txt:15: Then the value, so the value of the record, for example, 12.34.56.78 The routing policy, which is how a Route 53 will respond to queries.
- 102_Route 53 Overview.txt:22: So this is when you have, for example, example.com that will be directed into 1.2.3.4.
- 102_Route 53 Overview.txt:29: For example, you can not create a CNAME for example.com, but you can create a CNAME record for www.example.com.
- 102_Route 53 Overview.txt:34: So hosted zones are a container of records, and they will define how to route traffic to a domain and its subdomain.
- 102_Route 53 Overview.txt:36: So whenever you buy a public domain name, for example mypublicdomain.com, this is a public domain name and therefore we can create a public hosted zone and these public zone can answer the query, "Hey, what's is the IP, underlying IP of the domain name application1.mypublicdomainname.com?" But we also have private hosted zones.
- 102_Route 53 Overview.txt:38: For example, application1.company.internal.
- 102_Route 53 Overview.txt:45: So when you web browser, for example, and say, "Hey, give me example.com," and then it returns an IP.
- 102_Route 53 Overview.txt:49: So for example, we have one EC2 Instance that we want to identify with webapp.example.internal, we have another EC2 Instance that we want to identify with api.example.internal, and then we have a database we want to identify with database.example.internal.
- 102_Route 53 Overview.txt:53: So the public hosted zone and the private hosted zone work the exact same way, but just the public hosted zone allows anyone from the internet to query your records, so this is for your public records, whereas a private hosted zone is only queried from within your private resources, for example your VPC.
- 103_Route 53 - Registering a domain.txt:24: I can choose Duration, for example, one year and I can autorenew or not autorenew.
- 103_Route 53 - Registering a domain.txt:28: Otherwise someone will be able to buy the domain when you lose it.
- 104_Route 53 - Creating our first records.txt:12: And which is to route an IPv4 address into a domain name, to an IPv4 address.
- 104_Route 53 - Creating our first records.txt:55: Obviously loading it from a webpage doesn't work right now, but we'll see how we can do it later on when we have a real server.
- 105_Route 53 - EC2 Setup.txt:18: For example, Northern Virginia, so US East one.
- 105_Route 53 - EC2 Setup.txt:26: And finally I'm going to go into one last region, for example Singapore.
- 105_Route 53 - EC2 Setup.txt:34: Lastly, what I'm going to do is that I'm going to launch a load balancer in Frankfurt, for example.
- 106_Route 53 - TTL.txt:11: For example, if you set a high TTL of, say, 24 hours, then this is going to do a lot less traffic on Route 53, because less clients are doing requests, because the result are cached for 24 hours, and, possibly, while the client will have outdated records.
- 106_Route 53 - TTL.txt:13: If you said set a low TTL, for example, 60 seconds, at the opposite, then it's going to do a lot more traffic on your DNS, so a lot more dollar you're going to spend, because you get price per how many request do reach Route 53.
- 106_Route 53 - TTL.txt:16: If you plan on changing a record, the idea is that sometimes you will decrease the TTL for, say, 24 hours, and then when you know that all the clients have a new TTL that is low, then you change the record value which gets updated for everyone, and then you increase the TTL.
- 106_Route 53 - TTL.txt:35: And I can also make sure of that, for example, if I'm using CloudShell.
- 106_Route 53 - TTL.txt:48: So when the cache is expiring, then only then my command line interface or my Chrome web browser will ask again Route 53 for the value of this record.
- 107_Route 53 CNAME vs Alias.txt:2: So when you have an AWS Resource, for example, a Load Balancer or CloudFront, it will expose a hostname.
- 107_Route 53 CNAME vs Alias.txt:4: For example, you want to map this Load Balancer into myapp.mydomain.com.
- 107_Route 53 CNAME vs Alias.txt:9: For example, you can say app.mydomain.com is pointing to blabla.anything.com.
- 107_Route 53 CNAME vs Alias.txt:12: On the other hand, you have alias records, and these are specific to Route 53, but they allow you to point a hostname to a specific AWS Resource.
- 107_Route 53 CNAME vs Alias.txt:25: So it said unlike CNAME, alias records can be used for top, for the top node of the DNS namespace called the Zone Apex, so you can use a alias record for example.com.
- 107_Route 53 CNAME vs Alias.txt:27: When you have an alias record, you cannot set the TTL.
- 107_Route 53 CNAME vs Alias.txt:34: So ELBs, CloudFront Distributions, API Gateway, Elastic Beanstalk environments, S3 Websites, so not S3 Buckets but S3 Websites when these buckets are enabled as websites, VPC Interface Endpoints, Global Accelerator accelerator, and Route 53 records in the same hosted zone.
- 107_Route 53 CNAME vs Alias.txt:56: And the value of it, so we have to say, we have to take the alias right here, and we're going to route traffic to, and then we have a list of options, okay?
- 108_Routing Policy - Simple.txt:3: This is not like when you have a load balancer and the actual load balancer will route traffic to the backend EC2 instances.
- 108_Routing Policy - Simple.txt:8: The DNS only will respond to the DNS queries and then the clients will know to which way they should be doing these HTTP queries, for example.
- 108_Routing Policy - Simple.txt:14: And the idea is that with this, that we've actually been using before, we're going to route traffic to a single resource typically.
- 108_Routing Policy - Simple.txt:27: It's an A record, and the value of which is going to be, for example, my instance in ap-southeast-1.
- 108_Routing Policy - Simple.txt:46: So I can insert my one in ap-southeast-1 or one in us-east-1, for example.
- 108_Routing Policy - Simple.txt:47: So when I do so and save this, what's going to happen is that once the TTL expires from before, we're going to get two records back.
- 109_Routing Policy - Weighted.txt:10: Now the use cases for a weighted routing policy is pretty obvious, is to do for example, load balancing, maybe across different regions, or to test a new application version by sending a small amount of traffic to it, and so on.
- 109_Routing Policy - Weighted.txt:38: So this is why it's different from, for example, a simple record has two values, here, we have three records and each record has one value as an answer, but we have a weight of 10, 20 and 70.
- 110_Routing Policy - Latency.txt:5: So the closest to us, which is super helpful when latency is your main concern for your websites or applications.
- 110_Routing Policy - Latency.txt:7: So for example, if user in Germany and you have the lowest latency to a resource in the US, then this is where you will be redirected.
- 110_Routing Policy - Latency.txt:20: So when we do this thing, because we just put an IP address in here, we need to specify the region of our record.
- 110_Routing Policy - Latency.txt:53: And so let's go to Canada, for example.
- 110_Routing Policy - Latency.txt:55: So if I refresh this page now, I get the Hello World from the U.S. and when I did change my location, thanks to the VPN, it cleared all the TTL that I had for my DNS cache, locally on my laptop.
- 111_Route 53 - Health Checks.txt:3: So the idea is that, for example, we have two Load balancers in different regions and they're public load balancers, okay?
- 111_Route 53 - Health Checks.txt:7: So that's when users access our URL, for example, mydomain.com, then they get redirected to, for example, the closest load balancer they have.
- 111_Route 53 - Health Checks.txt:43: So the use case for this, for example, if you want to have a parent health check to perform maintenance on your website without causing all the health checks to fail.
- 111_Route 53 - Health Checks.txt:51: And when the alarm goes into the alarm state, then the health checker is going to be automatically unhealthy and therefore will have created exactly what we want, which is a health check on a private resource, which is the most common use case on how to do it.
- 112_Route 53 - Health Checks Hands On.txt:10: And for path, we're just going to be keeping the path as slash because while this is the same as the IP slash, which is the root of our website, if we had a real application, sometimes it is very common to have a path slash health, for example, which responds with the health of the endpoint itself.
- 112_Route 53 - Health Checks Hands On.txt:25: And do we want to be notified whenever this health check fails?
- 112_Route 53 - Health Checks Hands On.txt:37: And what I'm going to do is I'm going to go to one of my instances, for example, the one in Singapore and for the security group, I'm going to start blocking the port 80, removing this rule.
- 112_Route 53 - Health Checks Hands On.txt:45: So we can have a look at the health checkers and to give you some information around when it was last checked and so on.
- 112_Route 53 - Health Checks Hands On.txt:55: And okay, we're saying maybe you want to report healthy when one of the three health checks are healthy or when 2, or when all of them are healthy.
- 112_Route 53 - Health Checks Hands On.txt:58: So I would just keep it as this should be healthy when all of my health checks are healthy and then click on next, next.
- 112_Route 53 - Health Checks Hands On.txt:61: Obviously the state have a private EC2 instance for example.
- 113_Routing Policy - Failover.txt:7: Now the client, when it makes DNS requests, will automatically get the resource that is deemed healthy.
- 113_Routing Policy - Failover.txt:26: So if I go into the URL, so if I go to failover.stephanetheteacher.com, right now, I get an answer from EU-central-1c, That's perfect.
- 113_Routing Policy - Failover.txt:34: So let's refresh, and as we can see now, my EU-central-1 health check is deemed unhealthy, and we can look into the monitoring tab and see really when it got a unhealthy, so this is quite cool.
- 113_Routing Policy - Failover.txt:40: And while to fix it, you just go back into your security group, you would edit the inbound rule, and then you would add back the HTTP rule, and then automatically the health check is going to pass again, and therefore we are going to failover back to our primary location, okay.
- 114_Routing Policy - Geolocation.txt:3: So, for example, you can say, if a user comes from a specific continent, or a country, or even more precise, on the U.S. states, and, the most precise location is going to be selected at first, then routed to this IP.
- 114_Routing Policy - Geolocation.txt:4: So, you should create a default record, in case there's going to be no match on location, and the use case for this is going to be for website localization, to restrict content distribution, do load balancing, and so on.
- 114_Routing Policy - Geolocation.txt:19: And let's say, for example, just a country, so we can say, United States.
- 114_Routing Policy - Geolocation.txt:29: And, when I refresh this page now, what I expect is to get a Hello World, from my ap-southeast-1 instance.
- 114_Routing Policy - Geolocation.txt:30: Oh, as you can see, there's a, a long load, so, I know what's happening, so, this is a timeout, and so, whenever you see a timeout in AWS, usually you have to think about security groups.
- 114_Routing Policy - Geolocation.txt:35: And, if I go to something right next to the U.S., but not in the U.S., for example, if I go to Mexico.
- 115_Routing Policy - Geoproximity.txt:3: So this allows you to route traffic to your resources based on the geographic location of your users and resources.
- 115_Routing Policy - Geoproximity.txt:18: Now, this is simple, this is when there is no bias, okay?
- 115_Routing Policy - Geoproximity.txt:29: Well, for example, you would set your resources all around the world and say you needed to shift more traffic to a specific region.
- 115_Routing Policy - Geoproximity.txt:32: So what you to remember going into an exam is that the Geoproximity Routing is really helpful when you need to shift traffic from one region to another, by increasing the bias.
- 116_Routing Policy - IP-based.txt:3: So the use cases will be to optimize performance because you know the IP ahead of time or to reduce network costs because you know where the IPs are coming from.
- 116_Routing Policy - IP-based.txt:9: So for example.com we're going to have location one.
- 117_Routing Policy - Multi Value.txt:1: Let's talk about the last routing policy, which is Multi-Value, which is going to be used when you want to route traffic to multiple resources.
- 117_Routing Policy - Multi Value.txt:9: So when a Multi-Value query is done by our clients, it's going to receive up to eight records back, and then the clients will choose one of them.
- 117_Routing Policy - Multi Value.txt:12: This is going to be different, for example, when you have a simple routing with multiple values in it, because as you know, the simple routing policy does not allow for Health Checks, and therefore it's possible that one of the resources returned in the query of a simple routing policy will be unhealthy.
- 117_Routing Policy - Multi Value.txt:23: So, multi, and again, we're going to route to a different region, so this one is ap-southeast-1.
- 117_Routing Policy - Multi Value.txt:44: But if I take one of them, for example, I remove the eu-central-1, so I'm gonna make this one unhealthy, and I'm just going to trick it by editing and do an Invert health status.
- 118_3rd Party Domains & Route 53.txt:4: So for example, you can use GoDaddy, you can just Google Domains, and so on.
- 118_3rd Party Domains & Route 53.txt:5: And usually whenever you register a domain with a domain registrar, they will provide you as well with a DNS service to manage your DNS records.
- 118_3rd Party Domains & Route 53.txt:6: So when we created a, when registered a DNS name with a host name with Amazon, we had a Route 53 hosted zone to manage our DNS records.
- 118_3rd Party Domains & Route 53.txt:7: But it's possible for you to choose not to use, for example, AWS Route 53 as your DNS records, when you have registered your domain with Amazon Registrar.
- 118_3rd Party Domains & Route 53.txt:8: Or vice versa, you can, for example, register your domain with GoDaddy.
- 118_3rd Party Domains & Route 53.txt:17: So that's when GoDaddy answers a query, "Hey, which name server should I use?" the name servers are going to be pointing to Amazon Route 53 name servers, and therefore we can use Amazon Route 53 to manage all the EDNS records that are cleaved from that console.
- 119_Route 53 Resolvers & Hybrid DNS.txt:2: So the idea is that by default, when you have a Route 53 Resolver, which is the basic thing you create in Route 53 when you start using it, it will answer DNS queries for the local domain names for your EC2 instances for the records in your private hosted zones, as well as for the records in your public name server.
- 119_Route 53 Resolvers & Hybrid DNS.txt:13: And then this server is going to do a DNS query, for example, to look for a domain name that belongs to our private hosted zone, is going to be passed to the closest DNS resolver, so the on-premises resolver, and these resolver are going to be set up to talk to a resolver inbound endpoint, and to pass on this DNS query into our AWS Cloud.
- 119_Route 53 Resolvers & Hybrid DNS.txt:18: And this time whenever you EC2 instance queries for a DNS query that is resolved on-premises, for example, web.onpremise.private, is going to be passed through the resolver outbound endpoint to the DNS resolvers of the on-premises data center, and we'll be good to go.
- 187_What is a DNS _.txt:6: For example, when you type in your web browser, www.google.com, it will in the end give you back an IP address and this is IP address that your web browser will be able to access behind the scenes and get some data back from Google.
- 187_What is a DNS _.txt:9: So, there is a hierarchical naming structure for DNS and the idea is that at the root of www.google.com for example, there is the .com, but then there is example.com which is a bit more precise.
- 187_What is a DNS _.txt:25: And so if we take a look for example at this FQDN, so fully qualified domain name, we have http://api.www.example.com.
- 187_What is a DNS _.txt:34: So we have a web server, and let's say for example that we have an IP, it's a public IP, could be an EC2 instance, for example.
- 187_What is a DNS _.txt:49: So it could be, for example, Amazon Route 53 and so on.
- 187_What is a DNS _.txt:50: So the DNS server is gonna say, "Hey, do you know about example.com?" And the DNS server will have an entry for example.com.
- 187_What is a DNS _.txt:54: I'm going to cache that answer right away because I want to be able to, if someone is asking me again for example.com I want to get it right away, give them the answer." So, it's going to send back the answer into your browser and your web browser now has the answer and using this IP address then is going to be able to access your web server.
- 187_What is a DNS _.txt:57: For example, when you access www.google.com you're using DNS or any website.
- 187_What is a DNS _.txt:59: So, this is just some background knowledge because now we're going to go into Route 53 and learn how to manage a DNS server on our own.
- 188_Route 53 Overview.txt:6: Therefore what's going to happen is that we're going to write some DNS records into Amazon Route 53, into a hosted zone, and when the client is asking for example.com, then the Route 53 service will be able to say, "Hey, you're looking for this IP 54.22.33.44," and then the clients will be able to connect directly into our EC2 Instance.
- 188_Route 53 Overview.txt:12: So in Route 53 you're going to define a bunch of DNS records and the records define how you want to route traffic to a specific domain.
- 188_Route 53 Overview.txt:14: The record type, and we'll see what types of record we have available to us, for example it could be A or AAAA.
- 188_Route 53 Overview.txt:15: Then the value, so the value of the record, for example, 12.34.56.78 The routing policy, which is how a Route 53 will respond to queries.
- 188_Route 53 Overview.txt:22: So this is when you have, for example, example.com that will be directed into 1.2.3.4.
- 188_Route 53 Overview.txt:29: For example, you can not create a CNAME for example.com, but you can create a CNAME record for www.example.com.
- 188_Route 53 Overview.txt:34: So hosted zones are a container of records, and they will define how to route traffic to a domain and its subdomain.
- 188_Route 53 Overview.txt:36: So whenever you buy a public domain name, for example mypublicdomain.com, this is a public domain name and therefore we can create a public hosted zone and these public zone can answer the query, "Hey, what's is the IP, underlying IP of the domain name application1.mypublicdomainname.com?" But we also have private hosted zones.
- 188_Route 53 Overview.txt:38: For example, application1.company.internal.
- 188_Route 53 Overview.txt:45: So when you web browser, for example, and say, "Hey, give me example.com," and then it returns an IP.
- 188_Route 53 Overview.txt:49: So for example, we have one EC2 Instance that we want to identify with webapp.example.internal, we have another EC2 Instance that we want to identify with api.example.internal, and then we have a database we want to identify with database.example.internal.
- 188_Route 53 Overview.txt:53: So the public hosted zone and the private hosted zone work the exact same way, but just the public hosted zone allows anyone from the internet to query your records, so this is for your public records, whereas a private hosted zone is only queried from within your private resources, for example your VPC.
- 189_Route 53 - Registering a domain.txt:24: I can choose Duration, for example, one year and I can autorenew or not autorenew.
- 189_Route 53 - Registering a domain.txt:28: Otherwise someone will be able to buy the domain when you lose it.
- 190_Route 53 - Creating our first records.txt:12: And which is to route an IPv4 address into a domain name, to an IPv4 address.
- 190_Route 53 - Creating our first records.txt:55: Obviously loading it from a webpage doesn't work right now, but we'll see how we can do it later on when we have a real server.
- 191_Route 53 - EC2 Setup.txt:18: For example, Northern Virginia, so US East one.
- 191_Route 53 - EC2 Setup.txt:26: And finally I'm going to go into one last region, for example Singapore.
- 191_Route 53 - EC2 Setup.txt:34: Lastly, what I'm going to do is that I'm going to launch a load balancer in Frankfurt, for example.
- 192_Route 53 - TTL.txt:11: For example, if you set a high TTL of, say, 24 hours, then this is going to do a lot less traffic on Route 53, because less clients are doing requests, because the result are cached for 24 hours, and, possibly, while the client will have outdated records.
- 192_Route 53 - TTL.txt:13: If you said set a low TTL, for example, 60 seconds, at the opposite, then it's going to do a lot more traffic on your DNS, so a lot more dollar you're going to spend, because you get price per how many request do reach Route 53.
- 192_Route 53 - TTL.txt:16: If you plan on changing a record, the idea is that sometimes you will decrease the TTL for, say, 24 hours, and then when you know that all the clients have a new TTL that is low, then you change the record value which gets updated for everyone, and then you increase the TTL.
- 192_Route 53 - TTL.txt:35: And I can also make sure of that, for example, if I'm using CloudShell.
- 192_Route 53 - TTL.txt:48: So when the cache is expiring, then only then my command line interface or my Chrome web browser will ask again Route 53 for the value of this record.
- 193_Route 53 CNAME vs Alias.txt:2: So when you have an AWS Resource, for example, a Load Balancer or CloudFront, it will expose a hostname.
- 193_Route 53 CNAME vs Alias.txt:4: For example, you want to map this Load Balancer into myapp.mydomain.com.
- 193_Route 53 CNAME vs Alias.txt:9: For example, you can say app.mydomain.com is pointing to blabla.anything.com.
- 193_Route 53 CNAME vs Alias.txt:12: On the other hand, you have alias records, and these are specific to Route 53, but they allow you to point a hostname to a specific AWS Resource.
- 193_Route 53 CNAME vs Alias.txt:25: So it said unlike CNAME, alias records can be used for top, for the top node of the DNS namespace called the Zone Apex, so you can use a alias record for example.com.
- 193_Route 53 CNAME vs Alias.txt:27: When you have an alias record, you cannot set the TTL.
- 193_Route 53 CNAME vs Alias.txt:34: So ELBs, CloudFront Distributions, API Gateway, Elastic Beanstalk environments, S3 Websites, so not S3 Buckets but S3 Websites when these buckets are enabled as websites, VPC Interface Endpoints, Global Accelerator accelerator, and Route 53 records in the same hosted zone.
- 193_Route 53 CNAME vs Alias.txt:56: And the value of it, so we have to say, we have to take the alias right here, and we're going to route traffic to, and then we have a list of options, okay?
- 194_Routing Policy - Simple.txt:3: This is not like when you have a load balancer and the actual load balancer will route traffic to the backend EC2 instances.
- 194_Routing Policy - Simple.txt:8: The DNS only will respond to the DNS queries and then the clients will know to which way they should be doing these HTTP queries, for example.
- 194_Routing Policy - Simple.txt:14: And the idea is that with this, that we've actually been using before, we're going to route traffic to a single resource typically.
- 194_Routing Policy - Simple.txt:27: It's an A record, and the value of which is going to be, for example, my instance in ap-southeast-1.
- 194_Routing Policy - Simple.txt:46: So I can insert my one in ap-southeast-1 or one in us-east-1, for example.
- 194_Routing Policy - Simple.txt:47: So when I do so and save this, what's going to happen is that once the TTL expires from before, we're going to get two records back.
- 195_Routing Policy - Weighted.txt:10: Now the use cases for a weighted routing policy is pretty obvious, is to do for example, load balancing, maybe across different regions, or to test a new application version by sending a small amount of traffic to it, and so on.
- 195_Routing Policy - Weighted.txt:38: So this is why it's different from, for example, a simple record has two values, here, we have three records and each record has one value as an answer, but we have a weight of 10, 20 and 70.
- 196_Routing Policy - Latency.txt:10: Now the use cases for a weighted routing policy is pretty obvious, is to do for example, load balancing, maybe across different regions, or to test a new application version by sending a small amount of traffic to it, and so on.
- 196_Routing Policy - Latency.txt:38: So this is why it's different from, for example, a simple record has two values, here, we have three records and each record has one value as an answer, but we have a weight of 10, 20 and 70.
- 197_Route 53 - Health Checks.txt:3: So the idea is that, for example, we have two Load balancers in different regions and they're public load balancers, okay?
- 197_Route 53 - Health Checks.txt:7: So that's when users access our URL, for example, mydomain.com, then they get redirected to, for example, the closest load balancer they have.
- 197_Route 53 - Health Checks.txt:43: So the use case for this, for example, if you want to have a parent health check to perform maintenance on your website without causing all the health checks to fail.
- 197_Route 53 - Health Checks.txt:51: And when the alarm goes into the alarm state, then the health checker is going to be automatically unhealthy and therefore will have created exactly what we want, which is a health check on a private resource, which is the most common use case on how to do it.
- 198_Route 53 - Health Checks Hands On.txt:10: And for path, we're just going to be keeping the path as slash because while this is the same as the IP slash, which is the root of our website, if we had a real application, sometimes it is very common to have a path slash health, for example, which responds with the health of the endpoint itself.
- 198_Route 53 - Health Checks Hands On.txt:25: And do we want to be notified whenever this health check fails?
- 198_Route 53 - Health Checks Hands On.txt:37: And what I'm going to do is I'm going to go to one of my instances, for example, the one in Singapore and for the security group, I'm going to start blocking the port 80, removing this rule.
- 198_Route 53 - Health Checks Hands On.txt:45: So we can have a look at the health checkers and to give you some information around when it was last checked and so on.
- 198_Route 53 - Health Checks Hands On.txt:55: And okay, we're saying maybe you want to report healthy when one of the three health checks are healthy or when 2, or when all of them are healthy.
- 198_Route 53 - Health Checks Hands On.txt:58: So I would just keep it as this should be healthy when all of my health checks are healthy and then click on next, next.
- 198_Route 53 - Health Checks Hands On.txt:61: Obviously the state have a private EC2 instance for example.
- 199_Routing Policy - Failover.txt:7: Now the client, when it makes DNS requests, will automatically get the resource that is deemed healthy.
- 199_Routing Policy - Failover.txt:26: So if I go into the URL, so if I go to failover.stephanetheteacher.com, right now, I get an answer from EU-central-1c, That's perfect.
- 199_Routing Policy - Failover.txt:34: So let's refresh, and as we can see now, my EU-central-1 health check is deemed unhealthy, and we can look into the monitoring tab and see really when it got a unhealthy, so this is quite cool.
- 199_Routing Policy - Failover.txt:40: And while to fix it, you just go back into your security group, you would edit the inbound rule, and then you would add back the HTTP rule, and then automatically the health check is going to pass again, and therefore we are going to failover back to our primary location, okay.
- 200_Routing Policy - Geolocation.txt:3: So, for example, you can say, if a user comes from a specific continent, or a country, or even more precise, on the U.S. states, and, the most precise location is going to be selected at first, then routed to this IP.
- 200_Routing Policy - Geolocation.txt:4: So, you should create a default record, in case there's going to be no match on location, and the use case for this is going to be for website localization, to restrict content distribution, do load balancing, and so on.
- 200_Routing Policy - Geolocation.txt:19: And let's say, for example, just a country, so we can say, United States.
- 200_Routing Policy - Geolocation.txt:29: And, when I refresh this page now, what I expect is to get a Hello World, from my ap-southeast-1 instance.
- 200_Routing Policy - Geolocation.txt:30: Oh, as you can see, there's a, a long load, so, I know what's happening, so, this is a timeout, and so, whenever you see a timeout in AWS, usually you have to think about security groups.
- 200_Routing Policy - Geolocation.txt:35: And, if I go to something right next to the U.S., but not in the U.S., for example, if I go to Mexico.
- 201_Routing Policy - Geoproximity.txt:3: So this allows you to route traffic to your resources based on the geographic location of your users and resources.
- 201_Routing Policy - Geoproximity.txt:18: Now, this is simple, this is when there is no bias, okay?
- 201_Routing Policy - Geoproximity.txt:29: Well, for example, you would set your resources all around the world and say you needed to shift more traffic to a specific region.
- 201_Routing Policy - Geoproximity.txt:32: So what you to remember going into an exam is that the Geoproximity Routing is really helpful when you need to shift traffic from one region to another, by increasing the bias.
- 202_Routing Policy - Traffic Flow & Geoproximity Hands On.txt:17: So, if you wanted to specify something very simple, for example an A into an endpoint, you could say the A record will point to this value one, two, three, four, five, six, seven, right?
- 202_Routing Policy - Traffic Flow & Geoproximity Hands On.txt:21: So, we say a weight of 10 goes to, and then again, we could have some advanced records, for example, a Failover and so on.
- 202_Routing Policy - Traffic Flow & Geoproximity Hands On.txt:23: And when you're ready you can say endpoint, and specify the value of the IPv4 that you want.
- 202_Routing Policy - Traffic Flow & Geoproximity Hands On.txt:25: As you can see, on the Weighted rule for example we can add another weight, and so on, and so on.
- 202_Routing Policy - Traffic Flow & Geoproximity Hands On.txt:30: So, now for the first endpoint location you can enter custom coordinates, or you can, for example, have one of these regions of AWS available to you.
- 202_Routing Policy - Traffic Flow & Geoproximity Hands On.txt:38: So, we can say for example Singapore, which was AP Southeast 1.
- 202_Routing Policy - Traffic Flow & Geoproximity Hands On.txt:47: And if we change the bias, so if we increase the bias for example of my instance in here, so we put a bias of 34, this is going to increase the surface of the world that is going to be redirected to my instance in North America.
- 202_Routing Policy - Traffic Flow & Geoproximity Hands On.txt:69: So, as we can see, if I'm in Europe, like I'm in France, I will be able to connect to this instance, if I'm in Brazil I will connect to that instance, and if I am in, for example, India, again, I will connect to that region.
- 202_Routing Policy - Traffic Flow & Geoproximity Hands On.txt:75: If I go to Brazil, for example, zed, and refresh my page, and then it should be connecting to my American instance.
- 202_Routing Policy - Traffic Flow & Geoproximity Hands On.txt:78: Let's go to Thailand, for example, and then refresh, I'm gonna get my AP-Southeast-1b instance.
- 202_Routing Policy - Traffic Flow & Geoproximity Hands On.txt:80: And if we go back into Route 53 now and refresh this you can see if I go to Filter and type proximity the record itself, this proximity record, is directly routing to a traffic policy record, okay?
- 203_Routing Policy - IP-based.txt:3: So the use cases will be to optimize performance because you know the IP ahead of time or to reduce network costs because you know where the IPs are coming from.
- 203_Routing Policy - IP-based.txt:9: So for example.com we're going to have location one.
- 204_Routing Policy - Multi Value.txt:1: Let's talk about the last routing policy, which is Multi-Value, which is going to be used when you want to route traffic to multiple resources.
- 204_Routing Policy - Multi Value.txt:9: So when a Multi-Value query is done by our clients, it's going to receive up to eight records back, and then the clients will choose one of them.
- 204_Routing Policy - Multi Value.txt:12: This is going to be different, for example, when you have a simple routing with multiple values in it, because as you know, the simple routing policy does not allow for Health Checks, and therefore it's possible that one of the resources returned in the query of a simple routing policy will be unhealthy.
- 204_Routing Policy - Multi Value.txt:23: So, multi, and again, we're going to route to a different region, so this one is ap-southeast-1.
- 204_Routing Policy - Multi Value.txt:44: But if I take one of them, for example, I remove the eu-central-1, so I'm gonna make this one unhealthy, and I'm just going to trick it by editing and do an Invert health status.
- 205_3rd Party Domains & Route 53.txt:4: So for example, you can use GoDaddy, you can just Google Domains, and so on.
- 205_3rd Party Domains & Route 53.txt:5: And usually whenever you register a domain with a domain registrar, they will provide you as well with a DNS service to manage your DNS records.
- 205_3rd Party Domains & Route 53.txt:6: So when we created a, when registered a DNS name with a host name with Amazon, we had a Route 53 hosted zone to manage our DNS records.
- 205_3rd Party Domains & Route 53.txt:7: But it's possible for you to choose not to use, for example, AWS Route 53 as your DNS records, when you have registered your domain with Amazon Registrar.
- 205_3rd Party Domains & Route 53.txt:8: Or vice versa, you can, for example, register your domain with GoDaddy.
- 205_3rd Party Domains & Route 53.txt:17: So that's when GoDaddy answers a query, "Hey, which name server should I use?" the name servers are going to be pointing to Amazon Route 53 name servers, and therefore we can use Amazon Route 53 to manage all the EDNS records that are cleaved from that console.
- 206_DNS Migration in Route 53.txt:1: So here is a short lecture on a question that can come up in the exam, which is how to migrate the DNS service for a domain that is already in use, so that means that users are already accessing it, without making the domain offline and to do it as fast as possible?
- 206_DNS Migration in Route 53.txt:6: We need to duplicate and copy over to Route 53.
- 206_DNS Migration in Route 53.txt:16: Then once everything is done and working, we must change the NS record TTL on Route 53 this time to a higher value, for example, two days, so back to the default.
- 207_Common Route 53 scenarios.txt:3: So we can, for example, create a record, an A record that points to a specific, for example, a public IP or an elastic IP of an EC2 instance, this is very simple.
- 207_Common Route 53 scenarios.txt:4: Now, it becomes a little bit trickier and there's something that you need to know about this, when you want to point to a DNS name of an EC2 instance.
- 207_Common Route 53 scenarios.txt:6: Well, the idea is that's, for example, if you take EC2 instance and you create it on your cloud, then it has two IP, right?
- 207_Common Route 53 scenarios.txt:11: So, if we create a CNAME record for the value of being the DNS name of the EC2 instance, then a clients from outside of AWS, when requesting app.example.com will eventually resolve to the public IP of the EC2 instance, but an Institute instance, for example, or anything within your VPC that uses the same app.example.com will resolve to the private IP of that EC2 instance.
- 207_Common Route 53 scenarios.txt:19: But if I take cloud shell, for example, this is considered as a public one from a network perspective.
- 207_Common Route 53 scenarios.txt:29: So CNAME alias only works for other records, but if it wasn't A record, for example, there is no, EC2 DNS name you can choose from here.
- 207_Common Route 53 scenarios.txt:42: And then do a dig on EC2 that's in my domain name. (typing) As we can see, we have the CNAME that's exactly the same but now when this gets resolved, it gets resolved to the public IPv4 of my EC2 instance.
- 207_Common Route 53 scenarios.txt:44: So for an ALB, for example, we can point to the DNS name to the ALB.
- 207_Common Route 53 scenarios.txt:47: And this would work for both apex and non apex or if you're using a non apex type of record, for example, lb.example.com, you could use a CNAME but as a rule of thumb, I would use alias whenever possible in AWS.
- 207_Common Route 53 scenarios.txt:60: So if you have a domain name, for example, example.com, then you have an alias to S3 websites.
- 208_Route 53 - Subdomain Zones.txt:2: So, when you create a Hosted Zone, Route 53 will automatically create the Name Servers and the SOA Records.
- 208_Route 53 - Subdomain Zones.txt:5: That means you have your EC2 instance inside your VPC and you have a Public Hosted Zone for example.com, the domain you own, and also Private Hosted Zone for accounting.example.com Now, if you're EC2 Instance issues some DNS queries such as example.com or hr.example.com, they will be matched obviously to the first one, because, well, they don't comply with the accounting.example.com But if your EC2 Instance is going for accounting.example.com or seattle.accounting.example.com or whatever, as you can see, the most specific match is going to be around the Private Hosted Zone.
- 208_Route 53 - Subdomain Zones.txt:7: So this is also true, if you have two Private Zones, again, one for example.com and one for accounting.example.com Again, the most specific Records will go to the most specific Zone.
- 208_Route 53 - Subdomain Zones.txt:13: So, we reach a Hosted Zone, example.com and under one Record, for example, acme.exaple.com we're going to create a NS type of Record with four named servers.
- 208_Route 53 - Subdomain Zones.txt:15: But the idea is that now we delegate, okay, all the Records from the first Hosted Zone to the second Hosted Zone when they match the Subdomain acme.example.com And so, this is known as "Delegation Responsibility for a Subdomain to Hosted Zone" or "Delegating a Subdomain to Another Name Servers." And the use cases for this will be to have, for example, different Subdomains managed by different teams.
- 208_Route 53 - Subdomain Zones.txt:16: For example, you have accounting.example.com, you have engineering.example.com, internal.example.com, et cetera, et cetera.
- 208_Route 53 - Subdomain Zones.txt:22: So this is some advanced use cases of Domain Name Services, but at least we see how we can split them and maybe partly use a 3rd Party DNS Service in Route 53.
- 208_Route 53 - Subdomain Zones.txt:30: So we can create, for example, the Record test.sub.stephanetheteacher.com Okay?
- 209_Route 53 - DNSSEC.txt:5: So for example say we have our web server, it's hosting the website we want, for example.com.
- 209_Route 53 - DNSSEC.txt:7: So the web browser of a client is going to ask the local DNS server for example.com.
- 209_Route 53 - DNSSEC.txt:10: So it's going to ask, for example.com and Route 53 is going to return well, it's the IP 9.10.11.12.
- 209_Route 53 - DNSSEC.txt:14: And this is because, to very much simplify it, the DNS works on the UDP protocol which makes it somewhat easy to hack and also when we don't have a DNSSEC there is no cryptographic DNS verification process.
- 209_Route 53 - DNSSEC.txt:20: It only works when the hosted zones are public, so for public domain names.
- 209_Route 53 - DNSSEC.txt:35: So when you enable Route 53 there's going to be some DNS signing in DNSSEC and so therefore you can verify cryptographically your records.
- 209_Route 53 - DNSSEC.txt:41: Then you lower the TTL for all your records to, for example, one hour and you lower the TTL of the SOA to, the SOA minimum, sorry, to five minutes.
- 209_Route 53 - DNSSEC.txt:54: So your registrar that needs to trust your child zone could be, for example, Route 53, or it could be a third party registrar.
- 209_Route 53 - DNSSEC.txt:62: So in a DNS way, when we, for example, query for a specific record, we're first going to go to the root DNS server which is going to point to the TLD DNS server's .com.
- 209_Route 53 - DNSSEC.txt:63: Then the registrar, for example, for example.com on Route 53, then the hosted zone, which contains the records.
- 209_Route 53 - DNSSEC.txt:70: And so that means that your client when it does its queries, is going to query every DNS server all at once.
- 210_Route 53 Resolvers & Hybrid DNS.txt:1: Okay, so now let's view an advanced use case that comes up a lot in the exam, which is around Hybrid DNS.
- 210_Route 53 Resolvers & Hybrid DNS.txt:4: So for example, here's our VPC.
- 210_Route 53 Resolvers & Hybrid DNS.txt:8: Any records in your private hosted zone as well is going to be easy to answer to, and records in public name servers, for example, for a public hosted zone, or any name server out there that is public on the internet.
- 210_Route 53 Resolvers & Hybrid DNS.txt:10: So these networks can be PeeredVPC for example, or it could be an on-premises network that is going to be connected to our VPC through Direct Connect or AWS VPN.
- 210_Route 53 Resolvers & Hybrid DNS.txt:17: For example, your EC2 instances or records that you create in your Route 53 private hosted zone.
- 210_Route 53 Resolvers & Hybrid DNS.txt:27: So let's take an example where we have an EC2 instance, and lives in a VPC, and we have a private hosted zone that we create, for example, aws.private, and we have also an on-premises data center that has a server.
- 210_Route 53 Resolvers & Hybrid DNS.txt:36: Now, when the server will issue a DNS query for app.aws.private the DNS resolvers are going to say, hey, you know what?
- 210_Route 53 Resolvers & Hybrid DNS.txt:58: So you can say, for example.com or acme.example.com, here is the target IP, or here are the target IPs for these domains.
- 210_Route 53 Resolvers & Hybrid DNS.txt:63: For example, domain names that are internal to AWS or private hosted zones, for example compute.amazonaws.com or EC2.internal.
- 211_Hands On_ Route53 Resolvers - Part 1 - Setting up VPN.txt:7: Now when we say hybrid, which means DNS can be resolved on AWS side or DNS can also be resolved on the on premises side.
- 211_Hands On_ Route53 Resolvers - Part 1 - Setting up VPN.txt:14: For example, app dot cloud.com should go to AWS route 53 private hosted zone.
- 214_Route 53 Logging.txt:1: So for security and logging purposes, it is possible to log the DNS queries made to Route 53.
- 214_Route 53 Logging.txt:4: And these can be sent to CloudWatch Logs, for example, and then from CloudWatch Logs, you can export them into Amazon S3.
- 215_Route 53 DNS Firewall.txt:3: So if you have a look at this diagram, we see we have an EC2 instance and is going to ask our Route 53 Resolver for the DNS query for example.com.
- 215_Route 53 DNS Firewall.txt:5: And it's possible for us to set up rules on the firewall, for example, to block this kind of domain, we don't want to query for this domain.
- 215_Route 53 DNS Firewall.txt:11: So for example, the malicious attacker will set up a DNS and through DNS queries is going to send data to it and it's called DNS exfiltration.
- 215_Route 53 DNS Firewall.txt:18: So Fail-close is going to make sure that if you don't have any response for your DNS firewall, for example, if it's down or there's a problem on AWS, if there is no response then the resolver is going to block the query.
- 216_Solution Architectures for DNS.txt:2: This is when you want to use the same domain name for internal and external uses, and that means that the public and the private hosted zones will have the exact same name.
- 216_Solution Architectures for DNS.txt:3: For example, example.com.
- 216_Solution Architectures for DNS.txt:4: So imagine a VPC, we have a public hosted zone example.com, and we'll also have private hosted zone associated with a VPC for example.com as well.
- 216_Solution Architectures for DNS.txt:11: Now, if we consider instances or systems in our VPC, for example, EC2 instance in the workspaces.
- 216_Solution Architectures for DNS.txt:12: Now, if workspaces is going to ask for app.example.com, it is within your VPC, the VPC is associated with a private hosted zone, and so therefore, what's going to happen is that this workspace is going to get a new reply from the private zone with a private IP, and is going to be redirected for example, to another EC2 instance in the private subnets.
- 216_Solution Architectures for DNS.txt:31: For example, account one dot blah, blah, blah, account two dot blah, blah, blah, and so on.
- 216_Solution Architectures for DNS.txt:42: And then therefore, the account A, B and C now have the capability of also resolving the DNS names of on-premises data center servers, for example.

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
- 101_What is a DNS _.txt:47: I don't know which record it is, but there is a server called example.com that I know about which is at 5.6.7.8, that's a public IP that you should ask the answer to your question.
- 102_Route 53 Overview.txt:5: So the idea is that you have your clients and they want to access your EC2 Instance @example.com but right now your EC2 Instance only has a public IP.
- 102_Route 53 Overview.txt:9: And this is the only service in AWS that will provide 100% availability SLA.
- 102_Route 53 Overview.txt:18: So we have, the ones you must know is A, quadruple A, CNAME, and NS, so we'll have a look at those in the hands-on.
- 102_Route 53 Overview.txt:20: So let's learn about the important record types we need to know from an exam perspective.
- 102_Route 53 Overview.txt:37: And these are for domain names that you, they are not publicly available, they're privates, and only you within your own virtual private cloud or VPC can resolve this URL.
- 102_Route 53 Overview.txt:39: You may have seen this if you're working for a private company, they sometimes have URLs that you can only access from within your corporate network, that's because this is a private URL, this is a private and behind the scenes there is a private DNS record.
- 102_Route 53 Overview.txt:53: So the public hosted zone and the private hosted zone work the exact same way, but just the public hosted zone allows anyone from the internet to query your records, so this is for your public records, whereas a private hosted zone is only queried from within your private resources, for example your VPC.
- 103_Route 53 - Registering a domain.txt:3: You should have none right now.
- 103_Route 53 - Registering a domain.txt:36: And finally, you should enable privacy protection so that you don't receive spam.
- 103_Route 53 - Registering a domain.txt:45: And you will have a few records and you should have two records.
- 103_Route 53 - Registering a domain.txt:47: But you should have the NS record and the SOA record.
- 103_Route 53 - Registering a domain.txt:48: And the NS record is simply saying that you should use the AWS DNS to insert DNS queries.
- 105_Route 53 - EC2 Setup.txt:21: So again, no key pair required.
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
- 108_Routing Policy - Simple.txt:2: So a routing policy is helping Route 53 respond to DNS queries, and we shouldn't be confused about the word routing.
- 108_Routing Policy - Simple.txt:8: The DNS only will respond to the DNS queries and then the clients will know to which way they should be doing these HTTP queries, for example.
- 108_Routing Policy - Simple.txt:22: So if you have enabled an alias record alongside the simple policy, then you can only specify on AWS resource as a target.
- 109_Routing Policy - Weighted.txt:9: So to make this work, the DNS records must have the same name and type, and you can associate them with health checks, although we haven't seen with health checks are again yet, but we'll have a look at them very, very soon.
- 109_Routing Policy - Weighted.txt:40: But if I refresh and I need to refresh maybe every three seconds, at some points, I should be getting a response from another region.
- 111_Route 53 - Health Checks.txt:31: Now the health checks will only pass if you have the status 2xx or 3xx status code back from the load balancer and the health check has a cool capability.
- 111_Route 53 - Health Checks.txt:33: Finally, very important from a network perspective, if you want for it to work, obviously, the health checkers must be able to access your Application Balancer or whatever endpoints you have.
- 111_Route 53 - Health Checks.txt:34: And so therefore you must allow incoming requests coming from the Route 53 health checkers' IP address range.
- 111_Route 53 - Health Checks.txt:45: So in case you want to monitor something private, it's going to be difficult because while all the Route 53 health checkers live on the public web, they're outside of your VPC, so they cannot access private endpoints.
- 112_Route 53 - Health Checks Hands On.txt:41: And what this will do is that's the one health check for AP Southeast one should give me a unhealthy status.
- 112_Route 53 - Health Checks Hands On.txt:58: So I would just keep it as this should be healthy when all of my health checks are healthy and then click on next, next.
- 112_Route 53 - Health Checks Hands On.txt:64: But I can't create it right now because I don't have an alarm available for us.
- 113_Routing Policy - Failover.txt:6: But there can only be one primary and one secondary.
- 113_Routing Policy - Failover.txt:18: So what this is saying is that this record should be my primary one, but this is going to be associated with a health check, which means that you can failover to a second record.
- 113_Routing Policy - Failover.txt:37: Then next time I refresh this, I should not be in Eu-central-1c, I should be in US-east-1.
- 114_Routing Policy - Geolocation.txt:4: So, you should create a default record, in case there's going to be no match on location, and the use case for this is going to be for website localization, to restrict content distribution, do load balancing, and so on.
- 114_Routing Policy - Geolocation.txt:6: So the idea is that, if we have a map of Europe, with multiple countries, we can define a geolocation record for Germany, to see the German users should go to this IP, which contains my German version of my app.
- 114_Routing Policy - Geolocation.txt:14: And we're saying, okay, all of Asia, so, any user located in Asia, should go to my ap-southeast-1 EC2 instance.
- 115_Routing Policy - Geoproximity.txt:13: So the diagram should make everything more simple.
- 115_Routing Policy - Geoproximity.txt:14: And to me, this is what you should remember.
- 116_Routing Policy - IP-based.txt:2: In Route 53, you're going to define a list of CIDRs, they are IP ranges for your clients, and you're going to say, based on the CIDR which location the traffic should be sent to.
- 117_Routing Policy - Multi Value.txt:3: Now, you can associate them with Health Checks, and so therefore the only resources returned via the Multi-Value policy are going to be the ones that are associated with a healthy Health Check.
- 117_Routing Policy - Multi Value.txt:49: And so if I reissue a dig command right here, I should expect to see only two values, yes, as a result.
- 118_3rd Party Domains & Route 53.txt:17: So that's when GoDaddy answers a query, "Hey, which name server should I use?" the name servers are going to be pointing to Amazon Route 53 name servers, and therefore we can use Amazon Route 53 to manage all the EDNS records that are cleaved from that console.
- 119_Route 53 Resolvers & Hybrid DNS.txt:20: The idea behind this, I think, a bit complicated lecture is that if you want to connect your on-premises data center and AWS and make sure the DNS queries are resolved both ways, you must use the resolver inbound and outbound endpoint.
- 119_Route 53 Resolvers & Hybrid DNS.txt:22: All you should know.
- 120_Route 53 - Section Cleanup.txt:16: After this, you should not incur any costs out of this lectures.
- 187_What is a DNS _.txt:47: I don't know which record it is, but there is a server called example.com that I know about which is at 5.6.7.8, that's a public IP that you should ask the answer to your question.
- 188_Route 53 Overview.txt:5: So the idea is that you have your clients and they want to access your EC2 Instance @example.com but right now your EC2 Instance only has a public IP.
- 188_Route 53 Overview.txt:9: And this is the only service in AWS that will provide 100% availability SLA.
- 188_Route 53 Overview.txt:18: So we have, the ones you must know is A, quadruple A, CNAME, and NS, so we'll have a look at those in the hands-on.
- 188_Route 53 Overview.txt:20: So let's learn about the important record types we need to know from an exam perspective.
- 188_Route 53 Overview.txt:37: And these are for domain names that you, they are not publicly available, they're privates, and only you within your own virtual private cloud or VPC can resolve this URL.
- 188_Route 53 Overview.txt:39: You may have seen this if you're working for a private company, they sometimes have URLs that you can only access from within your corporate network, that's because this is a private URL, this is a private and behind the scenes there is a private DNS record.
- 188_Route 53 Overview.txt:53: So the public hosted zone and the private hosted zone work the exact same way, but just the public hosted zone allows anyone from the internet to query your records, so this is for your public records, whereas a private hosted zone is only queried from within your private resources, for example your VPC.
- 189_Route 53 - Registering a domain.txt:3: You should have none right now.
- 189_Route 53 - Registering a domain.txt:36: And finally, you should enable privacy protection so that you don't receive spam.
- 189_Route 53 - Registering a domain.txt:45: And you will have a few records and you should have two records.
- 189_Route 53 - Registering a domain.txt:47: But you should have the NS record and the SOA record.
- 189_Route 53 - Registering a domain.txt:48: And the NS record is simply saying that you should use the AWS DNS to insert DNS queries.
- 191_Route 53 - EC2 Setup.txt:21: So again, no key pair required.
- 192_Route 53 - TTL.txt:33: So if I do demo.stephanetheteacher.com on Google, then automatically it should direct me to, yes, my eu-central-1 instance.
- 192_Route 53 - TTL.txt:48: So when the cache is expiring, then only then my command line interface or my Chrome web browser will ask again Route 53 for the value of this record.
- 193_Route 53 CNAME vs Alias.txt:10: And this only works if you have a non root domain name, so if you have something.mydomain.com.
- 193_Route 53 CNAME vs Alias.txt:19: Okay, so if we look at these alias records in details, they are only mapped to resources in AWS.
- 193_Route 53 CNAME vs Alias.txt:27: When you have an alias record, you cannot set the TTL.
- 193_Route 53 CNAME vs Alias.txt:35: One thing that is not there is that you cannot set an alias for an EC2 DNS name.
- 193_Route 53 CNAME vs Alias.txt:44: And then the value must be a domain name.
- 193_Route 53 CNAME vs Alias.txt:55: So I can create a record, and this time it's going to be myalias.stephanetheteacher.com, and the record type is A because my ALB is currently having only IPv4 traffic.
- 193_Route 53 CNAME vs Alias.txt:74: The CNAME is not permitted at apex of this zone." So this zone is stephanetheteacher.com, and the apex of the zone is stephanetheteacher.com, and therefore we cannot set up a CNAME at the apex.
- 193_Route 53 CNAME vs Alias.txt:75: So the only way we can deal with this issue is instead to create an alias and the record is going to be of type A, and the alias is going to point again to an ALB or CLB in the eu-central-1 region, and the load balancer is going to be the one from before.
- 194_Routing Policy - Simple.txt:2: So a routing policy is helping Route 53 respond to DNS queries, and we shouldn't be confused about the word routing.
- 194_Routing Policy - Simple.txt:8: The DNS only will respond to the DNS queries and then the clients will know to which way they should be doing these HTTP queries, for example.
- 194_Routing Policy - Simple.txt:22: So if you have enabled an alias record alongside the simple policy, then you can only specify on AWS resource as a target.
- 195_Routing Policy - Weighted.txt:9: So to make this work, the DNS records must have the same name and type, and you can associate them with health checks, although we haven't seen with health checks are again yet, but we'll have a look at them very, very soon.
- 195_Routing Policy - Weighted.txt:40: But if I refresh and I need to refresh maybe every three seconds, at some points, I should be getting a response from another region.
- 196_Routing Policy - Latency.txt:9: So to make this work, the DNS records must have the same name and type, and you can associate them with health checks, although we haven't seen with health checks are again yet, but we'll have a look at them very, very soon.
- 196_Routing Policy - Latency.txt:40: But if I refresh and I need to refresh maybe every three seconds, at some points, I should be getting a response from another region.
- 197_Route 53 - Health Checks.txt:31: Now the health checks will only pass if you have the status 2xx or 3xx status code back from the load balancer and the health check has a cool capability.
- 197_Route 53 - Health Checks.txt:33: Finally, very important from a network perspective, if you want for it to work, obviously, the health checkers must be able to access your Application Balancer or whatever endpoints you have.
- 197_Route 53 - Health Checks.txt:34: And so therefore you must allow incoming requests coming from the Route 53 health checkers' IP address range.
- 197_Route 53 - Health Checks.txt:45: So in case you want to monitor something private, it's going to be difficult because while all the Route 53 health checkers live on the public web, they're outside of your VPC, so they cannot access private endpoints.
- 198_Route 53 - Health Checks Hands On.txt:41: And what this will do is that's the one health check for AP Southeast one should give me a unhealthy status.
- 198_Route 53 - Health Checks Hands On.txt:58: So I would just keep it as this should be healthy when all of my health checks are healthy and then click on next, next.
- 198_Route 53 - Health Checks Hands On.txt:64: But I can't create it right now because I don't have an alarm available for us.
- 199_Routing Policy - Failover.txt:6: But there can only be one primary and one secondary.
- 199_Routing Policy - Failover.txt:18: So what this is saying is that this record should be my primary one, but this is going to be associated with a health check, which means that you can failover to a second record.
- 199_Routing Policy - Failover.txt:37: Then next time I refresh this, I should not be in Eu-central-1c, I should be in US-east-1.
- 200_Routing Policy - Geolocation.txt:4: So, you should create a default record, in case there's going to be no match on location, and the use case for this is going to be for website localization, to restrict content distribution, do load balancing, and so on.
- 200_Routing Policy - Geolocation.txt:6: So the idea is that, if we have a map of Europe, with multiple countries, we can define a geolocation record for Germany, to see the German users should go to this IP, which contains my German version of my app.
- 200_Routing Policy - Geolocation.txt:14: And we're saying, okay, all of Asia, so, any user located in Asia, should go to my ap-southeast-1 EC2 instance.
- 201_Routing Policy - Geoproximity.txt:13: So the diagram should make everything more simple.
- 201_Routing Policy - Geoproximity.txt:14: And to me, this is what you should remember.
- 202_Routing Policy - Traffic Flow & Geoproximity Hands On.txt:59: And very importantly, the pricing per month is $50 per month, so to just create this policy record you will pay $50 per month.
- 202_Routing Policy - Traffic Flow & Geoproximity Hands On.txt:60: It's prorated obviously for how long you keep it, but if you want to remain within the free tier and, you shouldn't create it obviously.
- 202_Routing Policy - Traffic Flow & Geoproximity Hands On.txt:75: If I go to Brazil, for example, zed, and refresh my page, and then it should be connecting to my American instance.
- 202_Routing Policy - Traffic Flow & Geoproximity Hands On.txt:81: And the only way I can edit this record is if I click on Edit right here, and this will take me directly into the traffic policy UI, okay?
- 203_Routing Policy - IP-based.txt:2: In Route 53, you're going to define a list of CIDRs, they are IP ranges for your clients, and you're going to say, based on the CIDR which location the traffic should be sent to.
- 204_Routing Policy - Multi Value.txt:3: Now, you can associate them with Health Checks, and so therefore the only resources returned via the Multi-Value policy are going to be the ones that are associated with a healthy Health Check.
- 204_Routing Policy - Multi Value.txt:49: And so if I reissue a dig command right here, I should expect to see only two values, yes, as a result.
- 205_3rd Party Domains & Route 53.txt:17: So that's when GoDaddy answers a query, "Hey, which name server should I use?" the name servers are going to be pointing to Amazon Route 53 name servers, and therefore we can use Amazon Route 53 to manage all the EDNS records that are cleaved from that console.
- 206_DNS Migration in Route 53.txt:2: So it should make sense to you, but it's still good to know the steps.
- 206_DNS Migration in Route 53.txt:16: Then once everything is done and working, we must change the NS record TTL on Route 53 this time to a higher value, for example, two days, so back to the default.
- 206_DNS Migration in Route 53.txt:18: So that's it, it should make sense to you, but now you know how you would see the steps in case it comes up in the exam.
- 207_Common Route 53 scenarios.txt:7: It has its public IP, and it has its private IP, but it only has one public DNS name.
- 207_Common Route 53 scenarios.txt:10: And will give you the result of a private IPv4, if you create from inside of AWS, that means that we can not create an alias record on this, by the way, we can only create a CNAME record.
- 207_Common Route 53 scenarios.txt:13: So if I have a look at my EC2 instance right here, as you can see, there is a private IPv4 address and a public IPv4 address, and there's only one public IPv4 DNS.
- 207_Common Route 53 scenarios.txt:29: So CNAME alias only works for other records, but if it wasn't A record, for example, there is no, EC2 DNS name you can choose from here.
- 207_Common Route 53 scenarios.txt:54: In this case, you must create a CNAME record because well, alias doesn't work.
- 207_Common Route 53 scenarios.txt:57: So in this case, we must create an alias record for it.
- 207_Common Route 53 scenarios.txt:58: And the bucket name must be the exact same as the domain name of your extra bucket.
- 207_Common Route 53 scenarios.txt:59: So this is very, very, very important.
- 207_Common Route 53 scenarios.txt:62: And the bucket of your buckets must be as well, example.com, otherwise, things will not work.
- 208_Route 53 - Subdomain Zones.txt:17: Or, this is also very helpful as said, because IAM permissions can be only applied at the Hosted Zone level, not at the Records level.
- 208_Route 53 - Subdomain Zones.txt:40: And so the Record is going to be sub.stephanetheteacher.com so should be link to my second Hosted Zone, okay?
- 208_Route 53 - Subdomain Zones.txt:61: And so you could do like, Subdomain delegation across accounts, which is quite nice, because the only things you have to specify are the Name Servers.
- 208_Route 53 - Subdomain Zones.txt:63: We can restrict maybe some users to only this sub, the main name.
- 209_Route 53 - DNSSEC.txt:20: It only works when the hosted zones are public, so for public domain names.
- 209_Route 53 - DNSSEC.txt:29: And the first one is managed by you and you must remember it.
- 209_Route 53 - DNSSEC.txt:32: And you must know which one is yours.
- 209_Route 53 - DNSSEC.txt:51: So it's very important.
- 209_Route 53 - DNSSEC.txt:52: The parent zone must have a record to trust the child zone.
- 209_Route 53 - DNSSEC.txt:65: So the chain of trust can only work if all of these DNS servers along the way are DNSSEC aware.
- 210_Route 53 Resolvers & Hybrid DNS.txt:41: And what's going to happen is that now the DNS query for app.aws.private matches this domain name that was configured on-premises, and therefore the DNS resolver is going to say, hey, I know I should forward these queries to a DNS server that has this information.
- 211_Hands On_ Route53 Resolvers - Part 1 - Setting up VPN.txt:14: For example, app dot cloud.com should go to AWS route 53 private hosted zone.
- 211_Hands On_ Route53 Resolvers - Part 1 - Setting up VPN.txt:15: And if there are any DNS queries for on prem.com domain name, then all should be routed to this DNS server which is hosted in the simulated on premise network.
- 211_Hands On_ Route53 Resolvers - Part 1 - Setting up VPN.txt:62: And this Nat gateway is required because in this one of the subnets, we want to create a VPN server.
- 211_Hands On_ Route53 Resolvers - Part 1 - Setting up VPN.txt:114: And additionally let's allow ICMP, IPv4 and the range should be ten .0.0 so that AWS network can ping to this instance.
- 211_Hands On_ Route53 Resolvers - Part 1 - Setting up VPN.txt:119: And now the most important thing is to set up the site to site VPN.
- 211_Hands On_ Route53 Resolvers - Part 1 - Setting up VPN.txt:120: Without that, you cannot really access this private instances across these two networks right now.
- 211_Hands On_ Route53 Resolvers - Part 1 - Setting up VPN.txt:138: And we should already have two servers.
- 211_Hands On_ Route53 Resolvers - Part 1 - Setting up VPN.txt:141: Whatever you have in the network, we should have it in the on premises VPC, and it should be in the public subnet so that this VPN server can communicate with AWS side of the Virtual Private gateway.
- 211_Hands On_ Route53 Resolvers - Part 1 - Setting up VPN.txt:147: And this should be from 192 168 range.
- 211_Hands On_ Route53 Resolvers - Part 1 - Setting up VPN.txt:153: So we should now have three instances.
- 211_Hands On_ Route53 Resolvers - Part 1 - Setting up VPN.txt:169: GW and the IP address should be the public IP of the VPN server.
- 211_Hands On_ Route53 Resolvers - Part 1 - Setting up VPN.txt:262: So 256 and here it should be 2048 Right.
- 211_Hands On_ Route53 Resolvers - Part 1 - Setting up VPN.txt:291: So on the AWS side we need to tell all these subnets that if the traffic is going to or coming from the on premises network, then all the traffic should be routed through the virtual private gateway.
- 211_Hands On_ Route53 Resolvers - Part 1 - Setting up VPN.txt:297: So if you go to say cloud route table here then you will see there is only route for the local Cidr range.
- 211_Hands On_ Route53 Resolvers - Part 1 - Setting up VPN.txt:331: So from the cloud EC2 instance we should be able to ping to the on premises EC2 instance using its private IP and the other way round.
- 212_Hands On_ Route53 Resolvers - Part 2 - DNS configuration.txt:14: And it should be the private IP address of the app server itself, which is 163.
- 212_Hands On_ Route53 Resolvers - Part 2 - DNS configuration.txt:20: Then only the DNS resolution happens with private hosted zone.
- 212_Hands On_ Route53 Resolvers - Part 2 - DNS configuration.txt:70: So we can't directly log in.
- 212_Hands On_ Route53 Resolvers - Part 2 - DNS configuration.txt:103: So you can just copy it from here and replace the IP addresses as required.
- 212_Hands On_ Route53 Resolvers - Part 2 - DNS configuration.txt:141: So if required you can do that okay.
- 212_Hands On_ Route53 Resolvers - Part 2 - DNS configuration.txt:152: And in here the IP address should be the IP address of our DNS server, which is 10.31 I think.
- 212_Hands On_ Route53 Resolvers - Part 2 - DNS configuration.txt:165: So we should be able to resolve the DNS from across both the networks right.
- 213_Hands On_ Route53 Resolvers - Part 3 - Resolver endpoints.txt:17: Or you can also call this cloud site and the VPC should be the cloud one.
- 213_Hands On_ Route53 Resolvers - Part 3 - Resolver endpoints.txt:26: The VPC should be the cloud VPC.
- 213_Hands On_ Route53 Resolvers - Part 3 - Resolver endpoints.txt:45: Now just remember, one thing is that you should be on the DNS server many a times.
- 213_Hands On_ Route53 Resolvers - Part 3 - Resolver endpoints.txt:50: So it should be ten .0.10. something.
- 213_Hands On_ Route53 Resolvers - Part 3 - Resolver endpoints.txt:91: And then we will add a condition saying that if the domain name is on prem.com then the traffic should go to the DNS server private IP address.
- 213_Hands On_ Route53 Resolvers - Part 3 - Resolver endpoints.txt:102: And here again it should be DNS UDP traffic.
- 213_Hands On_ Route53 Resolvers - Part 3 - Resolver endpoints.txt:114: That means it will only accept traffic from this VPC, and the endpoint is the one that is being created and the target IP.
- 213_Hands On_ Route53 Resolvers - Part 3 - Resolver endpoints.txt:120: And now if everything is okay then we should be able to resolve app dot on prem com to the private IP address of that EC2 instance.
- 213_Hands On_ Route53 Resolvers - Part 3 - Resolver endpoints.txt:121: And we should be able to ping as well because we have the right security groups.
- 213_Hands On_ Route53 Resolvers - Part 3 - Resolver endpoints.txt:135: But before you do that the most important thing do the cleanup.
- 214_Route 53 Logging.txt:3: So this is only applicable to the public hosted zones.
- 215_Route 53 DNS Firewall.txt:16: Now, one important piece of information and configuration need to know for the exam is the DNS firewall configuration.
- 216_Solution Architectures for DNS.txt:41: And the idea behind this is that now there's only one central place in the central DNS accounts where these forwarding rules are going to be managed.
- 217_Route 53 - Cleanup.txt:16: After this, you should not incur any costs out of this lectures.

### 6. Patterns / Architectures
- 061_Route 53 - Part 1.txt:51: Next we have Failover for active-passive type of record.
- 062_Route 53 - Part 2.txt:35: So let's take an example of a Solution Architecture for multi-region failover with RDS.
- 105_Route 53 - EC2 Setup.txt:4: And very simply, I will choose Amazon Linux2 on this architecture, a T2 micro type of instance.
- 111_Route 53 - Health Checks.txt:5: So we're running into a multi-region setup because we want high availability, and so on, at the region level.
- 191_Route 53 - EC2 Setup.txt:4: And very simply, I will choose Amazon Linux2 on this architecture, a T2 micro type of instance.
- 197_Route 53 - Health Checks.txt:5: So we're running into a multi-region setup because we want high availability, and so on, at the region level.
- 211_Hands On_ Route53 Resolvers - Part 1 - Setting up VPN.txt:9: So our lab architecture will look something like this.
- 216_Solution Architectures for DNS.txt:1: So now let's talk about some solution architecture around DNS, and one of them is called a split-view DNS or split-horizon.
- 216_Solution Architectures for DNS.txt:18: Another architecture is around at multi-account DNS management while using Route 53 Resolvers.
- 216_Solution Architectures for DNS.txt:22: So how do we do an architecture with that?
- 216_Solution Architectures for DNS.txt:25: And then in our DNS accounts, we're going to have a classic architecture with a private hosted zone.

## Step 3 — Deep Expansion (Route 53 Routing Concepts)

### Amazon Route 53
- What it is: Authoritative DNS and traffic-routing control plane for internet and private domains.
- Why it exists: Routes users to optimal endpoints while supporting resilience and migration scenarios.
- Internal working: Record lookup applies policy logic, optionally linked with health state and endpoint characteristics.
- Architecture: Multi-region endpoint topology with policy-controlled DNS steering.
- Key components: Hosted zones, records, alias targets, routing policies, health checks.

### Route 53 Resolver for Hybrid
- What it is: VPC DNS recursion and forwarding service bridging cloud and on-prem namespaces.
- Why it exists: Provides deterministic hybrid name resolution without custom DNS appliance sprawl.
- Internal working: Resolver rules match domains and forward queries to configured endpoints/targets.
- Architecture: Shared DNS hub with inbound/outbound endpoints and delegated rule ownership.
- Key components: Endpoint ENIs, forwarding rules, associations, query logs.

## Cross-Cloud Mapping (Concept-First)

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| Managed authoritative DNS | Route 53 | Azure DNS | Cloud DNS |
| Policy-driven DNS traffic steering | Route 53 routing policies | Traffic Manager/Front Door policy patterns | Cloud DNS with LB policy patterns |
| Health-check integrated DNS failover | Route 53 health checks + failover records | Traffic Manager endpoint monitoring | Global LB health-based routing patterns |
| Hybrid resolver forwarding | Route 53 Resolver | Azure DNS Private Resolver | Cloud DNS forwarding and peering |

### Trade-offs and Decision Notes
- DNS-based failover is control-plane driven and depends on TTL and client resolver behavior.
- Latency/geographic routing improves user experience but requires careful policy ordering.
- Weighted routing is a strong low-risk migration strategy for canary and blue-green cutovers.

## Phase-wise Architect-Level Organization

### Phase 1 — Foundations
- Define authoritative zones, record taxonomy, and endpoint ownership.
- Establish policy intent for latency, resilience, and migration needs.

### Phase 2 — Core Services
- Implement records, routing policies, and health-check-linked failover patterns.
- Apply resolver integration for hybrid and private resolution requirements.

### Phase 3 — Advanced Patterns
- Use weighted cutovers for progressive migrations and rollback safety.
- Combine geo and latency strategies for global UX and regulatory constraints.

### Phase 4 — System Design
- Reference architecture: multi-region endpoints with DNS policy-driven steering and hybrid resolution.
- Scaling considerations: record policy sprawl, resolver dependency chains, TTL tuning.
- Cost considerations: query volume, health-check counts, operational failure-domain management.

<!-- BEGIN PRACTICE_ENHANCEMENTS -->

## Hands-On Practice (Kid-Friendly Step-by-Step)

### Safety First
- Use a sandbox account only.
- Set a budget alert before creating resources.
- Delete resources after practice to avoid surprise cost.

### Hands-On Signals Found In This KB
- Signal 1: So for that we need to go to the route 53 and create a hosted zone with the name say Cloud.com.
- Signal 2: And here we will launch this DNS server again on the EC2 instance.
- Signal 3: Now here as you know we need to open the security group for SSH so that we can configure and then DNS traffic all the way from cloud side and also from this particular subnet or the entire VPC Cidr.
- Signal 4: So let's launch one more and let's call it on prem DNS server and Amazon Linux 2023 Ami.
- Signal 5: Transcript signals that for that we need to go to the route 53 and create a hosted zone with the name say Cloud.com.
- Signal 6: Transcript signals that here we will launch this DNS server again on the EC2 instance.
- Signal 7: Transcript signals that let's launch one more and let's call it on prem DNS server and Amazon Linux 2023 Ami.
- Signal 8: Design implication: for that we need to go to the route 53 and create a hosted zone with the name say Cloud.com.
- Signal 9: And there we will create the A record with the IP address of the app server.
- Signal 10: Now next thing we need to create a record of the type A with the name say app dot cloud.com.

### Service-Specific Lab Paths
### Activity 1: Amazon EC2 Lab for Route 53 records, routing policies, health checks, failover, geolocation/geoproximity, hybrid resolver routing
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

### Activity 2: Amazon VPC Lab for Route 53 records, routing policies, health checks, failover, geolocation/geoproximity, hybrid resolver routing
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

### Activity 3: Elastic Load Balancing Lab for Route 53 records, routing policies, health checks, failover, geolocation/geoproximity, hybrid resolver routing
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

### Activity 4: Amazon CloudWatch Lab for Route 53 records, routing policies, health checks, failover, geolocation/geoproximity, hybrid resolver routing
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

Use this lens to study Route 53 records, routing policies, health checks, failover, geolocation/geoproximity, hybrid resolver routing in a cloud-agnostic way: focus on capability first, provider name second.

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

