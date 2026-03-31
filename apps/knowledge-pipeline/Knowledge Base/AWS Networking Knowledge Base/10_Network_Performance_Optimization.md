# 10_Network_Performance_Optimization.md

## Scope
- Topic: Bandwidth, latency, MTU, enhanced networking, EFA, placement groups, network I/O limits and optimization patterns
- Files processed: 12
- Extracted non-empty transcript lines: 907
- Processing mode: line-by-line (sentence-level), zero-loss

## Real Material - Architect Learning Build (Domain 10: Network Performance Optimization)

This section is the study-first architecture guide for latency-sensitive design, bandwidth ceilings, topology-aware placement, and AWS network performance tuning.

### Phase 1 - Foundations

#### Module 1: Performance Mental Model
- Performance problems must be classified before they can be solved.
- Latency, throughput, packet rate, jitter, and MTU are different bottlenecks.
- Optimization without measurement usually produces noise, not improvement.




##### Source Transcript Details
- Module focus: Performance Mental Model
- Primary transcript files:
- outputs/AWS Speciality/advanced-networking-specialty/06_Network Performance and Optimization/038_Basics of Network performance - Bandwidth, Latency, Jitter, Throughput, PPS, MTU.txt
- outputs/AWS Speciality/advanced-networking-specialty/06_Network Performance and Optimization/040_Enhanced Networking.txt
- outputs/AWS Speciality/advanced-networking-specialty/06_Network Performance and Optimization/045_Exam Essentials.txt
- outputs/AWS Speciality/advanced-networking-specialty/06_Network Performance and Optimization/042_Bandwidth Limits inside and outside of VPC.txt
- outputs/AWS Speciality/advanced-networking-specialty/06_Network Performance and Optimization/039_Placement Groups and EBS Optimized EC2 instances.txt
- outputs/AWS Speciality/advanced-networking-specialty/06_Network Performance and Optimization/044_Network performance Summary.txt
- outputs/AWS Speciality/advanced-networking-specialty/06_Network Performance and Optimization/041_DPDK and Elastic Fabric Adapter (EFA).txt
- outputs/AWS Speciality/advanced-networking-specialty/06_Network Performance and Optimization/043_Network I_O credits.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/06_EC2 - Solutions Architect Associate Level/049_EC2 Placement Groups.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/06_EC2 - Solutions Architect Associate Level/050_EC2 Placement Groups - Hands On.txt
- Top concept clusters from transcript metadata:
- Performance Operational Context
- Latency Throughput and PPS Fundamentals
- Packet and MTU Efficiency
- Placement and Topology Optimization
- Instance and NIC Performance Model
- High Performance Computing Patterns
- Cost and Transfer Efficiency
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 12
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 907
- Key insights inside selected files: 800
- Unique concept tags in selected files: 7

##### Transcript-Enriched Learning Notes
- Now in this section let's understand the VPC network performance and optimization.
- Because given a scenario you should be able to decide which will be the best option to optimize the overall network performance.
- And when we say network performance, it could mean different things.
- Now, before we get into the details of all the controls that VPC provides, let's first understand the basics of network performance.
- And in that we will discuss some generic terminologies that we use to define the network performance.
- Now the another parameter that affects your network performance is the latency.
- Which means that the computing power that you have also affects the network performance.
- And now one more important thing with respect to the network performance is the MTU or maximum transmission unit.
- And then we will see how in AWS you can use jumbo frames to improve the network performance.
- You can also maximize the performance using the jumbo frames.
- It gives you maximum network performance.
- And finally, remember that it's not like you just enable the jumbo frame while sending the traffic from EC2 instance, and it will increase your performance because you know that if jumbo frames are not supported on th...
- Of course, the term says itself, it means you have to enhance the network performance between two systems.
- So again, SR-IOV and PCI passthrough are methods of device virtualization that provides of course, higher input/output performance and lower CPU utilization.
- Now, there are few other mechanisms to enhance the performance of network throughput using DPDK and EFA as well, which is specially designed for HPC workloads.
- So with respect to the network performance, there are a lot of things that we saw.
- So that's one optimization technique that you can apply now while using the enhanced networking and placement group.
- So whenever dp DQ understand that its OS level optimization.

##### Polished Architect Notes
- Transcript signals that in this section let's understand the VPC network performance and optimization.
- Transcript signals that because given a scenario you should be able to decide which will be the best option to optimize the overall network performance.
- Transcript signals that when we say network performance, it could mean different things.
- Transcript signals that before we get into the details of all the controls that VPC provides, let's first understand the basics of network performance.
- Transcript signals that in that we will discuss some generic terminologies that we use to define the network performance.
- Transcript signals that the another parameter that affects your network performance is the latency.
- Transcript signals that which means that the computing power that you have also affects the network performance.
- Transcript signals that now one more important thing with respect to the network performance is the MTU or maximum transmission unit.
- Transcript signals that then we will see how in AWS you can use jumbo frames to improve the network performance.
- Transcript signals that you can also maximize the performance using the jumbo frames.
- Transcript signals that it gives you maximum network performance.
- Transcript signals that finally, remember that it's not like you just enable the jumbo frame while sending the traffic from EC2 instance, and it will increase your performance because you know that if jumbo frames are not supported on th...

##### Architect Synthesis (Transcript-Derived)
- Treat Performance Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Latency Throughput and PPS Fundamentals as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Packet and MTU Efficiency as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Placement and Topology Optimization as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Instance and NIC Performance Model as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: in this section let's understand the VPC network performance and optimization.
- Design implication: because given a scenario you should be able to decide which will be the best option to optimize the overall network performance.
- Design implication: when we say network performance, it could mean different things.
#### Module 2: Instance and Topology Effects
- Placement matters when latency and east-west traffic are important.
- NIC capabilities and enhanced networking materially affect real throughput and PPS.
- Network performance is a workload-and-instance-family question, not a generic AWS promise.




##### Source Transcript Details
- Module focus: Instance and Topology Effects
- Primary transcript files:
- outputs/AWS Speciality/advanced-networking-specialty/06_Network Performance and Optimization/039_Placement Groups and EBS Optimized EC2 instances.txt
- outputs/AWS Speciality/advanced-networking-specialty/06_Network Performance and Optimization/045_Exam Essentials.txt
- outputs/AWS Speciality/advanced-networking-specialty/06_Network Performance and Optimization/040_Enhanced Networking.txt
- outputs/AWS Speciality/advanced-networking-specialty/06_Network Performance and Optimization/038_Basics of Network performance - Bandwidth, Latency, Jitter, Throughput, PPS, MTU.txt
- outputs/AWS Speciality/advanced-networking-specialty/06_Network Performance and Optimization/042_Bandwidth Limits inside and outside of VPC.txt
- outputs/AWS Speciality/advanced-networking-specialty/06_Network Performance and Optimization/044_Network performance Summary.txt
- outputs/AWS Speciality/advanced-networking-specialty/06_Network Performance and Optimization/041_DPDK and Elastic Fabric Adapter (EFA).txt
- outputs/AWS Speciality/advanced-networking-specialty/06_Network Performance and Optimization/043_Network I_O credits.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/06_EC2 - Solutions Architect Associate Level/049_EC2 Placement Groups.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/06_EC2 - Solutions Architect Associate Level/050_EC2 Placement Groups - Hands On.txt
- Top concept clusters from transcript metadata:
- Performance Operational Context
- Latency Throughput and PPS Fundamentals
- Packet and MTU Efficiency
- Placement and Topology Optimization
- Instance and NIC Performance Model
- High Performance Computing Patterns
- Cost and Transfer Efficiency
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 12
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 907
- Key insights inside selected files: 800
- Unique concept tags in selected files: 7

##### Transcript-Enriched Learning Notes
- So far, well, we talked about what affects the network performance, and we talked about MTU.
- So at high level, if you want to optimize the network performance, you can look at three areas.
- Now, one is you can use cluster placement group for your EC2 instances, which definitely gives you the maximum network throughput between those instances, and we'll talk shortly about that.
- Second is EBS optimized instances, and we will talk what that mean.
- So let's see, first two things, cluster placement group and EBS optimized instances and then we will have separate lectures to talk about enhanced networking.
- So if you already know the cluster placement group, it is a group of EC2 instances you launch together and you launch in a such a way that all these EC2 instances are physically as close as to each other.
- So it's a logical grouping of instances within a single availability zone, which makes sure the network latency is lower because across AZs they are at least 100 or up to 100 kilometers apart.
- And there is, of course latency there, but having in same availability zone, there would be a minimum latency between the instances.
- Now, this placement cluster groups are ideal for HPC workload, which requires very low latency network throughput between the instances.
- You have multiple EC2 instances, and typically they're in the same AZ and also could be in the same rack, which gives the maximum network performance.
- So if the question talks about having the maximum network throughput between EC2 instances, then always choose a placement group as one of the options.
- Okay, next, we talked about EBS optimized instances.
- Now what that means, if you have any EBS attached to your EC2 instance, it is not really physically attached to your instance.
- And what that means it uses maybe a network or dedicated, or it could be a shared network to communicate to the instance and which also means there could be additional latency to access your EBS data from your EC2 ins...
- Now, EBS input output may affect your network performance.
- Understand that this EC2 has some network interfaces here, and you are communicating to this instances from maybe over the internet and same interface is also being used to do the input output operation from the EBS.
- And that is the problem for your EC2 instances.
- So Amazon EBS-optimized instances deliver the dedicated throughput between your EC2 and EBS.

##### Polished Architect Notes
- Transcript signals that far, well, we talked about what affects the network performance, and we talked about MTU.
- Transcript signals that at high level, if you want to optimize the network performance, you can look at three areas.
- Transcript signals that one is you can use cluster placement group for your EC2 instances, which definitely gives you the maximum network throughput between those instances, and we'll talk shortly about that.
- Transcript signals that second is EBS optimized instances, and we will talk what that mean.
- Transcript signals that let's see, first two things, cluster placement group and EBS optimized instances and then we will have separate lectures to talk about enhanced networking.
- Transcript signals that if you already know the cluster placement group, it is a group of EC2 instances you launch together and you launch in a such a way that all these EC2 instances are physically as close as to each other.
- Transcript signals that it's a logical grouping of instances within a single availability zone, which makes sure the network latency is lower because across AZs they are at least 100 or up to 100 kilometers apart.
- Transcript signals that there is, of course latency there, but having in same availability zone, there would be a minimum latency between the instances.
- Transcript signals that this placement cluster groups are ideal for HPC workload, which requires very low latency network throughput between the instances.
- Transcript signals that you have multiple EC2 instances, and typically they're in the same AZ and also could be in the same rack, which gives the maximum network performance.
- Transcript signals that if the question talks about having the maximum network throughput between EC2 instances, then always choose a placement group as one of the options.
- Transcript signals that next, we talked about EBS optimized instances.

##### Architect Synthesis (Transcript-Derived)
- Treat Performance Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Latency Throughput and PPS Fundamentals as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Packet and MTU Efficiency as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Placement and Topology Optimization as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Instance and NIC Performance Model as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: far, well, we talked about what affects the network performance, and we talked about MTU.
- Design implication: at high level, if you want to optimize the network performance, you can look at three areas.
- Design implication: one is you can use cluster placement group for your EC2 instances, which definitely gives you the maximum network throughput between those instances, and we'll talk shortly about that.
#### Module 3: Architectural Trade-offs
- Cluster placement can improve latency while reducing flexibility.
- High-performance networking features are justified only for the right workload profile.
- Cost, resilience, and performance are usually in tension.






##### Source Transcript Details
- Module focus: Architectural Trade-offs
- Primary transcript files:
- outputs/AWS Speciality/advanced-networking-specialty/06_Network Performance and Optimization/038_Basics of Network performance - Bandwidth, Latency, Jitter, Throughput, PPS, MTU.txt
- outputs/AWS Speciality/advanced-networking-specialty/06_Network Performance and Optimization/040_Enhanced Networking.txt
- outputs/AWS Speciality/advanced-networking-specialty/06_Network Performance and Optimization/045_Exam Essentials.txt
- outputs/AWS Speciality/advanced-networking-specialty/06_Network Performance and Optimization/042_Bandwidth Limits inside and outside of VPC.txt
- outputs/AWS Speciality/advanced-networking-specialty/06_Network Performance and Optimization/039_Placement Groups and EBS Optimized EC2 instances.txt
- outputs/AWS Speciality/advanced-networking-specialty/06_Network Performance and Optimization/044_Network performance Summary.txt
- outputs/AWS Speciality/advanced-networking-specialty/06_Network Performance and Optimization/041_DPDK and Elastic Fabric Adapter (EFA).txt
- outputs/AWS Speciality/advanced-networking-specialty/06_Network Performance and Optimization/043_Network I_O credits.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/06_EC2 - Solutions Architect Associate Level/049_EC2 Placement Groups.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/06_EC2 - Solutions Architect Associate Level/050_EC2 Placement Groups - Hands On.txt
- Top concept clusters from transcript metadata:
- Performance Operational Context
- Latency Throughput and PPS Fundamentals
- Packet and MTU Efficiency
- Placement and Topology Optimization
- Instance and NIC Performance Model
- High Performance Computing Patterns
- Cost and Transfer Efficiency
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 12
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 907
- Key insights inside selected files: 800
- Unique concept tags in selected files: 7

##### Transcript-Enriched Learning Notes
- Now in this section let's understand the VPC network performance and optimization.
- Because given a scenario you should be able to decide which will be the best option to optimize the overall network performance.
- And when we say network performance, it could mean different things.
- Now, before we get into the details of all the controls that VPC provides, let's first understand the basics of network performance.
- And in that we will discuss some generic terminologies that we use to define the network performance.
- Now the another parameter that affects your network performance is the latency.
- Which means that the computing power that you have also affects the network performance.
- And now one more important thing with respect to the network performance is the MTU or maximum transmission unit.
- And then we will see how in AWS you can use jumbo frames to improve the network performance.
- You can also maximize the performance using the jumbo frames.
- It gives you maximum network performance.
- And finally, remember that it's not like you just enable the jumbo frame while sending the traffic from EC2 instance, and it will increase your performance because you know that if jumbo frames are not supported on th...
- Of course, the term says itself, it means you have to enhance the network performance between two systems.
- So again, SR-IOV and PCI passthrough are methods of device virtualization that provides of course, higher input/output performance and lower CPU utilization.
- Now, there are few other mechanisms to enhance the performance of network throughput using DPDK and EFA as well, which is specially designed for HPC workloads.
- So with respect to the network performance, there are a lot of things that we saw.
- So that's one optimization technique that you can apply now while using the enhanced networking and placement group.
- So whenever dp DQ understand that its OS level optimization.

##### Polished Architect Notes
- Transcript signals that in this section let's understand the VPC network performance and optimization.
- Transcript signals that because given a scenario you should be able to decide which will be the best option to optimize the overall network performance.
- Transcript signals that when we say network performance, it could mean different things.
- Transcript signals that before we get into the details of all the controls that VPC provides, let's first understand the basics of network performance.
- Transcript signals that in that we will discuss some generic terminologies that we use to define the network performance.
- Transcript signals that the another parameter that affects your network performance is the latency.
- Transcript signals that which means that the computing power that you have also affects the network performance.
- Transcript signals that now one more important thing with respect to the network performance is the MTU or maximum transmission unit.
- Transcript signals that then we will see how in AWS you can use jumbo frames to improve the network performance.
- Transcript signals that you can also maximize the performance using the jumbo frames.
- Transcript signals that it gives you maximum network performance.
- Transcript signals that finally, remember that it's not like you just enable the jumbo frame while sending the traffic from EC2 instance, and it will increase your performance because you know that if jumbo frames are not supported on th...

##### Architect Synthesis (Transcript-Derived)
- Treat Performance Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Latency Throughput and PPS Fundamentals as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Packet and MTU Efficiency as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Placement and Topology Optimization as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Instance and NIC Performance Model as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: in this section let's understand the VPC network performance and optimization.
- Design implication: because given a scenario you should be able to decide which will be the best option to optimize the overall network performance.
- Design implication: when we say network performance, it could mean different things.
### Phase 2 - Core Services

#### Placement Groups and Topology Choice
- Cluster placement is the low-latency answer for tightly coupled workloads.
- Spread placement is for critical isolation over raw throughput.
- Partition placement is for distributed systems that need failure-domain separation.

#### Enhanced Networking, ENI, and EFA
- Enhanced networking reduces virtualization overhead for network paths.
- EFA is the specialized choice for HPC-style communication needs.
- ENI awareness helps explain network identity and interface behavior under load.

#### MTU, Bandwidth, and Limits
- MTU decisions affect packet efficiency and fragmentation risk.
- Bandwidth ceilings and network I/O credits are real architectural constraints.
- The exam often hides the answer in performance-shape keywords rather than service names.

### Phase 3 - Advanced Patterns

#### Pattern 1: Measure Then Tune
- Identify whether the bottleneck is path length, packet rate, or throughput.
- Tune the topology only after confirming the problem class.
- Keep optimization evidence-based and reversible.

#### Pattern 2: Topology-Aware Compute Design
- Put tightly coupled nodes close together only when the workload really benefits.
- Preserve failure isolation where business continuity matters more than raw speed.
- Avoid using cluster-like designs as a default convenience.

#### Pattern 3: HPC and Specialized Networking
- Use EFA and specialized drivers only when latency and inter-node communication demand it.
- Separate mainstream application tiers from HPC-style requirements.
- Specialized networking creates both capability and operational expectations.

### Phase 4 - System Design (Production)

#### Reference Performance Architecture
- Measured workload tiers with topology choices aligned to latency, throughput, and resiliency goals.
- Explicit instance-family and networking-feature selection for performance-critical systems.
- Performance tuning tied to observability, not one-time benchmark folklore.

#### Scaling Considerations
- Placement constraints and instance-type limits affect elasticity.
- Performance gains can disappear if traffic patterns or data-transfer paths shift.
- Low-latency designs often become expensive to maintain across failure domains.

#### Cost Considerations
- Specialized instances and topology choices can materially raise spend.
- Overprovisioning for bandwidth is common when root cause is not understood.
- Data transfer and architecture placement choices are often the hidden cost multiplier.

### Cross-Cloud Concept Mapping (Network Performance Optimization)

#### Underlying Concept: Topology-Aware Compute Placement
- AWS: placement groups and high-performance instance networking
- Azure: proximity and accelerated networking patterns
- GCP: placement and high-performance networking patterns
- Trade-off: the idea is portable, but the control knobs and guarantees differ.

#### Underlying Concept: Hardware-Accelerated Networking
- AWS: enhanced networking and EFA
- Azure: accelerated networking and HPC networking patterns
- GCP: gVNIC and HPC-grade networking models
- Trade-off: specialized acceleration exists across clouds, but workload fit is everything.

### Real-World Use Cases from Transcript Signals
- Tune tightly coupled compute clusters for lower latency using placement-aware design.
- Diagnose whether network bottlenecks come from limits, MTU issues, or poor topology.
- Use enhanced networking features only where workload evidence supports them.

### Constraints and Exam-Relevant Traps Captured
- Not every performance problem is solved by bigger instances.
- Placement for speed can conflict with resilience and flexibility.
- Network I/O ceilings and packet behavior matter as much as raw bandwidth numbers.
## Step 1 — Line-by-Line Extraction

Every non-empty line from every source transcript is preserved below with extraction fields.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/06_EC2 - Solutions Architect Associate Level/049_EC2 Placement Groups.txt

Line 1:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So now, let's talk about placement groups.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 2:
- Concepts: Performance Operational Context
- Services: Amazon EC2
- Key Insights: Placement groups are a little bit more advanced, and we wanna use them once, we want to have control over how our EC2 instances are going to be placed within the AWS infrastructure.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 3:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So that strategy can be defined using these placement groups.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 4:
- Concepts: Performance Operational Context
- Services: Amazon EC2
- Key Insights: So we don't get direct interaction with the hardware of AWS, but we let AWS know how we would like our EC2 instance to be placed compared to one another.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 5:
- Concepts: Placement and Topology Optimization
- Services: Placement Group
- Key Insights: So when you create a placement group, you have three strategies available for you.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 6:
- Concepts: Latency Throughput and PPS Fundamentals, Placement and Topology Optimization
- Services: Placement Group
- Key Insights: You have the cluster placement group in which your instances will be grouped together in a low-latency hardware setup within a single availability zone.
- Hidden/Implicit Meaning: Performance-characteristic signal; Topology and high-performance design signal.

Line 7:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: This is going to give you high performance but high risk.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 8:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: We'll see this in details in a second.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 9:
- Concepts: Placement and Topology Optimization
- Services: Placement Group
- Key Insights: Spread means that your instances are going to be spread across different hardware, and there is a restriction on this.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 10:
- Concepts: Placement and Topology Optimization
- Services: Amazon EC2, Placement Group
- Key Insights: That means you can only have seven EC2 instance per placement group that spread per AZ.
- Hidden/Implicit Meaning: Constraint or limitation signal; Topology and high-performance design signal.

Line 11:
- Concepts: Placement and Topology Optimization
- Services: Placement Group
- Key Insights: So you would use a spread placement group when you have critical applications.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 12:
- Concepts: Placement and Topology Optimization
- Services: Placement Group
- Key Insights: Finally, the last one is a new kind of placement group that is really helpful.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 13:
- Concepts: Placement and Topology Optimization
- Services: Placement Group
- Key Insights: It's called partition.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 14:
- Concepts: Placement and Topology Optimization
- Services: Placement Group
- Key Insights: It's similar to the spread, meaning that you want to spread your instances, but here, they're spread across many different partitions.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 15:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And these partitions rely on different sets of racks of hardware within an AZ.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 16:
- Concepts: Placement and Topology Optimization
- Services: Placement Group
- Key Insights: What does that mean is that they're still spread, but they're not isolated one from another failure, but a partition should be isolated from another partition of failure.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 17:
- Concepts: Performance Operational Context
- Services: Amazon EC2
- Key Insights: The idea with this is that you can scale to hundreds of EC2 instances per group, and that allows you to run applications such as Hadoop, Cassandra, or Kafka.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 18:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Now, let's have a look into each of these placement groups in details.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 19:
- Concepts: Placement and Topology Optimization
- Services: Amazon EC2, Placement Group
- Key Insights: So next, we have the cluster placement group, and all your EC2 instances are going to be in the same availability zone.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 20:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So why do we do this?
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 21:
- Concepts: Placement and Topology Optimization
- Services: Placement Group
- Key Insights: Well, this particular placement group gives you great networking.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 22:
- Concepts: Instance and NIC Performance Model, Latency Throughput and PPS Fundamentals
- Services: Enhanced Networking
- Key Insights: So you have around 10 gigabits per second of bandwidth between all these instances that will have enhanced networking enabled.
- Hidden/Implicit Meaning: Performance-characteristic signal; Topology and high-performance design signal.

Line 23:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: And so you get low latency, high throughput network.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 24:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And the idea is that out of this, you can get great performance for any kind of computational job.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 25:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So a drawback of using this architecture is that if your availability zone fails, then all the instances will fail at the same time.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 26:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: But usually, for use case, this is fine.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 27:
- Concepts: Latency Throughput and PPS Fundamentals, Placement and Topology Optimization
- Services: Placement Group
- Key Insights: So the use cases for this kind of placement group are big data jobs that need to complete very fast with very high networking or applications that need extremely low latency and high throughput network between each instance of your application.
- Hidden/Implicit Meaning: Performance-characteristic signal; Topology and high-performance design signal.

Line 28:
- Concepts: Placement and Topology Optimization
- Services: Placement Group
- Key Insights: Now, spread is the complete opposite.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 29:
- Concepts: Placement and Topology Optimization
- Services: Placement Group
- Key Insights: In spread, we want to minimize the failure risk.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 30:
- Concepts: Placement and Topology Optimization
- Services: Amazon EC2, Placement Group
- Key Insights: And so in this case, when we ask for spread placement group, all the EC2 instances are going to be located on different hardware.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 31:
- Concepts: Performance Operational Context
- Services: Amazon EC2
- Key Insights: So as you can see here, we have three AZ, and we have six EC2, and each EC2 instance is on a different hardware.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 32:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So what does that mean?
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 33:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Well, what we get is that we can span across multiple AZ, and there is a reduced risk of simultaneous failure.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 34:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Why?
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 35:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Well, because if my hardware one fails, I'm pretty sure my hardware two will not fail.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 36:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And so we've separated the risk of my two instances in the Us-east-1a to fail at the same time.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 37:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And so that's the benefit from it.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 38:
- Concepts: Placement and Topology Optimization
- Services: Placement Group
- Key Insights: The con is that from this configuration, we're limited to seven instances per AZ per placement group.
- Hidden/Implicit Meaning: Constraint or limitation signal; Topology and high-performance design signal; Capacity-bound and throttling signal.

Line 39:
- Concepts: Placement and Topology Optimization
- Services: Placement Group
- Key Insights: So there is a limit to how big your placement group can be.
- Hidden/Implicit Meaning: Constraint or limitation signal; Topology and high-performance design signal; Capacity-bound and throttling signal.

Line 40:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And so you need to have application that's gonna be of good size but not too big.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 41:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: The use case would be an application that needs to maximize high availability and reduce the risk.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 42:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And in general, for critical applications where your instance failures must be isolated from one another.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 43:
- Concepts: Placement and Topology Optimization
- Services: Placement Group
- Key Insights: Remember, here, we have a limitation of seven instances per AZ per placement group.
- Hidden/Implicit Meaning: Constraint or limitation signal; Topology and high-performance design signal; Capacity-bound and throttling signal.

Line 44:
- Concepts: Placement and Topology Optimization
- Services: Placement Group
- Key Insights: Now, for the partition placement group, we can have instances spread across partitions in multiple available T-zones.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 45:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So we can have up to seven partitions per AZ.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 46:
- Concepts: Placement and Topology Optimization
- Services: Placement Group
- Key Insights: So in this example, we have partition one and partition two in us-east-1a and partition three in us-east-1b.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 47:
- Concepts: Placement and Topology Optimization
- Services: Amazon EC2, Placement Group
- Key Insights: And on each partition, you can have many EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 48:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So in the first one have four, and the second one have four, and the third one have four as well.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 49:
- Concepts: Placement and Topology Optimization
- Services: Placement Group
- Key Insights: So why do we use a partition placement group?
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 50:
- Concepts: Placement and Topology Optimization
- Services: Placement Group
- Key Insights: Well, each partition represents a rack in AWS.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 51:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And so by having many partitions, you're making sure that your instances are distributed across many hardware racks, and so therefore, they're safe from a rack failure from one another.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 52:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So you can have up to seven partitions per AZ, and these partitions can span across multiple availability zones in the same region.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 53:
- Concepts: Performance Operational Context
- Services: Amazon EC2
- Key Insights: You can get up to hundreds of EC2 instances with the setup.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 54:
- Concepts: Placement and Topology Optimization
- Services: Placement Group
- Key Insights: So this is a difference versus the spread type of placement group.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 55:
- Concepts: Placement and Topology Optimization
- Services: Placement Group
- Key Insights: And as I said, the instances in the partition do not share the same hardware physical rack with the instances in the other partitions, and therefore, each partition is isolated from failure.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 56:
- Concepts: Placement and Topology Optimization
- Services: Placement Group
- Key Insights: So that means that, yes, if one goes down, if partition goes down, the partition number two, then partition number one should be fine.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 57:
- Concepts: Placement and Topology Optimization
- Services: Amazon EC2, Placement Group
- Key Insights: And to know which partition these EC2 instances are on, there is an option to access this information with using the metadata service.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 58:
- Concepts: Placement and Topology Optimization
- Services: Placement Group
- Key Insights: So when would you use a partition placement group?
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 59:
- Concepts: Placement and Topology Optimization
- Services: Placement Group
- Key Insights: Well, when you have an application that it can be partition aware to distribute the data and your servers across partitions.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 60:
- Concepts: Placement and Topology Optimization
- Services: Placement Group
- Key Insights: And usually, the use cases are going to be big data applications which are partition aware, such as using HDFS, HBase, Cassandra, and Apache Kafka.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 61:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 62:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/06_EC2 - Solutions Architect Associate Level/050_EC2 Placement Groups - Hands On.txt

Line 1:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So let's go ahead and practice placement groups.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 2:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: To this, on the left hand side, I'm going to scroll down and find under network and security, the placement groups option.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 3:
- Concepts: Placement and Topology Optimization
- Services: Placement Group
- Key Insights: And I will go ahead and create a placement group.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 4:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So the first one is going to be my-high-performance-group.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 5:
- Concepts: Placement and Topology Optimization
- Services: Placement Group
- Key Insights: And as you can guess, the placement strategy for this one is going to be cluster, because we want instances to be very close to each other so that they have maximum network capability.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 6:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: The second thing is going to be my-critical-group.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 7:
- Concepts: Placement and Topology Optimization
- Services: Placement Group
- Key Insights: And for this one, the placement strategy is going to be spread, because we want instances to be distributed as much as possible.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 8:
- Concepts: Placement and Topology Optimization
- Services: Placement Group
- Key Insights: And you can set the spread level to rack, which is a default, or host, which is outpost only, but we don't use outpost.
- Hidden/Implicit Meaning: Constraint or limitation signal; Topology and high-performance design signal.

Line 9:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So for now we'll just use rack, which is what we should know about.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 10:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 11:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So this critical group has been done And finally, we have my-distributed-group.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 12:
- Concepts: Placement and Topology Optimization
- Services: Placement Group
- Key Insights: And this one, as you can guess, is going to be for the partition type.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 13:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And here we have the choice between one, two, seven partitions.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 14:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: For example, I can set four, and create this group.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 15:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So the three groups have been created.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 16:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And now, to just launch an instance in a group, you click on launch instances.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 17:
- Concepts: Placement and Topology Optimization
- Services: Placement Group
- Key Insights: And now, when you scroll down, at the very bottom, under the advanced details, you can have a setting for right here, the placement group name, and you can select between my-critical-group, my-distributor-group, or my-high-performance-group based on your placement group strategy.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 18:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So that's it.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 19:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: It's a very short lecture, but now you know where the options are.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 20:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 21:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/06_EC2 - Solutions Architect Associate Level/051_Elastic Network Interfaces (ENI) - Overview.txt

Line 1:
- Concepts: Instance and NIC Performance Model
- Services: Elastic Network Interface
- Key Insights: Okay now lets talk about Elastic Network Interfaces or ENI.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 2:
- Concepts: Instance and NIC Performance Model
- Services: Elastic Network Interface
- Key Insights: So if you hear me say ENI I mean Elastic Network Interfaces.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 3:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: They're a logical component in a VPC and they represent a virtual network card.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 4:
- Concepts: Performance Operational Context
- Services: Amazon EC2
- Key Insights: So they're what gives EC2 Instances access to the network, but they're used outside EC2 Instances as well as we'll see later in this course.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 5:
- Concepts: Instance and NIC Performance Model
- Services: Amazon EC2, Elastic Network Interface
- Key Insights: So for example we have an availability zone and we have one EC2 Instance and to it is attached on eth0, your primary ENI and this will provide your EC2 Instance network connectivity and for example, a private IP.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 6:
- Concepts: Instance and NIC Performance Model
- Services: Elastic Network Interface
- Key Insights: So each ENI can have the following attributes.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 7:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Number one it can have a Primary private IPv4 and one or more secondary IPv4.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 8:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 9:
- Concepts: Instance and NIC Performance Model
- Services: Amazon EC2, Elastic Network Interface
- Key Insights: So in this example, I have one of zero but you are more than welcomed to add a secondary ENI to EC2 and that will be eth1 and this will give you another private IPv4 as well, okay. ` Each ENI can also have an elastic IPv4 per private IPv4 or one or more public IPv4, so it gives you a private and a public IP as will see in the hands-on.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 10:
- Concepts: Instance and NIC Performance Model
- Services: Elastic Network Interface
- Key Insights: You can have one or more security groups attached to your ENI.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 11:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: You can have a Mac address attached to it and other things but I've just give you the most important bits right now in this lecture.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 12:
- Concepts: Instance and NIC Performance Model
- Services: Amazon EC2, Elastic Network Interface
- Key Insights: And you can create ENI's independently from your EC2 instances and attach them on the fly or move them from EC2 instances for failover.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 13:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So, let's have a look at what it looks like.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 14:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And by the way, they're bounded to a specific availability zone or AZ.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 15:
- Concepts: Instance and NIC Performance Model
- Services: Elastic Network Interface
- Key Insights: So that means that if you create a ENI in the specific AZ, you can only have it bound to that specific AZ.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 16:
- Concepts: Instance and NIC Performance Model
- Services: Elastic Network Interface
- Key Insights: So here's another issue to instance and it has another ENI attached to it.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 17:
- Concepts: Performance Operational Context
- Services: Amazon EC2
- Key Insights: And for example, we can do is we can move eth1 from the first EC2 instance into the second EC2 Instance to move that private IP.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 18:
- Concepts: Performance Operational Context
- Services: Amazon EC2
- Key Insights: And what it means is that that private IP will change from the first issue to instance and will be attached to the second EC2 Instance.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 19:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And it's very very helpful for failovers.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 20:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: For example, if you're easy to instance is accessed by a private static IP, then you can move the IP around between these two instances for failover purposes, okay.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 21:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So let's have a look in the hands-on to see what it looks like.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/06_Network Performance and Optimization/038_Basics of Network performance - Bandwidth, Latency, Jitter, Throughput, PPS, MTU.txt

Line 1:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 2:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Now in this section let's understand the VPC network performance and optimization.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 3:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And this is also one of the important topic for your exam.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 4:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Because given a scenario you should be able to decide which will be the best option to optimize the overall network performance.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 5:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And when we say network performance, it could mean different things.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 6:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: For example, how much the network throughput should be or how much should be the bandwidth.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Performance-characteristic signal.

Line 7:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So by choosing the right configurations, you can optimize the network when you have to typically transfer the data from the source to the destination.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 8:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Now, before we get into the details of all the controls that VPC provides, let's first understand the basics of network performance.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 9:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And in that we will discuss some generic terminologies that we use to define the network performance.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 10:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: So very first is bandwidth.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 11:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: We talk about bandwidth all the time.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 12:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: So what does bandwidth mean.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 13:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: It means maximum rate of transfer over the network.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 14:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: So if you are getting say, 25 GB s bandwidth, typically it means 25 gigabits per second.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 15:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Understand that it's not byte, it's bits per second.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 16:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: Now the another parameter that affects your network performance is the latency.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 17:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: And typically latency is measured in terms of delay between the two points in a network.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 18:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: And in further latency can be seen as the delay, which includes the propagation delays for the signals to travel across the medium.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 19:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Because you know that the signal cannot travel at the speed of the light, right?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 20:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: We can't achieve that speed, and this introduces additional delays further as the packet goes through different hops.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 21:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: There are networking devices like routers which may further add the network packet processing delays.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 22:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: So together these all constitute to additional latency.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 23:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: Then there is a term called jitter right.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 24:
- Concepts: Latency Throughput and PPS Fundamentals, Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: So jitter means variation in the inter packet delays.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 25:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Now Jeter sometimes is not good for, you know, a seamless experience for the network.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 26:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Maybe if you are watching a video, right?
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 27:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And if there is a Jeter, you will see that you are not getting a consistent, uh, rate, uh, network.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 28:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 29:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And that's where you will see the problem, right?
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 30:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: Then comes the throughput.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 31:
- Concepts: Cost and Transfer Efficiency, Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: So throughput is the rate of successful data transfer.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 32:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And it is also measured in bits per second.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 33:
- Concepts: Latency Throughput and PPS Fundamentals, Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: Now if you talk about the throughput uh, bandwidth latency and packet loss directly affects your throughput.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 34:
- Concepts: Latency Throughput and PPS Fundamentals, Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: So even though you have bandwidth of say, one Gbps, it does not mean that you will get a throughput of one Gbps, because there would be latency and there will be a packet loss due to which you have to resend the packets.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 35:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: Now all that ultimately results into the throughput.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 36:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: So don't consider that you have bandwidth of one Gbps.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 37:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: That means you will get throughput also of one Gbps.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 38:
- Concepts: Cost and Transfer Efficiency, Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: It's a rate of successful data transfer bits from one, uh, endpoint to another endpoint. then packet per second.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 39:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: This is more with respect to, you know, processing of your packets by your machine or a CPU.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 40:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: How many packet it can process per second.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 41:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 42:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: Now it's possible that you have, say, a 25 gigabit per second of bandwidth of the network.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 43:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: But is your CPU of your machine is capable of processing those packets at it arrives into your machine or leaves your machine.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 44:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So you would need to have corresponding compute power as well.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 45:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 46:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Which means that the computing power that you have also affects the network performance.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 47:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: And now one more important thing with respect to the network performance is the MTU or maximum transmission unit.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Performance-characteristic signal.

Line 48:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: And it means the largest packet that can be sent over the network.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 49:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And it is not always the same depending on your network devices like routers and gateways.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 50:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: This MTU may change and as you can imagine higher the M2.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 51:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: That means you can send more data in a single package, and lower MTU means you can send less data in a single packet.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 52:
- Concepts: Latency Throughput and PPS Fundamentals, Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: So higher the MTU, more the throughput.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 53:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 54:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: So let's talk about MTU right.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 55:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: So consider there are two hosts host A and host B and host A wants to send some packet to host B.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 56:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: It could be an SSH.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 57:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: It could be a ping anything.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 58:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 59:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: So host A initiates that connection and it sends a packet.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 60:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: Now typically that packet is uh 1500 bytes.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 61:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: That's a standard over the internet.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 62:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: Uh you will have the packet of size of 1500 bytes.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 63:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: But uh, if you increase this MTU, that means what if you want to send a larger packet right now, that would depend on, um, all the network hops you have or routers you have in between.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 64:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: Do they support the packet transmission?
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 65:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Uh, for the frame of size, more than 1500 bytes?
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 66:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: If not, then maximum that M2 can have between two hosts would be 1500.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 67:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: But in certain cases.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 68:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And we will talk more about that.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 69:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: You can also send the packets in the form of jumbo frames.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 70:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: Jumbo frames are basically a packet which are greater than 1500 bytes.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 71:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: And then we will see how in AWS you can use jumbo frames to improve the network performance.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 72:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: Because you can see now, right, if, say your jumbo frame is of size 9000, that means almost you are sending the six times the data.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 73:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: You would send in one packet of 1500 bytes.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 74:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: That means in fewer number of transmissions, you would have those many bytes delivered to the target host.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 75:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So most of the network supports the M2 of 1500 bytes.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 76:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: That what.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 77:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: That's what we just talked about.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 78:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: But the jumbo frames are the packets which are larger than 1500 bytes, and it goes up to 9000 bytes.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 79:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: In AWS it is 9001 and I'll talk more about that.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 80:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: Now, what are the benefits of using jumbo frames?
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 81:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Of course you have to send less packets.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 82:
- Concepts: Latency Throughput and PPS Fundamentals, Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: That means you will get more throughput, because sending every packet also means you have to send it, acknowledge it.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 83:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: If it's a TCP connection and there is a lot of processing out there.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 84:
- Concepts: Latency Throughput and PPS Fundamentals, Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: And then increasing the MTU increases the throughput.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 85:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Because suppose you want to send a one GB of data across two hosts, and if size is 1500, you can do your maths and understand how many packets needs to be sent.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 86:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And then those packets needs to be processed at the receiving end or even at the sending end as well.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 87:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: So that's called packet per second.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 88:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: Now if you would have jumbo frames that means there are less less packets to process.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 89:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So even with lower PS you can send the same amount of data across the host.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 90:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: So a jumbo frames gives you that benefit.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 91:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: So uh, now let's understand how the jumbo frame works frameworks, right?
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 92:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: So how this M2 is decided when you send the packet.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 93:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So for example there are two hosts.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 94:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And from this host you want to send some packets to this host.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 95:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: Now you send first a packet of size say 1500.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 96:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: Now every packet has some flags associated with that.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 97:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And those flags has certain meaning out of this.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 98:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: We'll be interested in one flag which is called DF or don't fragment.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 99:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: So when you send a packet with the df equal to one, that means don't fragment.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 100:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: Don't further divide this packet into a smaller packet.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 101:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 102:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Then router will check at its end.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 103:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: Uh, can I support the packet of size 1500?
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 104:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: It is.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 105:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: It says okay.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 106:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Yes I can process that.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 107:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: And it will take that packet and route to the next, um, uh, hop basically.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 108:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Now it will reach to the next router in the path.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 109:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And then again, the same question.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 110:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Can I process the, uh, m2 of 1500?
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 111:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: Now, for some reason, Maybe this router does not support the packet of size 1500.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 112:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: It can maximum processes 1000.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 113:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Now in this case we have set the DF equal to one.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 114:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: That means this is.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 115:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: This router is not allowed to fragment this packet into two packets.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 116:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Now like one maybe of size of 1000 and other.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 117:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Maybe a size of 500.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 118:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: That's we are saying don't do that with this fragment equal to one.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 119:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Now in this case you will uh, it will say it's not okay with me to process 1500.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 120:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And even you have set the DF equal to one.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 121:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: It will send the response back to the originating server.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 122:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And this is typically an ICMP response.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 123:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: Uh, and it will say change MTU to 1000 because I can't process that.
- Hidden/Implicit Meaning: Constraint or limitation signal; Performance-characteristic signal.

Line 124:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So in this case now this host would understand that my network only supports the M2 of 1000.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 125:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: It will then send the smaller packet and it will say packet with size m2 1000.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 126:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And then ultimately it will reach to the destination.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 127:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: Now in this case it means, this host A would have to send two packets instead of one packet.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 128:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: So you can also do this MTU path discovery using some Linux commands.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 129:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And I'll show you how to do that.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 130:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: So if you see this we are talking about MTU of 1000.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 131:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: This network supports and this is just an example okay.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 132:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: So for MTU path discovery as I said the response goes over ICMP.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 133:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So ICMP must be allowed between these hosts okay.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 134:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Just remember that.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 135:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 136:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: So until now we talked about the M2 and jumbo frames in general.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 137:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: So now let's talk about the jumbo frame in the context of AWS.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 138:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: So first thing AWS supports the jumbo frames up to size 9001 bytes.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 139:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And it is not like for all the scenarios AWS supports this M2.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 140:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And in the rest of this lecture we will understand different cases in which different Mtus are supported.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 141:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 142:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: So this means that AWS supports jumbo frames.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 143:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And with respect to the VPC, it is enabled by default.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 144:
- Concepts: Performance Operational Context
- Services: Amazon EC2
- Key Insights: Now to be honest, it is like EC2 instances which will initiate the traffic.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 145:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So you have to really configure that on the instance level when they transmit the traffic.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 146:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: But VPC doesn't restrict that.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 147:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: So AWS supports the jumbo frame within a VPC of say 9001 bytes.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 148:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: But if the traffic is going over the internet, through the internet gateway or the Nat gateway, then the packet size is limited to 1500 m2 only.
- Hidden/Implicit Meaning: Constraint or limitation signal; Capacity-bound and throttling signal.

Line 149:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: Which means for the internet bound traffic, the jumbo frame is not supported.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 150:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Now further, you know that you can also peer the VPCs, and these VPCs can be in the same AWS region or across the regions.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 151:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: Now depending on that, if the VPC peering is within the same region, then the jumbo frame of 9001 byte is supported.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 152:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: But if the VPC peering is across the regions, then the jumbo frame size is 8500 bytes.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 153:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Now remember that until March 2025, Five.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 154:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: This scenario wasn't covered under jumbo frame, and you were limited to 1500 bytes for inter region VPC peering, but now it has been increased to 8500 bytes.
- Hidden/Implicit Meaning: Constraint or limitation signal; Capacity-bound and throttling signal.

Line 155:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: Further jumbo frames are also supported when the traffic goes over the direct connect between the VPC and the on premises network.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 156:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: And the size of jumbo frames really depends on how you are connecting over the direct connect.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 157:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: For example, if you are using the private VIF, public wave or transit wave and we will shortly discuss that next.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 158:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: You can also maximize the performance using the jumbo frames.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 159:
- Concepts: Latency Throughput and PPS Fundamentals, Placement and Topology Optimization
- Services: Amazon EC2, Placement Group
- Key Insights: If you are having your EC2 instances in a same cluster placement group, and which means that the EC2 instances are launched together, typically on the same physical hardware, so that there is not much network hop and you can maximize the network throughput.
- Hidden/Implicit Meaning: Performance-characteristic signal; Topology and high-performance design signal.

Line 160:
- Concepts: Packet and MTU Efficiency, Placement and Topology Optimization
- Services: Amazon EC2, Placement Group
- Key Insights: So while using the jumbo frames, if you launch the EC2 instances in a cluster placement group.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 161:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: It gives you maximum network performance.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 162:
- Concepts: Packet and MTU Efficiency
- Services: Amazon EC2
- Key Insights: And finally, remember that it's not like you just enable the jumbo frame while sending the traffic from EC2 instance, and it will increase your performance because you know that if jumbo frames are not supported on the intermediary network devices, then you may experience the packet loss because if the packet of size over 1500 bytes are sent and the don't fragment flag is set, then that packet may be dropped.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 163:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So just remember this.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 164:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 165:
- Concepts: Performance Operational Context
- Services: Amazon EC2
- Key Insights: With that let's understand how can you define the M2 on your EC2 instances inside a VPC.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 166:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 167:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So M2 also depends on instance type.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 168:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: Certain instance type supports jumbo frame.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 169:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: Certain may not support jumbo frames.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 170:
- Concepts: Performance Operational Context
- Services: Amazon EC2
- Key Insights: And there is a list of EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 171:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: All typically current generation instances do support the jumbo frames.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 172:
- Concepts: Packet and MTU Efficiency
- Services: Amazon EC2
- Key Insights: Jumbo frames or M2 is defined at any level, so if EC2 has multiple Enis, you can control or you can configure uh, how much, What should be the, uh, should it support the jumbo frame or not?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 173:
- Concepts: Packet and MTU Efficiency
- Services: Amazon EC2
- Key Insights: Or what should be the size of the packet you want to send, uh, from this EC2 machine?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 174:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: Now, you can also check the path discovery MTU path discovery between your machine and the target endpoint using the command something like Trace path.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 175:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And I will talk more about that shortly.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 176:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Or we'll just see that in a console.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 177:
- Concepts: Packet and MTU Efficiency
- Services: Amazon EC2
- Key Insights: And you can also set or check your MTU on your network interfaces for EC2 using a simple command like IP link show uh, and then the network interface ID, uh.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 178:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: And finally you can also set your MTU, as I said, uh, using this command IP link set dev and then your interface ID and then you set your MTU values there.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 179:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: So important to understand here is that, uh, you can uh, the, the uh, sorry, MTU are defined at any level.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Performance-characteristic signal.

Line 180:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And you can also set that, uh, using a Linux commands.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 181:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 182:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: With that, uh, let's, uh, do a quick demo.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 183:
- Concepts: Performance Operational Context
- Services: Amazon EC2
- Key Insights: In this demo, what we are going to do is, um, we are going to launch two EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 184:
- Concepts: Performance Operational Context
- Services: Amazon EC2
- Key Insights: Uh, and then we'll check the M2 using EC2 public IP.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 185:
- Concepts: Performance Operational Context
- Services: Amazon EC2
- Key Insights: That means from one EC2 we will reach to another EC2 using public IP.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 186:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: That means the traffic goes over the internet, even though they are part of maybe a same subnet does not matter.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 187:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And then we'll observe the M2 in that case.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 188:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And then we will also, um, check the M2 when we are reaching over private IP.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 189:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: That means the communication is within the VPC.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 190:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: So we are um, assuming that the jumbo frames would be used with M2 9001.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 191:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: And in the this case probably we are expecting jumbo jumbo frames are not used and the packet size is 1500 bytes only.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 192:
- Concepts: Performance Operational Context
- Services: Amazon EC2
- Key Insights: And uh, we will just check the M2 on that EC2 interface as well.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 193:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: What values it shows.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 194:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So let me just quickly go to my console.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 195:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: I have already two.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 196:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: I have two instances here.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 197:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Nothing fancy about it.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 198:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Both are in public subnet.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 199:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And what I'm going to do is just to connect to the first instance.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 200:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So this is a shortcut to connect to my instance.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 201:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: And what I'm going to do is just grab the maybe a public IP address of the other instance so that I can check the MTU.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 202:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So this is my second instance.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 203:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: I'm just going to grab its public IP.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 204:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And what I'm going to do is just trace the path and the IP address.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 205:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Now you can see that uh, initially it started with 9001, but then it defaulted to 1500 because traffic is going over to the internet.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 206:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Now it will try 30 times and it will see all possible path to the target destination.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 207:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: And then it will show you ultimately uh, path MTU for uh, this communication.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 208:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So I'm just watching this video for a couple of seconds.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 209:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 210:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So this has been completed.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 211:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: And you can see the final, uh, MTU is 1500.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 212:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And that was expected.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 213:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Now, what?
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 214:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: I'm, I'm trying to do is now just do the same thing.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 215:
- Concepts: Performance Operational Context
- Services: Amazon EC2
- Key Insights: But this time using the private IP address of my second EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 216:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And let me see if I have the private IP.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 217:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: No I don't, so I'll just grab it here.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 218:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So this is a private IP address.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 219:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: I'm just copying it and just putting it here.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 220:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And now let's see what happens.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 221:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So again I'm going to just pause this video for a couple of seconds.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 222:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And then I'll show you this.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 223:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 224:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: As you can see here my trace has completed.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 225:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And in this case the M2 is 9001.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 226:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: That means it's using the jumbo frames.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 227:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: So this implies that within VPC, jumbo frames are enabled.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 228:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And they are used for all within VPC communication.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 229:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 230:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: Now one more thing I just wanted to show you how to see the jumbo, uh, how to see the MTU at interface level.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 231:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So you can just say IP link show and then your interface ID.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 232:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: And here you can see the MTU by default is set to 9001.
- Hidden/Implicit Meaning: Performance-characteristic signal; Topology and high-performance design signal.

Line 233:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So that's it.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 234:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: What we wanted to see here and just going back here, we just did this demo.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 235:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: You can try yourself as well.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 236:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Uh, there are commands already given here.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 237:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: Now, finally, what we want to understand is that, uh, what are the different MTU values when, uh, there is a communication between VPC and other entities?
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 238:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Like it could be like over the internet, it could be within VPC, it could be over private network.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 239:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Uh, like a direct connect to your on premises.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 240:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So let's uh, see those values.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 241:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: So within the AWS if the traffic is within the VPC then jumbo frames are supported.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 242:
- Concepts: Performance Operational Context
- Services: Amazon EC2
- Key Insights: So uh, imagine that there are EC2 instances and then these instances communicating with each other.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 243:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: They are part of VPC.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 244:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: So by default jumbo frames are enabled.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 245:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Now if the traffic is flowing over through the VPC endpoint, that means if you are trying to reach to the other AWS services, for example, to the S3 or DynamoDB or, um, SQS kinesis over the VPC endpoints.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 246:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Now in that case, the M2 of size 8500 bytes is supported.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 247:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: That means again, jumbo frames are supported.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 248:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Now what are VPC endpoints?
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 249:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: We will learn that in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 250:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: Now if the traffic is going out to the internet via internet gateway, then again the jumbo frames are not supported.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 251:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So you are limited to 1500 bytes only.
- Hidden/Implicit Meaning: Constraint or limitation signal; Capacity-bound and throttling signal.

Line 252:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: Further, with respect to the VPC peering connection, the intra region VPC peering supports the jumbo frame of size 9001 bytes, but if it's an inter region VPC peering, then the jumbo frame of size 8500 bytes is supported.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 253:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And remember, this is relatively new update.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 254:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Now further, if you're connecting your VPC to the on premises network, then there are different scenarios.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 255:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: For example, you may connect over the VPN using the Virtual Private Gateway.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 256:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: Now in that case, jumbo frame is not supported and MTU is limited to 1500 bytes.
- Hidden/Implicit Meaning: Constraint or limitation signal; Performance-characteristic signal; Capacity-bound and throttling signal.

Line 257:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And same is the case if you are using Transit Gateway to connect over the VPN.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 258:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: So in both the cases, jumbo frames are not supported.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 259:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: However, if you are using the Direct Connect, then depending on which virtual interface that you use, the MTU differs.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 260:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: So if you are using the private VIF using which you can connect to the VPCs directly, then the jumbo frame of size 9001 byte is supported.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 261:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And otherwise, if you are using the transit wave, which ultimately uses the Direct Connect Gateway, which connects to the Transit Gateway.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 262:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: In that case, jumbo frame of size 8500 byte is supported.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 263:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: And otherwise, if you are using the public wave which connects to the AWS public endpoints, then jumbo frame is not supported and the M2 is limited to 1500 bytes.
- Hidden/Implicit Meaning: Constraint or limitation signal; Capacity-bound and throttling signal.

Line 264:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: So this is all the MTU values that you should typically know while using the jumbo frames.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Performance-characteristic signal.

Line 265:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: So that's it about the jumbo frames and the M2.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 266:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And with that now let's go to the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/06_Network Performance and Optimization/039_Placement Groups and EBS Optimized EC2 instances.txt

Line 1:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Hello, and welcome to this lecture.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 2:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: So far, well, we talked about what affects the network performance, and we talked about MTU.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 3:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: We talked about other concept like bandwidth latency and jitter.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 4:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: Now let's look at some of the ways in which you can achieve the maximum network throughput while you work in AWS.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 5:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So at high level, if you want to optimize the network performance, you can look at three areas.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 6:
- Concepts: Latency Throughput and PPS Fundamentals, Placement and Topology Optimization
- Services: Amazon EC2, Placement Group
- Key Insights: Now, one is you can use cluster placement group for your EC2 instances, which definitely gives you the maximum network throughput between those instances, and we'll talk shortly about that.
- Hidden/Implicit Meaning: Performance-characteristic signal; Topology and high-performance design signal.

Line 7:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: Other option is you can say enhancement you can do, it's not mutually exclusive all of these options, you can use all this at the same time, but these are some of the leeways that you can explore to have the maximum network throughput.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 8:
- Concepts: Performance Operational Context
- Services: Amazon EBS
- Key Insights: Second is EBS optimized instances, and we will talk what that mean.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 9:
- Concepts: Instance and NIC Performance Model
- Services: Enhanced Networking
- Key Insights: And then most of the time in this section, we'll spend on enhanced networking and that is very crucial topic for your exam.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 10:
- Concepts: Instance and NIC Performance Model
- Services: Enhanced Networking
- Key Insights: There are a lot of concepts under enhanced networking, and you need to know well when we talk about enhanced networking and you should be able to pick right answer from the questions.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Topology and high-performance design signal.

Line 11:
- Concepts: Instance and NIC Performance Model, Placement and Topology Optimization
- Services: Amazon EBS, Enhanced Networking, Placement Group
- Key Insights: So let's see, first two things, cluster placement group and EBS optimized instances and then we will have separate lectures to talk about enhanced networking.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 12:
- Concepts: Placement and Topology Optimization
- Services: Amazon EC2, Placement Group
- Key Insights: So if you already know the cluster placement group, it is a group of EC2 instances you launch together and you launch in a such a way that all these EC2 instances are physically as close as to each other.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 13:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: So it's a logical grouping of instances within a single availability zone, which makes sure the network latency is lower because across AZs they are at least 100 or up to 100 kilometers apart.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 14:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: And there is, of course latency there, but having in same availability zone, there would be a minimum latency between the instances.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 15:
- Concepts: High Performance Computing Patterns, Latency Throughput and PPS Fundamentals, Placement and Topology Optimization
- Services: Placement Group
- Key Insights: Now, this placement cluster groups are ideal for HPC workload, which requires very low latency network throughput between the instances.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 16:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So this is something like this.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 17:
- Concepts: Performance Operational Context
- Services: Amazon EC2
- Key Insights: You have multiple EC2 instances, and typically they're in the same AZ and also could be in the same rack, which gives the maximum network performance.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 18:
- Concepts: Latency Throughput and PPS Fundamentals, Placement and Topology Optimization
- Services: Placement Group
- Key Insights: So with that, you can achieve the network bandwidth up to 100 Gbps and that's essentially what the placement group is.
- Hidden/Implicit Meaning: Performance-characteristic signal; Topology and high-performance design signal.

Line 19:
- Concepts: Latency Throughput and PPS Fundamentals, Placement and Topology Optimization
- Services: Amazon EC2, Placement Group
- Key Insights: So if the question talks about having the maximum network throughput between EC2 instances, then always choose a placement group as one of the options.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Performance-characteristic signal; Topology and high-performance design signal.

Line 20:
- Concepts: Performance Operational Context
- Services: Amazon EBS
- Key Insights: Okay, next, we talked about EBS optimized instances.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 21:
- Concepts: Performance Operational Context
- Services: Amazon EBS, Amazon EC2
- Key Insights: Now what that means, if you have any EBS attached to your EC2 instance, it is not really physically attached to your instance.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 22:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: You understand that?
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 23:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: It's a virtual world and it is not a physical disk that you attach.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 24:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So it more like a SAN, storage area network where your disc are attached over the network.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 25:
- Concepts: Performance Operational Context
- Services: Amazon EBS
- Key Insights: So it's not a physical drive, but EBS is a network drive.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 26:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: Amazon EBS, Amazon EC2
- Key Insights: And what that means it uses maybe a network or dedicated, or it could be a shared network to communicate to the instance and which also means there could be additional latency to access your EBS data from your EC2 instance.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 27:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So remember this.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 28:
- Concepts: Performance Operational Context
- Services: Amazon EBS
- Key Insights: Now, EBS input output may affect your network performance.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 29:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Why?
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 30:
- Concepts: Performance Operational Context
- Services: Amazon EBS, Amazon EC2
- Key Insights: Understand that this EC2 has some network interfaces here, and you are communicating to this instances from maybe over the internet and same interface is also being used to do the input output operation from the EBS.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 31:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: Amazon EBS
- Key Insights: Now, if that is the case, if you are doing too much input output from EBS, a lot of bandwidth will be used here and maybe here you get a lower bandwidth, or the other way round, you're using too much bandwidth here then for your EBS input output, you will get a lower bandwidth.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 32:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: That means this is a shared bandwidth for all kind of network here.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 33:
- Concepts: Performance Operational Context
- Services: Amazon EC2
- Key Insights: And that is the problem for your EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 34:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: Amazon EBS, Amazon EC2
- Key Insights: So Amazon EBS-optimized instances deliver the dedicated throughput between your EC2 and EBS.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 35:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: That means this network is separate.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 36:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: Amazon EC2
- Key Insights: Whatever you do here does not take a bandwidth from your regular EC2 instance bandwidth limit.
- Hidden/Implicit Meaning: Constraint or limitation signal; Performance-characteristic signal; Capacity-bound and throttling signal.

Line 37:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: Amazon EBS, Amazon EC2
- Key Insights: It is a dedicated network between EC2 and EBS, and that's where using EBS optimized instances provides you the consistent bandwidth to talk to EBS volumes over the network.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 38:
- Concepts: Performance Operational Context
- Services: Amazon EBS, Amazon EC2
- Key Insights: So ultimately they minimizes the contention between your EBS input output and other traffic from your EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 39:
- Concepts: Performance Operational Context
- Services: Amazon EBS
- Key Insights: So in short, that's EBS optimized instances, and if you look at the list on AWS pages, you will see maybe a lot of new generation instances are already EBS optimized.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 40:
- Concepts: Performance Operational Context
- Services: Amazon EBS
- Key Insights: So if you're facing these kind of challenges, then look for EBS optimized instances, which improves your network performance.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 41:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 42:
- Concepts: Instance and NIC Performance Model
- Services: Enhanced Networking
- Key Insights: In next lecture, we will deep dive into enhanced networking and which is very, very critical for your exam.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 43:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Thanks for watching.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/06_Network Performance and Optimization/040_Enhanced Networking.txt

Line 1:
- Concepts: Instance and NIC Performance Model
- Services: Enhanced Networking
- Key Insights: Hello and welcome to this lecture, Enhanced Networking.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 2:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: Earlier we saw other two options by which you can increase the network throughput in AWS.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 3:
- Concepts: Placement and Topology Optimization
- Services: Amazon EBS, Amazon EC2, Placement Group
- Key Insights: The first we saw, cluster replacement group for EC2 instances, and then we saw EBS-optimized EC2 instances.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 4:
- Concepts: Instance and NIC Performance Model
- Services: Enhanced Networking
- Key Insights: Now, let's look at the more important concept, that's Enhanced Networking.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Topology and high-performance design signal.

Line 5:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And in the exam, I would expect two to three questions on this topic.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 6:
- Concepts: Instance and NIC Performance Model
- Services: Enhanced Networking
- Key Insights: So let's try to understand what does it mean by Enhanced Networking, and what are the options you have when we say you have to configure enhanced networking in AWS.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 7:
- Concepts: Instance and NIC Performance Model
- Services: Enhanced Networking
- Key Insights: So first, let's understand what is Enhanced Networking.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 8:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Of course, the term says itself, it means you have to enhance the network performance between two systems.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 9:
- Concepts: Performance Operational Context
- Services: Amazon EC2
- Key Insights: Now, these two systems are typically, we can take an example like EC2 instances, but it can also be like from AWS to on-premise network, from AWS to S3.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 10:
- Concepts: Instance and NIC Performance Model
- Services: Amazon EC2, Enhanced Networking
- Key Insights: So whenever you deal with any AWS services, we are talking about this enhanced networking, but typically, EC2 would be involved there because most of this enhanced networking is applicable for EC2 instances.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Topology and high-performance design signal.

Line 11:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 12:
- Concepts: Instance and NIC Performance Model, Packet and MTU Efficiency
- Services: Enhanced Networking
- Key Insights: So when you can process the packets, over 1 million packet per second, we can consider it as like enhanced networking.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 13:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And for achieving this, you need to do something special, something extra and that's what we are going to see today.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 14:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So ultimately, it reduces the instance-to-instance latencies as well as instance to maybe on-premises latencies, like that.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 15:
- Concepts: Instance and NIC Performance Model
- Services: Enhanced Networking
- Key Insights: So the concept behind the enhanced networking is something called SR-IOV with PCI passthrough.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 16:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And what does that mean?
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 17:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: I'll just talk shortly after this slide.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 18:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: But essentially, what it means is you remove as much obstacle when the packets moves from one system to another.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 19:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: When I say obstacle, it's more about the multiple hops.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 20:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: You have to trim down that, which means if you are using hypervisor, can you bypass the hypervisor when a packet flow from say, one system to another system?
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 21:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And how to do that, we will see.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 22:
- Concepts: Instance and NIC Performance Model
- Services: Amazon EC2, Enhanced Networking
- Key Insights: And there are two options for you to enable the enhanced networking for EC2 instances.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 23:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: There is something called, Intel Virtual Function.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 24:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: The name is ixgbevf.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 25:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And second option is using Elastic Network Adapter.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 26:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: That is in short, ENA, and we'll get through more details about it shortly.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 27:
- Concepts: Instance and NIC Performance Model, Latency Throughput and PPS Fundamentals
- Services: Enhanced Networking
- Key Insights: So enhanced networking, meaning you can process 1 million packets per second, and ultimately, goal is to reduce the latencies between instance-to-instance and increase the bandwidth.
- Hidden/Implicit Meaning: Performance-characteristic signal; Topology and high-performance design signal.

Line 28:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: How much data can be sent per second.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 29:
- Concepts: Instance and NIC Performance Model
- Services: Enhanced Networking
- Key Insights: So as I said, let's look at the SR-IOV and PCI for enhanced networking.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 30:
- Concepts: Performance Operational Context
- Services: Enhanced Networking
- Key Insights: So SR-IOV stand for Single Root Input/Output Virtualization and basically it's a standard that allows your single, physical NIC.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 31:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: NIC is Network Interface Card to present itself as a multiple virtual NICs or you can call it virtual functions.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 32:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So consider a case you have physical host and then that physical host has a network interface card.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 33:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: Now, if virtual machine which is launched on top of physical host has to get to that card for sending and receiving the traffic, all this traffic goes through, you know, the hypervisor layer and which adds some latency, some extra processing of the packets.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 34:
- Concepts: Performance Operational Context
- Services: Enhanced Networking
- Key Insights: Now, SR-IOV and PCI, PCI is Peripheral Component Interconnect.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 35:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: This allows your VMs to directly access the network card.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 36:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So it is like, enables direct communication between your VM and the physical NIC.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 37:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Ultimately, that is this functionalities and to enable these features, there are multiple options that we are going to see now.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 38:
- Concepts: Performance Operational Context
- Services: Enhanced Networking
- Key Insights: So again, SR-IOV and PCI passthrough are methods of device virtualization that provides of course, higher input/output performance and lower CPU utilization.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 39:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: It allows a single physical NIC to present itself as multiple virtual NICs or you can call it virtual functions.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 40:
- Concepts: Instance and NIC Performance Model
- Services: Elastic Network Interface
- Key Insights: Now, PCI passthrough enables your PCI devices, such as ENI.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 41:
- Concepts: Instance and NIC Performance Model
- Services: Amazon EC2, Elastic Network Interface
- Key Insights: ENI's network interface, which you attached to your EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 42:
- Concepts: Performance Operational Context
- Services: Elastic Network Interface
- Key Insights: It's Elastic Network Interface.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 43:
- Concepts: Instance and NIC Performance Model
- Services: Elastic Network Interface
- Key Insights: ENI appears as if they're physically attached to the guest operating system.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 44:
- Concepts: Performance Operational Context
- Services: Amazon EC2
- Key Insights: As you know, EC2 is a virtual machine, right?
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 45:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Ultimately, there is a physical server.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 46:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So this PCI passthrough enables that communication.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 47:
- Concepts: Cost and Transfer Efficiency, Latency Throughput and PPS Fundamentals, Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: So ultimately in combination, this allows the lowest latency and high data transfer rate, up to like, 1 million packet per second.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 48:
- Concepts: Performance Operational Context
- Services: Enhanced Networking
- Key Insights: So that is in short is SR-IOV and PCI passthrough.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 49:
- Concepts: Performance Operational Context
- Services: Amazon EC2, Enhanced Networking
- Key Insights: Now, what you need to remember is it's not like you can take any EC2 instance and then have the SR-IOV enabled on that.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 50:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: There are certain prerequisites and you need to understand that because there could be some questions around that, so first, it depends on your instance type.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 51:
- Concepts: Instance and NIC Performance Model
- Services: Amazon EC2, Enhanced Networking
- Key Insights: It's not like on any EC2 machine you can enable this SR-IOV or enhanced networking.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 52:
- Concepts: Instance and NIC Performance Model
- Services: Enhanced Networking
- Key Insights: So what you can do, you can enable this enhanced networking on specific instance type.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 53:
- Concepts: Instance and NIC Performance Model
- Services: Enhanced Networking
- Key Insights: And as I said, there are two ways in which you can enable this enhanced networking.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 54:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Option one, you have to have a special driver.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 55:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: We call it Intel 82599 virtual function driver, also it is called ixgbevf driver, and it can provide up to 10 Gbps network bandwidth.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 56:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: Now option two, is you can use Elastic Network Adapter, ENA, which can provide much higher bandwidth up to hundred Gbps.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 57:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Now, these options are like mutually exclusive.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 58:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: It's not like you can use both at the same time.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 59:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Depending on your instance type and the support for that instance, you can use either of these two.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 60:
- Concepts: Performance Operational Context
- Services: Amazon EC2
- Key Insights: So the eligible EC2 instance families can support either of these two.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 61:
- Concepts: Instance and NIC Performance Model
- Services: Amazon EC2, Enhanced Networking
- Key Insights: And remember that for enhanced networking, it requires support from both EC2 operating system, that means EMI and also the instance type.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 62:
- Concepts: Instance and NIC Performance Model
- Services: Enhanced Networking
- Key Insights: And that type should be flagged for enhanced networking.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Topology and high-performance design signal.

Line 63:
- Concepts: Instance and NIC Performance Model
- Services: Amazon EC2, Enhanced Networking
- Key Insights: Again, not every EC2 instance can be enabled with enhanced networking.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 64:
- Concepts: Performance Operational Context
- Services: Amazon EC2
- Key Insights: You have to look at the description of the EC2 instance type as well as the machine image that you use for that EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 65:
- Concepts: Instance and NIC Performance Model
- Services: Enhanced Networking
- Key Insights: Both should support the enhanced networking with either of these two options, right?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Topology and high-performance design signal.

Line 66:
- Concepts: Performance Operational Context
- Services: Amazon EC2
- Key Insights: So that means there are certain EC2 instance, which does not support any of these two.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 67:
- Concepts: Instance and NIC Performance Model
- Services: Enhanced Networking
- Key Insights: That means you can't enable the enhanced networking for those instances.
- Hidden/Implicit Meaning: Constraint or limitation signal; Topology and high-performance design signal.

Line 68:
- Concepts: Instance and NIC Performance Model
- Services: Amazon EC2, Enhanced Networking
- Key Insights: Okay, so just a quick view on which EC2 instances supports enhanced networking, and this is not a limited number of EC2 instances.
- Hidden/Implicit Meaning: Constraint or limitation signal; Topology and high-performance design signal; Capacity-bound and throttling signal.

Line 69:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: There will be many more and this list will grow of course.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 70:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So you don't really need to remember this, but this is just for information purpose.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 71:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: There are instances which supports virtual function, intel virtual function, that means they can support up to 10 Gbps network bandwidth.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 72:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And then there are several instances, which supports ENA, Elastic Network Adapter, sorry.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 73:
- Concepts: Performance Operational Context
- Services: Amazon EC2
- Key Insights: So with that, let's look at how do you check whether your EC2 instance supports Intel Virtual Functions or ENA.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 74:
- Concepts: Performance Operational Context
- Services: Amazon EC2
- Key Insights: What you can do is you can just log into EC2 instance if it's a Linux machine and just run this command, and it will tell you what driver it is using, right?
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 75:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So command it, ethtool minus I, and then the network interface.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 76:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So it will show the required output and then you can make that out.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 77:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: This won't be typically asked in the exam, but just, if you want to try that out, you can just use these commands.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 78:
- Concepts: Instance and NIC Performance Model
- Services: Enhanced Networking
- Key Insights: Now, let's understand what really happens when you use the enhanced networking.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 79:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Now, this diagram shows the typical network flow, how it happens.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 80:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: For example, there is system A here and system B here, and system A wants to send some network packet to system B.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 81:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Of course, you are sitting on a physical host.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 82:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: There is a guest operating system, that means from your machine, the traffic will flow to the virtualization layer.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 83:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: From virtualization layer, it will go to hardware physical NIC, and then this two physical NIC would exchange the data.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 84:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And that's where the, again, at receiving end, again, it goes through the virtualization layer, and it reaches your virtual machine.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 85:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: Amazon EC2
- Key Insights: Now, this is a typical flow and by default, EC2 would support up to 5 Gbps of the network bandwidth when you use a normal two EC2 machines.
- Hidden/Implicit Meaning: Performance-characteristic signal; Topology and high-performance design signal.

Line 86:
- Concepts: Instance and NIC Performance Model
- Services: Enhanced Networking
- Key Insights: Now, what happens when you use enhanced networking?
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 87:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Basically this virtualization layer is taken out of the flow.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 88:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: That means you completely bypass virtualization layer.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 89:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And by using these drivers, like our Intel Virtual Function from your VM, it appears like you are directly talking to the hardware network interface card.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 90:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: And that's where you can get up to 10 Gbps bandwidth between this two system.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 91:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Both are enabled using the Intel ixgbevf driver.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 92:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So remember, you are bypassing the virtualization layer.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 93:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So as you remember, the first method is to use Intel VF, and the second method is to use ENA.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 94:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: Amazon EC2
- Key Insights: So with ENA does the same thing, it bypasses the virtualization layer, but then you can get up to hundred Gbps bandwidth between EC2 machines, which are using these ENA adapters.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 95:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: This is because ENA has much more capacity to support that much of the network bandwidth.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 96:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: Now, one thing to understand that when we say hundred Gbps bandwidth between two machines, it is not the bandwidth per flow.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 97:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: A flow means a point-to-point connection between two machines.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 98:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And it is typically a 5-tuple, which consists of source IP, destination IP, source port, destination port, and a protocol.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 99:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: So if you really want to use full hundred Gbps bandwidth, then you would have to use multiple search flow.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 100:
- Concepts: Performance Operational Context
- Services: Amazon EC2
- Key Insights: That means multiple parallel connection between EC2 machines, right?
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 101:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: A single flow can get you up to maximum of 10 Gbps bandwidth.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 102:
- Concepts: Placement and Topology Optimization
- Services: Amazon EC2, Placement Group
- Key Insights: And that too, when those EC2 machines are part of a same cluster placement group.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 103:
- Concepts: Latency Throughput and PPS Fundamentals, Placement and Topology Optimization
- Services: Placement Group
- Key Insights: If they're not part of the same cluster placement group, then the maximum bandwidth per flow will be 5 Gbps only.
- Hidden/Implicit Meaning: Constraint or limitation signal; Performance-characteristic signal; Topology and high-performance design signal.

Line 104:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: So in order to get full hundred Gbps bandwidth, you need to use thin multiple flows, right?
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 105:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: I hope that is clear.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 106:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: So with that, these are just the numbers with respect to how much bandwidth you can get, and that's an aggregated bandwidth.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 107:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And these numbers can go up with advanced hardware, but for exam perspective, you just need to know this concept.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 108:
- Concepts: Instance and NIC Performance Model
- Services: Enhanced Networking
- Key Insights: Like you can enable the enhanced networking with either Intel virtual functions or elastic network adapters, and their bandwidths are different of course.
- Hidden/Implicit Meaning: Performance-characteristic signal; Topology and high-performance design signal.

Line 109:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: And as of today, you can get hundred Gbps bandwidth with ENA and 10 Gbps with Intel virtual functions.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 110:
- Concepts: High Performance Computing Patterns, Latency Throughput and PPS Fundamentals
- Services: Elastic Fabric Adapter
- Key Insights: Now, there are few other mechanisms to enhance the performance of network throughput using DPDK and EFA as well, which is specially designed for HPC workloads.
- Hidden/Implicit Meaning: Performance-characteristic signal; Topology and high-performance design signal.

Line 111:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And we'll touch upon that in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 112:
- Concepts: Instance and NIC Performance Model
- Services: Enhanced Networking
- Key Insights: But for enhanced networking, you need to understand what all things are required.
- Hidden/Implicit Meaning: Constraint or limitation signal; Topology and high-performance design signal.

Line 113:
- Concepts: Instance and NIC Performance Model
- Services: Amazon EC2, Enhanced Networking
- Key Insights: So ultimately, you need to have the right EC2 instance types, which supports enhanced networking.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 114:
- Concepts: Instance and NIC Performance Model
- Services: Enhanced Networking
- Key Insights: You need to have the correct operating system, which supports enhanced networking.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 115:
- Concepts: Instance and NIC Performance Model
- Services: Amazon EC2, Enhanced Networking
- Key Insights: And then you need to have either Intel virtual functions or ENA attached to your EC2 machine to leverage the enhanced networking functionality.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 116:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: Amazon EC2
- Key Insights: And with respect to the overall bandwidth, how much EC2 instance can have, it also depends on EC2 instance type.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 117:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: Amazon EC2
- Key Insights: So you can go to AWS page and see how much the maximum bandwidth, and particular EC2 instance can provide.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 118:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: Amazon EC2
- Key Insights: It is not that you can just pick any EC2 instance and you can get up to a hundred Gbps bandwidth between these two.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 119:
- Concepts: Performance Operational Context
- Services: Amazon EC2
- Key Insights: It also depends on the capacity of EC2 machine.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 120:
- Concepts: Instance and NIC Performance Model
- Services: Enhanced Networking
- Key Insights: So these are all the things you need to remember for enhanced networking, and then we will see more features in the next lecture.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 121:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So thanks for watching.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/06_Network Performance and Optimization/041_DPDK and Elastic Fabric Adapter (EFA).txt

Line 1:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Hello and welcome to this lecture.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 2:
- Concepts: Instance and NIC Performance Model
- Services: Amazon EC2, Enhanced Networking
- Key Insights: So in the earlier lecture we saw enhanced networking and then how to enable enhanced networking for your EC2 instances.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 3:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Now in this lecture we are going to see some additional network optimization techniques.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 4:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Now this hasn't been seen in the exam much, but this is something good to know because you may expect some questions sometime on this.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 5:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So there are two additional techniques that we are going to see.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 6:
- Concepts: High Performance Computing Patterns
- Services: Elastic Fabric Adapter
- Key Insights: One is depdc and another is using the EFA.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 7:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Now let's see what that means.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 8:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So Depdc is a Intel data plane development kit.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 9:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: And this is nothing but a set of libraries and drivers for fast packet processing.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 10:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: Now what we are now talking about is not really about while the traffic flows from one system to another system, um, via the hypervisor and then, uh, through the drivers or a Nic, what we are talking about processing those packet packet fast before sending it through the network.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 11:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And that's what the Depdc does.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 12:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: It basically, um, increases the performance of processing the packet.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 13:
- Concepts: Instance and NIC Performance Model, Packet and MTU Efficiency
- Services: Enhanced Networking
- Key Insights: Now while enhanced networking and sr-iov reduces the overhead of packet processing between instance and the hypervisor, as we just understood in the last lecture, Depdc reduces overhead of packet processing inside the operating system.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 14:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: That means you can process much more packets than usually you can if you use Depdc libraries in your operating system.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 15:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: So Depdc ultimately provides lower latency due to kernel bypass.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 16:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And what does that mean we will see shortly.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 17:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: It gives you more control of packet processing, and it ultimately lowers your CPU overhead for processing the network packets.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 18:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: That's what Depdc does.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 19:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So whenever the question is about enhancing the performance within the operating system, then it is more about depdc.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 20:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Now this is a typical flow.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 21:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: When the traffic flows from your one VM to another, there is an application which is sending a packet to another machine and another application.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 22:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: So packet obviously flows through your kernel and then it goes through virtual function driver either through Ina or Intel virtual function.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 23:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: And then the network will flow and the receiving end VM will receive that packet.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 24:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: Now which means this packet is being also processed by your operating system.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 25:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Or you can call it a kernel.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 26:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 27:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Now what Depdc allows you to do is to bypass this kernel altogether.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 28:
- Concepts: Packet and MTU Efficiency
- Services: Amazon EC2
- Key Insights: If you use Depdc enabled libraries, packet can directly go from your application to directly your, uh, driver which is attached to your EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 29:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And that's why you can process now much more packets than you would expect otherwise.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 30:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So that's in short, is depdc.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 31:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: There is nothing much to discuss here, but just remember that it's an it's an operating system level optimization for processing a maximum number of packets per second.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 32:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Um, there is one more concept that you need to know.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 33:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Um, other than Depdc.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 34:
- Concepts: High Performance Computing Patterns
- Services: Elastic Fabric Adapter
- Key Insights: As I said, there is something called EFA which is elastic fabric adapter.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 35:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Now we we talked about uh, Ina in the last lecture, which is, which is a network adapter.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 36:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: Amazon EC2
- Key Insights: And when you attach a network adapter to your EC2 instance, it can give you up to 100 GB s bandwidth.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 37:
- Concepts: High Performance Computing Patterns
- Services: Elastic Fabric Adapter
- Key Insights: Uh, but elastic fabric adapter EFA is a special type of Ina with some added capabilities basically.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 38:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And the limitation is it can be it can be only used with Linux machine.
- Hidden/Implicit Meaning: Constraint or limitation signal; Capacity-bound and throttling signal.

Line 39:
- Concepts: High Performance Computing Patterns
- Services: Elastic Fabric Adapter
- Key Insights: That means if you attach EFA to windows machine, it would very well act as a Ina only.
- Hidden/Implicit Meaning: Constraint or limitation signal; Topology and high-performance design signal.

Line 40:
- Concepts: High Performance Computing Patterns
- Services: Elastic Fabric Adapter
- Key Insights: So remember that now EFA further enhances your networking capabilities.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 41:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: You need to then for that understand what is MPI which is message passing interface.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 42:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And what it does is basically it's a communication protocol for parallel programming.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 43:
- Concepts: High Performance Computing Patterns
- Services: (none explicit)
- Key Insights: So whenever you talk about HPC workloads, you know that a same compute workload can be run into multiple machine in a distributed fashion.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 44:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: And in that case, MPI will allow the parallel communication between all these nodes and ultimately increasing your network throughput.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 45:
- Concepts: High Performance Computing Patterns
- Services: Elastic Fabric Adapter
- Key Insights: So there is nothing much to discuss about the EFA at the moment, but understand that EFA is just and enhance or Ina with added capabilities, and it is applicable for Linux machine and not for the windows machine.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 46:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So with that, I think this is a short um, session where we just talk about two things.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 47:
- Concepts: High Performance Computing Patterns, Latency Throughput and PPS Fundamentals
- Services: Elastic Fabric Adapter
- Key Insights: First is Depdc, uh, and second is EFA, which can further enhance your network throughput or bandwidth.
- Hidden/Implicit Meaning: Performance-characteristic signal; Topology and high-performance design signal.

Line 48:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So thanks for watching.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/06_Network Performance and Optimization/042_Bandwidth Limits inside and outside of VPC.txt

Line 1:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: Hello, and welcome to this lecture, network bandwidth limits.
- Hidden/Implicit Meaning: Constraint or limitation signal; Performance-characteristic signal; Capacity-bound and throttling signal.

Line 2:
- Concepts: Instance and NIC Performance Model, Latency Throughput and PPS Fundamentals
- Services: Enhanced Networking
- Key Insights: Now that you understood how enhanced networking works, let's try to understand what bandwidth you can get while the traffic is sent from one networking component to other.
- Hidden/Implicit Meaning: Performance-characteristic signal; Topology and high-performance design signal.

Line 3:
- Concepts: Performance Operational Context
- Services: Amazon EC2
- Key Insights: Now, I don't want to restrict this discussion just to the EC2 instance, but typically if the communication happened between EC2 and, say, a VPN or DX or internet gateway, NAT gateways, or over the VPC peering connection, all these are different scenarios.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 4:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: So we must consider everything when it comes to deciding what kind of bandwidth you can get, right?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Performance-characteristic signal.

Line 5:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So let's get started with this lecture.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 6:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: So in this lecture, we are going to discuss VPC bandwidth limits.
- Hidden/Implicit Meaning: Constraint or limitation signal; Performance-characteristic signal; Capacity-bound and throttling signal.

Line 7:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: And the bandwidth limit may apply to the internet gateway, NAT gateways, VPC peering connection.
- Hidden/Implicit Meaning: Constraint or limitation signal; Performance-characteristic signal; Capacity-bound and throttling signal.

Line 8:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: Amazon EC2
- Key Insights: EC2 itself has a bandwidth limit.
- Hidden/Implicit Meaning: Constraint or limitation signal; Performance-characteristic signal; Capacity-bound and throttling signal.

Line 9:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: Amazon EC2
- Key Insights: Now you understand that EC2 comes in different flavors, different instance families, generations, sizes, and everything affects the network bandwidth.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 10:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: So in this lecture, we'll also see what kind of instance families can give you the maximum bandwidth.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 11:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: Then comes the bandwidth over VPN connection or Direct Connect or Transit Gateways.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 12:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So we'll also touch upon those concepts.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 13:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: Now, whenever we'll talk about the bandwidth and essentially maximizing the bandwidth, we will typically use a term called network flow throughout this lecture, right?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Performance-characteristic signal.

Line 14:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And here, I want to mention the network flow.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 15:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So what is network flow?
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 16:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: It is basically a five-tuple point-to-point connection.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 17:
- Concepts: Performance Operational Context
- Services: Amazon EC2
- Key Insights: So which means if two EC2 machines are communicating with each other and there is some process which is transferring data, it's one network flow, right?
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 18:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So it has a five-tuple, source IP, source port, destination IP, destination port, and the protocol.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 19:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: Now typically bandwidth has a limit per flow.
- Hidden/Implicit Meaning: Constraint or limitation signal; Performance-characteristic signal; Capacity-bound and throttling signal.

Line 20:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: That means if you want to maximize the bandwidth between two instances, for example, then you should look at having multiple flows.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Performance-characteristic signal.

Line 21:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And then we'll talk about that again later.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 22:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: But understand that when we talk about the bandwidth, it typically applies to a single flow.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 23:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And then you can maximize it by using multiple flows.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 24:
- Concepts: Performance Operational Context
- Services: Amazon EC2
- Key Insights: So for example, these are two EC2 instances, and there is one flow between them.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 25:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: And now if you want to maximize the bandwidth, you will have multiple flows.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 26:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: Okay, so with respect to the VPC, there are no specific limit that has been enforced by the VPC for the bandwidth.
- Hidden/Implicit Meaning: Constraint or limitation signal; Performance-characteristic signal; Capacity-bound and throttling signal.

Line 27:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: Whether it's an internet gateway or VPC peering connection, it doesn't impose any bandwidth traffic limits, right?
- Hidden/Implicit Meaning: Constraint or limitation signal; Performance-characteristic signal; Capacity-bound and throttling signal.

Line 28:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: But when it comes to the NAT gateway, as of now, NAT gateway can provide up to 45 Gbps of bandwidth.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 29:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And that is about the single NAT gateway.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 30:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: Now, sometimes if you need more bandwidth than 45 Gbps, then you can obviously have multiple NAT gateways.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 31:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: But in that case, make sure that the traffic from instances does not flow across the availability zone.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 32:
- Concepts: Cost and Transfer Efficiency
- Services: (none explicit)
- Key Insights: Otherwise you would have to pay additional data transfer charges across AZs.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 33:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: But then you can use multiple NAT gateways to scale beyond 45 Gbps.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 34:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: Now that's what the VPC bandwidth limits are.
- Hidden/Implicit Meaning: Constraint or limitation signal; Performance-characteristic signal; Capacity-bound and throttling signal.

Line 35:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: Amazon EC2
- Key Insights: But now essentially, if you talk about EC2 bandwidth limit, now there could be multiple scenarios.
- Hidden/Implicit Meaning: Constraint or limitation signal; Performance-characteristic signal; Capacity-bound and throttling signal.

Line 36:
- Concepts: Placement and Topology Optimization
- Services: Amazon EC2, Placement Group
- Key Insights: As I said, the EC2 machines could be in the same VPC and in the same placement group.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 37:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: That means they are very close to each other.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 38:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Or these EC2s could be across VPCs and these VPCs could be in the same region or another region.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 39:
- Concepts: Performance Operational Context
- Services: Amazon EC2
- Key Insights: Or you can talk to internet, or you can have a traffic between EC2 and S3.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 40:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Now, again, this S3 bucket could be in the same region or a different region.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 41:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: Now, depending on the scenario, the bandwidth limit would change, right?
- Hidden/Implicit Meaning: Constraint or limitation signal; Performance-characteristic signal; Capacity-bound and throttling signal.

Line 42:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: Amazon EC2
- Key Insights: So first of all, the bandwidth of EC2 instance itself will depend on a lot of factors.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 43:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Which instance family it is, how many vCPUs instance has, and what's the traffic destination is.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 44:
- Concepts: Performance Operational Context
- Services: Amazon EC2
- Key Insights: Now you know that there are network optimized EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 45:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: And if you look at the AWS current generation instances which are based on the Nitro systems, then they provide much more networking bandwidth than the older generation instances.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 46:
- Concepts: Performance Operational Context
- Services: Amazon EC2
- Key Insights: So always make sure that you choose the latest generation instances to get the maximum performance from the EC2 instances.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 47:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: Amazon EC2
- Key Insights: Now, if the traffic destination is within the region then typically you can leverage the maximum bandwidth that EC2 has.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 48:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: Amazon EC2
- Key Insights: Now, if you go to the AWS EC2 instance page and look at its configuration, it provides you the networking bandwidth as well.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 49:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And that typically says up to five Gbps or up to 10 Gbps or up to 100 Gbps, right?
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 50:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: Amazon EC2
- Key Insights: So if the traffic destination is in the same region as EC2 machine, then you can leverage whole bandwidth of that EC2 machine.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 51:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Now, again, we are not talking about a single flow here.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 52:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: You have to use multiple flows to, you know, consume whole bandwidth.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 53:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: But now if the traffic is outside of AWS region, in that case, it depends where the destination is again, right?
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 54:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: Amazon EC2
- Key Insights: If it is going over the internet or Direct Connect, then you can only utilize up to 50% of the network bandwidth that EC2 provides, right?
- Hidden/Implicit Meaning: Constraint or limitation signal; Performance-characteristic signal.

Line 55:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And this is only applicable for the instances which have minimum of at least 32 vCPUs.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 56:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: So if the instance is smaller in size than 32 vCPUs, it is still limited to five Gbps per instance, if the traffic is going to the internet or to the Direct Connect, then that would be the maximum bandwidth that you can get.
- Hidden/Implicit Meaning: Constraint or limitation signal; Performance-characteristic signal; Capacity-bound and throttling signal.

Line 57:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: If instance size is less than 32 vCPUs and instance is not the current generation instances.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 58:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Now what are current generation instances?
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 59:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: You can just Google on AWS page and you will find typically all the Nitro based systems are the current generation instances as of now.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 60:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: Amazon EC2
- Key Insights: So understand that if the traffic destination is within the region, you can get the full EC2 bandwidth.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 61:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: But if it is outside of region then it would depend again, on whether the instance is small size and it's a current generation or not.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 62:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: Otherwise five Gbps is the bandwidth limit.
- Hidden/Implicit Meaning: Constraint or limitation signal; Performance-characteristic signal; Capacity-bound and throttling signal.

Line 63:
- Concepts: Performance Operational Context
- Services: Amazon EC2
- Key Insights: So you can see it could be either 50% or five Gbps if the traffic is going through the internet gateway or to the S3 or to the other region EC2 machine.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 64:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Okay, I hope that is clear.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 65:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: Amazon EC2
- Key Insights: Now here, I'm not talking about specific bandwidth numbers, because as I said, it would depend on the underlying EC2 instance type and its networking capabilities.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 66:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: Amazon EC2
- Key Insights: So what is the maximum bandwidth that you can get from the EC2 machines when the traffic goes to these destinations?
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 67:
- Concepts: Instance and NIC Performance Model
- Services: Enhanced Networking
- Key Insights: So that, again now, depending on whether you have the enhanced networking enabled or not.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 68:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: As we learned in the last lecture, if you are using Intel Virtual Function then you can get 10 Gbps of aggregate bandwidth and then per-flow bandwidth is five Gbps.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 69:
- Concepts: Instance and NIC Performance Model
- Services: Enhanced Networking
- Key Insights: So that is when your instance supports the Intel Virtual Function as an enhanced networking.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 70:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: But if the instance is current generation and it supports the ENA, that is elastic network adapter, then you can get up to 100 Gbps of the bandwidth with the ENA.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 71:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: Now again, 100 Gbps is an aggregate bandwidth.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 72:
- Concepts: Latency Throughput and PPS Fundamentals, Placement and Topology Optimization
- Services: Placement Group
- Key Insights: That means per flow bandwidth you can get five Gbps if it is outside of placement group and 10 Gbps if it is inside placement group, but ultimately the aggregate bandwidth is 100 Gbps while using the ENA.
- Hidden/Implicit Meaning: Performance-characteristic signal; Topology and high-performance design signal.

Line 73:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And the same rule applies to even the traffic to the S3 as well.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 74:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Again here, you have to use multiple flows.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 75:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: And for highest bandwidth, you should leverage VPC endpoint in that case.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Performance-characteristic signal.

Line 76:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: Because if the traffic goes over to the internet, you know that bandwidth will be 50% maximum, right?
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 77:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: So you can't leverage this 100 Gbps bandwidth there.
- Hidden/Implicit Meaning: Constraint or limitation signal; Performance-characteristic signal.

Line 78:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: Amazon EC2
- Key Insights: So these are few things that you need to consider while thinking about the bandwidth, but ultimately there are other factors as well, like EC2 instance sizes, EC2 instance type, everything, right?
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 79:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: Amazon EC2
- Key Insights: That you need to go to AWS EC2 page and see if it supports the ENA and what's the maximum bandwidth it supports, right?
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 80:
- Concepts: Performance Operational Context
- Services: Amazon EC2
- Key Insights: Now, while we are talking about the ENA and EC2, we said that it's 100 Gbps typically.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 81:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: But lately AWS also launched an instance, which is special instance P4d which runs on a supercomputer called UltraClusters, which provides 400 Gbps of the networking.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 82:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And that's the first time in cloud that happened.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 83:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: And this is not typically the normal instance that anybody can use, but this is where the bandwidth limits have been reached, right?
- Hidden/Implicit Meaning: Constraint or limitation signal; Performance-characteristic signal; Capacity-bound and throttling signal.

Line 84:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: But in general, if it's about ENA, you can consider it as 100 Gbps is the standard limit as of now.
- Hidden/Implicit Meaning: Constraint or limitation signal; Capacity-bound and throttling signal.

Line 85:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So I hope that is clear.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 86:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: And now let's go to the other bandwidth, that is VPN, DX, or Transit Gateway.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 87:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So when it comes to the VPN, you know that in VPC you have to attach the virtual private gateway.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 88:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: And virtual private gateway is limited by 1.25 Gbps of aggregate bandwidth.
- Hidden/Implicit Meaning: Constraint or limitation signal; Performance-characteristic signal; Capacity-bound and throttling signal.

Line 89:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: Now, what is this aggregate bandwidth?
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 90:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: On virtual private gateway, you can have multiple VPN connection to multiple branch offices, right?
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 91:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: But then, irrespective of how many VPN connection terminates on this private gateway, total aggregate bandwidth from AWS to your on-premise network would be limited to 1.25 Gbps.
- Hidden/Implicit Meaning: Constraint or limitation signal; Performance-characteristic signal; Capacity-bound and throttling signal.

Line 92:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Now every VPN connection comes with two tunnels.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 93:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: And 1.25 Gbps is also per-tunnel in bandwidth.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 94:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: But you know that you can't use ECMP with VPG at the VPC level.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 95:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: That means only one tunnel is active at a time.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 96:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: However if it's a Transit Gateway it's a different story.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 97:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: You can have ECMP enabled and you can double the bandwidth in that case, right?
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 98:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And we'll talk more about that during the Transit Gateway session.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 99:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: But understand that for virtual private gateway, the aggregate bandwidth limit from AWS to on-premise network traffic at 1.25 Gbps.
- Hidden/Implicit Meaning: Constraint or limitation signal; Performance-characteristic signal; Capacity-bound and throttling signal.

Line 100:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And which also means from on-premise to AWS, it will be limited by how much traffic the on-premise is sending to your VPC.
- Hidden/Implicit Meaning: Constraint or limitation signal; Capacity-bound and throttling signal.

Line 101:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: Now, as I said, multiple VPN connection, the overall bandwidth will be limited by 1.25 Gbps only.
- Hidden/Implicit Meaning: Constraint or limitation signal; Performance-characteristic signal; Capacity-bound and throttling signal.

Line 102:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: And AWS Direct Connect bandwidth is defined by the port speed.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 103:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Now we haven't talked about Direct Connect yet, but Direct Connect provides you option with different port speed like one Gbps, 10 Gbps, or 100 Gbps, as well as sub one Gbps like 50 Mbps, 100, 500, like that.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 104:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So in case of Direct Connect, it will be limited by the port speed that you define, right?
- Hidden/Implicit Meaning: Constraint or limitation signal; Capacity-bound and throttling signal.

Line 105:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And if Direct Connect is terminating over Virtual Private Gateway, now, when we talk about Direct Connect, we'll talk about these factors.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 106:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: But in order for you to send traffic from your VPC private instances over the Direct Connect, you have to create a private BIF which has to be attached to the Virtual Private Gateway again.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 107:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: Now in that case, the private gateway throughput will be bound by the Direct Connect physical port itself, right?
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 108:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: So if port is one Gbps then you will get one Gbps bandwidth.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 109:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: If it is more than that, then you will get that bandwidth.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 110:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So 1.25, what we talked about is all about the VPN connection which terminates on the VPC.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 111:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: But for Direct Connect, it will be as per your Direct Connect port.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 112:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So I hope that it's clear.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 113:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: Now with respect to the Transit Gateway especially, Transit Gateway has a limit of 50 Gbps aggregate bandwidth.
- Hidden/Implicit Meaning: Constraint or limitation signal; Performance-characteristic signal; Capacity-bound and throttling signal.

Line 114:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: That means you could have multiple VPN connection which can terminate onto the Transit Gateway.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 115:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: And then each VPN connection can have 1.25 Gbps bandwidth.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 116:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: And then you can aggregate multiple such VPN connection to get aggregate bandwidth of 50 Gbps.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 117:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: I hope that it's clear.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 118:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: Amazon EC2
- Key Insights: Now with respect to the exam I don't think you need to remember all these numbers because these numbers are going to change and you will see higher bandwidth being supported by EC2 and different networking components in AWS.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 119:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: But in general, I hope you know that, which all the bandwidth you have to consider when the traffic flows through different networking components in AWS.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 120:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So with that, we'll stop here for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 121:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And thanks for watching.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/06_Network Performance and Optimization/043_Network I_O credits.txt

Line 1:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Hi all and welcome to this lecture.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 2:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: This is a very short lecture.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 3:
- Concepts: Instance and NIC Performance Model
- Services: (none explicit)
- Key Insights: Maybe, we just talking about a one point that you need to remember, that's called network I/O credit.
- Hidden/Implicit Meaning: Capacity-bound and throttling signal.

Line 4:
- Concepts: Performance Operational Context
- Services: Amazon EBS
- Key Insights: Now, if you know about how EBS works or how easy to T3 or T family works, right?
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 5:
- Concepts: Instance and NIC Performance Model
- Services: (none explicit)
- Key Insights: It accumulate the CPU credits.
- Hidden/Implicit Meaning: Capacity-bound and throttling signal.

Line 6:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: What does that mean?
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 7:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: If you're not using the T3 instance CPU capacity for longer time, it can burst well beyond the allocated CPU capacity.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 8:
- Concepts: Instance and NIC Performance Model
- Services: (none explicit)
- Key Insights: That means it accumulate that credits for the CPU.
- Hidden/Implicit Meaning: Capacity-bound and throttling signal.

Line 9:
- Concepts: Instance and NIC Performance Model, Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: Now, same thing applies for network I/O credits as well for certain instance types and, then you need to know that these instance types will accumulate your network I/O credits and when you are required, it will go beyond their allocated network bandwidth and that's, in short is network I/O credits.
- Hidden/Implicit Meaning: Constraint or limitation signal; Performance-characteristic signal; Capacity-bound and throttling signal.

Line 10:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: So, instance families such as R4 and C5 uses this feature and what that means is, if there is an application which requires a high network throughput just for a small amount of time, maybe in a whole day, then you can look for this instance type which can very well burst beyond the allocated network bandwidth.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 11:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So this instance performs well above the baseline network performance during that peak requirement.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 12:
- Concepts: Instance and NIC Performance Model
- Services: (none explicit)
- Key Insights: Now, why it is important to know is because, if you are doing some network performance benchmark for those instances, then make sure that they don't have the accumulated credits, otherwise, what would happen during benchmark, they are performing really well, then you think that these are the appropriate instance types, but if you are running those instances for long duration, you would see that, they are not able to give the same network performance because now they don't have that accumulated credits.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Capacity-bound and throttling signal.

Line 13:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So this is just a point you need to remember, and that's it about this lecture.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 14:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So, thanks for watching.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/06_Network Performance and Optimization/044_Network performance Summary.txt

Line 1:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Hello, and welcome to this lecture.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 2:
- Concepts: Performance Operational Context
- Services: Amazon EC2
- Key Insights: Here, we are going to summarize what we learned about optimizing the network performance while operating in AWS, specifically with respect to the EC2 instances and VPC.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 3:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So let's understand this and revise this concept.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 4:
- Concepts: Latency Throughput and PPS Fundamentals, Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: So for high network bandwidth and throughput, consider using Jumbo Frames, that is the first thing we saw.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 5:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: With Jumbo Frames, you can send 9001 byte in one single packet.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 6:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: That means you can send more data by sending the less number of packets.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 7:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: That's the first thing.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 8:
- Concepts: Instance and NIC Performance Model, Latency Throughput and PPS Fundamentals, Placement and Topology Optimization
- Services: Amazon EBS, Amazon EC2, Enhanced Networking, Placement Group
- Key Insights: Then you can enable the enhanced networking for your EC2 instances by various mechanism that we saw, you can use cluster placement groups, so that EC2 instances are in close proximity, and then they can get benefited of that and send more packets and with lower latency, then you can also use EBS optimized instances, so that you get a dedicated bandwidth for a communication between EC2 an EBS volume, and then a separate bandwidth to get for other network activities.
- Hidden/Implicit Meaning: Performance-characteristic signal; Topology and high-performance design signal.

Line 9:
- Concepts: High Performance Computing Patterns
- Services: (none explicit)
- Key Insights: And for OS-level optimization, you can use DPDK libraries, that's Intel Data Plane Development Kit, and with that, there is a direct communication between your application and then it can directly send the data to underlying network cards, via those drivers, whether Intel Virtual Functions or ENA.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 10:
- Concepts: High Performance Computing Patterns
- Services: (none explicit)
- Key Insights: So it runs in a user space and it bypasses the kernel when you use DPDK.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 11:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So just going over it again.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 12:
- Concepts: Instance and NIC Performance Model
- Services: Enhanced Networking
- Key Insights: So instance level network optimization can be done with enhanced networking and for enhanced networking, you have to enable the SR-IOV, that is single route input-output virtualization.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 13:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: With PCI pass through, what it does is, ultimately it presents your virtual physical network card as a virtual network card to your instances, and same physical network card can be shown as, or can be represented as multiple virtual instances, and then it bypasses the hypervisor for the network communication.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 14:
- Concepts: Instance and NIC Performance Model
- Services: Enhanced Networking
- Key Insights: Then you can always use ENA or Intel Virtual Function in order to enable the enhanced networking.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Topology and high-performance design signal.

Line 15:
- Concepts: Latency Throughput and PPS Fundamentals, Placement and Topology Optimization
- Services: Amazon EC2, Placement Group
- Key Insights: You can also use placement groups as you know, specifically cluster placement group, where those EC2 instances will be typically launched in a same availability zone in the same rack, so that you get the lowest latency possible between these two EC2 instances or multiple EC2 instances.
- Hidden/Implicit Meaning: Performance-characteristic signal; Topology and high-performance design signal.

Line 16:
- Concepts: Performance Operational Context
- Services: Amazon EBS
- Key Insights: And finally, you can use EBS-optimized instances as well.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 17:
- Concepts: High Performance Computing Patterns
- Services: (none explicit)
- Key Insights: For operating system level network optimization, use DPDK, we just talked about that.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 18:
- Concepts: High Performance Computing Patterns
- Services: Elastic Fabric Adapter
- Key Insights: And you can additionally use EFA.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 19:
- Concepts: High Performance Computing Patterns
- Services: Elastic Fabric Adapter
- Key Insights: EFA is nothing but ENA with additional capability where you can bypass the OS and that improves your network performance typically would be used for HPC workloads, HPC is your high performance computing workloads like a media processing or telecom providers typically would require HPC kind of workloads.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 20:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So that's in short summary of what we saw in this lecture.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 21:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: If something that is not clear, go back and you can watch the video again.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 22:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So thanks for watching.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/06_Network Performance and Optimization/045_Exam Essentials.txt

Line 1:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 2:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So with respect to the network performance, there are a lot of things that we saw.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 3:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And let's try to remember what you need to know for your exam.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 4:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: So as an exam essential understand that the MTU values first of all what is MTU.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 5:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: And then the various MTU values within the VPC.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 6:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And typically when the traffic flows out of VPC.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 7:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: So if the traffic stays within the VPC MTU size of 9001 byte, which is also called jumbo frames, are supported or otherwise if the traffic is going over the internet or if it is over the site to site VPN connection, which terminates on the Virtual Private Gateway or the Transit gateway, the jumbo frame is not supported and the MTU size is limited to 1500 bytes.
- Hidden/Implicit Meaning: Constraint or limitation signal; Performance-characteristic signal; Capacity-bound and throttling signal.

Line 8:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: Now, when it comes to the VPC peering connection, the Inter-region VPC peering supports jumbo frame of size 9001 bytes, but for the Inter-region VPC peering it is 8500 bytes.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 9:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: Now, understand that when the packet per second is a bottleneck, that means your CPU is having the limited capacity and it can't process more packet per second.
- Hidden/Implicit Meaning: Constraint or limitation signal; Capacity-bound and throttling signal.

Line 10:
- Concepts: Latency Throughput and PPS Fundamentals, Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: In that case, increasing the MTU would give the better throughput because you are now processing the larger packet at once.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 11:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 12:
- Concepts: Instance and NIC Performance Model, Placement and Topology Optimization
- Services: Enhanced Networking, Placement Group
- Key Insights: So that's one optimization technique that you can apply now while using the enhanced networking and placement group.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 13:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: Amazon EC2
- Key Insights: Ultimately, it lowers the latency between the EC2 instances and the hypervisor.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 14:
- Concepts: Packet and MTU Efficiency
- Services: (none explicit)
- Key Insights: But if you are using Dfdc in that case it improves the packet processing at the operating system level.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 15:
- Concepts: Instance and NIC Performance Model
- Services: Enhanced Networking
- Key Insights: So understand the difference between enhanced networking and the DP DQ.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 16:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So whenever dp DQ understand that its OS level optimization.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 17:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 18:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Moving on.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 19:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: Amazon EC2
- Key Insights: If you talk about the network bandwidth that EC2 can get, the maximum network bandwidth it gets, it depends on a lot of factors, right.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 20:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Those factors could be instance family whether it's M family, C family.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 21:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So every instance family would have different network bandwidths as well as the size of the instance.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 22:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: That means what CPU capacity it has, what memory it has, how much disk input output IO it has.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 23:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 24:
- Concepts: Instance and NIC Performance Model, Latency Throughput and PPS Fundamentals
- Services: Amazon EC2, Enhanced Networking
- Key Insights: Also whether the instance supports enhanced networking on not all this factor will ultimately decide the maximum bandwidth that EC2 instance can get.
- Hidden/Implicit Meaning: Performance-characteristic signal; Topology and high-performance design signal.

Line 25:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: But in general, if you want to look at the bandwidth, then you can visit the AWS website documentation.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 26:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And then there you'll see a particular instance type.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 27:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: What is the maximum bandwidth it supports.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 28:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: Now also understand that the bandwidth when we talk about it's an aggregated bandwidth across multiple flows.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 29:
- Concepts: Performance Operational Context
- Services: Amazon EC2
- Key Insights: Now one flow is one, uh, connection between EC2 and the other end, right, which is a five tuple, typically protocol source port or destination port source IP and destination IP.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 30:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: So when we say maximum bandwidth, we are not talking about just one single connection between the two machines, right.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 31:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: We are talking about, uh, aggregate bandwidth using multiple flows.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 32:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: Amazon EC2
- Key Insights: So uh, bandwidth of uh, aggregate flow within the region would depend on the EC2 instance.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 33:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: Maximum bandwidth.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 34:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: Amazon EC2
- Key Insights: So, as I said, uh, EC2 would provide different bandwidth depend on EC2 instance sizes.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 35:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Now if you go to the AWS documentation.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 36:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So here is the documentation.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 37:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: If you go to this page I have given the link as well.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 38:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: Amazon EC2
- Key Insights: It states that within the region you can get the full network bandwidth of EC2 instance.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 39:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And if you just click here and go to general purpose instances.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 40:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: In that case you can see here for example, the there are different instance types first.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 41:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And then if you go to the network performance you can see T2 instances.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 42:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Maximum network performance is one GB.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 43:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: But if you go down and see other instances like M6 this is M6 a it provides 12.5 GB and in some cases you get up to 100 GB maximum bandwidth across multiple flows.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 44:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Again, remember that right with any you have to use any in that case.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 45:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Now some instances support Intel virtual functions, some support Ina.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 46:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: And accordingly the bandwidth is decided.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 47:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So that means there is no straightforward answer.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 48:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: What is the maximum bandwidth for a given instance?
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 49:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: It depends on a lot of factors.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 50:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: So always visit this page and you will see the maximum bandwidth.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Performance-characteristic signal.

Line 51:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: Similarly, there are other instance types as well, and you can go and see their bandwidth as well.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 52:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 53:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: Now if the traffic is within the AWS region, then you can get the maximum bandwidth of 100 Gbps with the Ina that we learned about.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 54:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: Also, if the S3 bucket is also within the same region, then also you can get up to 100 Gbps of bandwidth between S2 and S3, again using the multiple flows.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 55:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: Now outside of the region to the internet or direct connect, the maximum bandwidth you can get is maximum 50% of the available network bandwidth.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 56:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Now that will also depend on the generation of the instance as well as the size of the instance.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 57:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: The size of the instance has to be greater than or equal to 32 vCPUs, and it should be current generation.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 58:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Then you can get up to 50%.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 59:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: That means, uh, the page that we just saw, if it says, say, 20 Gbps maximum bandwidth, but if the traffic is going outside of the region to the internet or direct connect, then you can get up to ten Gbps as a maximum bandwidth.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 60:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: However, if the instance is not the current generation or the size is less than 32 week CPU, then the maximum bandwidth you get is five Gbps only.
- Hidden/Implicit Meaning: Constraint or limitation signal; Performance-characteristic signal.

Line 61:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So remember that.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 62:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: And now the last thing you need to remember is that the single flow bandwidth is typically limited to five Gbps.
- Hidden/Implicit Meaning: Constraint or limitation signal; Performance-characteristic signal; Capacity-bound and throttling signal.

Line 63:
- Concepts: Performance Operational Context
- Services: Amazon EC2
- Key Insights: If the traffic is between two EC2 instances, which are across VPCs or within the same VPC, and if the traffic is going out to the internet or anywhere, then it is limited to five Gbps.
- Hidden/Implicit Meaning: Constraint or limitation signal; Capacity-bound and throttling signal.

Line 64:
- Concepts: Placement and Topology Optimization
- Services: Placement Group
- Key Insights: But if the instances are within the same cluster placement group now I hope you know what is the placement group.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 65:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Then you can get the ten Gbps in a single flow.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 66:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Now this is typically required for high performance computing kind of workloads.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 67:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: Like if you are running some, you know, CAD applications or simulations, then you need that level of bandwidth.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 68:
- Concepts: Placement and Topology Optimization
- Services: Placement Group
- Key Insights: And in that case you will use the cluster placement group.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 69:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Now in that case per flow you can get ten Gbps.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 70:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: And the aggregate bandwidth again is limited to 100 Gbps with the Ina that we already talked about.
- Hidden/Implicit Meaning: Constraint or limitation signal; Performance-characteristic signal; Capacity-bound and throttling signal.

Line 71:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So remember these things okay. so that covers the important points.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 72:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: What you need to remember for exam.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 73:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: Amazon EC2
- Key Insights: So if I want to summarize this again, understand that the maximum network bandwidth between EC2 instances and other networking endpoint is 100 Gbps that you get with the Ina.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 74:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: Amazon EC2
- Key Insights: And uh, also understand that within the region you can get full bandwidth of EC2 instance and per flow bandwidth is typically five Gbps.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 75:
- Concepts: Placement and Topology Optimization
- Services: Placement Group
- Key Insights: But then within the cluster placement group you can get up to ten Gbps as well.
- Hidden/Implicit Meaning: Topology and high-performance design signal.

Line 76:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: Now outside the AWS region, if the traffic is going to, then the maximum bandwidth would be 50% of the maximum available bandwidth for that instance.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 77:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: And uh, otherwise, if the instance sizes are lower than 32 vCPUs, then the maximum bandwidth is five Gbps.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 78:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: Amazon EC2
- Key Insights: Now when we talk about maximum bandwidth within the region, it could be between Ec2's.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 79:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Or it could also be between S2 and S3 as well.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 80:
- Concepts: Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: That means you can get 100 Gbps bandwidth with multiple flows between S2 and S3 as well.
- Hidden/Implicit Meaning: Performance-characteristic signal.

Line 81:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So that's it about this lecture.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 82:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Thanks for watching.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/27_Networking - VPC/351_Networking Costs in AWS.txt

Line 1:
- Concepts: Cost and Transfer Efficiency
- Services: (none explicit)
- Key Insights: So now let's talk about networking cost in AWS per gigabyte.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 2:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And this is a simplified version to make things as easy as possible and to explain to you a few important concepts.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 3:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Now, networking costs enables can get very complicated, but here is a high-level overview and that should helps you going into the exam.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 4:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So we have a region and I've drawn two availability zones in this region.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 5:
- Concepts: Performance Operational Context
- Services: Amazon EC2
- Key Insights: Let's assume we have an EC2 instance in the first AZ.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 6:
- Concepts: Performance Operational Context
- Services: Amazon EC2
- Key Insights: And so the first thing you should know is that any traffic going into your EC2 instances is going to be free.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 7:
- Concepts: Performance Operational Context
- Services: Amazon EC2
- Key Insights: So any incoming traffic onto EC2 is free.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 8:
- Concepts: Performance Operational Context
- Services: Amazon EC2
- Key Insights: Now let's assume we have a second EC2 instance and it is in the same availability zone, then in that case, because an availability zone represents a set of multiple data centers that are geographically located within one another, then any traffic between your two EC2 instances will be free assuming that there are using their private IP to communicate, by using the private IP they will go over the network that they are connected with.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 9:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So this is great.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 10:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So far everything is free.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 11:
- Concepts: Performance Operational Context
- Services: Amazon EC2
- Key Insights: But now that's include an EC2 instance in another AZ.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 12:
- Concepts: Performance Operational Context
- Services: Amazon EC2
- Key Insights: And this time we want you have these two EC2 instances across two different AZ within the same region to communicate with one another.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 13:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: One approach would be to use a public IP or an elastic IP.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 14:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And if we do so, we're going to pay 2 cents per gigabytes if using a public IP or elastic IP.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 15:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Why?
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 16:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Well, because the traffic has to leave via AWS network and go back in for our two instances to communicate and so AWS will charge us for that.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 17:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Instead, if we are using a private IP, then we're going to be charge half as less, because we're now using the internal AWS network to link between these two availability zones.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 18:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So a takeaway here is that if you want to make your instances communicate one, faster and two, at a lesser price, then use as much as possible the private IP versus using the public IP.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 19:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Next, let's consider another region with another availability zone.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 20:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: In which case the traffic to go from one region to another is going to be $0.02 on the gigabytes.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 21:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So that means that the entire region traffic can be quite expensive.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 22:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So what do we get as a takeaway from this very simplified slide?
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 23:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: The first thing is that you should use a private IP instead of a public IP, if you want to have good savings, okay, and better network performance, because you will automatically be onto the private network.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 24:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So one reason is do not use the public IP to communicate between two instances in the same region into AZ.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 25:
- Concepts: Placement and Topology Optimization
- Services: Amazon EC2, Placement Group
- Key Insights: The second thing is that if you have a cluster that does some computation and does require a lot of communication between your EC2 instances from one another, then you may want to use the same availability zones for a maximum amount of savings, okay?
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 26:
- Concepts: Cost and Transfer Efficiency
- Services: (none explicit)
- Key Insights: That obviously these cost savings come at a cost and the cost is that you're not highly available anymore.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 27:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: That means that if your AZ goes down, then you don't have any fell over available.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 28:
- Concepts: Cost and Transfer Efficiency
- Services: (none explicit)
- Key Insights: So here you have to balance between the high availability and cost.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 29:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And based on the question you will be ask in the exam, you have to choose the right balance.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 30:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So typical example of that would be, hey, we have an RDS database and we want you to create a read replica and do some analytics on top of this read replica.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 31:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: How do we create a read replica for the cheapest amount of money?
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 32:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Well, if you create that read replica in the same AZ, then you're not going to be charged anything to replicate the one database to another in terms of network costs.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 33:
- Concepts: Cost and Transfer Efficiency
- Services: (none explicit)
- Key Insights: But if you create that read replica in another AZ, then you're going to pay 1 cents per gigabyte of data transfer between the two databases.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 34:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So now let's talk about how we can optimize our networking costs by making some smart architectural decisions.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 35:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So egress traffic is outbound traffic.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 36:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: That means from AWS to the outside.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 37:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: An ingress traffic is inbound traffic.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 38:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: That means from the outside to AWS which is typically free.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 39:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So sending data to AWS is usually free, but taking data outside of AWS, you have to pay.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 40:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So your goal is going to be to try to keep as much internet traffic as possible within AWS to minimize the costs.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 41:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So let's say we have a database and then we have a user in a corporate data center and we run an application in our corporate data center.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 42:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: That application is doing a query to the database and retrieving 100 megabytes of data from the database.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 43:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And then it will do some aggregation, some computations and then finally, returned the query results, only 50 kilobytes to the user.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 44:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: In that case, the egress traffic is going to be really, really high.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 45:
- Concepts: Cost and Transfer Efficiency
- Services: (none explicit)
- Key Insights: And the cost associated with it as well is going to be really high.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 46:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Because we took 100 megabytes of data from AWS and we took it into our corporate data center, maybe over the internet, right?
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 47:
- Concepts: Performance Operational Context
- Services: Amazon EC2
- Key Insights: But if we make a smart choice, we could move our application directly into the AWS cloud on an EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 48:
- Concepts: Cost and Transfer Efficiency
- Services: (none explicit)
- Key Insights: In this case, if we're very smart and we keep the data within the same availability zone, then the DB query data transfer is going to be free.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 49:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And so 100 megabytes will not be built at all for accounts.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 50:
- Concepts: Cost and Transfer Efficiency
- Services: (none explicit)
- Key Insights: And then the query results themselves of only 50 kilobytes will be sent to us and it will be a much cheaper cost.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 51:
- Concepts: Cost and Transfer Efficiency
- Services: (none explicit)
- Key Insights: And in this case, the egress cost is minimized.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 52:
- Concepts: Cost and Transfer Efficiency
- Services: (none explicit)
- Key Insights: Another thing you need to know to minimize egress traffic network costs is that if you're using Direct Connect, you need to choose a Direct Connect location that is co-located in the same AWS region to result in the lower cost for egress network.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 53:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 54:
- Concepts: Cost and Transfer Efficiency
- Services: (none explicit)
- Key Insights: What about S3 data transfer pricing?
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 55:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Let's do an analysis for the USA.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 56:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So we have an S3 bucket and any data going into the S3 bucket is going to be free, because this is ingress traffic.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 57:
- Concepts: Cost and Transfer Efficiency
- Services: (none explicit)
- Key Insights: But if we download the data from Amazon S3 to our computers through the internet, then we're going to pay an egress traffic cost of 9 cents per gigabytes.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 58:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: This is represented right here.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 59:
- Concepts: Cost and Transfer Efficiency
- Services: (none explicit)
- Key Insights: If we want to use S3 transfer acceleration to get faster transfer times from 50 to 500% better, then we're going to get an additional cost on top of the data transfer pricing, which is going to be anywhere between 4 cents to 8 cents per gigabytes.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 60:
- Concepts: Cost and Transfer Efficiency
- Services: (none explicit)
- Key Insights: So using transfer acceleration has a cost.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 61:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Now S3 to CloudFront is going to be free traffic.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 62:
- Concepts: Cost and Transfer Efficiency
- Services: (none explicit)
- Key Insights: So if you set up a CloudFront distribution on top of your S3 bucket, any data transfer that happens between S3 and CloudFront is free.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 63:
- Concepts: Cost and Transfer Efficiency
- Services: (none explicit)
- Key Insights: But from CloudFront to the internet is going to cost you 8.50 cents per gigabyte, which is slightly cheaper than Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 64:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: On top of it, you're going to get caching capabilities.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 65:
- Concepts: Cost and Transfer Efficiency, Latency Throughput and PPS Fundamentals
- Services: (none explicit)
- Key Insights: So lower latency for the access of the data and the reduced cost is going to be also whenever you have requests being made.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Performance-characteristic signal.

Line 66:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So when someone makes a request to your S3 bucket, you're going to pay for that requests, but a request made into Amazon CloudFront is much cheaper.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 67:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: It is seven times cheaper.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 68:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So you're going to save a lot of money by using CloudFront on top of your Amazon S3 bucket, if that fits your use case.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 69:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And then finally, if you do a Cross Region Replication for your Amazon S3 buckets, then you're going to pay 2 cents per gigabyte for it, okay?
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 70:
- Concepts: Cost and Transfer Efficiency
- Services: (none explicit)
- Key Insights: So the numbers can change over time and this is for the USA and it can change for your region, but what you need to remember is that using some services have an added cost and it's important for you to know how these costs relates to one another.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 71:
- Concepts: Cost and Transfer Efficiency
- Services: (none explicit)
- Key Insights: Another analysis of cost is to use a NAT Gateway versus a Gateway VPC Endpoint.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 72:
- Concepts: Performance Operational Context
- Services: Amazon EC2
- Key Insights: So we have a VPC in the region and we have two private subnets with two different types of EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 73:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And they both want to access data into an Amazon S3 bucket.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 74:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So one way to do so is to use the public internet and so to do so, we set up a public subnets, which has a NAT Gateway.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 75:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: For the subnet to be public, we need to have a route into an Internet Gateway.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 76:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And so we're going to establish a route using the route table.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 77:
- Concepts: Performance Operational Context
- Services: Amazon EC2
- Key Insights: And then we have a direct connectivity from the EC2 instance through the NAT Gateway and through the Internet Gateway into the internet.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 78:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: Then from the internet, we access the data in your Amazon S3 buckets.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 79:
- Concepts: Cost and Transfer Efficiency
- Services: (none explicit)
- Key Insights: And so the cost associated with this is $0.045 per hour for your NAT Gateway, $0.045 per gigabytes of data process through your NAT Gateway and then $0.09 per hour for data transfer out to S3 cross-region or $0 if it's same region, okay?
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 80:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: But if we were to set up a VPC Endpoints, okay, to access our data into our Amazon S3 bucket privately, then we set up a different route table.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 81:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So in this case, to access the VPC Endpoint we just set up a route to it.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 82:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And so the data flows directly from the private subnets into the VPC Endpoints and the S3 buckets.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 83:
- Concepts: Cost and Transfer Efficiency
- Services: (none explicit)
- Key Insights: And we have no cost for using Gateway Endpoint and we pay 1 cent per gigabytes of data transferred in and out of your S3 bucket for the same region.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 84:
- Concepts: Cost and Transfer Efficiency
- Services: (none explicit)
- Key Insights: So this can be a significantly lower cost to use a VPC Endpoint instead of your NAT Gateway.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 85:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: And this is again, something that the exam can test you on.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

Line 86:
- Concepts: Performance Operational Context
- Services: (none explicit)
- Key Insights: So I hope you liked this lecture and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes networking performance detail.

## Step 2 — Consolidation

### 1. Concepts List
- Cost and Transfer Efficiency
- High Performance Computing Patterns
- Instance and NIC Performance Model
- Latency Throughput and PPS Fundamentals
- Packet and MTU Efficiency
- Performance Operational Context
- Placement and Topology Optimization

### 2. Services List
- Amazon EBS
- Amazon EC2
- Elastic Fabric Adapter
- Elastic Network Interface
- Enhanced Networking
- Placement Group

### 3. Features List
- bandwidth
- credits
- efa
- enhanced networking
- latency
- mtu
- placement group
- throughput

### 4. Use Cases
- 049_EC2 Placement Groups.txt:5: So when you create a placement group, you have three strategies available for you.
- 049_EC2 Placement Groups.txt:11: So you would use a spread placement group when you have critical applications.
- 049_EC2 Placement Groups.txt:26: But usually, for use case, this is fine.
- 049_EC2 Placement Groups.txt:27: So the use cases for this kind of placement group are big data jobs that need to complete very fast with very high networking or applications that need extremely low latency and high throughput network between each instance of your application.
- 049_EC2 Placement Groups.txt:30: And so in this case, when we ask for spread placement group, all the EC2 instances are going to be located on different hardware.
- 049_EC2 Placement Groups.txt:41: The use case would be an application that needs to maximize high availability and reduce the risk.
- 049_EC2 Placement Groups.txt:58: So when would you use a partition placement group?
- 049_EC2 Placement Groups.txt:59: Well, when you have an application that it can be partition aware to distribute the data and your servers across partitions.
- 049_EC2 Placement Groups.txt:60: And usually, the use cases are going to be big data applications which are partition aware, such as using HDFS, HBase, Cassandra, and Apache Kafka.
- 050_EC2 Placement Groups - Hands On.txt:14: For example, I can set four, and create this group.
- 050_EC2 Placement Groups - Hands On.txt:17: And now, when you scroll down, at the very bottom, under the advanced details, you can have a setting for right here, the placement group name, and you can select between my-critical-group, my-distributor-group, or my-high-performance-group based on your placement group strategy.
- 051_Elastic Network Interfaces (ENI) - Overview.txt:5: So for example we have an availability zone and we have one EC2 Instance and to it is attached on eth0, your primary ENI and this will provide your EC2 Instance network connectivity and for example, a private IP.
- 051_Elastic Network Interfaces (ENI) - Overview.txt:17: And for example, we can do is we can move eth1 from the first EC2 instance into the second EC2 Instance to move that private IP.
- 051_Elastic Network Interfaces (ENI) - Overview.txt:20: For example, if you're easy to instance is accessed by a private static IP, then you can move the IP around between these two instances for failover purposes, okay.
- 038_Basics of Network performance - Bandwidth, Latency, Jitter, Throughput, PPS, MTU.txt:4: Because given a scenario you should be able to decide which will be the best option to optimize the overall network performance.
- 038_Basics of Network performance - Bandwidth, Latency, Jitter, Throughput, PPS, MTU.txt:5: And when we say network performance, it could mean different things.
- 038_Basics of Network performance - Bandwidth, Latency, Jitter, Throughput, PPS, MTU.txt:6: For example, how much the network throughput should be or how much should be the bandwidth.
- 038_Basics of Network performance - Bandwidth, Latency, Jitter, Throughput, PPS, MTU.txt:7: So by choosing the right configurations, you can optimize the network when you have to typically transfer the data from the source to the destination.
- 038_Basics of Network performance - Bandwidth, Latency, Jitter, Throughput, PPS, MTU.txt:71: And then we will see how in AWS you can use jumbo frames to improve the network performance.
- 038_Basics of Network performance - Bandwidth, Latency, Jitter, Throughput, PPS, MTU.txt:92: So how this M2 is decided when you send the packet.
- 038_Basics of Network performance - Bandwidth, Latency, Jitter, Throughput, PPS, MTU.txt:93: So for example there are two hosts.
- 038_Basics of Network performance - Bandwidth, Latency, Jitter, Throughput, PPS, MTU.txt:99: So when you send a packet with the df equal to one, that means don't fragment.
- 038_Basics of Network performance - Bandwidth, Latency, Jitter, Throughput, PPS, MTU.txt:145: So you have to really configure that on the instance level when they transmit the traffic.
- 038_Basics of Network performance - Bandwidth, Latency, Jitter, Throughput, PPS, MTU.txt:155: Further jumbo frames are also supported when the traffic goes over the direct connect between the VPC and the on premises network.
- 038_Basics of Network performance - Bandwidth, Latency, Jitter, Throughput, PPS, MTU.txt:157: For example, if you are using the private VIF, public wave or transit wave and we will shortly discuss that next.
- 038_Basics of Network performance - Bandwidth, Latency, Jitter, Throughput, PPS, MTU.txt:188: And then we will also, um, check the M2 when we are reaching over private IP.
- 038_Basics of Network performance - Bandwidth, Latency, Jitter, Throughput, PPS, MTU.txt:237: Now, finally, what we want to understand is that, uh, what are the different MTU values when, uh, there is a communication between VPC and other entities?
- 038_Basics of Network performance - Bandwidth, Latency, Jitter, Throughput, PPS, MTU.txt:245: Now if the traffic is flowing over through the VPC endpoint, that means if you are trying to reach to the other AWS services, for example, to the S3 or DynamoDB or, um, SQS kinesis over the VPC endpoints.
- 038_Basics of Network performance - Bandwidth, Latency, Jitter, Throughput, PPS, MTU.txt:255: For example, you may connect over the VPN using the Virtual Private Gateway.
- 039_Placement Groups and EBS Optimized EC2 instances.txt:5: So at high level, if you want to optimize the network performance, you can look at three areas.
- 039_Placement Groups and EBS Optimized EC2 instances.txt:10: There are a lot of concepts under enhanced networking, and you need to know well when we talk about enhanced networking and you should be able to pick right answer from the questions.
- 040_Enhanced Networking.txt:6: So let's try to understand what does it mean by Enhanced Networking, and what are the options you have when we say you have to configure enhanced networking in AWS.
- 040_Enhanced Networking.txt:10: So whenever you deal with any AWS services, we are talking about this enhanced networking, but typically, EC2 would be involved there because most of this enhanced networking is applicable for EC2 instances.
- 040_Enhanced Networking.txt:12: So when you can process the packets, over 1 million packet per second, we can consider it as like enhanced networking.
- 040_Enhanced Networking.txt:18: But essentially, what it means is you remove as much obstacle when the packets moves from one system to another.
- 040_Enhanced Networking.txt:19: When I say obstacle, it's more about the multiple hops.
- 040_Enhanced Networking.txt:20: You have to trim down that, which means if you are using hypervisor, can you bypass the hypervisor when a packet flow from say, one system to another system?
- 040_Enhanced Networking.txt:27: So enhanced networking, meaning you can process 1 million packets per second, and ultimately, goal is to reduce the latencies between instance-to-instance and increase the bandwidth.
- 040_Enhanced Networking.txt:78: Now, let's understand what really happens when you use the enhanced networking.
- 040_Enhanced Networking.txt:80: For example, there is system A here and system B here, and system A wants to send some network packet to system B.
- 040_Enhanced Networking.txt:85: Now, this is a typical flow and by default, EC2 would support up to 5 Gbps of the network bandwidth when you use a normal two EC2 machines.
- 040_Enhanced Networking.txt:86: Now, what happens when you use enhanced networking?
- 040_Enhanced Networking.txt:96: Now, one thing to understand that when we say hundred Gbps bandwidth between two machines, it is not the bandwidth per flow.
- 040_Enhanced Networking.txt:102: And that too, when those EC2 machines are part of a same cluster placement group.
- 041_DPDK and Elastic Fabric Adapter (EFA).txt:19: So whenever the question is about enhancing the performance within the operating system, then it is more about depdc.
- 041_DPDK and Elastic Fabric Adapter (EFA).txt:21: When the traffic flows from your one VM to another, there is an application which is sending a packet to another machine and another application.
- 041_DPDK and Elastic Fabric Adapter (EFA).txt:36: And when you attach a network adapter to your EC2 instance, it can give you up to 100 GB s bandwidth.
- 041_DPDK and Elastic Fabric Adapter (EFA).txt:43: So whenever you talk about HPC workloads, you know that a same compute workload can be run into multiple machine in a distributed fashion.
- 042_Bandwidth Limits inside and outside of VPC.txt:4: So we must consider everything when it comes to deciding what kind of bandwidth you can get, right?
- 042_Bandwidth Limits inside and outside of VPC.txt:13: Now, whenever we'll talk about the bandwidth and essentially maximizing the bandwidth, we will typically use a term called network flow throughout this lecture, right?
- 042_Bandwidth Limits inside and outside of VPC.txt:20: That means if you want to maximize the bandwidth between two instances, for example, then you should look at having multiple flows.
- 042_Bandwidth Limits inside and outside of VPC.txt:22: But understand that when we talk about the bandwidth, it typically applies to a single flow.
- 042_Bandwidth Limits inside and outside of VPC.txt:24: So for example, these are two EC2 instances, and there is one flow between them.
- 042_Bandwidth Limits inside and outside of VPC.txt:28: But when it comes to the NAT gateway, as of now, NAT gateway can provide up to 45 Gbps of bandwidth.
- 042_Bandwidth Limits inside and outside of VPC.txt:66: So what is the maximum bandwidth that you can get from the EC2 machines when the traffic goes to these destinations?
- 042_Bandwidth Limits inside and outside of VPC.txt:69: So that is when your instance supports the Intel Virtual Function as an enhanced networking.
- 042_Bandwidth Limits inside and outside of VPC.txt:87: So when it comes to the VPN, you know that in VPC you have to attach the virtual private gateway.
- 042_Bandwidth Limits inside and outside of VPC.txt:105: And if Direct Connect is terminating over Virtual Private Gateway, now, when we talk about Direct Connect, we'll talk about these factors.
- 042_Bandwidth Limits inside and outside of VPC.txt:119: But in general, I hope you know that, which all the bandwidth you have to consider when the traffic flows through different networking components in AWS.
- 043_Network I_O credits.txt:9: Now, same thing applies for network I/O credits as well for certain instance types and, then you need to know that these instance types will accumulate your network I/O credits and when you are required, it will go beyond their allocated network bandwidth and that's, in short is network I/O credits.
- 044_Network performance Summary.txt:10: So it runs in a user space and it bypasses the kernel when you use DPDK.
- 045_Exam Essentials.txt:6: And typically when the traffic flows out of VPC.
- 045_Exam Essentials.txt:8: Now, when it comes to the VPC peering connection, the Inter-region VPC peering supports jumbo frame of size 9001 bytes, but for the Inter-region VPC peering it is 8500 bytes.
- 045_Exam Essentials.txt:9: Now, understand that when the packet per second is a bottleneck, that means your CPU is having the limited capacity and it can't process more packet per second.
- 045_Exam Essentials.txt:16: So whenever dp DQ understand that its OS level optimization.
- 045_Exam Essentials.txt:28: Now also understand that the bandwidth when we talk about it's an aggregated bandwidth across multiple flows.
- 045_Exam Essentials.txt:30: So when we say maximum bandwidth, we are not talking about just one single connection between the two machines, right.
- 045_Exam Essentials.txt:40: In that case you can see here for example, the there are different instance types first.
- 045_Exam Essentials.txt:78: Now when we talk about maximum bandwidth within the region, it could be between Ec2's.
- 351_Networking Costs in AWS.txt:65: So lower latency for the access of the data and the reduced cost is going to be also whenever you have requests being made.
- 351_Networking Costs in AWS.txt:66: So when someone makes a request to your S3 bucket, you're going to pay for that requests, but a request made into Amazon CloudFront is much cheaper.
- 351_Networking Costs in AWS.txt:68: So you're going to save a lot of money by using CloudFront on top of your Amazon S3 bucket, if that fits your use case.

### 5. Constraints / Limitations
- 049_EC2 Placement Groups.txt:10: That means you can only have seven EC2 instance per placement group that spread per AZ.
- 049_EC2 Placement Groups.txt:16: What does that mean is that they're still spread, but they're not isolated one from another failure, but a partition should be isolated from another partition of failure.
- 049_EC2 Placement Groups.txt:38: The con is that from this configuration, we're limited to seven instances per AZ per placement group.
- 049_EC2 Placement Groups.txt:39: So there is a limit to how big your placement group can be.
- 049_EC2 Placement Groups.txt:42: And in general, for critical applications where your instance failures must be isolated from one another.
- 049_EC2 Placement Groups.txt:43: Remember, here, we have a limitation of seven instances per AZ per placement group.
- 049_EC2 Placement Groups.txt:56: So that means that, yes, if one goes down, if partition goes down, the partition number two, then partition number one should be fine.
- 050_EC2 Placement Groups - Hands On.txt:8: And you can set the spread level to rack, which is a default, or host, which is outpost only, but we don't use outpost.
- 050_EC2 Placement Groups - Hands On.txt:9: So for now we'll just use rack, which is what we should know about.
- 051_Elastic Network Interfaces (ENI) - Overview.txt:11: You can have a Mac address attached to it and other things but I've just give you the most important bits right now in this lecture.
- 051_Elastic Network Interfaces (ENI) - Overview.txt:15: So that means that if you create a ENI in the specific AZ, you can only have it bound to that specific AZ.
- 038_Basics of Network performance - Bandwidth, Latency, Jitter, Throughput, PPS, MTU.txt:3: And this is also one of the important topic for your exam.
- 038_Basics of Network performance - Bandwidth, Latency, Jitter, Throughput, PPS, MTU.txt:4: Because given a scenario you should be able to decide which will be the best option to optimize the overall network performance.
- 038_Basics of Network performance - Bandwidth, Latency, Jitter, Throughput, PPS, MTU.txt:6: For example, how much the network throughput should be or how much should be the bandwidth.
- 038_Basics of Network performance - Bandwidth, Latency, Jitter, Throughput, PPS, MTU.txt:19: Because you know that the signal cannot travel at the speed of the light, right?
- 038_Basics of Network performance - Bandwidth, Latency, Jitter, Throughput, PPS, MTU.txt:20: We can't achieve that speed, and this introduces additional delays further as the packet goes through different hops.
- 038_Basics of Network performance - Bandwidth, Latency, Jitter, Throughput, PPS, MTU.txt:47: And now one more important thing with respect to the network performance is the MTU or maximum transmission unit.
- 038_Basics of Network performance - Bandwidth, Latency, Jitter, Throughput, PPS, MTU.txt:123: Uh, and it will say change MTU to 1000 because I can't process that.
- 038_Basics of Network performance - Bandwidth, Latency, Jitter, Throughput, PPS, MTU.txt:124: So in this case now this host would understand that my network only supports the M2 of 1000.
- 038_Basics of Network performance - Bandwidth, Latency, Jitter, Throughput, PPS, MTU.txt:133: So ICMP must be allowed between these hosts okay.
- 038_Basics of Network performance - Bandwidth, Latency, Jitter, Throughput, PPS, MTU.txt:148: But if the traffic is going over the internet, through the internet gateway or the Nat gateway, then the packet size is limited to 1500 m2 only.
- 038_Basics of Network performance - Bandwidth, Latency, Jitter, Throughput, PPS, MTU.txt:154: This scenario wasn't covered under jumbo frame, and you were limited to 1500 bytes for inter region VPC peering, but now it has been increased to 8500 bytes.
- 038_Basics of Network performance - Bandwidth, Latency, Jitter, Throughput, PPS, MTU.txt:172: Jumbo frames or M2 is defined at any level, so if EC2 has multiple Enis, you can control or you can configure uh, how much, What should be the, uh, should it support the jumbo frame or not?
- 038_Basics of Network performance - Bandwidth, Latency, Jitter, Throughput, PPS, MTU.txt:173: Or what should be the size of the packet you want to send, uh, from this EC2 machine?
- 038_Basics of Network performance - Bandwidth, Latency, Jitter, Throughput, PPS, MTU.txt:179: So important to understand here is that, uh, you can uh, the, the uh, sorry, MTU are defined at any level.
- 038_Basics of Network performance - Bandwidth, Latency, Jitter, Throughput, PPS, MTU.txt:191: And in the this case probably we are expecting jumbo jumbo frames are not used and the packet size is 1500 bytes only.
- 038_Basics of Network performance - Bandwidth, Latency, Jitter, Throughput, PPS, MTU.txt:251: So you are limited to 1500 bytes only.
- 038_Basics of Network performance - Bandwidth, Latency, Jitter, Throughput, PPS, MTU.txt:256: Now in that case, jumbo frame is not supported and MTU is limited to 1500 bytes.
- 038_Basics of Network performance - Bandwidth, Latency, Jitter, Throughput, PPS, MTU.txt:263: And otherwise, if you are using the public wave which connects to the AWS public endpoints, then jumbo frame is not supported and the M2 is limited to 1500 bytes.
- 038_Basics of Network performance - Bandwidth, Latency, Jitter, Throughput, PPS, MTU.txt:264: So this is all the MTU values that you should typically know while using the jumbo frames.
- 039_Placement Groups and EBS Optimized EC2 instances.txt:10: There are a lot of concepts under enhanced networking, and you need to know well when we talk about enhanced networking and you should be able to pick right answer from the questions.
- 039_Placement Groups and EBS Optimized EC2 instances.txt:36: Whatever you do here does not take a bandwidth from your regular EC2 instance bandwidth limit.
- 040_Enhanced Networking.txt:4: Now, let's look at the more important concept, that's Enhanced Networking.
- 040_Enhanced Networking.txt:62: And that type should be flagged for enhanced networking.
- 040_Enhanced Networking.txt:65: Both should support the enhanced networking with either of these two options, right?
- 040_Enhanced Networking.txt:67: That means you can't enable the enhanced networking for those instances.
- 040_Enhanced Networking.txt:68: Okay, so just a quick view on which EC2 instances supports enhanced networking, and this is not a limited number of EC2 instances.
- 040_Enhanced Networking.txt:76: So it will show the required output and then you can make that out.
- 040_Enhanced Networking.txt:103: If they're not part of the same cluster placement group, then the maximum bandwidth per flow will be 5 Gbps only.
- 040_Enhanced Networking.txt:112: But for enhanced networking, you need to understand what all things are required.
- 041_DPDK and Elastic Fabric Adapter (EFA).txt:38: And the limitation is it can be it can be only used with Linux machine.
- 041_DPDK and Elastic Fabric Adapter (EFA).txt:39: That means if you attach EFA to windows machine, it would very well act as a Ina only.
- 042_Bandwidth Limits inside and outside of VPC.txt:1: Hello, and welcome to this lecture, network bandwidth limits.
- 042_Bandwidth Limits inside and outside of VPC.txt:4: So we must consider everything when it comes to deciding what kind of bandwidth you can get, right?
- 042_Bandwidth Limits inside and outside of VPC.txt:6: So in this lecture, we are going to discuss VPC bandwidth limits.
- 042_Bandwidth Limits inside and outside of VPC.txt:7: And the bandwidth limit may apply to the internet gateway, NAT gateways, VPC peering connection.
- 042_Bandwidth Limits inside and outside of VPC.txt:8: EC2 itself has a bandwidth limit.
- 042_Bandwidth Limits inside and outside of VPC.txt:19: Now typically bandwidth has a limit per flow.
- 042_Bandwidth Limits inside and outside of VPC.txt:20: That means if you want to maximize the bandwidth between two instances, for example, then you should look at having multiple flows.
- 042_Bandwidth Limits inside and outside of VPC.txt:26: Okay, so with respect to the VPC, there are no specific limit that has been enforced by the VPC for the bandwidth.
- 042_Bandwidth Limits inside and outside of VPC.txt:27: Whether it's an internet gateway or VPC peering connection, it doesn't impose any bandwidth traffic limits, right?
- 042_Bandwidth Limits inside and outside of VPC.txt:34: Now that's what the VPC bandwidth limits are.
- 042_Bandwidth Limits inside and outside of VPC.txt:35: But now essentially, if you talk about EC2 bandwidth limit, now there could be multiple scenarios.
- 042_Bandwidth Limits inside and outside of VPC.txt:41: Now, depending on the scenario, the bandwidth limit would change, right?
- 042_Bandwidth Limits inside and outside of VPC.txt:54: If it is going over the internet or Direct Connect, then you can only utilize up to 50% of the network bandwidth that EC2 provides, right?
- 042_Bandwidth Limits inside and outside of VPC.txt:55: And this is only applicable for the instances which have minimum of at least 32 vCPUs.
- 042_Bandwidth Limits inside and outside of VPC.txt:56: So if the instance is smaller in size than 32 vCPUs, it is still limited to five Gbps per instance, if the traffic is going to the internet or to the Direct Connect, then that would be the maximum bandwidth that you can get.
- 042_Bandwidth Limits inside and outside of VPC.txt:62: Otherwise five Gbps is the bandwidth limit.
- 042_Bandwidth Limits inside and outside of VPC.txt:75: And for highest bandwidth, you should leverage VPC endpoint in that case.
- 042_Bandwidth Limits inside and outside of VPC.txt:77: So you can't leverage this 100 Gbps bandwidth there.
- 042_Bandwidth Limits inside and outside of VPC.txt:83: And this is not typically the normal instance that anybody can use, but this is where the bandwidth limits have been reached, right?
- 042_Bandwidth Limits inside and outside of VPC.txt:84: But in general, if it's about ENA, you can consider it as 100 Gbps is the standard limit as of now.
- 042_Bandwidth Limits inside and outside of VPC.txt:88: And virtual private gateway is limited by 1.25 Gbps of aggregate bandwidth.
- 042_Bandwidth Limits inside and outside of VPC.txt:91: But then, irrespective of how many VPN connection terminates on this private gateway, total aggregate bandwidth from AWS to your on-premise network would be limited to 1.25 Gbps.
- 042_Bandwidth Limits inside and outside of VPC.txt:94: But you know that you can't use ECMP with VPG at the VPC level.
- 042_Bandwidth Limits inside and outside of VPC.txt:95: That means only one tunnel is active at a time.
- 042_Bandwidth Limits inside and outside of VPC.txt:99: But understand that for virtual private gateway, the aggregate bandwidth limit from AWS to on-premise network traffic at 1.25 Gbps.
- 042_Bandwidth Limits inside and outside of VPC.txt:100: And which also means from on-premise to AWS, it will be limited by how much traffic the on-premise is sending to your VPC.
- 042_Bandwidth Limits inside and outside of VPC.txt:101: Now, as I said, multiple VPN connection, the overall bandwidth will be limited by 1.25 Gbps only.
- 042_Bandwidth Limits inside and outside of VPC.txt:104: So in case of Direct Connect, it will be limited by the port speed that you define, right?
- 042_Bandwidth Limits inside and outside of VPC.txt:113: Now with respect to the Transit Gateway especially, Transit Gateway has a limit of 50 Gbps aggregate bandwidth.
- 043_Network I_O credits.txt:9: Now, same thing applies for network I/O credits as well for certain instance types and, then you need to know that these instance types will accumulate your network I/O credits and when you are required, it will go beyond their allocated network bandwidth and that's, in short is network I/O credits.
- 043_Network I_O credits.txt:12: Now, why it is important to know is because, if you are doing some network performance benchmark for those instances, then make sure that they don't have the accumulated credits, otherwise, what would happen during benchmark, they are performing really well, then you think that these are the appropriate instance types, but if you are running those instances for long duration, you would see that, they are not able to give the same network performance because now they don't have that accumulated credits.
- 045_Exam Essentials.txt:7: So if the traffic stays within the VPC MTU size of 9001 byte, which is also called jumbo frames, are supported or otherwise if the traffic is going over the internet or if it is over the site to site VPN connection, which terminates on the Virtual Private Gateway or the Transit gateway, the jumbo frame is not supported and the MTU size is limited to 1500 bytes.
- 045_Exam Essentials.txt:9: Now, understand that when the packet per second is a bottleneck, that means your CPU is having the limited capacity and it can't process more packet per second.
- 045_Exam Essentials.txt:57: The size of the instance has to be greater than or equal to 32 vCPUs, and it should be current generation.
- 045_Exam Essentials.txt:60: However, if the instance is not the current generation or the size is less than 32 week CPU, then the maximum bandwidth you get is five Gbps only.
- 045_Exam Essentials.txt:62: And now the last thing you need to remember is that the single flow bandwidth is typically limited to five Gbps.
- 045_Exam Essentials.txt:63: If the traffic is between two EC2 instances, which are across VPCs or within the same VPC, and if the traffic is going out to the internet or anywhere, then it is limited to five Gbps.
- 045_Exam Essentials.txt:66: Now this is typically required for high performance computing kind of workloads.
- 045_Exam Essentials.txt:70: And the aggregate bandwidth again is limited to 100 Gbps with the Ina that we already talked about.
- 045_Exam Essentials.txt:71: So remember these things okay. so that covers the important points.
- 351_Networking Costs in AWS.txt:2: And this is a simplified version to make things as easy as possible and to explain to you a few important concepts.
- 351_Networking Costs in AWS.txt:3: Now, networking costs enables can get very complicated, but here is a high-level overview and that should helps you going into the exam.
- 351_Networking Costs in AWS.txt:6: And so the first thing you should know is that any traffic going into your EC2 instances is going to be free.
- 351_Networking Costs in AWS.txt:23: The first thing is that you should use a private IP instead of a public IP, if you want to have good savings, okay, and better network performance, because you will automatically be onto the private network.
- 351_Networking Costs in AWS.txt:43: And then it will do some aggregation, some computations and then finally, returned the query results, only 50 kilobytes to the user.
- 351_Networking Costs in AWS.txt:50: And then the query results themselves of only 50 kilobytes will be sent to us and it will be a much cheaper cost.
- 351_Networking Costs in AWS.txt:70: So the numbers can change over time and this is for the USA and it can change for your region, but what you need to remember is that using some services have an added cost and it's important for you to know how these costs relates to one another.

### 6. Patterns / Architectures
- 049_EC2 Placement Groups.txt:6: You have the cluster placement group in which your instances will be grouped together in a low-latency hardware setup within a single availability zone.
- 049_EC2 Placement Groups.txt:7: This is going to give you high performance but high risk.
- 049_EC2 Placement Groups.txt:19: So next, we have the cluster placement group, and all your EC2 instances are going to be in the same availability zone.
- 049_EC2 Placement Groups.txt:23: And so you get low latency, high throughput network.
- 049_EC2 Placement Groups.txt:24: And the idea is that out of this, you can get great performance for any kind of computational job.
- 049_EC2 Placement Groups.txt:25: So a drawback of using this architecture is that if your availability zone fails, then all the instances will fail at the same time.
- 049_EC2 Placement Groups.txt:27: So the use cases for this kind of placement group are big data jobs that need to complete very fast with very high networking or applications that need extremely low latency and high throughput network between each instance of your application.
- 050_EC2 Placement Groups - Hands On.txt:4: So the first one is going to be my-high-performance-group.
- 050_EC2 Placement Groups - Hands On.txt:5: And as you can guess, the placement strategy for this one is going to be cluster, because we want instances to be very close to each other so that they have maximum network capability.
- 050_EC2 Placement Groups - Hands On.txt:17: And now, when you scroll down, at the very bottom, under the advanced details, you can have a setting for right here, the placement group name, and you can select between my-critical-group, my-distributor-group, or my-high-performance-group based on your placement group strategy.
- 038_Basics of Network performance - Bandwidth, Latency, Jitter, Throughput, PPS, MTU.txt:2: Now in this section let's understand the VPC network performance and optimization.
- 038_Basics of Network performance - Bandwidth, Latency, Jitter, Throughput, PPS, MTU.txt:4: Because given a scenario you should be able to decide which will be the best option to optimize the overall network performance.
- 038_Basics of Network performance - Bandwidth, Latency, Jitter, Throughput, PPS, MTU.txt:5: And when we say network performance, it could mean different things.
- 038_Basics of Network performance - Bandwidth, Latency, Jitter, Throughput, PPS, MTU.txt:8: Now, before we get into the details of all the controls that VPC provides, let's first understand the basics of network performance.
- 038_Basics of Network performance - Bandwidth, Latency, Jitter, Throughput, PPS, MTU.txt:9: And in that we will discuss some generic terminologies that we use to define the network performance.
- 038_Basics of Network performance - Bandwidth, Latency, Jitter, Throughput, PPS, MTU.txt:16: Now the another parameter that affects your network performance is the latency.
- 038_Basics of Network performance - Bandwidth, Latency, Jitter, Throughput, PPS, MTU.txt:46: Which means that the computing power that you have also affects the network performance.
- 038_Basics of Network performance - Bandwidth, Latency, Jitter, Throughput, PPS, MTU.txt:47: And now one more important thing with respect to the network performance is the MTU or maximum transmission unit.
- 038_Basics of Network performance - Bandwidth, Latency, Jitter, Throughput, PPS, MTU.txt:71: And then we will see how in AWS you can use jumbo frames to improve the network performance.
- 038_Basics of Network performance - Bandwidth, Latency, Jitter, Throughput, PPS, MTU.txt:158: You can also maximize the performance using the jumbo frames.
- 038_Basics of Network performance - Bandwidth, Latency, Jitter, Throughput, PPS, MTU.txt:159: If you are having your EC2 instances in a same cluster placement group, and which means that the EC2 instances are launched together, typically on the same physical hardware, so that there is not much network hop and you can maximize the network throughput.
- 038_Basics of Network performance - Bandwidth, Latency, Jitter, Throughput, PPS, MTU.txt:160: So while using the jumbo frames, if you launch the EC2 instances in a cluster placement group.
- 038_Basics of Network performance - Bandwidth, Latency, Jitter, Throughput, PPS, MTU.txt:161: It gives you maximum network performance.
- 038_Basics of Network performance - Bandwidth, Latency, Jitter, Throughput, PPS, MTU.txt:162: And finally, remember that it's not like you just enable the jumbo frame while sending the traffic from EC2 instance, and it will increase your performance because you know that if jumbo frames are not supported on the intermediary network devices, then you may experience the packet loss because if the packet of size over 1500 bytes are sent and the don't fragment flag is set, then that packet may be dropped.
- 039_Placement Groups and EBS Optimized EC2 instances.txt:2: So far, well, we talked about what affects the network performance, and we talked about MTU.
- 039_Placement Groups and EBS Optimized EC2 instances.txt:5: So at high level, if you want to optimize the network performance, you can look at three areas.
- 039_Placement Groups and EBS Optimized EC2 instances.txt:6: Now, one is you can use cluster placement group for your EC2 instances, which definitely gives you the maximum network throughput between those instances, and we'll talk shortly about that.
- 039_Placement Groups and EBS Optimized EC2 instances.txt:11: So let's see, first two things, cluster placement group and EBS optimized instances and then we will have separate lectures to talk about enhanced networking.
- 039_Placement Groups and EBS Optimized EC2 instances.txt:12: So if you already know the cluster placement group, it is a group of EC2 instances you launch together and you launch in a such a way that all these EC2 instances are physically as close as to each other.
- 039_Placement Groups and EBS Optimized EC2 instances.txt:15: Now, this placement cluster groups are ideal for HPC workload, which requires very low latency network throughput between the instances.
- 039_Placement Groups and EBS Optimized EC2 instances.txt:17: You have multiple EC2 instances, and typically they're in the same AZ and also could be in the same rack, which gives the maximum network performance.
- 039_Placement Groups and EBS Optimized EC2 instances.txt:28: Now, EBS input output may affect your network performance.
- 039_Placement Groups and EBS Optimized EC2 instances.txt:40: So if you're facing these kind of challenges, then look for EBS optimized instances, which improves your network performance.
- 040_Enhanced Networking.txt:3: The first we saw, cluster replacement group for EC2 instances, and then we saw EBS-optimized EC2 instances.
- 040_Enhanced Networking.txt:8: Of course, the term says itself, it means you have to enhance the network performance between two systems.
- 040_Enhanced Networking.txt:38: So again, SR-IOV and PCI passthrough are methods of device virtualization that provides of course, higher input/output performance and lower CPU utilization.
- 040_Enhanced Networking.txt:102: And that too, when those EC2 machines are part of a same cluster placement group.
- 040_Enhanced Networking.txt:103: If they're not part of the same cluster placement group, then the maximum bandwidth per flow will be 5 Gbps only.
- 040_Enhanced Networking.txt:110: Now, there are few other mechanisms to enhance the performance of network throughput using DPDK and EFA as well, which is specially designed for HPC workloads.
- 041_DPDK and Elastic Fabric Adapter (EFA).txt:12: It basically, um, increases the performance of processing the packet.
- 041_DPDK and Elastic Fabric Adapter (EFA).txt:19: So whenever the question is about enhancing the performance within the operating system, then it is more about depdc.
- 041_DPDK and Elastic Fabric Adapter (EFA).txt:43: So whenever you talk about HPC workloads, you know that a same compute workload can be run into multiple machine in a distributed fashion.
- 042_Bandwidth Limits inside and outside of VPC.txt:46: So always make sure that you choose the latest generation instances to get the maximum performance from the EC2 instances.
- 042_Bandwidth Limits inside and outside of VPC.txt:81: But lately AWS also launched an instance, which is special instance P4d which runs on a supercomputer called UltraClusters, which provides 400 Gbps of the networking.
- 043_Network I_O credits.txt:11: So this instance performs well above the baseline network performance during that peak requirement.
- 043_Network I_O credits.txt:12: Now, why it is important to know is because, if you are doing some network performance benchmark for those instances, then make sure that they don't have the accumulated credits, otherwise, what would happen during benchmark, they are performing really well, then you think that these are the appropriate instance types, but if you are running those instances for long duration, you would see that, they are not able to give the same network performance because now they don't have that accumulated credits.
- 044_Network performance Summary.txt:2: Here, we are going to summarize what we learned about optimizing the network performance while operating in AWS, specifically with respect to the EC2 instances and VPC.
- 044_Network performance Summary.txt:8: Then you can enable the enhanced networking for your EC2 instances by various mechanism that we saw, you can use cluster placement groups, so that EC2 instances are in close proximity, and then they can get benefited of that and send more packets and with lower latency, then you can also use EBS optimized instances, so that you get a dedicated bandwidth for a communication between EC2 an EBS volume, and then a separate bandwidth to get for other network activities.
- 044_Network performance Summary.txt:15: You can also use placement groups as you know, specifically cluster placement group, where those EC2 instances will be typically launched in a same availability zone in the same rack, so that you get the lowest latency possible between these two EC2 instances or multiple EC2 instances.
- 044_Network performance Summary.txt:19: EFA is nothing but ENA with additional capability where you can bypass the OS and that improves your network performance typically would be used for HPC workloads, HPC is your high performance computing workloads like a media processing or telecom providers typically would require HPC kind of workloads.
- 045_Exam Essentials.txt:2: So with respect to the network performance, there are a lot of things that we saw.
- 045_Exam Essentials.txt:41: And then if you go to the network performance you can see T2 instances.
- 045_Exam Essentials.txt:42: Maximum network performance is one GB.
- 045_Exam Essentials.txt:64: But if the instances are within the same cluster placement group now I hope you know what is the placement group.
- 045_Exam Essentials.txt:66: Now this is typically required for high performance computing kind of workloads.
- 045_Exam Essentials.txt:68: And in that case you will use the cluster placement group.
- 045_Exam Essentials.txt:75: But then within the cluster placement group you can get up to ten Gbps as well.
- 351_Networking Costs in AWS.txt:23: The first thing is that you should use a private IP instead of a public IP, if you want to have good savings, okay, and better network performance, because you will automatically be onto the private network.
- 351_Networking Costs in AWS.txt:25: The second thing is that if you have a cluster that does some computation and does require a lot of communication between your EC2 instances from one another, then you may want to use the same availability zones for a maximum amount of savings, okay?

## Step 3 — Deep Expansion (Performance Optimization Concepts)

### Placement Groups
- What it is: Topology control mechanism for EC2 instance placement across or within fault domains.
- Why it exists: Optimizes for low latency, failure isolation, or distributed partitioning depending on workload shape.
- Internal working: AWS attempts physical placement patterns aligned with cluster/spread/partition strategy.
- Architecture: Choose cluster for low latency, spread for critical isolation, partition for distributed systems.
- Key components: Strategy type, rack/host boundaries, workload affinity and scale limits.

### High-Performance Instance Networking
- What it is: Hardware-accelerated and topology-aware networking path for demanding compute workloads.
- Why it exists: Reduces overhead and latency while improving packet processing and bandwidth efficiency.
- Internal working: Offload and optimized drivers reduce virtualization overhead on network data paths.
- Architecture: HPC or latency-sensitive tiers with explicit instance-family and placement choices.
- Key components: SR-IOV, EFA, MTU tuning, bandwidth limits, packet-per-second ceilings.

## Cross-Cloud Mapping (Concept-First)

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| Placement-aware instance topology | Placement Groups | Proximity placement groups / sets | Placement policy patterns |
| High-performance NIC acceleration | Enhanced Networking / ENI tuning | Accelerated networking | gVNIC and high-performance networking |
| HPC low-latency fabric | EFA | HB/HC instance networking patterns | HPC VM / RDMA patterns |

### Trade-offs and Decision Notes
- Performance tuning only matters if bottlenecks are measured correctly first.
- Low-latency topologies often trade flexibility and fault-domain distribution for speed.
- Data-transfer cost and architecture placement decisions are tightly coupled in AWS networking.

## Phase-wise Architect-Level Organization

### Phase 1 — Foundations
- Define whether the problem is latency, throughput, packet rate, or placement-related.
- Measure first, then tune topology and instance networking choices.

### Phase 2 — Core Services
- Apply placement, enhanced networking, and MTU-aware design to the right workload tiers.
- Track bandwidth and network-credit ceilings before assuming service-side issues.

### Phase 3 — Advanced Patterns
- Use cluster-aware HPC patterns and topology control only where justified by workload sensitivity.
- Balance performance optimization against resilience and operational flexibility.

### Phase 4 — System Design
- Reference architecture: topology-aware compute placement with measured network bottleneck analysis.
- Scaling considerations: instance-family limits, AZ placement constraints, traffic-cost side effects.
- Cost considerations: overprovisioning for bandwidth, data-transfer paths, and specialized instance pricing.

<!-- BEGIN PRACTICE_ENHANCEMENTS -->

## Hands-On Practice (Kid-Friendly Step-by-Step)

### Safety First
- Use a sandbox account only.
- Set a budget alert before creating resources.
- Delete resources after practice to avoid surprise cost.

### Hands-On Signals Found In This KB
- Signal 1: So if you already know the cluster placement group, it is a group of EC2 instances you launch together and you launch in a such a way that all these EC2 instances are physically as close as to each other.
- Signal 2: Transcript signals that if you already know the cluster placement group, it is a group of EC2 instances you launch together and you launch in a such a way that all these EC2 instances are physically as close as to each other.
- Signal 3: Key Insights: So when you create a placement group, you have three strategies available for you.
- Signal 4: Key Insights: You have the cluster placement group in which your instances will be grouped together in a low-latency hardware setup within a single availability zone.
- Signal 5: Key Insights: You can get up to hundreds of EC2 instances with the setup.
- Signal 6: Key Insights: And I will go ahead and create a placement group.
- Signal 7: Key Insights: For example, I can set four, and create this group.
- Signal 8: Key Insights: And now, to just launch an instance in a group, you click on launch instances.
- Signal 9: Key Insights: So in this example, I have one of zero but you are more than welcomed to add a secondary ENI to EC2 and that will be eth1 and this will give you another private IPv4 as well, okay. ` Each ENI can also have an elastic IPv4 per private IPv4 or one or more public IPv4, so it gives you a private and a public IP as will see in the hands-on.
- Signal 10: Key Insights: And you can create ENI's independently from your EC2 instances and attach them on the fly or move them from EC2 instances for failover.

### Service-Specific Lab Paths
### Activity 1: Amazon EC2 Lab for Bandwidth, latency, MTU, enhanced networking, EFA, placement groups, network I/O limits and optimization patterns
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

### Activity 2: Amazon VPC Lab for Bandwidth, latency, MTU, enhanced networking, EFA, placement groups, network I/O limits and optimization patterns
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

### Activity 3: Amazon CloudWatch Lab for Bandwidth, latency, MTU, enhanced networking, EFA, placement groups, network I/O limits and optimization patterns
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

### Activity 4: Elastic Load Balancing Lab for Bandwidth, latency, MTU, enhanced networking, EFA, placement groups, network I/O limits and optimization patterns
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

Use this lens to study Bandwidth, latency, MTU, enhanced networking, EFA, placement groups, network I/O limits and optimization patterns in a cloud-agnostic way: focus on capability first, provider name second.

### Capability Mapping (AWS / Azure / GCP)
| Capability | AWS | Azure | GCP |
|---|---|---|---|
| Identity | IAM / IAM Identity Center | Microsoft Entra ID + RBAC | Cloud IAM |
| Object Storage | Amazon S3 | Azure Blob Storage | Cloud Storage |
| Virtual Machines | Amazon EC2 | Azure Virtual Machines | Compute Engine |
| Serverless Functions | AWS Lambda | Azure Functions | Cloud Functions / Cloud Run |
| Databases | RDS / DynamoDB / ElastiCache | Azure SQL / Cosmos DB / Azure Cache | Cloud SQL / Firestore / Memorystore |
| Networking | VPC / Route 53 / ELB | VNet / DNS / Load Balancer | VPC / Cloud DNS / Cloud Load Balancing |
| Observability | CloudWatch / X-Ray / CloudTrail | Azure Monitor / App Insights / Activity Log | Cloud Monitoring / Cloud Logging / Cloud Trace |
| AI/ML | SageMaker / Bedrock / AI services | Azure ML / Azure OpenAI / AI services | Vertex AI / GenAI services |

### Same Lab Across 3 Clouds
| Lab Theme | AWS | Azure | GCP |
|---|---|---|---|
| Amazon EC2 | Amazon EC2 | Azure Virtual Machines | Compute Engine |
| Amazon VPC | Amazon VPC | Azure Virtual Network | VPC Network |
| Amazon CloudWatch | Amazon CloudWatch | Azure Monitor | Cloud Monitoring |
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

