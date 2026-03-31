# 12_EKS_Networking.md

## Scope
- Topic: EKS cluster networking, pod networking, node/pod security groups, service exposure, custom networking
- Files processed: 10
- Extracted non-empty transcript lines: 983
- Processing mode: line-by-line (sentence-level), zero-loss

## Real Material - Architect Learning Build (Domain 12: EKS Networking)

This section is the study-first architecture guide for Kubernetes network models on AWS, pod and node boundaries, and controlled service exposure.

### Phase 1 - Foundations

#### Module 1: EKS Networking Mental Model
- EKS networking adds Kubernetes abstraction on top of AWS networking primitives.
- Pods, nodes, services, and ingress each create different network boundaries.
- Container orchestration does not remove the need for IP planning and segmentation discipline.




##### Source Transcript Details
- Module focus: EKS Networking Mental Model
- Primary transcript files:
- outputs/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt
- outputs/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/235_Kubernetes Architecture.txt
- outputs/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/237_EKS Cluster Networking.txt
- outputs/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/238_EKS Pod Networking - Part 1.txt
- outputs/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/239_EKS Pod Networking - Part 2.txt
- outputs/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/240_Security Group in EKS - Node and Pod level.txt
- outputs/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/242_EKS Custom Networking - Extending IPv4 address space.txt
- outputs/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/236_Amazon EKS Architecture.txt
- outputs/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/243_EKS Networking Summary.txt
- outputs/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/234_Section Introduction.txt
- Top concept clusters from transcript metadata:
- EKS Networking Operational Context
- Kubernetes Networking Abstraction
- Cluster and Pod Network Model
- Address Space and Scale
- Service Exposure Patterns
- Security Boundary Placement
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 10
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 983
- Key insights inside selected files: 983
- Unique concept tags in selected files: 6

##### Transcript-Enriched Learning Notes
- Hello and welcome to this lecture, "Exposing EKS Services." If you're running some application, it is evident that you will be exposing that to the outside world so that outside world can consume your services.
- And there are some differences in which EKS has implemented that.
- Now, these are all defined by the Kubernetes, and you know that EKS implements all these services using AWS native services like network load balancer or application load balancer.
- And if you don't pass it, EKS uses 10.100.0.0/16 or 172.20.0.0/16 server data range for assigning to the cluster virtual IP.
- So in EKS you could handle the network and application load balancing for network load balancing which is that layer four.
- Now, there is some kind of overlap between how EKS implement these two services and let's try to understand that.
- So originally the load balancer service type in EKS used to be handled by Kubernetes controller manager which is also called Entry Cloud Controller because the source code of this controller was part of the Kubernetes...
- So ALB is the ingress resource for EKS.
- And as I said, for having the Ingress resource, EKS uses AWS load balancer controller which used to be called AWS Ingress controller but has been now renamed too.
- So that's the way EKS implements the ingress for Kubernetes using the ALB load balancer controller and using ALB as the resource.
- Now you could use NLB or ALB in case of EKS.
- Now here we are talking about open source Kubernetes to start with, and then later we'll get into the EKS part of it.
- With that, now, we'll move to the EKS architecture.
- EKS is nothing but the Elastic Kubernetes Service in AWS.
- Hello and welcome to this lecture, "Amazon EKS Cluster Networking." So in the earlier lecture, we understood the EKS architecture.
- So far, we are not talking about the EKS or Kubernetes pod-level networking.
- But here, we are talking about EKS Cluster Networking, that means when you create EKS cluster, then how does your network look like and what are controls you have over that network?
- So let's start with EKS Cluster Networking first.

##### Polished Architect Notes
- Transcript signals that and welcome to this lecture, "Exposing EKS Services." If you're running some application, it is evident that you will be exposing that to the outside world so that outside world can consume your services.
- Transcript signals that there are some differences in which EKS has implemented that.
- Transcript signals that these are all defined by the Kubernetes, and you know that EKS implements all these services using AWS native services like network load balancer or application load balancer.
- Transcript signals that if you don't pass it, EKS uses 10.100.0.0/16 or 172.20.0.0/16 server data range for assigning to the cluster virtual IP.
- Transcript signals that in EKS you could handle the network and application load balancing for network load balancing which is that layer four.
- Transcript signals that there is some kind of overlap between how EKS implement these two services and let's try to understand that.
- Transcript signals that originally the load balancer service type in EKS used to be handled by Kubernetes controller manager which is also called Entry Cloud Controller because the source code of this controller was part of the Kubernete...
- Transcript signals that aLB is the ingress resource for EKS.
- Transcript signals that as I said, for having the Ingress resource, EKS uses AWS load balancer controller which used to be called AWS Ingress controller but has been now renamed too.
- Transcript signals that that's the way EKS implements the ingress for Kubernetes using the ALB load balancer controller and using ALB as the resource.
- Transcript signals that you could use NLB or ALB in case of EKS.
- Transcript signals that here we are talking about open source Kubernetes to start with, and then later we'll get into the EKS part of it.

##### Architect Synthesis (Transcript-Derived)
- Treat EKS Networking Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Kubernetes Networking Abstraction as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Cluster and Pod Network Model as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Address Space and Scale as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Service Exposure Patterns as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: and welcome to this lecture, "Exposing EKS Services." If you're running some application, it is evident that you will be exposing that to the outside world so that outside world can consume your services.
- Design implication: there are some differences in which EKS has implemented that.
- Design implication: these are all defined by the Kubernetes, and you know that EKS implements all these services using AWS native services like network load balancer or application load balancer.
#### Module 2: Cluster and Pod Behavior
- Pod networking is part of application reachability and cluster scale design.
- Node-level and pod-level boundaries solve different isolation problems.
- Service exposure choices determine how much of the cluster becomes externally reachable.




##### Source Transcript Details
- Module focus: Cluster and Pod Behavior
- Primary transcript files:
- outputs/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt
- outputs/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/237_EKS Cluster Networking.txt
- outputs/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/238_EKS Pod Networking - Part 1.txt
- outputs/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/240_Security Group in EKS - Node and Pod level.txt
- outputs/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/239_EKS Pod Networking - Part 2.txt
- outputs/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/235_Kubernetes Architecture.txt
- outputs/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/236_Amazon EKS Architecture.txt
- outputs/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/243_EKS Networking Summary.txt
- outputs/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/242_EKS Custom Networking - Extending IPv4 address space.txt
- outputs/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/234_Section Introduction.txt
- Top concept clusters from transcript metadata:
- EKS Networking Operational Context
- Cluster and Pod Network Model
- Kubernetes Networking Abstraction
- Address Space and Scale
- Service Exposure Patterns
- Security Boundary Placement
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 10
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 983
- Key insights inside selected files: 983
- Unique concept tags in selected files: 6

##### Transcript-Enriched Learning Notes
- Hello and welcome to this lecture, "Exposing EKS Services." If you're running some application, it is evident that you will be exposing that to the outside world so that outside world can consume your services.
- So in Kubernetes, you know that you have pods.
- Pods gets an IP address as well.
- And generally speaking, it's not a great idea to expose the pod's IP address externally so that the external client can communicate with the pod's IP address directly.
- This is because, you know pods are non-permanent objects of the Kubernetes cluster.
- So the life cycle of pod is not supposed to be the long term, right?
- And for the same reason that pods may be created and destroyed based on scale, based on the event in the Kubernetes cluster, maybe more random kind of, right?
- So pods inside a cluster always keeps moving across the nodes.
- And that's where if the pod changes its location, its IP address will also change.
- And that's where it is not recommended to use pod's IP addresses directly.
- The better ways to expose the pod as a service to the outside world, right?
- Now in Kubernetes world, if you want to expose pod services externally or in general if you want to make a service out of the pod, then there are four ways, right?
- So very first type of the service is cluster IP.
- Now this is for the service to be exposed within the cluster.
- That means one pod can access another pod as a service within the cluster only.
- That means it cannot be accessed from outside the cluster.
- It is good if all the communication for those services remains within the cluster and you don't need to expose that externally.
- If you still want to expose the pod services externally, then there is another service type called NodePort.

##### Polished Architect Notes
- Transcript signals that and welcome to this lecture, "Exposing EKS Services." If you're running some application, it is evident that you will be exposing that to the outside world so that outside world can consume your services.
- Transcript signals that in Kubernetes, you know that you have pods.
- Transcript signals that pods gets an IP address as well.
- Transcript signals that generally speaking, it's not a great idea to expose the pod's IP address externally so that the external client can communicate with the pod's IP address directly.
- Transcript signals that this is because, you know pods are non-permanent objects of the Kubernetes cluster.
- Transcript signals that the life cycle of pod is not supposed to be the long term, right?
- Transcript signals that for the same reason that pods may be created and destroyed based on scale, based on the event in the Kubernetes cluster, maybe more random kind of, right?
- Transcript signals that pods inside a cluster always keeps moving across the nodes.
- Transcript signals that that's where if the pod changes its location, its IP address will also change.
- Transcript signals that that's where it is not recommended to use pod's IP addresses directly.
- Transcript signals that the better ways to expose the pod as a service to the outside world, right?
- Transcript signals that in Kubernetes world, if you want to expose pod services externally or in general if you want to make a service out of the pod, then there are four ways, right?

##### Architect Synthesis (Transcript-Derived)
- Treat EKS Networking Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Cluster and Pod Network Model as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Kubernetes Networking Abstraction as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Address Space and Scale as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Service Exposure Patterns as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: and welcome to this lecture, "Exposing EKS Services." If you're running some application, it is evident that you will be exposing that to the outside world so that outside world can consume your services.
- Design implication: in Kubernetes, you know that you have pods.
- Design implication: pods gets an IP address as well.
#### Module 3: Address and Scale Planning
- Kubernetes networking can consume IP space aggressively.
- Custom networking patterns exist because default layouts do not always scale well.
- Platform teams need repeatable cluster networking standards to avoid environment drift.






##### Source Transcript Details
- Module focus: Address and Scale Planning
- Primary transcript files:
- outputs/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/242_EKS Custom Networking - Extending IPv4 address space.txt
- outputs/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/237_EKS Cluster Networking.txt
- outputs/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/239_EKS Pod Networking - Part 2.txt
- outputs/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt
- outputs/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/238_EKS Pod Networking - Part 1.txt
- outputs/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/243_EKS Networking Summary.txt
- outputs/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/240_Security Group in EKS - Node and Pod level.txt
- outputs/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/235_Kubernetes Architecture.txt
- outputs/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/234_Section Introduction.txt
- outputs/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/236_Amazon EKS Architecture.txt
- Top concept clusters from transcript metadata:
- EKS Networking Operational Context
- Kubernetes Networking Abstraction
- Cluster and Pod Network Model
- Address Space and Scale
- Service Exposure Patterns
- Security Boundary Placement
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 10
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 983
- Key insights inside selected files: 983
- Unique concept tags in selected files: 6

##### Transcript-Enriched Learning Notes
- Hello and welcome to this lecture EKS Custom Networking.
- Okay, so let's understand what is EKS Custom Networking.
- So this is applicable for IPv4 addresses typically, and many a times you'll find yourself in a situation where the located subnet IP ranges are not sufficient to provision additional pods because you haven't allocated...
- They don't want to waste too many IP addresses.
- So that may land you into this situation where you are working on a limited set of IP addresses inside your VPC and inside your subnet.
- If you create a VPC with CIDR/24, only 251 are the unique IPv4 addresses that you can use in that.
- Now this is again a feature, which Kubernetes and EKS provides.
- Now, one of the constraint with this IP addresses are that they are routable only within the VPC.
- That means traffic from outside cannot directly go to these IP addresses, but within the VPC, IPs can be reached from one port to another port, or one EC2 instance to another EC2 instance.
- So how do you really make use of these addresses if they cannot be routed from outside?
- And this subnet range could be from this address range.
- Now earlier we have seen that the secondary IPs from even primary ENIs are attached to the ports, but with custom networking to be true, only IPs from this ENIs are attached to the port, which means that all these por...
- Now that means all ports have IP addresses which are routable only within the VPC.
- And then the source packet IP address will be replaced with the primary ENIs IP address.
- That means if you're limited by the IP addresses for your VPC, you can add the 164 range.
- Hello and welcome to this lecture, "Amazon EKS Cluster Networking." So in the earlier lecture, we understood the EKS architecture.
- So far, we are not talking about the EKS or Kubernetes pod-level networking.
- But here, we are talking about EKS Cluster Networking, that means when you create EKS cluster, then how does your network look like and what are controls you have over that network?

##### Polished Architect Notes
- Transcript signals that and welcome to this lecture EKS Custom Networking.
- Transcript signals that so let's understand what is EKS Custom Networking.
- Transcript signals that this is applicable for IPv4 addresses typically, and many a times you'll find yourself in a situation where the located subnet IP ranges are not sufficient to provision additional pods because you haven't allocate...
- Transcript signals that they don't want to waste too many IP addresses.
- Transcript signals that that may land you into this situation where you are working on a limited set of IP addresses inside your VPC and inside your subnet.
- Transcript signals that if you create a VPC with CIDR/24, only 251 are the unique IPv4 addresses that you can use in that.
- Transcript signals that this is again a feature, which Kubernetes and EKS provides.
- Transcript signals that one of the constraint with this IP addresses are that they are routable only within the VPC.
- Transcript signals that that means traffic from outside cannot directly go to these IP addresses, but within the VPC, IPs can be reached from one port to another port, or one EC2 instance to another EC2 instance.
- Transcript signals that how do you really make use of these addresses if they cannot be routed from outside?
- Transcript signals that this subnet range could be from this address range.
- Transcript signals that earlier we have seen that the secondary IPs from even primary ENIs are attached to the ports, but with custom networking to be true, only IPs from this ENIs are attached to the port, which means that all these por...

##### Architect Synthesis (Transcript-Derived)
- Treat EKS Networking Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Kubernetes Networking Abstraction as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Cluster and Pod Network Model as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Address Space and Scale as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Service Exposure Patterns as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: and welcome to this lecture EKS Custom Networking.
- Design implication: so let's understand what is EKS Custom Networking.
- Design implication: this is applicable for IPv4 addresses typically, and many a times you'll find yourself in a situation where the located subnet IP ranges are not sufficient to provision additional pods because you haven't allocate...
### Phase 2 - Core Services

#### Pod Networking and CNI Behavior
- Pod networking design must align with VPC and subnet realities.
- The pod IP model affects scale, troubleshooting, and cross-service communication.
- Treat CNI behavior as architecture-critical, not just implementation detail.

#### Service Exposure Patterns
- ClusterIP, NodePort, LoadBalancer, and Ingress all solve different exposure problems.
- Keep external exposure minimal and explicit.
- Do not let convenience decide the public interface model of a cluster.

#### Security Groups and Isolation
- Node-level and pod-level security controls should be chosen intentionally.
- Isolation design should reflect workload trust boundaries, not just team preference.
- Pod-level control can improve precision while raising platform complexity.

### Phase 3 - Advanced Patterns

#### Pattern 1: Private Cluster by Default
- Keep worker nodes and internal services private unless exposure is justified.
- Use ingress and load-balancing patterns deliberately at the edge.
- Separate cluster operations access from application exposure.

#### Pattern 2: Pod-Level Security and Scale Balance
- Use finer-grained security only where the risk model benefits from it.
- Balance isolation gains against IP consumption and operational complexity.
- Standardize when pod-level controls are allowed or required.

#### Pattern 3: Custom Networking for Growth
- Extend IPv4 capacity only when cluster scale and subnet pressure demand it.
- Document how custom networking changes operational assumptions.
- Scaling the cluster without scaling the address plan is a predictable failure mode.

### Phase 4 - System Design (Production)

#### Reference EKS Networking Architecture
- Private EKS cluster with explicit ingress, controlled service exposure, and clear node/pod isolation model.
- Subnet and IP strategy aligned with expected pod density and cluster lifecycle.
- Platform-owned standards for ingress, security boundaries, and network troubleshooting.

#### Scaling Considerations
- Pod density and IP exhaustion appear faster than many teams expect.
- Exposure sprawl grows when each team picks its own service model.
- Cluster networking becomes hard to govern without a platform baseline.

#### Cost Considerations
- Load balancer proliferation and networking complexity add both cloud cost and platform-team cost.
- Custom networking and extra address-space management increase operational overhead.
- The cheapest EKS design is usually the one with the clearest platform standards.

### Cross-Cloud Concept Mapping (EKS Networking)

#### Underlying Concept: Managed Kubernetes Network Model
- AWS: EKS with VPC-aware pod and service networking
- Azure: AKS networking patterns
- GCP: GKE networking patterns
- Trade-off: all expose Kubernetes primitives, but cloud-network integration behavior differs significantly.

#### Underlying Concept: Pod-Level Isolation and Exposure
- AWS: SG for pods and AWS-native ingress exposure patterns
- Azure: pod/network policy and AKS exposure patterns
- GCP: network policy and GKE service exposure patterns
- Trade-off: the isolation idea is portable, but implementation friction and defaults vary.

### Real-World Use Cases from Transcript Signals
- Build private EKS clusters with tightly controlled ingress and service exposure.
- Choose node-level or pod-level boundaries based on workload isolation needs.
- Extend address space and custom networking only when cluster growth requires it.

### Constraints and Exam-Relevant Traps Captured
- Kubernetes service exposure choices are architecture decisions, not minor settings.
- Pod density and IP planning are real limits in AWS-backed clusters.
- More granular isolation usually means more platform complexity.
## Step 1 — Line-by-Line Extraction

Every non-empty line from every source transcript is preserved below with extraction fields.

### File: outputs/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/234_Section Introduction.txt

Line 1:
- Concepts: EKS Networking Operational Context
- Services: Amazon EKS
- Key Insights: Hello and welcome to this section that is Amazon EKS networking.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 2:
- Concepts: Kubernetes Networking Abstraction
- Services: Amazon EKS
- Key Insights: Now, in this section, we are going to talk everything about the Elastic Kubernetes Service Networking.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 3:
- Concepts: EKS Networking Operational Context
- Services: Amazon EKS
- Key Insights: And in your exam, you can expect couple of questions related to EKS networking.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 4:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now, before we dive deep into this topic, I just wanted to set the right expectations.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 5:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now, our focus is mainly on the networking.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 6:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: But when it comes to the Kubernetes, it is also difficult to just talk about the networking because without understanding the Kubernetes core components, it's difficult to relate how networking works in Kubernetes.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 7:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So for me personally, it's been a challenge to draw that line.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 8:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So with respect to the understanding of Kubernetes I will try to keep some balance and I hope that is OK with you.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 9:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 10:
- Concepts: Kubernetes Networking Abstraction
- Services: Amazon EKS
- Key Insights: So as I said in this section, we are going to talk about the Kubernetes and EKS networking.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 11:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: And at this point, you are expected to know what are containers, what are microservices and what is Kubernetes.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 12:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: This is a prerequisite and this is not a Kubernetes course.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 13:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So I expect that you already know these things.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 14:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: But if not, I have provided a separate video which you can go and check and then you can start with this section.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 15:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So we will cover Kubernetes open source architecture.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 16:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So here we'll talk about the Kubernetes in general without AWS context.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 17:
- Concepts: Kubernetes Networking Abstraction
- Services: Amazon EKS
- Key Insights: And then we will see how things work in EKS that is Amazon's Elastic Kubernetes service.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 18:
- Concepts: EKS Networking Operational Context
- Services: Amazon EKS
- Key Insights: And within the EKS, we will see EKS architecture that is control plane and data plane.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 19:
- Concepts: Cluster and Pod Network Model, Kubernetes Networking Abstraction
- Services: Amazon EKS
- Key Insights: Then we will see EKS cluster networking as in how AWS manages the control plane and you manage the data plane.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 20:
- Concepts: Cluster and Pod Network Model
- Services: Amazon EKS, Amazon VPC CNI
- Key Insights: Then we will see the pod networking within the EKS, which means how pods communicate with each other and how can you secure that communication..
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 21:
- Concepts: EKS Networking Operational Context
- Services: Amazon EKS
- Key Insights: Then we will see use of security groups with EKS ports and this is relatively a new feature that AWS released.
- Hidden/Implicit Meaning: Cluster-network model signal; Isolation and scale-boundary signal.

Line 22:
- Concepts: EKS Networking Operational Context
- Services: Amazon EKS
- Key Insights: And then one of the most important topic is exposing EKS services using Amazon Load-Balancer.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cluster-network model signal.

Line 23:
- Concepts: Address Space and Scale
- Services: Amazon EKS
- Key Insights: So please make sure that you understand this topic well, and then we will see some advanced features of EKS networking which comes under EKS custom networking.
- Hidden/Implicit Meaning: Cluster-network model signal; Isolation and scale-boundary signal.

Line 24:
- Concepts: EKS Networking Operational Context
- Services: Amazon EKS
- Key Insights: And then we will wrap up this section with EKS networking summary.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 25:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 26:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So I hope you are good with that.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 27:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And as I said, if you don't know about what are containers, microservices, then you can check this video out there.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 28:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And I have also provided the link to that in the description.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 29:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: But if you already know about the containers and microservices and in general, what is Kubernetes, then you can just start with this section.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 30:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: OK.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 31:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So with that, let's get started with Kubernetes Architecture.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 32:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Thank you.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/235_Kubernetes Architecture.txt

Line 1:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: Hello, and let's first see the Kubernetes architecture, and here we are going to talk about Kubernetes open source.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 2:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: Now, at this moment, I hope that you already know what are containers, what are microservices, and why Kubernetes.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 3:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: But if not, I recommend you to watch the video for which I have already provided you the link.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 4:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: Okay, so in this lecture, let's talk about the Kubernetes building blocks, because if you talk about Amazon EK Service, it is nothing but the wrapper over open source Kubernetes.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 5:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So it's important for us to first understand the Kubernetes architecture.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 6:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: Now, as I said earlier, the purpose of this course is to focus only on the networking part, but I think it's essential to know all those core components so that when we talk about the Kubernetes networking, you understand what those components are.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 7:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: Now, originally, Kubernetes was developed at Google.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 8:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: But then Google made it open sourced, and now Kubernetes as a project is maintained by CNCF, which is Cloud Native Computing Foundation.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 9:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now, CNCF was founded in 2015, and the purpose was to really innovate in the container space.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 10:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: CNCF has a lot of projects, but Kubernetes is one of the top project which CNCF maintains as of today.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 11:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: Okay, with that, let's start with Kubernetes building blocks.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 12:
- Concepts: Kubernetes Networking Abstraction
- Services: Amazon EKS
- Key Insights: Now here we are talking about open source Kubernetes to start with, and then later we'll get into the EKS part of it.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 13:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: Okay, if you look at Kubernetes from the top, Kubernetes is deployed as a cluster, and this cluster consists of control plane and a data plane.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 14:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: As you might have guessed, control plane is something which controls what happens in the data plane, and your actual applications runs in this data plane.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 15:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So control plane consists of master nodes, and these nodes could be one or more, but for high availability of those all control processes, it is recommended that you always run multiple nodes in the control plane.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cluster-network model signal.

Line 16:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Similarly, data plane consists of something called nodes.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 17:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: You can treat them as like hosts, so that when you deploy your application, they are spread across multiple nodes.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 18:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So the nodes in this data planes are called worker nodes, and the nodes in the control plane are called master nodes.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 19:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now, when it comes to hosting the application, these applications are hosted on the nodes, but they're hosted as something called pods.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 20:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: Now, pods are nothing but a smallest deployment unit in Kubernetes.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 21:
- Concepts: Cluster and Pod Network Model, Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: Now, you always heard about the containers, but then Kubernetes has the deployment unit as pod.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cluster-network model signal.

Line 22:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: Now, one pod consists of one or more containers.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 23:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: So basically you could have multiple containers inside one pod.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 24:
- Concepts: Cluster and Pod Network Model, Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: But for Kubernetes, it always deploys pod, not the container.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cluster-network model signal.

Line 25:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: So it's very much possible that you just have one container in the pod, but more often or not, you could have more than one container.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 26:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Maybe one application container and supporting databases or cache.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 27:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So this kind of pods you can build, so that application can work efficiently.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 28:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: So pod ultimately represents a group of one or more application containers.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 29:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So this is an high level architecture of the Kubernetes.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 30:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now, let's see which components lies in the control plane as well as in the data plane.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 31:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So this is a closer look at the cluster.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 32:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now, on the left side, you have control plane, and on the right side you have data plane.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 33:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And there are other components on the right.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 34:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: You can see here this is a cloud control manager, and we'll talk about that as well.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 35:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: Now, important thing here to know that when you are sitting outside of the cluster, of course, as a person, you would want to interact with the Kubernetes cluster.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 36:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: Now, how does admin talk to the Kubernetes cluster?
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 37:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So Kubernetes exposes the Kubernetes APIs from the API server, which is hosted here, and then admin will use either Kubernetes APIs or there are some command line tools like kubectl, which can be used to communicate with the Kubernetes.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 38:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And we'll see the entire deployment flow at high level as we understand more about the control plane and the data plane components.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 39:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So there are a lot of services or objects in the Kubernetes term, running in the control plane and the data plane, and let's now understand those components.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 40:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So very first is kube-apiserver.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 41:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So as the name suggests, kube-apiserver exposes the Kubernetes APIs.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 42:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: That means if you want to communicate with Kubernetes cluster from outside as an admin, then you make an contact with API server, and then API server will talk to the data plane to make those adjustment to change the state of Kubernetes cluster.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 43:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So it's a front-end for Kubernetes control plane.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 44:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Second is etcd, also called ETCD.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 45:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now, this is a key value store as you know.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 46:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: Right now, this key value store maintains the state of your cluster.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 47:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: For example, if you're deploying, say, different pods, and what are the configuration of those pods, you are exposing those pods as a service.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 48:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now, what are the ports on which these services will be accessible?
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 49:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: What are the port on which the pods will be accessible?
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 50:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: This is all the configuration information that you provide in the form of manifest file and all this configuration information, and you can say the state of your entire cluster is maintained in the key value store as in the etcd.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 51:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So it maintains all your cluster data.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 52:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So whenever some changes you have to make, API call will make those changes persistent into the etcd key value store.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 53:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: And also if you want to get the state of your cluster, API server will get that state from the cluster and give it as an output on the command line or in the UI.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 54:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So etcd maintains the cluster information into the persistent store.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 55:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: Kube-scheduler, as the name suggests, it actually keeps looking for the right place for your pod on the nodes.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 56:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: So maybe there are some nodes on which there is less load, so kube-scheduler will decide how to launch this particular pod on this particular node.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 57:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And there are a lot of parameters, not just the compute hardware, based on which it takes decision.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 58:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: You can also change that behavior based on node affinity and tented node.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 59:
- Concepts: Cluster and Pod Network Model, Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: There are many features in Kubernetes with which you can decide this pod should go to this node or that node.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cluster-network model signal.

Line 60:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Maybe some nodes have GPUs and your containers need GPU.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 61:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: In that case, you can also change the behavior, how scheduler will schedule that pod to be running on the nodes.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 62:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So that's the job of a kube-scheduler.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 63:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Similarly, there is kube-controller-manager.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 64:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now, kube-controller-manager consists of multiple controller processes.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 65:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now, as the name suggests, controller process does some job, for example, if you want to schedule a job to be running at certain time of the day.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 66:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So job controller will do that.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 67:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: Similarly, if one of the node goes down, then the node controller will identify that the node has went down and it'll make sure that another node is spun up.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 68:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: Similarly, replication controller, if there is one replica of the pod and you want to make it clear replicas, for example, then the replication controller will do that.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 69:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: Endslice controller, it basically enables the services to the pod communication.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 70:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So whenever you expose your pods as a service, then there is a networking component called kube-proxy, which does that.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cluster-network model signal.

Line 71:
- Concepts: Cluster and Pod Network Model, Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: And then EndpointSlice controller will make sure that this communication or link is established between the service and the pod.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 72:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now, similarly, there is also cloud-controller-manager.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 73:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: Now, Kubernetes can be done anywhere.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 74:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: It can be done on premises, and it can be run in the cloud as well.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 75:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: And Kubernetes has extensible architecture, which means you can integrate Kubernetes with the cloud resources.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 76:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: For example, Kubernetes has a load balancer as a service.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 77:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: But then you can use instead, cloud provider's load balancer.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 78:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: For example, you can use application load balancer, or network load balancer in Kubernetes.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 79:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: Now, Kubernetes itself doesn't know how to create application load balancer.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 80:
- Concepts: Address Space and Scale, Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: And for that you have the cloud-controller-manager, through which you can extend the Kubernetes capabilities to the cloud.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 81:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So AWS will provide AWS cloud-controller-manager.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 82:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: Similarly, other cloud provider will develop their own providers, and you just plug it into the Kubernetes and then it can provision those resources for you when you make some deployments into the Kubernetes.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 83:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So likewise, these are the important processes on the control plane side, and this is very extensible, as I said.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 84:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: You can put as many add-ons, which are available, open source or third-party developed.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 85:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: But these are the core Kubernetes control plane component.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 86:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now, with that, let's move to the data plane.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 87:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: As you know, data plane consists of nodes.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 88:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Nodes are nothing but the hosts.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 89:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And then nodes have essentially three important components running.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cluster-network model signal.

Line 90:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: As you can see there, nodes host the pods, pods are nothing but one or more containers, and which essentially means it runs your application.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 91:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: Then every node has something called kubelet.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 92:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: What is kubelet?
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 93:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: It's an agent which runs on every node.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 94:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And kubelet is a agent which takes command from the API server.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 95:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: For example, API server says, "Run this pod." Now how API server communicates with this node?
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 96:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: Because there is a kubelet running on that node.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 97:
- Concepts: Cluster and Pod Network Model, Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So it's an agent that runs on each node in the cluster.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 98:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: So it makes sure that the containers are running in a pod.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 99:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Similarly, kubelet also register the state of your pods to the API server.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 100:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: Suppose one of the pod goes down, then kubelet will report it to the API server, and API server will then add that to the ETCD, likewise.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 101:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Kube-proxy, now, this is very important.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 102:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: Kube-proxy basically enables the network communication to the pods from network station, inside or outside of your cluster.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 103:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: What it means that pods can communicate with each other, right?
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 104:
- Concepts: Cluster and Pod Network Model, Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: And when you want to expose pod as a service, because maybe there are multiple pods for the same service, of course, in order to scale that, right?
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 105:
- Concepts: Cluster and Pod Network Model, Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So you can expose your pod as a service.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 106:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So kube-proxy enables that creation of the service basically.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 107:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And then you can also expose your services to the external world, similar to the load balancer and EC2 machine behind the load balancer.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 108:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: You can also have your pods behind the load balancer.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 109:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So kube-proxy is the native Kubernetes networking component, which enables all this communication.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 110:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Finally, container runtime.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 111:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: Because you're running containers, you need a container runtime engine inside this node, for example, if you're using Docker, then you would be having Docker engine.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 112:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now, Docker underlying use Containerd as a container runtime.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 113:
- Concepts: Cluster and Pod Network Model, Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So in Kubernetes, on every node, you need to have the similar container runtime.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 114:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: Now, Kubernetes supports a lot of container runtimes, not just Containerd, but it also supports CRI based, or CRI-based container runtime engine.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 115:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: CRI is nothing but Container Runtime Interface.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 116:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And then there are many implementation of CRI.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 117:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So Kubernetes can very well use those as well.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 118:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: But as of today, Containerd is the most popular one, which is used by most of the leading container technologies.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 119:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So that's what the data plane looks like.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 120:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: Now, let's look at the process when you want to launch any pods, or say application, inside the Kubernetes cluster, then what that flow will look like.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 121:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So for example, there is a developer on the left side here.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 122:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: You have your Kubernetes cluster on the right side, and there are users of the application sitting here.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 123:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So developer, what it will do, is write a code for your application, of course, right?
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 124:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: This code will then be unit tested, compile, build, which ultimately produce some artifacts.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 125:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So maybe if it's a Java application, it could be JAR or WAR file.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 126:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: If it's a C or C-plus-plus code, then it could be some binaries and libraries.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 127:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So that's an artifact which will ultimately be deployed.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 128:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Then you have DockerFile.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 129:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now, DockerFile basically builds the Docker image.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 130:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now, if you are aware of the Docker, you must very well understand that, but ultimately, from the instructions of the DockerFile, where my code is or my deployables are, and which port this container will be running, or all this information is there in the DockerFile.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 131:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And basically DockerFile takes those instruction, takes your code artifacts, and build the Docker image out of it.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 132:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: It will install required libraries, binary, everything, and it will create a DockerFile out of it.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 133:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So you run the Docker build command, and then it will create the image, and then you push that image to the registry.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 134:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So Docker Hub is a public registry that you can use, or if you're operating in AWS, then you can use Amazon ECR, Elastic Container Registry.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 135:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: There are many such registries available.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 136:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: But ultimately you push your image to the container registry.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 137:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So you build the image, and now you want to deploy this image into the Kubernetes cluster.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 138:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: Now, for that developer or maybe the ops person would write a deployment file, also called as Kubernetes manifest file.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 139:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So this is a declarative file in the YAML format.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 140:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: Basically tells Kubernetes how to deploy this application to the Kubernetes cluster.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 141:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So somebody will write this deployment manifest file, which will tell Kubernetes control plane how to deploy this application.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 142:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So to tell Kubernetes API, you use some kind of tools.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 143:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: Either you can use Kubernetes API, which are available over HTTPS, or Kubernetes has a command line tool call kubectl, or kubectl, whatever you call it.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 144:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So kubectl will take your deployment file and it will talk to your API server.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 145:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Of course, there will be authentication, but we are not getting into that as of now.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 146:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So with kubectl and Deployment file, it will reach to the API server as an instruction, and API server will then communicate with control manager ETCD scheduler, and if required, to the cloud-controller-manager to take a decision what to do about this deployment.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 147:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: So it will make those calls, and then finally it will talk to the kubelet to deploy this to one of the node.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 148:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now, kubelet receives those instruction.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 149:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: What kubelet will do, kubelet will communicate with the container runtime engine.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 150:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: For example, Containerd in terms, in case of Docker, container runtime engine will understand that there is one Docker image, which is available in Docker Hub, which needs to be deployed as a container or as a pod.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 151:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So container runtime engine will pull that image from the Docker Hub.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 152:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: Now, for that container runtime engine or a node would require permissions, all that would be a part of authentication and authorization.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 153:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: But ultimately it will get that image and then it will run it as a pod.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 154:
- Concepts: Cluster and Pod Network Model, Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: Now, once the pod is running, of course it will be exposed to the external world using the kube-proxy, or load balancer service, but some kind of service will be created and then the end users could access those over this service.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 155:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now this is how you deploy the application, and this application is available to the end user.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 156:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So this very high level flow, and there are many steps in between which are skipped, but hopefully you would understand how typically things work in Kubernetes world.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 157:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So with that, we'll stop here.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 158:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: For Kubernetes architecture, I hope it is clear that Kubernetes has control plane and data plane, and what are the components of those control plane and data plane.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 159:
- Concepts: EKS Networking Operational Context
- Services: Amazon EKS
- Key Insights: With that, now, we'll move to the EKS architecture.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 160:
- Concepts: Kubernetes Networking Abstraction
- Services: Amazon EKS
- Key Insights: EKS is nothing but the Elastic Kubernetes Service in AWS.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 161:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: And it is very much conformant to the open source Kubernetes.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 162:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: But we'll see how the architecture of the Kubernetes cluster looks into the AWS world.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 163:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So thanks for watching and stay tuned.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 164:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Thank you.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/236_Amazon EKS Architecture.txt

Line 1:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Hello and welcome to this lecture.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 2:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So in the earlier lecture, we saw the components of Kubernetes cluster.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 3:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Essentially we saw the control plane, and data plane, and what are the important services which run inside the control plane, and data plane.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 4:
- Concepts: EKS Networking Operational Context
- Services: Amazon EKS
- Key Insights: Now, when it comes to the EKS, of course architecture remains the same, but the responsibility of control plane, and data plane, changes.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 5:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And as you might have guessed, it makes more sense that AWS takes care of the difficult thing, that is managing the control plane.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 6:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And then you take care of the data plane, where you decide which kind of nodes you want to run, how many ports you want to run.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 7:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: That is all part of your data plane.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 8:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So the architecture is similar to what we saw earlier.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 9:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: As you can see here, there is a control plane on the top, and it is across three availability zones, of course, for high availability, and resiliency.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 10:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And this control plane is completely taken care of by AWS.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 11:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And below is the data plane.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 12:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And then you can decide how many availability zones you want to use, and then you can spin up those nodes across multiple availability zones.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 13:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: Now this is the Kubernetes architecture.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 14:
- Concepts: EKS Networking Operational Context
- Services: Amazon EKS
- Key Insights: And now if you look at the EKS, so you don't care about the control plane high availability.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 15:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: You know that there are different components like for example, APIs, server, SD, data store cube controller manager, and all this has been taken care of.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 16:
- Concepts: EKS Networking Operational Context
- Services: Amazon EKS
- Key Insights: So with EKS, you get a managed control plane.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 17:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now, when it comes to the data plane, there are multiple options for the way you would launch your nodes.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 18:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: Now these nodes are typically your EC2 machines, but then Kubernetes also offers you serverless compute options in the form of AWS Fargate.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 19:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now, when it comes to the EC2 options, there are two ways in which you can launch this EC2 machine.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 20:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: One is self-managed nodes.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 21:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: That means you launch this EC2 machine.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 22:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: You can put those into the auto-scaling group, but then you decide which AMIs to use, which instance types to use.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 23:
- Concepts: Cluster and Pod Network Model, Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: Once these instances are launched, then you want to make sure that the instance gets registered into the Kubernetes cluster as a node.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 24:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And for that you need to run a few commands.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 25:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: And if for some reason, the instance is unhealthy, then you would want to take this out of your cluster.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 26:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So all this has to be managed by you, if you're using self-managed nodes.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 27:
- Concepts: Cluster and Pod Network Model
- Services: Amazon EKS
- Key Insights: Now, EKS has simplified this operation, in the form of managed node groups.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 28:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: That means provisioning the nodes, and then adding it to the Kubernetes cluster, as well as draining those nodes, in case you want to reduce the capacity, or adding new nodes when you want to increase the capacity.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 29:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: All this has been taken care of, if you're using manage node groups.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 30:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: Now, node groups are nothing but a collection of EC2 machines, whether self-managed, or managed.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 31:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: But then underlying compute capacity is provided by EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 32:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: There is a third option, which is AWS Fargate.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 33:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now, as you already know, AWS Fargate is a serverless compute offering from AWS.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 34:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: That means there are no machines to manage for you.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 35:
- Concepts: EKS Networking Operational Context
- Services: Amazon EKS
- Key Insights: Now with respect to EKS, you just define your pods, and container capacity, that they need, and then Fargate will provision the underlying compute capacity for running those containers, and the pods.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 36:
- Concepts: Kubernetes Networking Abstraction
- Services: Amazon EKS
- Key Insights: So that's a very brief about EKS architecture, very similar to the Kubernetes architecture.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 37:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And then now we will focus more on the networking part.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 38:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now you know that AWS has VPC.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 39:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: That means your cluster will be inside a VPC, or will be launching this data plane nodes inside a VPC.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 40:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So it's interesting to see how these nodes communicate, how these ports communicate, how you expose these services outside of the cluster.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 41:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So all that will be covered in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 42:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So stay tuned, and thanks for watching.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/237_EKS Cluster Networking.txt

Line 1:
- Concepts: Cluster and Pod Network Model, Kubernetes Networking Abstraction
- Services: Amazon EKS
- Key Insights: Hello and welcome to this lecture, "Amazon EKS Cluster Networking." So in the earlier lecture, we understood the EKS architecture.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 2:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: We know that control plane is managed by AWS, and data plane is managed by the customer, that means by you.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 3:
- Concepts: Cluster and Pod Network Model, Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: Now in this lecture, let's understand the cluster networking.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 4:
- Concepts: Cluster and Pod Network Model, Kubernetes Networking Abstraction
- Services: Amazon EKS
- Key Insights: So far, we are not talking about the EKS or Kubernetes pod-level networking.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 5:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: That means how pod communicates with each other or how to expose pod services to the outside world.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 6:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: That will be covered in the following lecture.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 7:
- Concepts: Cluster and Pod Network Model, Kubernetes Networking Abstraction
- Services: Amazon EKS
- Key Insights: But here, we are talking about EKS Cluster Networking, that means when you create EKS cluster, then how does your network look like and what are controls you have over that network?
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 8:
- Concepts: Cluster and Pod Network Model, Kubernetes Networking Abstraction
- Services: Amazon VPC CNI
- Key Insights: So this is about cluster networking and not really about the pod networking, right?
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 9:
- Concepts: Cluster and Pod Network Model, Kubernetes Networking Abstraction
- Services: Amazon EKS
- Key Insights: So let's start with EKS Cluster Networking first.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 10:
- Concepts: EKS Networking Operational Context
- Services: Amazon EKS
- Key Insights: EKS has the control plane which resides in AWS managed VPC as you can see here on the top.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 11:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And then the data plane, which means the worker nodes are launched in the customer VPC.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 12:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So this is a VPC which you manage and this is inside your AWS account.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 13:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So control plane is launched in AWS managed account and VPC, and data plane nodes are launched in a customer account and VPC.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 14:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So the question is, if that is the case, then how does the control plane talks to the data plane?
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 15:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Of course, there should be some mechanism and you are already aware of this if you know the requester managed ENIs.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 16:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So if you worked with services like Amazon AppStream or Workspaces, or for that matter, database service that is RDS.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 17:
- Concepts: Security Boundary Placement
- Services: Security Group
- Key Insights: Now RDS databases are managed by AWS, but still you can control the security group for your database.
- Hidden/Implicit Meaning: Isolation and scale-boundary signal.

Line 18:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: You can configure those rules.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 19:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now, how it is possible?
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 20:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: In that case, behalf of AWS service, it creates ENI into your VPC and then it gives you control over that ENI.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 21:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And then security groups are attached to the ENI, and that's where you get control of managing the traffic for those ENIs.
- Hidden/Implicit Meaning: Isolation and scale-boundary signal.

Line 22:
- Concepts: EKS Networking Operational Context
- Services: Amazon EKS
- Key Insights: In the same fashion, EKS control plane provisions the ENIs, typically 2 to 4 ENIs depending on how many availability zones you use into your customer VPC.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 23:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And this ENI enables the communication from control plane to the data plane.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 24:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So this is the traffic from control plane to the data plane.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 25:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And then also sometimes your data plane needs to communicate to the control plane as well, and we'll see how that communication happens.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 26:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: There are different ways and we'll cover that.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 27:
- Concepts: Address Space and Scale
- Services: Amazon EKS
- Key Insights: But here you have ENIs, which are owned by the EKS, but they're provisioned inside the customer VPC subnet.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 28:
- Concepts: Address Space and Scale
- Services: (none explicit)
- Key Insights: Now if you look at this architecture, typically it is advised that for this ENIs, you should have a dedicated subnet.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 29:
- Concepts: Address Space and Scale, Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: Now you could very well use these worker node subnets to provision these ENIs, but you know, it's always better to have better control over those subnets so that you can define the NACL rules, you can have the routing rules for your subnet and then you dedicate these subnets only for these ENIs.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal; Cluster-network model signal.

Line 30:
- Concepts: Address Space and Scale
- Services: Amazon EKS
- Key Insights: And then EKS doesn't need lot of IP addresses from this subnet, only six IPs are required, but you know, in AWS you can create the smallest subnet as /28, which gives you 16 IP addresses.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cluster-network model signal.

Line 31:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So it's recommended that you have the smallest subnets allocated for these ENIs.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 32:
- Concepts: Kubernetes Networking Abstraction, Security Boundary Placement
- Services: Amazon EKS, Security Group
- Key Insights: Now further, when you create EKS cluster, it also creates security group and these security groups are attached to these ENIs.
- Hidden/Implicit Meaning: Cluster-network model signal; Isolation and scale-boundary signal.

Line 33:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: Now this security groups are also attached to the nodes, if you are creating these nodes as a part of managed node group.
- Hidden/Implicit Meaning: Cluster-network model signal; Isolation and scale-boundary signal.

Line 34:
- Concepts: Security Boundary Placement
- Services: Security Group
- Key Insights: And you can see here, there are a couple of rules in this security group, right?
- Hidden/Implicit Meaning: Isolation and scale-boundary signal.

Line 35:
- Concepts: Security Boundary Placement
- Services: Security Group
- Key Insights: So there is inbound rule which allows all protocol on all ports and it references to the self, that means wherever this security group is attached, the traffic can flow through all those ENIs to each other.
- Hidden/Implicit Meaning: Isolation and scale-boundary signal.

Line 36:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And then there is outbound rule which allows the outbound connection to IPv4 and IPv6 addresses, all the addresses, and then you can very well change those as you need.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 37:
- Concepts: Kubernetes Networking Abstraction, Security Boundary Placement
- Services: Security Group
- Key Insights: But this is a default security group which gets created, and then you also get control where you create security group and then you provide the security group ID while you create the cluster.
- Hidden/Implicit Meaning: Isolation and scale-boundary signal.

Line 38:
- Concepts: Security Boundary Placement
- Services: Security Group
- Key Insights: That means it's configurable, but this is a default security group which gets created if you don't provide your own.
- Hidden/Implicit Meaning: Isolation and scale-boundary signal.

Line 39:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Okay, next thing, how do you access the control plane?
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 40:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now, here is the thing to understand.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 41:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: When we talked about the Kubernetes architecture, we said that Kubernetes APIs servers kind of the heart of the communication.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 42:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: If you want to talk to Kubernetes cluster, you need to make an API call to the API server.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 43:
- Concepts: EKS Networking Operational Context
- Services: Amazon EKS
- Key Insights: Now in this case, that API server is a part of this EKS control plane.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 44:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: And if you're using some kind of client, Kubernetes client like kubectl on your workstation, then you need to connect to this control plane API server and then you can deploy your pods, you can create services, you can attach nodes to the Kubernetes cluster.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 45:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: All those are Kubernetes-level operation and for that, you need to hit that Kubernetes control plane API.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 46:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So by default, this API server is accessible over the internet.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 47:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And as you can see, this is managed by AWS because it's inside AWS managed VPC and then AWS will allow the internet access to this.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 48:
- Concepts: Kubernetes Networking Abstraction
- Services: Amazon EKS
- Key Insights: Now, there are ways to disable the internet access and we'll see that in the same lecture, but this is what happens when you create the EKS cluster.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 49:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: Now, one thing to understand that don't get confused between the Kubernetes API server which is used to manage the Kubernetes cluster components.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 50:
- Concepts: EKS Networking Operational Context
- Services: Amazon EKS
- Key Insights: For example, launching pods, launching services, and then there is something called EKS APIs, those are AWS EKS APIs.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 51:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: That means if you want to create the cluster, you need to make an API call to AWS.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 52:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: For example, if you launch an EC2, you make an API call to EC2 service.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 53:
- Concepts: Kubernetes Networking Abstraction
- Services: Amazon EKS
- Key Insights: Similarly, you are now making call to the EKS service of AWS and then it creates the cluster for you.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 54:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: That's AWS API, we are not talking about that at this moment.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 55:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: We are talking about the Kubernetes API to really manage the internal components of the Kubernetes and to make the deployments into the Kubernetes, right?
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 56:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So by default, this API server it's accessible over the internet.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 57:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: Finally, you can have both IPv4 and IPv6 IP addresses assigned to your pods which are running on this worker node.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 58:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: But thing to remember is that it doesn't support dualstack mode.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 59:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: That means, pod cannot have both the IPs at the same time, either they can have IPv4 addresses or they can have IPv6 addresses.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cluster-network model signal.

Line 60:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So that means both the options are available to you.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 61:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now, with that, let's look into the particular use cases.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 62:
- Concepts: Kubernetes Networking Abstraction
- Services: Amazon EKS
- Key Insights: Now to start with, let's see what are the options you have when you say you want to access the EKS Kubernetes API server?
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 63:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So here is the same architecture and then you have kubectl as a client which you can install on your workstation, assuming that you have permissions to connect to the Kubernetes API server then you can very well go over the internet.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 64:
- Concepts: Kubernetes Networking Abstraction
- Services: Amazon EKS
- Key Insights: Now this is a default setting where EKS cluster endpoint public access is enabled and the private access is disabled.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 65:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And we'll talk shortly about what is private access.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 66:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: But if that is the case, you create the cluster then you can connect from your workstation.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 67:
- Concepts: EKS Networking Operational Context
- Services: Amazon EKS
- Key Insights: So EKS will provide you the DNS, some uniquename.eks.amazonaws.com and which results to the public IP, and then you can connect it over the internet.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 68:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now, how do then worker nodes connects to the control plane?
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 69:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Because as I said, this ENIs by default will only allow access from control plane to the data plane.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 70:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: But then data plane also needs to communicate to the control plane.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 71:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: For example, to let control plane know that some of the pod went down, so there should be a replacement pod.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cluster-network model signal.

Line 72:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So for the reporting purpose or to get the instruction from the control plane, right?
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 73:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So by default, if you enable the cluster endpoint public access then this worker nodes here and it runs kubelet, as you know, needs to communicate with the control plane over the internet as well.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 74:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So the traffic will go from here to the control plane.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 75:
- Concepts: Address Space and Scale
- Services: (none explicit)
- Key Insights: Now, for that, as you might have understood your nodes needs to be in public subnet and then you should be allowed to connect to the internet through internet gateway.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cluster-network model signal.

Line 76:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And we'll talk about more patterns of public or private network going forward.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 77:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: But this is what happens if you go with the Kubernetes default public access.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 78:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Okay, so obviously this works well, but then it means that anybody can connect to your control plane.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 79:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So do you have any control over who can connect over the internet?
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 80:
- Concepts: EKS Networking Operational Context
- Services: Amazon EKS
- Key Insights: Yes, of course, you have because AWS EKS provides you ability to provide the CIDR block to whitelist the IP addresses.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 81:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So you can restrict that which IPs can access this control plane.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 82:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So if you know the customer side of the CIDR then you can provide that and only traffic from those IPs will be allowed.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 83:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: Okay, but in certain cases, maybe you want that your worker node doesn't have the outbound internet access and still you want these worker nodes to communicate or say data plane to communicate with your control plane, or the private network.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 84:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now in that case, there is an option where what you can do is you can enable both the public and private access for this control plane endpoint.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 85:
- Concepts: Address Space and Scale
- Services: (none explicit)
- Key Insights: So in that case, a client can connect over the internet, but the data plane can be in the private subnet and there is no internet gateway here.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 86:
- Concepts: EKS Networking Operational Context
- Services: Amazon EKS
- Key Insights: And then it can access the control plane via this EKS owned ENI.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 87:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So when it tries to resolve the DNS, it results to the ENI private IP.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 88:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: In that case, you don't need outbound internet access for your worker nodes.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 89:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So that's one case where you can enable both the public and private access.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 90:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now, in this case as well, you could still have the CIDR block and you can whitelist the public IP range from which you want external client to make connection to the control plane API server.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 91:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now, while this is good, maybe in certain cases, you don't even want this public connectivity.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 92:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: You want that all the connection from your network to the Kubernetes control plan is private.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 93:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: That means it's secured, so it could be over VPN or it could be over a Direct Connect.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 94:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: If you have that kind of requirement, you can completely disable the public access to your control plane cluster endpoint, right?
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 95:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: But in that case, you need to have some kind of Layer 4 connectivity between the data center and the customer VPC.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 96:
- Concepts: EKS Networking Operational Context
- Services: Amazon EKS
- Key Insights: Typically, it is turn over a VPN or a Direct Connect and then you have client inside this network, and this client can then reach out to the EKS owned ENI, and then the traffic can go to your control plane.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 97:
- Concepts: Kubernetes Networking Abstraction
- Services: Amazon EKS
- Key Insights: Now, in this case, we have disabled the EKS cluster endpoint public access, but we have enabled the private access so that it can only be accessed from this EKS owned ENI.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cluster-network model signal.

Line 98:
- Concepts: Kubernetes Networking Abstraction
- Services: Amazon EKS
- Key Insights: So these are the ways in which you can control the access to the EKS cluster endpoint.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 99:
- Concepts: EKS Networking Operational Context
- Services: Amazon EKS
- Key Insights: Now, at the same time, we also need to look at the AWS EKS APIs.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 100:
- Concepts: Kubernetes Networking Abstraction
- Services: Amazon EKS
- Key Insights: Now, for example, if you're creating the EKS cluster altogether.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 101:
- Concepts: Kubernetes Networking Abstraction
- Services: Amazon EKS
- Key Insights: Now for creating EKS cluster, you don't need access to the cluster endpoint, right?
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 102:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: Because it is after creating the cluster.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 103:
- Concepts: Kubernetes Networking Abstraction
- Services: Amazon EKS
- Key Insights: But for that, you need access to the EKS service of AWS like EC2 as I said.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 104:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now, typically, all the services are available publicly, right?
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 105:
- Concepts: Kubernetes Networking Abstraction
- Services: Amazon EKS
- Key Insights: You can access that, but in certain cases you want to only allow the client inside a VPC, for example, or client inside a private network to create the EKS cluster.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cluster-network model signal.

Line 106:
- Concepts: Kubernetes Networking Abstraction
- Services: Amazon EKS
- Key Insights: So in that case, if you need to do that, you can use VPC interface endpoint for EKS service.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 107:
- Concepts: Kubernetes Networking Abstraction
- Services: Amazon EKS
- Key Insights: Now, what we are doing here, in customer VPC, we are creating a VPC interface endpoint for EKS service of AWS.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 108:
- Concepts: Kubernetes Networking Abstraction
- Services: Amazon EKS
- Key Insights: And then your client are sitting here, but this time they're not using kubectl, but they're using other tools like eksctl, which is used to create the Kubernetes cluster and eksctl talks to AWS EKS service endpoint, right?
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 109:
- Concepts: EKS Networking Operational Context
- Services: Amazon EKS
- Key Insights: So in this case, it will fire AWS EKS API and the traffic will flow from the customer location to the customer VPC via VPN or a Direct Connect.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 110:
- Concepts: Kubernetes Networking Abstraction
- Services: Amazon EKS
- Key Insights: And from there, through VPC interface endpoint, it can reach to the EKS service endpoint and then you can fire all the EKS-related APIs.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 111:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: To start with, it will create the cluster, and once cluster is available then the kubectl will be used to connect to the control plane and then perform all the operations.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 112:
- Concepts: Kubernetes Networking Abstraction
- Services: Amazon EKS
- Key Insights: Now, this is how the VPCs look like and the, you know, networking look like for your EKS cluster.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 113:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now, few additional things, maybe recommendation or best practices, what you can do inside your customer VPC.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 114:
- Concepts: EKS Networking Operational Context
- Services: Elastic Load Balancing
- Key Insights: So of course, you could have public subnets inside your customer VPC so that you can launch the elastic load balancers like ALB or NLB, and then you can distribute traffic to your pods.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 115:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And we'll cover this in detail in the following lectures.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 116:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: And also for the outbound access to the pod, you can do that through the NAT gateways as usual.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 117:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So for that, also, you could have your public subnets.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 118:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now if you're allocating IPv6 addresses, you know that IPv6 addresses are public, right?
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 119:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So you don't need NAT gateway, but then if you want to allow only outbound access then you need egress only internet gateway.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 120:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now, what is egress only internet gateway?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 121:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: It only allows traffic from IPv6 addresses to go out, right?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 122:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: But from outside, traffic cannot reach to those IP addresses.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 123:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So this is particularly used for IPv6 addresses.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 124:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: But if it's IPv4 address, as you know, you should have the NAT gateways.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 125:
- Concepts: Address Space and Scale
- Services: (none explicit)
- Key Insights: And then NAT gateway should be in public subnet, so traffic goes from your pods to the NAT gateways to the internet gateway, to out to the internet.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cluster-network model signal.

Line 126:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Further, you can also enable the VPC endpoints through private link to access other AWS services.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 127:
- Concepts: Cluster and Pod Network Model, Kubernetes Networking Abstraction
- Services: Amazon EKS
- Key Insights: For example, pod wants to send some logs to the S3 service or pod needs to access the EKS service, so all these endpoints are available because we are still operating as a normal VPC, right?
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 128:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So all those VPC-related services are available in the customer VPC as well.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 129:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Further, you can connect your VPCs to other networking component.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 130:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: For example, you could connect it to on-premise data center or a VPN, or a Direct Connect.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 131:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: You can peer multiple VPCs.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 132:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: You can peer your VPC to the transit gateway.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 133:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So all this is possible.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 134:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: That means you leverage all your VPC capabilities while you deploy your Kubernetes data plane into your own VPC.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 135:
- Concepts: Cluster and Pod Network Model
- Services: Amazon VPC CNI
- Key Insights: So we'll stop here for this lecture and now we'll slowly get into the pod-level networking and that's the most important part of this section because you will have a lot of questions related to the pod networking.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cluster-network model signal.

Line 136:
- Concepts: EKS Networking Operational Context
- Services: Amazon EKS
- Key Insights: How EKS assign the IP addresses to the pods?
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 137:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: How to expose pod services externally?
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 138:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: All that will follow, but I hope the basic building block is clear how the Kubernetes control plane and data plane networking looks like.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 139:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So thanks for watching and stay tuned.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/238_EKS Pod Networking - Part 1.txt

Line 1:
- Concepts: Cluster and Pod Network Model
- Services: Amazon EKS, Amazon VPC CNI
- Key Insights: Hello and welcome to this lecture, Amazon EKS Pod Networking.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 2:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now this is one of the important lecture of this section because we are going to learn how the IP addresses are assigned to pods, how pods communicate with each other.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cluster-network model signal.

Line 3:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And in the following lectures, we'll see more details around how pods communicate with external network, how pods are exposed as services, and all this could be a part of your exam questions.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 4:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: Now, one thing to just reiterate that we are not really getting too deep into how Kubernetes work and how deployment works in Kubernetes because in itself, it could be a long course.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 5:
- Concepts: EKS Networking Operational Context
- Services: Amazon EKS
- Key Insights: Idea is here to just cover the networking part, and that's to focusing on the EKS.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 6:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So please, pardon, if you think that this course, or this lectures doesn't cover enough depth of Kubernetes, however I still try to keep it little simple even if you don't have much of Kubernetes knowledge.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 7:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: You should be able to understand what's happening here.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 8:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: And for those who don't know Kubernetes, I have included a lecture to introduce you to the Kubernetes, so I hope that's fine with you.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 9:
- Concepts: Cluster and Pod Network Model
- Services: Amazon EKS, Amazon VPC CNI
- Key Insights: Okay, so let's understand how EKS Pod networking works.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 10:
- Concepts: Cluster and Pod Network Model, Kubernetes Networking Abstraction
- Services: Amazon EKS, Amazon VPC CNI
- Key Insights: So before we get into the specifics of EKS, how it supports the Pod networking, it is important to understand some of the principles of Kubernetes networking, and that is defined as a part of Kubernetes network model.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cluster-network model signal.

Line 11:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now this has been defined by CNCF as you know, Cloud Native Computing Foundation.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 12:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So CNCF defines some networking specification, and then this is up to the network provider how they implement this specifications.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 13:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So some of the specifications which CNCF defines are every port gets its own IP address.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 14:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: That means port should be treated more like a first class citizen of the network, not like containers, like if multiple containers are running on the same host, typically, they have a different OL network inside, but pod should get their own IP address.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cluster-network model signal.

Line 15:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: Second, containers in the same pod share the same network IP address space.
- Hidden/Implicit Meaning: Cluster-network model signal; Isolation and scale-boundary signal.

Line 16:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: That means they do not need to have separate IP addresses, but they can talk over the local host network.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 17:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Third, all pods can communicate with all other pods without using the network address translation.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 18:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And somewhere links to the first point that if there are two pods, they're kind of first class citizen of the network, and they can directly communicate with each other without having any NAT devices, or any proxy devices in between.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 19:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: Similarly, all nodes can communicate with all pods without NAT, so there shouldn't be NAT when nodes wants to communicate with the pod.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cluster-network model signal.

Line 20:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: And finally, the IP that a pod sees itself as is the same IP that others sees it as.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 21:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: Little confusing statement, but essentially what it means that there is no destination not happening, that means whatever IP pods is, others who wants to connect to the pod also sees the same IP address.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 22:
- Concepts: EKS Networking Operational Context
- Services: Amazon VPC CNI
- Key Insights: So these are the specification defined by CNCF, and all these specifications are then implemented as of CNI.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 23:
- Concepts: EKS Networking Operational Context
- Services: Amazon VPC CNI
- Key Insights: Now, CNI is Container Network Interface.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 24:
- Concepts: EKS Networking Operational Context
- Services: Amazon VPC CNI
- Key Insights: So every cloud provider, for example AWS or Google or Azure, will define their own CNI plugin, so AWS also did the same thing.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 25:
- Concepts: EKS Networking Operational Context
- Services: Amazon VPC CNI
- Key Insights: There is CNI plugin implemented for AWS VPC to support this kind of networking.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 26:
- Concepts: EKS Networking Operational Context
- Services: Amazon VPC CNI
- Key Insights: And that plugin is called VPC CNI, of course, right?
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 27:
- Concepts: EKS Networking Operational Context
- Services: Amazon VPC CNI
- Key Insights: So let's get into the VPC CNI.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 28:
- Concepts: EKS Networking Operational Context
- Services: Amazon VPC CNI
- Key Insights: So Amazon VPC CNI plugin does exactly what the specification says.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 29:
- Concepts: EKS Networking Operational Context
- Services: Amazon EKS
- Key Insights: Now if you look at this VPC, you have the subnets, and then you could assign IPv4 or IPv6 that we already learned in EKS architecture.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 30:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Then you have the worker nodes, and these nodes have the pods, right?
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 31:
- Concepts: EKS Networking Operational Context
- Services: Amazon VPC CNI
- Key Insights: So how does VPC CNI assigns IP addresses to the individual pods?
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 32:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now that's interesting because so far, you might have just assigned one IP address to the EC2 instance, but now one instance hosts multiple pods.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 33:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Then how could you assign multiple IP addresses to those pods?
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 34:
- Concepts: EKS Networking Operational Context
- Services: Amazon VPC CNI
- Key Insights: So what Amazon VPC CNI does for this, it creates and attaches ENI to the worker nodes.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 35:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now you know that when we say IP address, ultimately it comes from the elastic network interfaces which AWS provides and you can attach multiple ENI to the same EC2 machine, right?
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 36:
- Concepts: EKS Networking Operational Context
- Services: Amazon VPC CNI
- Key Insights: And then one CNI is not just one IP address, there is something called a primary IP address, and then there are multiple secondary IP addresses.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 37:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So ENI consists of multiple IP addresses altogether.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 38:
- Concepts: EKS Networking Operational Context
- Services: Amazon VPC CNI
- Key Insights: And in terms of VPC CNI, it assigns the secondary IP addresses to the pods.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 39:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So in this diagram, you see there is a primary ENI, which comes with the primary IP address, and then there are additional secondary IP addresses.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 40:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now, this really depends on your instance type, so different instance type would support different number of ENIs, maybe some instances support just one ENI, in that case, it'll be just one primary ENI, but some instances might support more than one ENI, maybe three, maybe 10, so there is already documented instance types, and supported ENI, which you can check for that.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 41:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: But here you can see that there is a primary ENI, and then there is primary IP address attached to that ENI.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 42:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And there are multiple secondary IP addresses.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 43:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now this is also depending on instance type how many secondary IPs one ENI will support, and we'll look into that shortly.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 44:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: But in this diagram, you can see this instance type has two ENIs, one is called primary ENI, another is called secondary ENI.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 45:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And then ENI has primary IP address, and ENI has secondary IP addresses.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 46:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So altogether, you can see, there are three secondary IP addresses for ENI one, and three secondary IPs for ENI two.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 47:
- Concepts: EKS Networking Operational Context
- Services: Amazon VPC CNI
- Key Insights: Now what VPC CNI does, it assigns this secondary IPs to the pods.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 48:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: It doesn't assign the primary IP, it only assigns the secondary IPs.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 49:
- Concepts: EKS Networking Operational Context
- Services: Amazon VPC CNI
- Key Insights: So thing to remember that VPC CNI attaches secondary IPs.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 50:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And here we are all talking about the IPv4 addresses.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 51:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: So likewise, all these IPs which you see here are now assigned to the pods, and that's where Pod gets the IP addresses from your VPC address space.
- Hidden/Implicit Meaning: Cluster-network model signal; Isolation and scale-boundary signal.

Line 52:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So they become kind of first class citizen of your VPC.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 53:
- Concepts: Kubernetes Networking Abstraction
- Services: Amazon EKS, Amazon VPC CNI
- Key Insights: Now, Amazon EKS officially supports the Amazon VPC CNI plugin for Kubernetes, that's what we are seeing here.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 54:
- Concepts: EKS Networking Operational Context
- Services: Amazon VPC CNI
- Key Insights: But there are also a lot of third party implementation of the CNI because CNI is a specification, right?
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 55:
- Concepts: EKS Networking Operational Context
- Services: Amazon EKS, Amazon VPC CNI
- Key Insights: So anybody can implement, you can also write CNI, and can plug it into, you know, EKS for example.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 56:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So likewise there are different companies who have their own networking plug-ins.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 57:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: I have worked on Calico, which is very famous.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 58:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: It allows to have the network policies, and it has lot many controls when it comes to the security.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 59:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: But then you can choose which CNA plugin works best for you.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 60:
- Concepts: EKS Networking Operational Context
- Services: Amazon EKS, Amazon VPC CNI
- Key Insights: Otherwise, AWS VPC CNI is officially supported by EKS.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 61:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So that's in short is the VPC CNA.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 62:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now, after this you might have got question.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 63:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: If that is the case where you can only attach the secondary IPs, then how many parts I can host on a node?
- Hidden/Implicit Meaning: Constraint or limitation signal; Cluster-network model signal.

Line 64:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So, let's look at that now.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 65:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: So maximum pods per node and here also, we are talking about IPv4 to start with.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 66:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now, as you might have guessed, it really depends on how many ENIs you can attach to the particular instance, and then how many secondary IPs that ENI has, right?
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 67:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So for example, you can find this table in AWS documentation.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 68:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: If it's m5.large instance, it supports maximum three ENIs, and then it supports 10 IPv4 addresses per networking interface, and 10 IPv6 addresses per interface.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 69:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And if you want to calculate now, how many parts you can attach, then formula will be something like this.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 70:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Total number of network interfaces, so there are three into maximum IPs per network interface minus one, minus one because primary IP is not assigned to the pods plus two.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 71:
- Concepts: Cluster and Pod Network Model, Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: Now this plus two is for because Kubernetes would have two pods, one for host networking, and one for kube-proxy on every node.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 72:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So these are the additional pods that anyways Kubernetes runs.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 73:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: So max pod would be this formula.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 74:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now if you take an example of m5.large, for example, then m5.large has three network interfaces, 10 IPv4 addresses per network interface.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 75:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So it becomes 29 pods.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 76:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So if you have m5.large instance, you can host 29 total pods.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 77:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now, someone can say that 29 pods is less, I'm not able to use full capacity of my instance, and I want to increase this number.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 78:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: And this is typically called you know, pod density.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 79:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: How much is a pod density for the node?
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 80:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And this has been the problem with maybe a lot of customers which AWS served.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 81:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And then AWS came up with some advanced networking where one host or one instance could host additional pods.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 82:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So let's look at that now, how it is possible.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 83:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So increase available IP addresses for the pods.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 84:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: If you have more IP addresses, of course you can host more pods, right?
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 85:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now for that, AWS launched a new feature, but it is only supported on Nitro-based instances.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 86:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now, that feature is called prefix delegation.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 87:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now what is prefix delegation?
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 88:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Instead of individual IP addresses, you could assign the CIDR block to your ENIs.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 89:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Instead of single IP addresses, you can give a full CIDR block with /28 for IPv4, and /80 block for IPv6.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 90:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now you know that /28 provides 16 IP addresses.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 91:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: That means instead of one secondary IP, you get 16 secondary IPs.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 92:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And if you have 10 secondary IPs supported, then you would have 160 secondary IPs.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 93:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So that means your range is now increased by almost 16 times for IPv4, and then in trillions for IPv6 addresses, right?
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 94:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So this is a special feature supported on Nitro instances.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 95:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And here you can see that you can support many, many IP addresses, and that means you can launch many many pods on the same EC2 instance type.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 96:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: If you take just the same example of m5.large, then for IPv4 addresses, you could support 434 pods instead of 29 pods.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 97:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Okay, but is that the way typically you would do that?
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 98:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: I mean would you really host 434 pods on the single node?
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 99:
- Concepts: Cluster and Pod Network Model, Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: Though technically you can launch those many pods, but then Kubernetes itself has some kind of limitation, and recommendation how many maximum pods you should typically have on any node.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal; Cluster-network model signal.

Line 100:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: And that limited based on, you know, your processes which are running on those nodes kube-proxy, kubelite, EPS server traffic, and the way Kubernetes manages the state of the nodes, and schedule the pods on the nodes, there is a recommended number, which is 110.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cluster-network model signal.

Line 101:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So it's recommended that you shouldn't typically exceed this limit of number of pods per instance type.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal; Cluster-network model signal.

Line 102:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Okay, we talked about IPv4 addresses.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 103:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now, let's talk about IPv6 addresses.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 104:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: As you know, IPv6 addresses are public and globally unique.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 105:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And there are a lot of IPv6 addresses.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 106:
- Concepts: Address Space and Scale
- Services: (none explicit)
- Key Insights: You start with /56 range for your VPC, and then you can create subnet with /64 which gives you, so two to the 64 IP addresses for your subnet, which is again in trillions, right?
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 107:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So you can assign IPv6 addresses to your VPC and to your subnets.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 108:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: But then there are certain limitations which you need to know.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 109:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: First of all, IPv6 addresses are supported for Nitro based instances.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 110:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So Nitro is Amazon design hypervisor, which is much more efficient than the open source, or commercial hypervisor which are there in the market.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 111:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And most of the new instance types that AWS is launching is based on the Nitro hypervisor.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 112:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So IPv6 IP addresses are supported for Nitro-based instances as well as for AWS Fargate.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 113:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now, we learned that you could launch your pods on Fargate, and in that case you can assign IPv6 addresses to those pods.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 114:
- Concepts: Kubernetes Networking Abstraction
- Services: Amazon EKS
- Key Insights: So by default, Kubernetes assigns IPv4 addresses to the pods, but as you know, you could also create your cluster with IPv6 addresses, but EKS doesn't support dual-stack.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 115:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: That means pod cannot have both IPv4 and IPv6 address at the same time, so keep that in mind.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cluster-network model signal.

Line 116:
- Concepts: EKS Networking Operational Context
- Services: Amazon VPC CNI
- Key Insights: Now for EC2 nodes, you must configure the Amazon VPC CNI add-on with IPv6 prefix delegation, and IPv6, that means if you want to use IPv6 addresses then you should must use the prefix delegation what we just learned in the last slide.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cluster-network model signal.

Line 117:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: That means you need to define the /80 prefix for IPv6 addresses, and then you can assign those addresses to the pods.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 118:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Further, you must also assign IPv4 address to your VPC.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 119:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now, this is confusing one way we are saying that you can't use both the IP addresses at the same time for the pods, that's true.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cluster-network model signal.

Line 120:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: But in order for this IPv6 addresses to work, you need to assign IPv4 range to your VPC because the way VPC has built, it needs IPv4 addresses for functioning.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 121:
- Concepts: Address Space and Scale
- Services: (none explicit)
- Key Insights: And then subnet must have auto-assign and IPv6 address enabled so that when pods are launched in that subnet, and the nodes are launched in that subnet, they automatically get the IPv6 addresses.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cluster-network model signal.

Line 122:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And finally, IPv6 addresses are not supported for Windows pods and services as of now.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 123:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: Now, the important part how Pod communicates with other pods.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cluster-network model signal.

Line 124:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: Now, if all the pods are part of the same VPC, you know that pod have their own IP addresses, so they can communicate directly with each other.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 125:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: And if you remember, this was kind of defined in a specification as well that pod should be able to communicate with each other without any NAT, right?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cluster-network model signal.

Line 126:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: So if on the left side there is a pod wants to communicate on another pod, on another worker node, it just talks directly over normal VPC communication.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 127:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: So pods within the same VPC can communicate directly using the Pod IP address.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 128:
- Concepts: Cluster and Pod Network Model
- Services: Amazon VPC CNI
- Key Insights: So, we just understood the basics of the Pod networking.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 129:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now we will get into more specifics about how pods can communicate to the external world.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 130:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: That means to the internet or to the other VPCs connected through transit gateway, or to on-premise network over VPN or EDX.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 131:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And it works little differently.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 132:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So, it is important that you understand all those things.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 133:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So, we'll cover that shortly in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 134:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So, thanks for watching and stay tuned.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/239_EKS Pod Networking - Part 2.txt

Line 1:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Hello and welcome to this lecture.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 2:
- Concepts: EKS Networking Operational Context
- Services: Amazon VPC CNI
- Key Insights: Now, in the earlier lecture, we saw how CNI assigns private IP addresses to the pods and then how pods can communicate with each other.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 3:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: Now this is a next level where we'll see how pod communicates with the external network.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 4:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now this is a little complex than what we have seen already.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 5:
- Concepts: Cluster and Pod Network Model
- Services: Amazon VPC CNI
- Key Insights: And I hope at the end of the lecture, you would be able to understand end-to-end flow of pod networking, so let's get started.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 6:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: Quick recap, every pod gets private IP address from the VPC address space and then pods can communicate directly without NAT with each other if they're part of the same VPC.
- Hidden/Implicit Meaning: Cluster-network model signal; Isolation and scale-boundary signal.

Line 7:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So this works well as long as pods needs to communicate within VPC.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 8:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: But more often or not, pod would want to communicate externally maybe to the internet, maybe to other VPCs, where there are additional application deployed.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 9:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Because if you talk about large ecosystem, there will be multiple systems and then application needs to communicate with each other.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 10:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now, in that case, things are a little different and let's see how that kind of communication works.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 11:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now let's try to understand this communication.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 12:
- Concepts: Address Space and Scale, Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: So there is VPC, there is a public subnet in which you have worker node and then you have ENIs assigned.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 13:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And then ENI have secondary IPs which are assigned to the pods.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 14:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now on the right side, you have external network.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 15:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: It could be internet and there could be other VPCs.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 16:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: You could connect to transit gateway or on-premises network over to VPN or RDS, but this is external to the VPC.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 17:
- Concepts: Cluster and Pod Network Model
- Services: Amazon VPC CNI
- Key Insights: Now, the way CNI plugin has been implemented, you need to understand that when a pod communicates to any IPv4 address that isn't within the CIDR block of the VPC, then Amazon VPC CNI plugin translates the pod's IPv4 address to the primary private IPv4 address of the primary ENI which is assigned to that node.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 18:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now, let's try to break this.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 19:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: What it means is that if this pod here where the IP address is shown in red wants to communicate outside of the VPC CIDR, then the traffic lands to the primary ENI first and then there is a NAT which happens at this point because traffic is going out of the VPC now.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 20:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So the source packet, source IP address is replaced with the primary ENI's primary IP address, which is 10.0.0.15 in that case.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 21:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So if you look at the flow, this will make a request maybe to the internet, but the traffic will first go to the primary ENI and then the source IP address on the packet will be replaced with the primary IP address of this ENI.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 22:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And then this packet will be sent out depending on which route you take, whether it's going to the transit gateway or to other VPC through VPC peering likewise.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 23:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: So this is what happens by default when pod tries to communicate outside of the VPC network.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 24:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now whatever we are talking, it applies to the IPv4 addresses only because IPv6 addresses are not network translated because they are public by default, so they don't need NATing to be enabled.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 25:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So this is for IPv4 address.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 26:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: So that's the basic fundamentals of what happens when the pod tries to reach outside of the VPC.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 27:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: And now based on this knowledge, let's try to understand what happens when pod reaches the internet or to the other networks outside of the VPC.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 28:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Okay, so the same diagram, but then I have shown here multiple outside networks like internet, transit gateway, VPC peering, or RDS connection, for example, connected to the VPC, and there is also internet gateway because if traffic has to go out to the internet, there should be internet gateway.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 29:
- Concepts: Address Space and Scale
- Services: (none explicit)
- Key Insights: Now in this case, nodes are in public subnet so that nodes can directly communicate with the internet.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 30:
- Concepts: Cluster and Pod Network Model
- Services: Amazon VPC CNI
- Key Insights: Now, with CNI, there is some setting which is called source NAT enabled, which means whatever we talked in the last slide, when pods goes out of the VPC network, the pod's source IP is replaced with the primary IP of the primary ENI.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 31:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now, this is a default setting and this is called source NAT enabled.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 32:
- Concepts: Cluster and Pod Network Model, Security Boundary Placement
- Services: (none explicit)
- Key Insights: That means NATing is happening at the node level here.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 33:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: And if you want to set that with Kubernetes settings, then it is called EXTERNALSNAT is disabled or EXTERNALSNAT is false.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 34:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: So this is again a little confusing, but understand that source NAT enabled means NAT is happening at the node ENI level.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 35:
- Concepts: Address Space and Scale, Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: So if that is the case and node is in a public subnet and this pod needs to communicate with the internet, it needs to make an outbound request to the internet, then, of course, when packet originates, the source IP is the pod IP address, it goes to the ENI, we just saw that in a previous slide.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 36:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: And at this point, the source IP will be replaced with the node ENI primary IP address that is 10.0.0.15 and now the traffic goes to internet and internet gateway also does the NATing.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 37:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: It replaces the source IP with the public IP of this ENI, which is primary ENI, so that's node public IP and then traffic goes to the internet.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 38:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: So this is how the end-to-end communication happens when pod reaches out to the internet.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 39:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So in this case, source NAT is enabled, which means EXTERNALSNAT is disabled.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 40:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: EXTERNALSNAT means somebody else is doing the NAT, not the node, and we'll see those use cases as well.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 41:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: Now if you continue with the same mechanism, then pod can also reach to the external network and this transit gateway here or VPC peering will always see the primary IP address of the primary ENI.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cluster-network model signal.

Line 42:
- Concepts: Cluster and Pod Network Model, Security Boundary Placement
- Services: (none explicit)
- Key Insights: They won't see the IP address of this pod because it is getting NATed at the node level.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 43:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: Now, this is good for outbound traffic as you can see here and same happens for any other pods as well, whether it's this pod or this pod, always primary ENI is being used.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cluster-network model signal.

Line 44:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now this works well, but do you see any problem here?
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 45:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: Now, because all external networks are now seeing the node IP address and not the pod IP address directly, they can't directly reach to the pod because this is hidden now, this IP address.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cluster-network model signal.

Line 46:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: That means if from peered VPC you try to communicate with this pod, there is no network which will allow you to directly reach to the pod.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 47:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Because it's an outboard request, it's allowed, but inbound requests are not allowed.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 48:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: They can't really reach because these IPs are not exposed outside because you are doing the NAT.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 49:
- Concepts: Address Space and Scale
- Services: (none explicit)
- Key Insights: Same logic, when you have the NAT gateways, an instance in a private subnet needs to communicate with the internet, then the NAT replaces the source IP address.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 50:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: The same mechanism you can apply here, that means outside network cannot reach to these pods and that's a problem, right?
- Hidden/Implicit Meaning: Constraint or limitation signal; Cluster-network model signal.

Line 51:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: You don't want to do that.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 52:
- Concepts: Address Space and Scale, Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: Another problem is your worker node is in public subnet.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 53:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Typically you don't want that.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 54:
- Concepts: Address Space and Scale, Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: You want your worker nodes to be in private subnet and then still your pod should be able to reach to the internet.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cluster-network model signal.

Line 55:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Of course, you might have guessed what could be the solution.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 56:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So a solution would be, of course, to use NAT gateways.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 57:
- Concepts: Cluster and Pod Network Model, Security Boundary Placement
- Services: (none explicit)
- Key Insights: But in this case, you don't want this NATing to happen at the node level.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 58:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: NAT gateway should see your pod's IP address, then you can reach outside through the NAT gateway.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cluster-network model signal.

Line 59:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And also you want to make sure that the IP addresses of the pods are visible outside.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 60:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And in that case, you would have to disable the source NAT.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 61:
- Concepts: Cluster and Pod Network Model, Security Boundary Placement
- Services: (none explicit)
- Key Insights: That means you are not doing the NAT at the node level, but you are using some external NAT for this kind of communication.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 62:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And that's where NAT gateway comes into the picture.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 63:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So first setting you would have to do is to disable the source NAT.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 64:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: And if you want to do it at Kubernetes level, you would have to fire this command which says EXTERNALNAT is true now or EXTERNALSNAT is true now, so these are kind of opposite words, but try to understand the difference.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 65:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: So what we are saying is now node is not doing any NAT, but then some external entity will do the NAT.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 66:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: Now in this case, with the same example, we have source IP as a pod.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 67:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: No NATing would happen at ENI level.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 68:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Traffic will directly go to the NAT gateway, of course, through the routing table.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 69:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: NAT will replace the source IP with the NAT IP address, then it will go to the internet gateway.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 70:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Internet gateway will replace the source IP with the NAT gateway's public IP and then traffic will go to the internet.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 71:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So this is about the outbound traffic.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 72:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: It works that way.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 73:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: Similarly, if you want to go to the peer VPC, the traffic directly from this pod will go to the transit gateway or peered VPC or on-premises.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 74:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: That means on-premise network can also see the pod IP address directly.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 75:
- Concepts: Cluster and Pod Network Model, Security Boundary Placement
- Services: (none explicit)
- Key Insights: There is no NATing happening here because we have disabled the source NAT at the node level and which also means if any of these networks wants to communicate with the pod, they can directly communicate.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 76:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: So this is the next slide where the same setting source NAT is disabled, and if external network wants to communicate, they can do it and they can directly reach to the pod's private IP address because we have disabled the source NAT here.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 77:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: I know this could be confusing or maybe a little complex, but if you just follow what we talked in this lecture, you should be able to understand what is source NAT and what is an effect of source NAT while using the NAT gateways or reaching out to the external networks.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 78:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So I hope that is clear to you.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 79:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now, with that, I just want to touch upon one more feature, which is not widely known, but there is something called multi-home pods.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 80:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: Now, multi-home pod means you could have multiple ENIs for a single pod.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 81:
- Concepts: Address Space and Scale, Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: So far we are talking about multiple ENIs assigned to the node, but then every pod gets just one IP address, that means pod can be a part of only one subnet.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cluster-network model signal.

Line 82:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: But like EC2 could have multiple ENIs for multi-home kind of architecture, similarly pods could also have multiple ENIs and this is enabled through something called Multus ENI.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 83:
- Concepts: Cluster and Pod Network Model
- Services: Amazon EKS, Amazon VPC CNI
- Key Insights: And this is a link where you can read more about this, but essentially if you see on the left side, this is a pod without Multus where there is AWS EKS, then there is a VPC CNI, and every pod gets one network interface IP address.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 84:
- Concepts: EKS Networking Operational Context
- Services: Amazon VPC CNI
- Key Insights: And on the right side, this is the Multus implementation, Multus CNI implementation.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 85:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: Multus can provide you three interfaces to the same pod.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 86:
- Concepts: Cluster and Pod Network Model
- Services: Amazon VPC CNI
- Key Insights: Now the left one is same as your existing pod networking IPv4 address from the VPC.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 87:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And additionally, you could have other interfaces attached to your pods.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 88:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So that's just one thing I wanted to mention.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 89:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: I'm not really sure if it is covered as a part of exam or not, but still good to know that pod could be multi-home.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 90:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So it enables attaching multiple interfaces to the pods and you can create multi-home pods with multiple interfaces.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 91:
- Concepts: EKS Networking Operational Context
- Services: Amazon VPC CNI
- Key Insights: And then AWS supports Multus with VPC CNI by default.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 92:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Okay, with that, we'll stop here.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 93:
- Concepts: Cluster and Pod Network Model, Kubernetes Networking Abstraction
- Services: Amazon VPC CNI
- Key Insights: I know this could be already overwhelming to understand the pod networking, but very important for your exam and in general if you work on Kubernetes networking, I think this will help you a lot.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cluster-network model signal.

Line 94:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So thanks for watching and stay tuned.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/240_Security Group in EKS - Node and Pod level.txt

Line 1:
- Concepts: EKS Networking Operational Context
- Services: Amazon EKS
- Key Insights: Hello and welcome to this lecture, Security Groups in EKS.
- Hidden/Implicit Meaning: Cluster-network model signal; Isolation and scale-boundary signal.

Line 2:
- Concepts: Security Boundary Placement
- Services: Amazon EKS, Security Group
- Key Insights: Now this is also one of the important topics with respect to the exam because you should understand how the security group works when it comes to the EKS nodes or pods, right?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cluster-network model signal; Isolation and scale-boundary signal.

Line 3:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: And it essentially works a little differently because you know that on one node you have multiple pods, but, so far what you might have learned that the security groups are attached to the Elastic Network Interfaces.
- Hidden/Implicit Meaning: Cluster-network model signal; Isolation and scale-boundary signal.

Line 4:
- Concepts: Security Boundary Placement
- Services: Security Group
- Key Insights: And now we are assigning the multiple IP addresses from the same ENIs to multiple pods, which essentially means that all those pods should be following the rules from the security group which is attached to the corresponding ENIs, right?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cluster-network model signal; Isolation and scale-boundary signal.

Line 5:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now, with respect to that, let's understand how it works, what's the problem, and then how could you solve some of those problems.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 6:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 7:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So this is the diagram that now you should be familiar with.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 8:
- Concepts: EKS Networking Operational Context
- Services: Amazon EKS
- Key Insights: You have the EKS Control Plane in the AWS Managed VPC, and then EKS Data Plane in the Customer Managed VPC.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 9:
- Concepts: EKS Networking Operational Context
- Services: Amazon EKS
- Key Insights: For management of the network, EKS provisions, EKS owned ENI in the customer VPC.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 10:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So that Control Plane can communicate with the Data Plane.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 11:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 12:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 13:
- Concepts: Kubernetes Networking Abstraction
- Services: Amazon EKS
- Key Insights: Now, when it comes to the EKS cluster, when you create the EKS cluster, it also creates the security groups.
- Hidden/Implicit Meaning: Cluster-network model signal; Isolation and scale-boundary signal.

Line 14:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And these security groups have some default rules.
- Hidden/Implicit Meaning: Isolation and scale-boundary signal.

Line 15:
- Concepts: Security Boundary Placement
- Services: Security Group
- Key Insights: You know that security group contains inbound and outbound rules.
- Hidden/Implicit Meaning: Isolation and scale-boundary signal.

Line 16:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So by default, all the inbound rules are allowed for the self.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 17:
- Concepts: Security Boundary Placement
- Services: Security Group
- Key Insights: That means, whichever entity would have that security group attached, all the traffic between those will be allowed.
- Hidden/Implicit Meaning: Isolation and scale-boundary signal.

Line 18:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And as an outbound rules, the destination for all IPv4 addresses and IPv6 addresses is allowed.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 19:
- Concepts: Cluster and Pod Network Model, Security Boundary Placement
- Services: Amazon EKS, Security Group
- Key Insights: Now, this is a default security group which EKS creates, and what it does it also associates the security group with, of course, the EKS owned ENI, and also the managed nodes in the managed node groups.
- Hidden/Implicit Meaning: Cluster-network model signal; Isolation and scale-boundary signal.

Line 20:
- Concepts: Security Boundary Placement
- Services: Security Group
- Key Insights: So it attaches this default security group to these ENIs.
- Hidden/Implicit Meaning: Isolation and scale-boundary signal.

Line 21:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now this works well, however, for security reasons, you might want to restrict the outbound traffic, right?
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 22:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: You don't want to allow outbound traffic from these ENIs to any IPv4 or IPv6 addresses.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 23:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So at bare minimum, what you can do is, you can restrict the outbound access to port 443.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 24:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: Now this is required to hit the API server of the Kubernetes, and that's where this 443 port is required.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 25:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: 10250 is required for the kubelet APIs.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 26:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So you know that the Control Plane also communicates with the kubelets on the worker nodes, so it listens at this port.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 27:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So also outbound traffic for this port is required and 53s for DNS queries.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 28:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So bare minimum, these outbound ports are required.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 29:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: And if your node and port needs to communicate to, for example, to the internet directly, or you know, download some packages, in that case, you might need port 80 as an outbound.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 30:
- Concepts: Address Space and Scale, Kubernetes Networking Abstraction
- Services: Amazon EKS
- Key Insights: So all those rules apply if you want to extend the connectivity beyond, you know, EKS cluster.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 31:
- Concepts: Kubernetes Networking Abstraction, Security Boundary Placement
- Services: Amazon EKS, Security Group
- Key Insights: So, this is a default behavior when it comes to the security group of EKS cluster.
- Hidden/Implicit Meaning: Cluster-network model signal; Isolation and scale-boundary signal.

Line 32:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 33:
- Concepts: Kubernetes Networking Abstraction, Security Boundary Placement
- Services: Amazon EKS, Security Group
- Key Insights: And optionally, what you can also do is you could have your own security group, and when creating the EKS cluster, you may provide that security group as one of the input, and then EKS will also attach that security group to the EKS owned ENIs.
- Hidden/Implicit Meaning: Cluster-network model signal; Isolation and scale-boundary signal.

Line 34:
- Concepts: Cluster and Pod Network Model, Security Boundary Placement
- Services: Amazon EKS, Security Group
- Key Insights: But EKS doesn't attach it to the Managed Node group ENIs if you provide your own security group.
- Hidden/Implicit Meaning: Cluster-network model signal; Isolation and scale-boundary signal.

Line 35:
- Concepts: EKS Networking Operational Context
- Services: Amazon EKS
- Key Insights: One thing to also understand that these inbound rules are very much required for EKS to function.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cluster-network model signal.

Line 36:
- Concepts: Security Boundary Placement
- Services: Amazon EKS, Security Group
- Key Insights: And by chance, if you remove all these inbound rules from the security group, then whenever EKS updates itself, it will re-add this inbound rule into the EKS security group because it needs that to function.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cluster-network model signal; Isolation and scale-boundary signal.

Line 37:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Similarly for outbound rules, this is under your control.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 38:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And as we said, at bare minimum, you require few outbound rules here, which are listed here.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 39:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: And additional outbound rules like node to node communication, talking to the S3 or VPS interfaces, or maybe for pulling the {indistinct} images from outside.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 40:
- Concepts: EKS Networking Operational Context
- Services: Amazon EKS
- Key Insights: But at bare minimum, these rules are required, and you should always test, right, whether your ports and EKS is working fine by removing the outbound rules.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal; Cluster-network model signal.

Line 41:
- Concepts: EKS Networking Operational Context
- Services: Amazon EKS
- Key Insights: And those are not automatically added because EKS doesn't understand what rules you need into your security groups.
- Hidden/Implicit Meaning: Cluster-network model signal; Isolation and scale-boundary signal.

Line 42:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So these are few things that you need to keep in mind.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 43:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Okay, with that, let's move to the next part of it.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 44:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: What is the problem here, right?
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 45:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: So, you have Worker Node, you have Primary ENIs and Secondary ENIs, you attach it to the node, and then, as you know, the secondary IPs from the ENIs are assigned to the pods.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 46:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: This works well, right?
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 47:
- Concepts: Security Boundary Placement
- Services: Security Group
- Key Insights: Now, when it comes to the SG, these are attached to the ENIs, not to the individual pods, because security group works at the ENI level.
- Hidden/Implicit Meaning: Cluster-network model signal; Isolation and scale-boundary signal.

Line 48:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: You know that already.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 49:
- Concepts: Security Boundary Placement
- Services: Security Group
- Key Insights: Due to that, what happens, there will be two security groups, either same security group you can attach to the two ENIs, or maybe you want different rules in this security groups.
- Hidden/Implicit Meaning: Isolation and scale-boundary signal.

Line 50:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So you would have two different security groups here.
- Hidden/Implicit Meaning: Isolation and scale-boundary signal.

Line 51:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now do you see some problem here?
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 52:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: Of course, because now all these ports might have different purpose, some may be a web server, some may be database, some may be application server, and every service would have different kind of firewall requirements.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 53:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: But, if you are using this kind of setup, which means that all these ports will have the same firewall rules, right?
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 54:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And that's a drawback.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 55:
- Concepts: Cluster and Pod Network Model, Security Boundary Placement
- Services: Security Group
- Key Insights: Ideally, what you would want is every port gets their own security group or their own firewall so that you can have the granular control over inbound and outbound traffic from that Pod.
- Hidden/Implicit Meaning: Cluster-network model signal; Isolation and scale-boundary signal.

Line 56:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: But with this architecture, it is not possible.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 57:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So what's the solution there?
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 58:
- Concepts: Kubernetes Networking Abstraction
- Services: Amazon VPC CNI
- Key Insights: Now, Kubernetes is an extensible framework as you know, and there are a lot of third party providers who have implemented their own CNI plugins, and they're building the network policies on top of that plugin.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 59:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: One such policy engine is Calico network from Tigera.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 60:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: We had briefly touched about this in earlier lecture, as well.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 61:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So Calico provides you the network policies with which you can control basically the firewall at the port level, right?
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 62:
- Concepts: Cluster and Pod Network Model, Security Boundary Placement
- Services: (none explicit)
- Key Insights: Not at the node level or the ENI level.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 63:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And it does that using the IP table rules.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 64:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So this is what you can do if you're using external policy engine like Calico.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 65:
- Concepts: EKS Networking Operational Context
- Services: Amazon EKS
- Key Insights: But if you want to do this natively with the EKS, then EKS provides a functionality called Trunk and Branch ENIs.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 66:
- Concepts: Security Boundary Placement
- Services: Security Group
- Key Insights: Now, let's try to understand in the next slide what is Trunk and Branch ENIs, but essentially, idea is to give or provide the security group to individual port, rather than sharing the security group across multiple ports, right?
- Hidden/Implicit Meaning: Isolation and scale-boundary signal.

Line 67:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So what is Trunk and Branch ENI?
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 68:
- Concepts: EKS Networking Operational Context
- Services: Amazon EKS
- Key Insights: Basically, Amazon EKS and ECS supports Trunk and Branch ENI feature.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 69:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: We are not really getting too deep into what is trunk ENI, branch ENI.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 70:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: This is a networking concept very similar to how you have one network and subdivide that network into secondary networks.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 71:
- Concepts: EKS Networking Operational Context
- Services: Amazon EKS
- Key Insights: And how it is done for this trunk ENIs and branch ENIs, you have to have the add-on added to your EKS, and that add-on is Amazon-vpc-resource-controller-k8s, and it manages this trunk and branch network interfaces.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 72:
- Concepts: Cluster and Pod Network Model, Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So what happens when you enable the Pod ENI feature to true, and there is a command to do that in Kubernetes, this VPC resource controller will create a special network interface called trunk network interface, and then it will attaches it to the node.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 73:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: So very similar to the standard interfaces that you create and attach to the node, but this is called trunk ENI.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 74:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And the benefit is, once you create the trunk ENI, you can create now something called branch ENI.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 75:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So this is like a tree.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 76:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Tree has a trunk and then multiple branches.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 77:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So this is a trunk ENI, and then you can create multiple branch ENIs on top of this trunk ENIs, something like this.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 78:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And every ENI would have their private IP addresses, as we have seen.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 79:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: So these are the same ENIs that you attached to the nodes, but the benefit is, these ENIs you can directly attach to the Pod, right?
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 80:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: Earlier it wasn't possible, they were attached to the node.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 81:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So you can create now branch ENIs which are connected to the trunk ENIs.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 82:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: Now if you look at the Pod distribution here, now, you have this worker node, you have primary ENI on top of it, you create the trunk ENI, and then you create multiple branch ENIs, because now every pod has their own ENI.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 83:
- Concepts: Cluster and Pod Network Model, Security Boundary Placement
- Services: Security Group
- Key Insights: Of course, you can apply the security group per pod now, because we know that the SGs are assigned to the, or associated to the ENIs.
- Hidden/Implicit Meaning: Cluster-network model signal; Isolation and scale-boundary signal.

Line 84:
- Concepts: Cluster and Pod Network Model, Security Boundary Placement
- Services: (none explicit)
- Key Insights: So this is a solution where security groups can be used at the Pod level.
- Hidden/Implicit Meaning: Cluster-network model signal; Isolation and scale-boundary signal.

Line 85:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Okay, few things to just note that this cannot be used with Windows nodes as of now.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cluster-network model signal.

Line 86:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: And if you're using IPv6 address family, then this feature is only available for Fargate, not available for EC2 Node, typically supported by the nitro-based systems only.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cluster-network model signal.

Line 87:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And in that, also some of the instance families, like t families, are not included.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 88:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And if you want to really check which type of the instance supports the trunk and branch ENIs, then there is a GitHub link and there is a file called limits.go in that you can see list of all {indistinct} instances and corresponding flag, which say "is trunking compatible." If it is true, then only that type of the instance family would support the trunking and branching of the ENIs.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 89:
- Concepts: Security Boundary Placement
- Services: Amazon EKS, Security Group
- Key Insights: Okay, with that, just understand that EKS supports the security group, typically it attached to the nodes, but that's a problem, because then all ports would have to use the same security group.
- Hidden/Implicit Meaning: Cluster-network model signal; Isolation and scale-boundary signal.

Line 90:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: One of the solution is to use third party solution like Calico network policies.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 91:
- Concepts: EKS Networking Operational Context
- Services: Amazon EKS
- Key Insights: But if you want to do it natively using EKS, then you can use trunk and branch ENI feature, where every port gets their own ENI, and then you can have different security groups attached to those ENIs.
- Hidden/Implicit Meaning: Cluster-network model signal; Isolation and scale-boundary signal.

Line 92:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Okay, so I hope that's clear and that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 93:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And now we'll get into the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 94:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Thanks for watching.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt

Line 1:
- Concepts: EKS Networking Operational Context
- Services: Amazon EKS
- Key Insights: Hello and welcome to this lecture, "Exposing EKS Services." If you're running some application, it is evident that you will be exposing that to the outside world so that outside world can consume your services.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 2:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 3:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So why service, first of all?
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 4:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: Now this is very similar to any other service that you will expose for any other application, whether it is hosted on EC2 machine or it is hosted on containers inside EC2.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 5:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: But then you want to expose services outside.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 6:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: Service could be your API, it could be your front end service, it could be your database service, right?
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 7:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So in Kubernetes, you know that you have pods.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 8:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Pods gets an IP address as well.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 9:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: And generally speaking, it's not a great idea to expose the pod's IP address externally so that the external client can communicate with the pod's IP address directly.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 10:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: This is because, you know pods are non-permanent objects of the Kubernetes cluster.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 11:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: So the life cycle of pod is not supposed to be the long term, right?
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 12:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: And for the same reason that pods may be created and destroyed based on scale, based on the event in the Kubernetes cluster, maybe more random kind of, right?
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 13:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So pods inside a cluster always keeps moving across the nodes.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cluster-network model signal.

Line 14:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: As I said, due to scaling event or node replacement or maybe some configuration change you made.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 15:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: And that's where if the pod changes its location, its IP address will also change.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 16:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: And that's where it is not recommended to use pod's IP addresses directly.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 17:
- Concepts: Cluster and Pod Network Model, Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: The better ways to expose the pod as a service to the outside world, right?
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 18:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So that's where services are useful.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 19:
- Concepts: Cluster and Pod Network Model, Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: Now in Kubernetes world, if you want to expose pod services externally or in general if you want to make a service out of the pod, then there are four ways, right?
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 20:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So very first type of the service is cluster IP.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 21:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: Now this is for the service to be exposed within the cluster.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 22:
- Concepts: Cluster and Pod Network Model, Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: That means one pod can access another pod as a service within the cluster only.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cluster-network model signal.

Line 23:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: That means it cannot be accessed from outside the cluster.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 24:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: It is good if all the communication for those services remains within the cluster and you don't need to expose that externally.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 25:
- Concepts: Cluster and Pod Network Model, Kubernetes Networking Abstraction, Service Exposure Patterns
- Services: (none explicit)
- Key Insights: If you still want to expose the pod services externally, then there is another service type called NodePort.
- Hidden/Implicit Meaning: Cluster-network model signal; Service-exposure design signal.

Line 26:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: Now here, instead of pod IP addresses, you are exposing the node IP addresses externally.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 27:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: That means client can directly hit the node IP address and/or static port, and then it'll be redirected to the pod traffic, right?
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 28:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So that's another way.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 29:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Again, we'll see why this is also not a good idea.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 30:
- Concepts: Kubernetes Networking Abstraction, Service Exposure Patterns
- Services: Elastic Load Balancing
- Key Insights: Now actually speaking, if you really want to expose the services of the Kubernetes then it is best idea to use a load balancer service and the ingress service.
- Hidden/Implicit Meaning: Service-exposure design signal.

Line 31:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So load balancer service typically used for network layer load balancing, that is layer four.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 32:
- Concepts: EKS Networking Operational Context
- Services: Amazon EKS
- Key Insights: And there are some differences in which EKS has implemented that.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 33:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: I'll talk about that shortly.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 34:
- Concepts: Kubernetes Networking Abstraction, Service Exposure Patterns
- Services: Elastic Load Balancing
- Key Insights: And the latest way of having the application load balancing at layer seven is ingress service of Kubernetes.
- Hidden/Implicit Meaning: Service-exposure design signal.

Line 35:
- Concepts: Kubernetes Networking Abstraction
- Services: Amazon EKS
- Key Insights: Now, these are all defined by the Kubernetes, and you know that EKS implements all these services using AWS native services like network load balancer or application load balancer.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 36:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And we'll see that in this lecture.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 37:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: But essentially there are these four ways in which Kubernetes services can be exposed.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 38:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: Okay, so let's look at the cluster IP now.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 39:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So as the name suggests, accessible only within the cluster.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 40:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: And this is a default service type of the Kubernetes.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 41:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: Now in this, what happens really is, when you create a cluster IP as a service, Kubernetes assigns a virtual IP and then it exposes as a service.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 42:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So service is exposed on a virtual IP and this IP is not exposed outside of a cluster.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 43:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: Now if you see this diagram, there are three nodes, and then there is one single service which is created.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 44:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And there is this virtual IP.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 45:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: This is not an IP of the node but this is a different IP address called virtual IP.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 46:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So you must be wondering from where this IP is allocated.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 47:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So when you create a Kubernetes cluster, you can provide the CIDR range for this cluster IP addresses and then Kubernetes will pick any of the IP address from that range.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 48:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So you can pass this parameter service cluster IP range.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 49:
- Concepts: Kubernetes Networking Abstraction
- Services: Amazon EKS
- Key Insights: And if you don't pass it, EKS uses 10.100.0.0/16 or 172.20.0.0/16 server data range for assigning to the cluster virtual IP.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 50:
- Concepts: Cluster and Pod Network Model, Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: And the kube-proxy daemon on each cluster node defines the cluster IP to the port IP mapping in the IP table rules.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 51:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: That means the cluster IP service uses IP table rules to really route the traffic to respective ports across different nodes.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 52:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So this is how cluster IP works, but the limitation as you know, it is only accessible within the cluster.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 53:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: The services exposed as the service-name.namespace.svc.cluster.local, you can see you can give the name to the service and then the name space could be different enrollments or different business units likewise, right?
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 54:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So that's the cluster IP service.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 55:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: Now, how do you really deploy the cluster IP?
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 56:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So you know that in Kubernetes you have to write a manifest file.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 57:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So this is a sample manifest file for cluster IP type of the service.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 58:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: The most important for you here is the type of the service that is a cluster IP.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 59:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: And then you need to define the port as well on which this service will be listening and then which all ports it'll send traffic to, which is done using the labels as you know, in Kubernetes.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 60:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So this is a sample file there.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 61:
- Concepts: Kubernetes Networking Abstraction, Service Exposure Patterns
- Services: (none explicit)
- Key Insights: Moving on, the next service type as we just discussed, is NodePort.
- Hidden/Implicit Meaning: Cluster-network model signal; Service-exposure design signal.

Line 62:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: In this case, you can see this diagram.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 63:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: Every node has a node IP and then there will be a static port.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 64:
- Concepts: Cluster and Pod Network Model, Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So every service will be exposed as a node port.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 65:
- Concepts: Cluster and Pod Network Model, Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So if you want to hit that service you can pick node IP of any of the nodes here on the static port, maybe 80, 80, 80, right?
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 66:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: And then ultimately the traffic will land into the port IP address on that particular node.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 67:
- Concepts: Cluster and Pod Network Model, Kubernetes Networking Abstraction, Service Exposure Patterns
- Services: (none explicit)
- Key Insights: So NodePort is used to make the Kubernetes services accessible from outside the cluster and exposes the service on each worker node's IP at the static port, called NodePort.
- Hidden/Implicit Meaning: Cluster-network model signal; Service-exposure design signal.

Line 68:
- Concepts: Cluster and Pod Network Model, Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So most important thing here to note that it's one node port per service.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cluster-network model signal.

Line 69:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: That means if your Kubernetes cluster has 10 services to be exposed outside, you need to have 10 static ports.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 70:
- Concepts: Cluster and Pod Network Model, Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So every node would have 10 different ports allocated for that service, right?
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 71:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And that's how it works.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 72:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Port range you can use from 30000 to 32767.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 73:
- Concepts: Cluster and Pod Network Model, Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: And then internally, this node port uses the cluster IP to route traffic to particular pod IP address.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 74:
- Concepts: Cluster and Pod Network Model, Kubernetes Networking Abstraction, Service Exposure Patterns
- Services: (none explicit)
- Key Insights: So ultimately there is a pod on top of pod, there is a cluster IP service, and on top of cluster IP there is a NodePort service.
- Hidden/Implicit Meaning: Cluster-network model signal; Service-exposure design signal.

Line 75:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So this is a layered service architecture you can see here.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 76:
- Concepts: Kubernetes Networking Abstraction, Service Exposure Patterns
- Services: (none explicit)
- Key Insights: Now do you think this is a great idea to use a NodePort service type because it's the same problem like it's anti pattern to use port IP address.
- Hidden/Implicit Meaning: Cluster-network model signal; Service-exposure design signal.

Line 77:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: It's also anti pattern to use node IP address because even nodes keep changing, they die, new nodes come to the life.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 78:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: And in that case, client would have to keep track of which is the active node and only should be able to hit that node, right?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal; Cluster-network model signal.

Line 79:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So that's a problem and not a very feasible option to expose services to the outside world.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 80:
- Concepts: Kubernetes Networking Abstraction, Service Exposure Patterns
- Services: (none explicit)
- Key Insights: So we just saw two services as of now Cluster IP and NodePort.
- Hidden/Implicit Meaning: Cluster-network model signal; Service-exposure design signal.

Line 81:
- Concepts: Service Exposure Patterns
- Services: Elastic Load Balancing
- Key Insights: But the right way probably to expose the services is the load balancer and the ingress.
- Hidden/Implicit Meaning: Service-exposure design signal.

Line 82:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And let's talk about those.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 83:
- Concepts: EKS Networking Operational Context
- Services: Amazon EKS
- Key Insights: So in EKS you could handle the network and application load balancing for network load balancing which is that layer four.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 84:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: Typically you should use service type as load balancer.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 85:
- Concepts: Kubernetes Networking Abstraction, Service Exposure Patterns
- Services: Elastic Load Balancing
- Key Insights: And for application load balancing, you should use Kubernetes service type as ingress.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Service-exposure design signal.

Line 86:
- Concepts: EKS Networking Operational Context
- Services: Amazon EKS
- Key Insights: Now, there is some kind of overlap between how EKS implement these two services and let's try to understand that.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 87:
- Concepts: Kubernetes Networking Abstraction
- Services: Amazon EKS
- Key Insights: So originally the load balancer service type in EKS used to be handled by Kubernetes controller manager which is also called Entry Cloud Controller because the source code of this controller was part of the Kubernetes open source code.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 88:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So it came bundled with the Kubernetes and by default it used to create the classic load balancer which you know is the older load balancer which AWS used to support and lately now it supports NLB, that is network load balancer in instance mode.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 89:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So if you're using the service type as a load balancer and with in-tree cloud controller, then you can use CLB or NLB in instance mode with this load balancer.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 90:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And then it supports both layer four and layer seven traffic, layer four with NLP and layer four or seven with CLB.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 91:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: That is classic load balancer.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 92:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: But as I said, this is a legacy way of implementing the load balancer service.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 93:
- Concepts: EKS Networking Operational Context
- Services: Elastic Load Balancing
- Key Insights: If you want to really use the latest feature of NLB then you should be using the newer controller called ALB load balancer controller with which you can use NLB.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 94:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: You can't use CLB and it is not recommended to use CLB now.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 95:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So rather you go with the AWS load balancer controller and then you use NLB for service type as load balancer.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 96:
- Concepts: Cluster and Pod Network Model, Kubernetes Networking Abstraction, Service Exposure Patterns
- Services: Elastic Load Balancing
- Key Insights: For ingress service type, ingress means that you should be able to have the pod base routing, host base routing, all those features you know that application load balancer supports.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cluster-network model signal; Service-exposure design signal.

Line 97:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So this is handled by the AWS load balancer controller which is a new controller.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 98:
- Concepts: Service Exposure Patterns
- Services: Elastic Load Balancing
- Key Insights: Earlier this controller used to be called the AWS ALB Ingress Controller, but now everything is combined as AWS load balancer controller and then it deploys ALB in both instance and IP mode for this ingress resource and it works at layer seven.
- Hidden/Implicit Meaning: Service-exposure design signal.

Line 99:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: Now let's look at the load balancer service type with the legacy controller.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 100:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: As you know that there are two controllers, one which is in-tree controller and the other one is AWS load balancer controller, which is the newest one.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 101:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So first look at the older controller.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 102:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So of course the load balancer service is used to expose the services to the client outside of the cluster.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 103:
- Concepts: Kubernetes Networking Abstraction, Service Exposure Patterns
- Services: (none explicit)
- Key Insights: Now interesting to know that when you configure service as a load balancer, internally it uses the NodePort service.
- Hidden/Implicit Meaning: Cluster-network model signal; Service-exposure design signal.

Line 104:
- Concepts: Cluster and Pod Network Model, Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So essentially what it does on every node, a static port is assigned and this load balancer service will send the request to the node IP and the corresponding port.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 105:
- Concepts: Cluster and Pod Network Model, Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: That means underlying it's using the node port service.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 106:
- Concepts: Kubernetes Networking Abstraction, Service Exposure Patterns
- Services: (none explicit)
- Key Insights: And you already know that NodePort service is built on top of the cluster IP service.
- Hidden/Implicit Meaning: Cluster-network model signal; Service-exposure design signal.

Line 107:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So there are three layers here, right?
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 108:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: You expose service as load balancer but internally it uses other services.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 109:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So load balancer service with legacy controller supports both the classic load balancer as you know and the network load balancer.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 110:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now with classic load balancer, you can have both the traffic at layer four and layer seven and with NLB, you could have the traffic at layer four.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 111:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now one more thing that it only supports the instance mode for the NLB and does not support target as IP addresses.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 112:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now that problem is solved using the latest controller that we'll talk about, but just one more time, this is a legacy controller and you are not really recommended to use classic load balancer with this legacy controller.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 113:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Rather, you should use NLB.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 114:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And for NLB, you should also use the latest controller which is AWS load balancer controller.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 115:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So here you can see that now you can only use NLB for load balancer service and you get many more features.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 116:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: For example, you can use NLB in both the instance mode as well as in the IP mode.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 117:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: That means you could have your target as EC2 machine IP addresses as well as Fargate as your target.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 118:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And these are the supporting annotations there.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 119:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: You could have EC2S target in instance mode and then these are the annotations that you can use.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 120:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: Now, one thing to understand that whenever you are using load balancer as a service, for every service, you need to have one load balancer.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 121:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: That is one NLB, which means if you're exposing 10 services then 10 network load balances will be required.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 122:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: Now, this works well for maybe less number of services, but as it scales to maybe hundreds of services, it doesn't make sense to have those many network load balancer and that's the problem with load balancer service.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 123:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: As it scales, the management is an overhead and there will be a additional cost for those load balancer.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 124:
- Concepts: Kubernetes Networking Abstraction, Service Exposure Patterns
- Services: Elastic Load Balancing
- Key Insights: And now let's see how to solve that problem by moving to ingress type of the service.
- Hidden/Implicit Meaning: Service-exposure design signal.

Line 125:
- Concepts: Kubernetes Networking Abstraction, Service Exposure Patterns
- Services: Elastic Load Balancing
- Key Insights: And that's where Kubernetes Ingress is the right way.
- Hidden/Implicit Meaning: Service-exposure design signal.

Line 126:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: If you have the application layer lower balancing, in this case, it exposes services to the client outside of the cluster.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 127:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: And then it exposes HTTP and HTTPS routes from outside the cluster to services within the cluster.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 128:
- Concepts: Cluster and Pod Network Model, Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: Now you can see this picture, right, there is a application load balancer, and then, you can have the pod based routing say slash service one, service two or slash product.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 129:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And this is links to the target group.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 130:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And then target group could have the target as an instance or target as an IP address, right?
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 131:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Both are shown here.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 132:
- Concepts: Service Exposure Patterns
- Services: Amazon EKS, Elastic Load Balancing
- Key Insights: So ALB is the ingress resource for EKS.
- Hidden/Implicit Meaning: Cluster-network model signal; Service-exposure design signal.

Line 133:
- Concepts: Service Exposure Patterns
- Services: Elastic Load Balancing
- Key Insights: Now this traffic routing is controlled by the rules as defining the ingress resource.
- Hidden/Implicit Meaning: Service-exposure design signal.

Line 134:
- Concepts: EKS Networking Operational Context
- Services: Elastic Load Balancing
- Key Insights: And of course this saves you cost and complexity as now multiple services can be added behind a single ALB using the ALB target group.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 135:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Like earlier we saw that if there are 10 services, 10 network load balancer needs to be provisioned.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 136:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: But now every service might have a different endpoint, say slash service one slash service two, every service is wrapped around in a single target group.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 137:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: And by doing the pod based routing, you could redirect traffic to different services.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 138:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So for 10 services, you just need to have now one load balancer in that sense.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 139:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So it saves you a lot of cost, right?
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 140:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And management as well.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 141:
- Concepts: Kubernetes Networking Abstraction, Service Exposure Patterns
- Services: Elastic Load Balancing
- Key Insights: So this is a great way to simplify your architecture using the Kubernetes Ingress resource.
- Hidden/Implicit Meaning: Service-exposure design signal.

Line 142:
- Concepts: Service Exposure Patterns
- Services: Amazon EKS, Elastic Load Balancing
- Key Insights: And as I said, for having the Ingress resource, EKS uses AWS load balancer controller which used to be called AWS Ingress controller but has been now renamed too.
- Hidden/Implicit Meaning: Cluster-network model signal; Service-exposure design signal.

Line 143:
- Concepts: Kubernetes Networking Abstraction, Service Exposure Patterns
- Services: Elastic Load Balancing
- Key Insights: So that's Kubernetes Ingress resource.
- Hidden/Implicit Meaning: Service-exposure design signal.

Line 144:
- Concepts: Service Exposure Patterns
- Services: Elastic Load Balancing
- Key Insights: This is an AWS implementation of ingress controller.
- Hidden/Implicit Meaning: Service-exposure design signal.

Line 145:
- Concepts: Service Exposure Patterns
- Services: Elastic Load Balancing
- Key Insights: It ultimately translates the ingress rules, parameters and annotation into the ALB configuration.
- Hidden/Implicit Meaning: Service-exposure design signal.

Line 146:
- Concepts: Cluster and Pod Network Model, Service Exposure Patterns
- Services: Elastic Load Balancing
- Key Insights: So what ingress does ALB can also do, the pod based routing, the whole space routing.
- Hidden/Implicit Meaning: Cluster-network model signal; Service-exposure design signal.

Line 147:
- Concepts: EKS Networking Operational Context
- Services: Elastic Load Balancing
- Key Insights: ALB also can create multiple listeners and multiple target groups, right?
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 148:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: It supports both the target as instance or a port IP and you can choose whichever way you want to implement that.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 149:
- Concepts: Service Exposure Patterns
- Services: Elastic Load Balancing
- Key Insights: So annotations for Ingress class, you have to select the ALB and then you can also share ALB with multiple services.
- Hidden/Implicit Meaning: Service-exposure design signal.

Line 150:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now what is that?
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 151:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So for example, you have multiple business units and they're operating by providing their own manifest file.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 152:
- Concepts: EKS Networking Operational Context
- Services: Elastic Load Balancing
- Key Insights: And suppose one business unit owns two services and they use their single ALB, but other group might have their own set of services and they also want to expose that.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 153:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: Now, if also they define their own manifest file, Kubernetes will probably try to create another load balancer for them.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 154:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: But then what you want is you want single load balancer, which is shared across all these services.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 155:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: In that case, you can create something called a group and if both the manifest file defines the same group name then all the services will be exposed as a part of the same application load balancer.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 156:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So this is how you could manage, you know, how many load balancers you want to create and share the load balancer across those services.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 157:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now traffic for IPv6 is also supported and for that you have to define the annotation.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 158:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Again, that IP address type is dual stack and it is supported only for IP targets, not for the instance target.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 159:
- Concepts: Kubernetes Networking Abstraction, Service Exposure Patterns
- Services: Amazon EKS, Elastic Load Balancing
- Key Insights: So that's the way EKS implements the ingress for Kubernetes using the ALB load balancer controller and using ALB as the resource.
- Hidden/Implicit Meaning: Cluster-network model signal; Service-exposure design signal.

Line 160:
- Concepts: EKS Networking Operational Context
- Services: Elastic Load Balancing
- Key Insights: So you can see ALB is at the top and the client would hit the ALB DNS, which transfers to the IP address.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 161:
- Concepts: EKS Networking Operational Context
- Services: Elastic Load Balancing
- Key Insights: And then from here, ALB would route the traffic to either target group A or B, depending on the path that user specifies.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 162:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And this target group could have the target as an instance or the IP address.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 163:
- Concepts: Cluster and Pod Network Model, Kubernetes Networking Abstraction, Service Exposure Patterns
- Services: (none explicit)
- Key Insights: If it's an IP address, then target group registers the ports directly so traffic directly goes to the ports but if the target is instance, then ultimately it uses the NodePort on every node and then NodePort internally uses the cluster IP as a service.
- Hidden/Implicit Meaning: Cluster-network model signal; Service-exposure design signal.

Line 164:
- Concepts: Kubernetes Networking Abstraction, Service Exposure Patterns
- Services: Elastic Load Balancing
- Key Insights: So all that we learned, the cluster IP NodePort is still applicable if you are using the instance as a target for your load balancer or ingress service.
- Hidden/Implicit Meaning: Cluster-network model signal; Service-exposure design signal.

Line 165:
- Concepts: EKS Networking Operational Context
- Services: Elastic Load Balancing
- Key Insights: So this is how end-to-end traffic works in case of the ALB.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 166:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So I hope that is clear, maybe confusing, but if you just go over this lecture one more time probably things would be much easier for you to understand.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 167:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now, before we close this lecture, there is one more configuration I want to talk about because we have seen the question around it and that's how do you preserve the client IP address?
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 168:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: So when the client hits the load balancer and ultimately it reaches the pod, if application running in the pod or in a container wants to know the client IP address, how should we do that?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cluster-network model signal.

Line 169:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Right?
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 170:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So let's look at that.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 171:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: So there is external client, you have node, you have kube-proxy on every node, and then you have pods running on that node.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 172:
- Concepts: EKS Networking Operational Context
- Services: Amazon EKS, Elastic Load Balancing
- Key Insights: Now you could use NLB or ALB in case of EKS.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 173:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So if you're using NLB as a load balancer service, in that case, you can set external traffic policy as a specification for the service and it defines the behavior of your traffic.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 174:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: For example, if you say external traffic policy equal to cluster, in that case, this kube-proxy here may send the traffic to other nodes and the ports inside other nodes.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 175:
- Concepts: Cluster and Pod Network Model, Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So it does proper load balancing across the node if you have the external traffic policy equal to cluster and that's the default policy if you create the load balancer as a service with NLB.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 176:
- Concepts: Cluster and Pod Network Model, Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: So in this case, what happens, the traffic comes, it goes to the kube-proxy, and now if there is a pod for service B, it sends to that and as well as this can send traffic to the port on another node.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 177:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: But what happens in this case, as the traffic goes to other node, the source IP of the packet is replaced with this node source IP.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 178:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: That means the port B here now can't see the client IP address which originated the request.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 179:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And that's the problem.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 180:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: That means you can't preserve the client IP.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 181:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: The solution to that could be using the external traffic policy equal to local.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 182:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: Now what it means that traffic is not routed outside of the node and client IP address is propagated to the end ports.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 183:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: So what happens, you have external traffic policy equal to local, and the kube-proxy will only send the traffic to the ports on the same node.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cluster-network model signal.

Line 184:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: It won't send traffic to the port which are not on that node.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 185:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So this is not done and that's where port can see the client IP address.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 186:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: But the problem here is that the load balancing is not even, right?
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 187:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So as much traffic you have, only these two ports will receive that traffic.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 188:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: This port will not receive that.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 189:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So again, there are pros and cons and you need to see what works best for you.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 190:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So that's about the NLB.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 191:
- Concepts: EKS Networking Operational Context
- Services: Elastic Load Balancing
- Key Insights: In case of ALB, you know that HTTP header X-Forwarded-For has the client IP address and you can grab that IP address from this header.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 192:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So it is easy in that case.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 193:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Okay, so we'll stop here for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 194:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: I understand that it could be a little complex putting all things together, but Kubernetes, in general, is complex and unfortunately we can't cover Kubernetes to the depth that we want to and that's where probably you should focus only on the networking part as of now.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal.

Line 195:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So thanks for watching and stay tuned for the next lectures.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/242_EKS Custom Networking - Extending IPv4 address space.txt

Line 1:
- Concepts: Address Space and Scale
- Services: Amazon EKS
- Key Insights: Hello and welcome to this lecture EKS Custom Networking.
- Hidden/Implicit Meaning: Cluster-network model signal; Isolation and scale-boundary signal.

Line 2:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And this is a short lecture, but also important because this is a kind of scenario that can be there in the exam.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 3:
- Concepts: Address Space and Scale
- Services: Amazon EKS
- Key Insights: Okay, so let's understand what is EKS Custom Networking.
- Hidden/Implicit Meaning: Cluster-network model signal; Isolation and scale-boundary signal.

Line 4:
- Concepts: Address Space and Scale
- Services: (none explicit)
- Key Insights: So this is applicable for IPv4 addresses typically, and many a times you'll find yourself in a situation where the located subnet IP ranges are not sufficient to provision additional pods because you haven't allocated sufficient CIDR range to your VPC and to your subnets.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 5:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And many times this is a situation because networking team may be allocating multiple CIDRs to different VPCs across the organization.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 6:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: They don't want to waste too many IP addresses.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 7:
- Concepts: Address Space and Scale
- Services: (none explicit)
- Key Insights: So that may land you into this situation where you are working on a limited set of IP addresses inside your VPC and inside your subnet.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 8:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So this is just an example.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 9:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: If you create a VPC with CIDR/24, only 251 are the unique IPv4 addresses that you can use in that.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 10:
- Concepts: Address Space and Scale
- Services: (none explicit)
- Key Insights: So the solution to this problem is Custom Networking.
- Hidden/Implicit Meaning: Isolation and scale-boundary signal.

Line 11:
- Concepts: Kubernetes Networking Abstraction
- Services: Amazon EKS
- Key Insights: Now this is again a feature, which Kubernetes and EKS provides.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 12:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: In that sense, what you can do is you know that there is a base CIDR for your VPC, and then you can have additional CIDR also called a secondary CIDR that you can allocate to your VPC, right?
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 13:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So as in secondary VPC CIDR, you can add a range 100.64.0.0/16.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 14:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: We learned that in the VPC section, if you remember, and that brings more 65,000 IPs, private IPs to your VPC.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 15:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now, one of the constraint with this IP addresses are that they are routable only within the VPC.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 16:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: That means traffic from outside cannot directly go to these IP addresses, but within the VPC, IPs can be reached from one port to another port, or one EC2 instance to another EC2 instance.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 17:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So how do you really make use of these addresses if they cannot be routed from outside?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 18:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: And that's the magic what you can do with Kubernetes.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 19:
- Concepts: Address Space and Scale
- Services: Amazon VPC CNI
- Key Insights: So these IPs are routable within the VPC, and you have to enable the VPC CNI Custom Networking to really extend your IP space.
- Hidden/Implicit Meaning: Cluster-network model signal; Isolation and scale-boundary signal.

Line 20:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So this is an attribute for which you have to set it to true.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 21:
- Concepts: Address Space and Scale
- Services: (none explicit)
- Key Insights: Now what happens in this case, if you enable this custom networking, it adds a secondary ENI, but then it adds this ENI into this another subnet.
- Hidden/Implicit Meaning: Isolation and scale-boundary signal.

Line 22:
- Concepts: Address Space and Scale
- Services: (none explicit)
- Key Insights: And this subnet range could be from this address range.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 23:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: So your node now becomes dual home nodes which is in two subnets.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 24:
- Concepts: Address Space and Scale
- Services: (none explicit)
- Key Insights: One range is 10.0.0.0/26, and another range is 100.64.0.0/18 and also what it does after you enable this custom networking, only IPs from secondary ENIs are now assigned to the ports.
- Hidden/Implicit Meaning: Constraint or limitation signal; Isolation and scale-boundary signal.

Line 25:
- Concepts: Address Space and Scale
- Services: (none explicit)
- Key Insights: Now earlier we have seen that the secondary IPs from even primary ENIs are attached to the ports, but with custom networking to be true, only IPs from this ENIs are attached to the port, which means that all these ports will have the IP addresses from this range 100.64.0.0/16, and that's what we can see here.
- Hidden/Implicit Meaning: Constraint or limitation signal; Isolation and scale-boundary signal.

Line 26:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now that means all ports have IP addresses which are routable only within the VPC.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 27:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now then the question is how can this port now communicate outside?
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 28:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And from the earlier lecture, you might remember, we had different scenarios where you enable, or disable external SNAT, right?
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 29:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: The same thing you can apply here.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 30:
- Concepts: Address Space and Scale
- Services: (none explicit)
- Key Insights: Custom networking can be combined with SNAT.
- Hidden/Implicit Meaning: Isolation and scale-boundary signal.

Line 31:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: That means NATing should happen at the ENI level of the node, and we are not using the SNAT of the external devices like a NAT.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cluster-network model signal.

Line 32:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: In that case, the flow would be, you have this VPC with secondary CIDR added.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 33:
- Concepts: Address Space and Scale
- Services: (none explicit)
- Key Insights: You now have two subnets and one of the ENI which is attaches from the additional subnet.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 34:
- Concepts: Address Space and Scale
- Services: (none explicit)
- Key Insights: And all ports have this secondary IPs from that subnet.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 35:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: Now if this port needs to communicate with the outside network, outside of your VPC, then of course the source IP of that pod would be the source IP of itself.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 36:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: It'll go to the primary ENI because we have disabled the external SNAT, which means SNAT would happen at the primary ENI.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 37:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And then the source packet IP address will be replaced with the primary ENIs IP address.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 38:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And now traffic can go to the attached VPC through transit gateway, or if there is an internet gateway, and there is a public IP attached that can go to internet as well.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 39:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So it works well for the outbound traffic that means port can initiate the outbound traffic, and the return traffic will also come back, but what about the traffic which is originated outside, and which needs to get inside your subnets and to the pods?
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 40:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: But here the load balancer can be used for all the inbound traffic from the outside.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 41:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: That means if the Peered VPC needs to send traffic to your pods, there would be either network load balancer, or elastic load balancer, and because this is within the VPC, this load balancer can send traffic to the ports with this 164 IP range.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 42:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So ultimately it sends traffic to this.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 43:
- Concepts: Address Space and Scale
- Services: (none explicit)
- Key Insights: So this is what the custom networking is.
- Hidden/Implicit Meaning: Isolation and scale-boundary signal.

Line 44:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: That means if you're limited by the IP addresses for your VPC, you can add the 164 range.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 45:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And then using the SNAT, you can enable the traffic going to and from external network.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 46:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So hope that is clear.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 47:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 48:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Thanks for watching.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/243_EKS Networking Summary.txt

Line 1:
- Concepts: EKS Networking Operational Context
- Services: Amazon EKS
- Key Insights: Hello, and welcome to this lecture, EKS Networking Summary.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 2:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Just trying to summarize what we learned in this section quickly, and this is important for your exam.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 3:
- Concepts: EKS Networking Operational Context
- Services: Amazon EKS
- Key Insights: So we saw that EKS control plane is launched in AWS-managed VPC and data plane is launched in customer VPC.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 4:
- Concepts: EKS Networking Operational Context
- Services: Amazon EKS
- Key Insights: Now, EKS also provisions the EKS-owned ENI into the customer VPC and that's where the communication between the control plane and data plane happens.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 5:
- Concepts: Kubernetes Networking Abstraction
- Services: Amazon EKS
- Key Insights: EKS cluster API endpoint which is a Kubernetes API, basically, is by default, publicly accessible because this is launched in AWS-managed VPC.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 6:
- Concepts: EKS Networking Operational Context
- Services: Amazon EKS
- Key Insights: But then EKS gives you control where you can configure this endpoint to be only accessible privately or publicly.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cluster-network model signal.

Line 7:
- Concepts: EKS Networking Operational Context
- Services: Amazon EKS
- Key Insights: There are multiple combinations of these settings and if you configure it to be only accessible privately, then it can be accessed from customer VPC via this EKS-owned ENIs.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cluster-network model signal.

Line 8:
- Concepts: Cluster and Pod Network Model
- Services: Amazon EKS, Amazon VPC CNI
- Key Insights: EKS uses Amazon VPC Container Network Interface, that is CNI plugin for pod networking.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 9:
- Concepts: Cluster and Pod Network Model
- Services: Amazon VPC CNI
- Key Insights: And as you know, CNI allocates private IP addresses to each pod from the available secondary IPs of those ENIs.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 10:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: Maximum number of pods per node depends on number of ENIs and number of IP addresses per ENI.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 11:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And then we saw a mechanism where you could increase this number of IP addresses allocated to your pods.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 12:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And for that, you have to use something called prefix delegation and it is supported only on the Nitro-based instances, where for every IP addresses, you get /28 prefix for IPv4, that means 16 additional IP address, and /80 for IPv6 which gives you millions of IP addresses.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 13:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Also, if you are exhausting the allocated VPC range for your pods, then you can use the custom-networking feature.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 14:
- Concepts: Address Space and Scale
- Services: (none explicit)
- Key Insights: In that case, you can allocate the secondary CIDR to the VPC in the range 100.64.0.0/16, and then you enable the custom networking.
- Hidden/Implicit Meaning: Isolation and scale-boundary signal.

Line 15:
- Concepts: Address Space and Scale
- Services: (none explicit)
- Key Insights: In that case, there will be a second ENI created and that ENI will be part of the extended subnet from this range.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 16:
- Concepts: Cluster and Pod Network Model, Security Boundary Placement
- Services: (none explicit)
- Key Insights: And then you use the SNAT feature at the node level so that your private IP address range from 164 is not exposed outside.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 17:
- Concepts: Cluster and Pod Network Model
- Services: (none explicit)
- Key Insights: And we saw the entire communication from within the pod to outside and from outside to the pod.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 18:
- Concepts: EKS Networking Operational Context
- Services: Amazon VPC CNI
- Key Insights: Now, CNI also allows pods to enable and disable SNAT.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 19:
- Concepts: Address Space and Scale
- Services: (none explicit)
- Key Insights: We saw this feature as well where if you want to reach directly to the internet, then either you can use instances in a public subnet and with external SNAT disabled, you can do that.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 20:
- Concepts: Address Space and Scale
- Services: (none explicit)
- Key Insights: But if you want to really have your machines in a private subnet, it makes sense to use a NAT gateway.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 21:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And in that case, external SNAT has to be enabled.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 22:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: And we saw that with the architecture.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 23:
- Concepts: Security Boundary Placement
- Services: Security Group
- Key Insights: Moving forward, by default, if you talk about the security group, then ENIs comes with the security group, and all the pods which are using the IPs from that ENI will use the same security group.
- Hidden/Implicit Meaning: Cluster-network model signal; Isolation and scale-boundary signal.

Line 24:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Now, that's a limitation.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 25:
- Concepts: Security Boundary Placement
- Services: Security Group
- Key Insights: Often you would want separate security group for your pods and in order to do that, you can use either the external network plugins like the Calico, or you can use Trunk and Branch ENI feature which also works with the Nitro system-based instances.
- Hidden/Implicit Meaning: Cluster-network model signal; Isolation and scale-boundary signal.

Line 26:
- Concepts: Service Exposure Patterns
- Services: Elastic Load Balancing
- Key Insights: If you want to expose the Kubernete services, then there are four ways: ClusterIP, NodePort, LoadBalancer, and Ingress.
- Hidden/Implicit Meaning: Cluster-network model signal; Service-exposure design signal.

Line 27:
- Concepts: Cluster and Pod Network Model, Kubernetes Networking Abstraction, Service Exposure Patterns
- Services: (none explicit)
- Key Insights: As you know, ClusterIP is accessible from within the cluster only, NodePort is accessible outside and for that, you have to use Node IP address and a static port.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cluster-network model signal; Service-exposure design signal.

Line 28:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Again, not a great idea.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 29:
- Concepts: Service Exposure Patterns
- Services: Elastic Load Balancing
- Key Insights: Essentially, you can use either LoadBalancer or Ingress.
- Hidden/Implicit Meaning: Service-exposure design signal.

Line 30:
- Concepts: Kubernetes Networking Abstraction, Service Exposure Patterns
- Services: Elastic Load Balancing
- Key Insights: Now, LoadBalancer service typically work for layer four and Ingress for layer seven, but there are multiple implementation of LoadBalancer controller.
- Hidden/Implicit Meaning: Service-exposure design signal.

Line 31:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: There is older controller.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 32:
- Concepts: Service Exposure Patterns
- Services: Elastic Load Balancing
- Key Insights: With that, you can use both CLP and NLP, but it is advisable that you use the newer controller that is AWS LoadBalancer controller.
- Hidden/Implicit Meaning: Service-exposure design signal.

Line 33:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: In that case you can use NLB in both instance mode as well as IP mode.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 34:
- Concepts: Service Exposure Patterns
- Services: Elastic Load Balancing
- Key Insights: And with Ingress you can use ALB and you can use all the ALB features like path-based routing or the host-based routing.
- Hidden/Implicit Meaning: Service-exposure design signal.

Line 35:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So that's about the AWS load balancer controller.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 36:
- Concepts: Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: And finally, there is something called external traffic policy, which is set to cluster by default.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 37:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: But due to that, what happens that the client source IP is not preserved, because then kube-proxy sends the traffic to the other nodes and the source IP's replaced.
- Hidden/Implicit Meaning: Cluster-network model signal.

Line 38:
- Concepts: Cluster and Pod Network Model, Kubernetes Networking Abstraction
- Services: (none explicit)
- Key Insights: But if you want to make sure that the client source IP is preserved, then you can set the external traffic policy to the local, but then it may result in uneven load balancing because traffic cannot be sent to the other node service.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cluster-network model signal.

Line 39:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So these are few essential things that you need to remember for your exam and I hope that is clear.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 40:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: So thanks for watching and stay tuned for the next sections.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

Line 41:
- Concepts: EKS Networking Operational Context
- Services: (none explicit)
- Key Insights: Thank you.
- Hidden/Implicit Meaning: Implicitly contributes EKS networking detail.

## Step 2 — Consolidation

### 1. Concepts List
- Address Space and Scale
- Cluster and Pod Network Model
- EKS Networking Operational Context
- Kubernetes Networking Abstraction
- Security Boundary Placement
- Service Exposure Patterns

### 2. Services List
- Amazon EKS
- Amazon VPC CNI
- Elastic Load Balancing
- Security Group

### 3. Features List
- clusterip
- custom networking
- eks
- ingress
- loadbalancer
- nodeport
- pod networking
- security group

### 4. Use Cases
- 234_Section Introduction.txt:6: But when it comes to the Kubernetes, it is also difficult to just talk about the networking because without understanding the Kubernetes core components, it's difficult to relate how networking works in Kubernetes.
- 235_Kubernetes Architecture.txt:6: Now, as I said earlier, the purpose of this course is to focus only on the networking part, but I think it's essential to know all those core components so that when we talk about the Kubernetes networking, you understand what those components are.
- 235_Kubernetes Architecture.txt:17: You can treat them as like hosts, so that when you deploy your application, they are spread across multiple nodes.
- 235_Kubernetes Architecture.txt:19: Now, when it comes to hosting the application, these applications are hosted on the nodes, but they're hosted as something called pods.
- 235_Kubernetes Architecture.txt:35: Now, important thing here to know that when you are sitting outside of the cluster, of course, as a person, you would want to interact with the Kubernetes cluster.
- 235_Kubernetes Architecture.txt:47: For example, if you're deploying, say, different pods, and what are the configuration of those pods, you are exposing those pods as a service.
- 235_Kubernetes Architecture.txt:52: So whenever some changes you have to make, API call will make those changes persistent into the etcd key value store.
- 235_Kubernetes Architecture.txt:65: Now, as the name suggests, controller process does some job, for example, if you want to schedule a job to be running at certain time of the day.
- 235_Kubernetes Architecture.txt:68: Similarly, replication controller, if there is one replica of the pod and you want to make it clear replicas, for example, then the replication controller will do that.
- 235_Kubernetes Architecture.txt:70: So whenever you expose your pods as a service, then there is a networking component called kube-proxy, which does that.
- 235_Kubernetes Architecture.txt:76: For example, Kubernetes has a load balancer as a service.
- 235_Kubernetes Architecture.txt:78: For example, you can use application load balancer, or network load balancer in Kubernetes.
- 235_Kubernetes Architecture.txt:82: Similarly, other cloud provider will develop their own providers, and you just plug it into the Kubernetes and then it can provision those resources for you when you make some deployments into the Kubernetes.
- 235_Kubernetes Architecture.txt:95: For example, API server says, "Run this pod." Now how API server communicates with this node?
- 235_Kubernetes Architecture.txt:104: And when you want to expose pod as a service, because maybe there are multiple pods for the same service, of course, in order to scale that, right?
- 235_Kubernetes Architecture.txt:111: Because you're running containers, you need a container runtime engine inside this node, for example, if you're using Docker, then you would be having Docker engine.
- 235_Kubernetes Architecture.txt:120: Now, let's look at the process when you want to launch any pods, or say application, inside the Kubernetes cluster, then what that flow will look like.
- 235_Kubernetes Architecture.txt:121: So for example, there is a developer on the left side here.
- 235_Kubernetes Architecture.txt:150: For example, Containerd in terms, in case of Docker, container runtime engine will understand that there is one Docker image, which is available in Docker Hub, which needs to be deployed as a container or as a pod.
- 236_Amazon EKS Architecture.txt:4: Now, when it comes to the EKS, of course architecture remains the same, but the responsibility of control plane, and data plane, changes.
- 236_Amazon EKS Architecture.txt:15: You know that there are different components like for example, APIs, server, SD, data store cube controller manager, and all this has been taken care of.
- 236_Amazon EKS Architecture.txt:17: Now, when it comes to the data plane, there are multiple options for the way you would launch your nodes.
- 236_Amazon EKS Architecture.txt:19: Now, when it comes to the EC2 options, there are two ways in which you can launch this EC2 machine.
- 236_Amazon EKS Architecture.txt:28: That means provisioning the nodes, and then adding it to the Kubernetes cluster, as well as draining those nodes, in case you want to reduce the capacity, or adding new nodes when you want to increase the capacity.
- 237_EKS Cluster Networking.txt:5: That means how pod communicates with each other or how to expose pod services to the outside world.
- 237_EKS Cluster Networking.txt:7: But here, we are talking about EKS Cluster Networking, that means when you create EKS cluster, then how does your network look like and what are controls you have over that network?
- 237_EKS Cluster Networking.txt:32: Now further, when you create EKS cluster, it also creates security group and these security groups are attached to these ENIs.
- 237_EKS Cluster Networking.txt:41: When we talked about the Kubernetes architecture, we said that Kubernetes APIs servers kind of the heart of the communication.
- 237_EKS Cluster Networking.txt:48: Now, there are ways to disable the internet access and we'll see that in the same lecture, but this is what happens when you create the EKS cluster.
- 237_EKS Cluster Networking.txt:50: For example, launching pods, launching services, and then there is something called EKS APIs, those are AWS EKS APIs.
- 237_EKS Cluster Networking.txt:52: For example, if you launch an EC2, you make an API call to EC2 service.
- 237_EKS Cluster Networking.txt:61: Now, with that, let's look into the particular use cases.
- 237_EKS Cluster Networking.txt:62: Now to start with, let's see what are the options you have when you say you want to access the EKS Kubernetes API server?
- 237_EKS Cluster Networking.txt:71: For example, to let control plane know that some of the pod went down, so there should be a replacement pod.
- 237_EKS Cluster Networking.txt:87: So when it tries to resolve the DNS, it results to the ENI private IP.
- 237_EKS Cluster Networking.txt:100: Now, for example, if you're creating the EKS cluster altogether.
- 237_EKS Cluster Networking.txt:105: You can access that, but in certain cases you want to only allow the client inside a VPC, for example, or client inside a private network to create the EKS cluster.
- 237_EKS Cluster Networking.txt:127: For example, pod wants to send some logs to the S3 service or pod needs to access the EKS service, so all these endpoints are available because we are still operating as a normal VPC, right?
- 237_EKS Cluster Networking.txt:130: For example, you could connect it to on-premise data center or a VPN, or a Direct Connect.
- 237_EKS Cluster Networking.txt:137: How to expose pod services externally?
- 238_EKS Pod Networking - Part 1.txt:19: Similarly, all nodes can communicate with all pods without NAT, so there shouldn't be NAT when nodes wants to communicate with the pod.
- 238_EKS Pod Networking - Part 1.txt:24: So every cloud provider, for example AWS or Google or Azure, will define their own CNI plugin, so AWS also did the same thing.
- 238_EKS Pod Networking - Part 1.txt:35: Now you know that when we say IP address, ultimately it comes from the elastic network interfaces which AWS provides and you can attach multiple ENI to the same EC2 machine, right?
- 238_EKS Pod Networking - Part 1.txt:55: So anybody can implement, you can also write CNI, and can plug it into, you know, EKS for example.
- 238_EKS Pod Networking - Part 1.txt:58: It allows to have the network policies, and it has lot many controls when it comes to the security.
- 238_EKS Pod Networking - Part 1.txt:67: So for example, you can find this table in AWS documentation.
- 238_EKS Pod Networking - Part 1.txt:74: Now if you take an example of m5.large, for example, then m5.large has three network interfaces, 10 IPv4 addresses per network interface.
- 238_EKS Pod Networking - Part 1.txt:121: And then subnet must have auto-assign and IPv6 address enabled so that when pods are launched in that subnet, and the nodes are launched in that subnet, they automatically get the IPv6 addresses.
- 239_EKS Pod Networking - Part 2.txt:17: Now, the way CNI plugin has been implemented, you need to understand that when a pod communicates to any IPv4 address that isn't within the CIDR block of the VPC, then Amazon VPC CNI plugin translates the pod's IPv4 address to the primary private IPv4 address of the primary ENI which is assigned to that node.
- 239_EKS Pod Networking - Part 2.txt:23: So this is what happens by default when pod tries to communicate outside of the VPC network.
- 239_EKS Pod Networking - Part 2.txt:26: So that's the basic fundamentals of what happens when the pod tries to reach outside of the VPC.
- 239_EKS Pod Networking - Part 2.txt:27: And now based on this knowledge, let's try to understand what happens when pod reaches the internet or to the other networks outside of the VPC.
- 239_EKS Pod Networking - Part 2.txt:28: Okay, so the same diagram, but then I have shown here multiple outside networks like internet, transit gateway, VPC peering, or RDS connection, for example, connected to the VPC, and there is also internet gateway because if traffic has to go out to the internet, there should be internet gateway.
- 239_EKS Pod Networking - Part 2.txt:30: Now, with CNI, there is some setting which is called source NAT enabled, which means whatever we talked in the last slide, when pods goes out of the VPC network, the pod's source IP is replaced with the primary IP of the primary ENI.
- 239_EKS Pod Networking - Part 2.txt:35: So if that is the case and node is in a public subnet and this pod needs to communicate with the internet, it needs to make an outbound request to the internet, then, of course, when packet originates, the source IP is the pod IP address, it goes to the ENI, we just saw that in a previous slide.
- 239_EKS Pod Networking - Part 2.txt:38: So this is how the end-to-end communication happens when pod reaches out to the internet.
- 239_EKS Pod Networking - Part 2.txt:40: EXTERNALSNAT means somebody else is doing the NAT, not the node, and we'll see those use cases as well.
- 239_EKS Pod Networking - Part 2.txt:49: Same logic, when you have the NAT gateways, an instance in a private subnet needs to communicate with the internet, then the NAT replaces the source IP address.
- 240_Security Group in EKS - Node and Pod level.txt:2: Now this is also one of the important topics with respect to the exam because you should understand how the security group works when it comes to the EKS nodes or pods, right?
- 240_Security Group in EKS - Node and Pod level.txt:13: Now, when it comes to the EKS cluster, when you create the EKS cluster, it also creates the security groups.
- 240_Security Group in EKS - Node and Pod level.txt:29: And if your node and port needs to communicate to, for example, to the internet directly, or you know, download some packages, in that case, you might need port 80 as an outbound.
- 240_Security Group in EKS - Node and Pod level.txt:30: So all those rules apply if you want to extend the connectivity beyond, you know, EKS cluster.
- 240_Security Group in EKS - Node and Pod level.txt:31: So, this is a default behavior when it comes to the security group of EKS cluster.
- 240_Security Group in EKS - Node and Pod level.txt:33: And optionally, what you can also do is you could have your own security group, and when creating the EKS cluster, you may provide that security group as one of the input, and then EKS will also attach that security group to the EKS owned ENIs.
- 240_Security Group in EKS - Node and Pod level.txt:36: And by chance, if you remove all these inbound rules from the security group, then whenever EKS updates itself, it will re-add this inbound rule into the EKS security group because it needs that to function.
- 240_Security Group in EKS - Node and Pod level.txt:47: Now, when it comes to the SG, these are attached to the ENIs, not to the individual pods, because security group works at the ENI level.
- 240_Security Group in EKS - Node and Pod level.txt:72: So what happens when you enable the Pod ENI feature to true, and there is a command to do that in Kubernetes, this VPC resource controller will create a special network interface called trunk network interface, and then it will attaches it to the node.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:5: But then you want to expose services outside.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:9: And generally speaking, it's not a great idea to expose the pod's IP address externally so that the external client can communicate with the pod's IP address directly.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:17: The better ways to expose the pod as a service to the outside world, right?
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:19: Now in Kubernetes world, if you want to expose pod services externally or in general if you want to make a service out of the pod, then there are four ways, right?
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:24: It is good if all the communication for those services remains within the cluster and you don't need to expose that externally.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:25: If you still want to expose the pod services externally, then there is another service type called NodePort.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:30: Now actually speaking, if you really want to expose the services of the Kubernetes then it is best idea to use a load balancer service and the ingress service.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:41: Now in this, what happens really is, when you create a cluster IP as a service, Kubernetes assigns a virtual IP and then it exposes as a service.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:47: So when you create a Kubernetes cluster, you can provide the CIDR range for this cluster IP addresses and then Kubernetes will pick any of the IP address from that range.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:79: So that's a problem and not a very feasible option to expose services to the outside world.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:81: But the right way probably to expose the services is the load balancer and the ingress.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:102: So of course the load balancer service is used to expose the services to the client outside of the cluster.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:103: Now interesting to know that when you configure service as a load balancer, internally it uses the NodePort service.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:116: For example, you can use NLB in both the instance mode as well as in the IP mode.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:120: Now, one thing to understand that whenever you are using load balancer as a service, for every service, you need to have one load balancer.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:151: So for example, you have multiple business units and they're operating by providing their own manifest file.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:152: And suppose one business unit owns two services and they use their single ALB, but other group might have their own set of services and they also want to expose that.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:168: So when the client hits the load balancer and ultimately it reaches the pod, if application running in the pod or in a container wants to know the client IP address, how should we do that?
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:174: For example, if you say external traffic policy equal to cluster, in that case, this kube-proxy here may send the traffic to other nodes and the ports inside other nodes.
- 243_EKS Networking Summary.txt:26: If you want to expose the Kubernete services, then there are four ways: ClusterIP, NodePort, LoadBalancer, and Ingress.

### 5. Constraints / Limitations
- 234_Section Introduction.txt:22: And then one of the most important topic is exposing EKS services using Amazon Load-Balancer.
- 235_Kubernetes Architecture.txt:5: So it's important for us to first understand the Kubernetes architecture.
- 235_Kubernetes Architecture.txt:6: Now, as I said earlier, the purpose of this course is to focus only on the networking part, but I think it's essential to know all those core components so that when we talk about the Kubernetes networking, you understand what those components are.
- 235_Kubernetes Architecture.txt:35: Now, important thing here to know that when you are sitting outside of the cluster, of course, as a person, you would want to interact with the Kubernetes cluster.
- 235_Kubernetes Architecture.txt:59: There are many features in Kubernetes with which you can decide this pod should go to this node or that node.
- 235_Kubernetes Architecture.txt:83: So likewise, these are the important processes on the control plane side, and this is very extensible, as I said.
- 235_Kubernetes Architecture.txt:89: And then nodes have essentially three important components running.
- 235_Kubernetes Architecture.txt:101: Kube-proxy, now, this is very important.
- 235_Kubernetes Architecture.txt:130: Now, if you are aware of the Docker, you must very well understand that, but ultimately, from the instructions of the DockerFile, where my code is or my deployables are, and which port this container will be running, or all this information is there in the DockerFile.
- 235_Kubernetes Architecture.txt:132: It will install required libraries, binary, everything, and it will create a DockerFile out of it.
- 235_Kubernetes Architecture.txt:146: So with kubectl and Deployment file, it will reach to the API server as an instruction, and API server will then communicate with control manager ETCD scheduler, and if required, to the cloud-controller-manager to take a decision what to do about this deployment.
- 236_Amazon EKS Architecture.txt:3: Essentially we saw the control plane, and data plane, and what are the important services which run inside the control plane, and data plane.
- 237_EKS Cluster Networking.txt:15: Of course, there should be some mechanism and you are already aware of this if you know the requester managed ENIs.
- 237_EKS Cluster Networking.txt:28: Now if you look at this architecture, typically it is advised that for this ENIs, you should have a dedicated subnet.
- 237_EKS Cluster Networking.txt:29: Now you could very well use these worker node subnets to provision these ENIs, but you know, it's always better to have better control over those subnets so that you can define the NACL rules, you can have the routing rules for your subnet and then you dedicate these subnets only for these ENIs.
- 237_EKS Cluster Networking.txt:30: And then EKS doesn't need lot of IP addresses from this subnet, only six IPs are required, but you know, in AWS you can create the smallest subnet as /28, which gives you 16 IP addresses.
- 237_EKS Cluster Networking.txt:59: That means, pod cannot have both the IPs at the same time, either they can have IPv4 addresses or they can have IPv6 addresses.
- 237_EKS Cluster Networking.txt:69: Because as I said, this ENIs by default will only allow access from control plane to the data plane.
- 237_EKS Cluster Networking.txt:71: For example, to let control plane know that some of the pod went down, so there should be a replacement pod.
- 237_EKS Cluster Networking.txt:75: Now, for that, as you might have understood your nodes needs to be in public subnet and then you should be allowed to connect to the internet through internet gateway.
- 237_EKS Cluster Networking.txt:82: So if you know the customer side of the CIDR then you can provide that and only traffic from those IPs will be allowed.
- 237_EKS Cluster Networking.txt:97: Now, in this case, we have disabled the EKS cluster endpoint public access, but we have enabled the private access so that it can only be accessed from this EKS owned ENI.
- 237_EKS Cluster Networking.txt:105: You can access that, but in certain cases you want to only allow the client inside a VPC, for example, or client inside a private network to create the EKS cluster.
- 237_EKS Cluster Networking.txt:113: Now, few additional things, maybe recommendation or best practices, what you can do inside your customer VPC.
- 237_EKS Cluster Networking.txt:119: So you don't need NAT gateway, but then if you want to allow only outbound access then you need egress only internet gateway.
- 237_EKS Cluster Networking.txt:120: Now, what is egress only internet gateway?
- 237_EKS Cluster Networking.txt:121: It only allows traffic from IPv6 addresses to go out, right?
- 237_EKS Cluster Networking.txt:122: But from outside, traffic cannot reach to those IP addresses.
- 237_EKS Cluster Networking.txt:124: But if it's IPv4 address, as you know, you should have the NAT gateways.
- 237_EKS Cluster Networking.txt:125: And then NAT gateway should be in public subnet, so traffic goes from your pods to the NAT gateways to the internet gateway, to out to the internet.
- 237_EKS Cluster Networking.txt:135: So we'll stop here for this lecture and now we'll slowly get into the pod-level networking and that's the most important part of this section because you will have a lot of questions related to the pod networking.
- 238_EKS Pod Networking - Part 1.txt:2: Now this is one of the important lecture of this section because we are going to learn how the IP addresses are assigned to pods, how pods communicate with each other.
- 238_EKS Pod Networking - Part 1.txt:7: You should be able to understand what's happening here.
- 238_EKS Pod Networking - Part 1.txt:10: So before we get into the specifics of EKS, how it supports the Pod networking, it is important to understand some of the principles of Kubernetes networking, and that is defined as a part of Kubernetes network model.
- 238_EKS Pod Networking - Part 1.txt:14: That means port should be treated more like a first class citizen of the network, not like containers, like if multiple containers are running on the same host, typically, they have a different OL network inside, but pod should get their own IP address.
- 238_EKS Pod Networking - Part 1.txt:19: Similarly, all nodes can communicate with all pods without NAT, so there shouldn't be NAT when nodes wants to communicate with the pod.
- 238_EKS Pod Networking - Part 1.txt:48: It doesn't assign the primary IP, it only assigns the secondary IPs.
- 238_EKS Pod Networking - Part 1.txt:63: If that is the case where you can only attach the secondary IPs, then how many parts I can host on a node?
- 238_EKS Pod Networking - Part 1.txt:85: Now for that, AWS launched a new feature, but it is only supported on Nitro-based instances.
- 238_EKS Pod Networking - Part 1.txt:99: Though technically you can launch those many pods, but then Kubernetes itself has some kind of limitation, and recommendation how many maximum pods you should typically have on any node.
- 238_EKS Pod Networking - Part 1.txt:100: And that limited based on, you know, your processes which are running on those nodes kube-proxy, kubelite, EPS server traffic, and the way Kubernetes manages the state of the nodes, and schedule the pods on the nodes, there is a recommended number, which is 110.
- 238_EKS Pod Networking - Part 1.txt:101: So it's recommended that you shouldn't typically exceed this limit of number of pods per instance type.
- 238_EKS Pod Networking - Part 1.txt:108: But then there are certain limitations which you need to know.
- 238_EKS Pod Networking - Part 1.txt:115: That means pod cannot have both IPv4 and IPv6 address at the same time, so keep that in mind.
- 238_EKS Pod Networking - Part 1.txt:116: Now for EC2 nodes, you must configure the Amazon VPC CNI add-on with IPv6 prefix delegation, and IPv6, that means if you want to use IPv6 addresses then you should must use the prefix delegation what we just learned in the last slide.
- 238_EKS Pod Networking - Part 1.txt:118: Further, you must also assign IPv4 address to your VPC.
- 238_EKS Pod Networking - Part 1.txt:119: Now, this is confusing one way we are saying that you can't use both the IP addresses at the same time for the pods, that's true.
- 238_EKS Pod Networking - Part 1.txt:121: And then subnet must have auto-assign and IPv6 address enabled so that when pods are launched in that subnet, and the nodes are launched in that subnet, they automatically get the IPv6 addresses.
- 238_EKS Pod Networking - Part 1.txt:123: Now, the important part how Pod communicates with other pods.
- 238_EKS Pod Networking - Part 1.txt:125: And if you remember, this was kind of defined in a specification as well that pod should be able to communicate with each other without any NAT, right?
- 238_EKS Pod Networking - Part 1.txt:132: So, it is important that you understand all those things.
- 239_EKS Pod Networking - Part 2.txt:24: Now whatever we are talking, it applies to the IPv4 addresses only because IPv6 addresses are not network translated because they are public by default, so they don't need NATing to be enabled.
- 239_EKS Pod Networking - Part 2.txt:28: Okay, so the same diagram, but then I have shown here multiple outside networks like internet, transit gateway, VPC peering, or RDS connection, for example, connected to the VPC, and there is also internet gateway because if traffic has to go out to the internet, there should be internet gateway.
- 239_EKS Pod Networking - Part 2.txt:45: Now, because all external networks are now seeing the node IP address and not the pod IP address directly, they can't directly reach to the pod because this is hidden now, this IP address.
- 239_EKS Pod Networking - Part 2.txt:48: They can't really reach because these IPs are not exposed outside because you are doing the NAT.
- 239_EKS Pod Networking - Part 2.txt:50: The same mechanism you can apply here, that means outside network cannot reach to these pods and that's a problem, right?
- 239_EKS Pod Networking - Part 2.txt:54: You want your worker nodes to be in private subnet and then still your pod should be able to reach to the internet.
- 239_EKS Pod Networking - Part 2.txt:58: NAT gateway should see your pod's IP address, then you can reach outside through the NAT gateway.
- 239_EKS Pod Networking - Part 2.txt:77: I know this could be confusing or maybe a little complex, but if you just follow what we talked in this lecture, you should be able to understand what is source NAT and what is an effect of source NAT while using the NAT gateways or reaching out to the external networks.
- 239_EKS Pod Networking - Part 2.txt:81: So far we are talking about multiple ENIs assigned to the node, but then every pod gets just one IP address, that means pod can be a part of only one subnet.
- 239_EKS Pod Networking - Part 2.txt:93: I know this could be already overwhelming to understand the pod networking, but very important for your exam and in general if you work on Kubernetes networking, I think this will help you a lot.
- 240_Security Group in EKS - Node and Pod level.txt:2: Now this is also one of the important topics with respect to the exam because you should understand how the security group works when it comes to the EKS nodes or pods, right?
- 240_Security Group in EKS - Node and Pod level.txt:4: And now we are assigning the multiple IP addresses from the same ENIs to multiple pods, which essentially means that all those pods should be following the rules from the security group which is attached to the corresponding ENIs, right?
- 240_Security Group in EKS - Node and Pod level.txt:7: So this is the diagram that now you should be familiar with.
- 240_Security Group in EKS - Node and Pod level.txt:24: Now this is required to hit the API server of the Kubernetes, and that's where this 443 port is required.
- 240_Security Group in EKS - Node and Pod level.txt:25: 10250 is required for the kubelet APIs.
- 240_Security Group in EKS - Node and Pod level.txt:27: So also outbound traffic for this port is required and 53s for DNS queries.
- 240_Security Group in EKS - Node and Pod level.txt:28: So bare minimum, these outbound ports are required.
- 240_Security Group in EKS - Node and Pod level.txt:35: One thing to also understand that these inbound rules are very much required for EKS to function.
- 240_Security Group in EKS - Node and Pod level.txt:40: But at bare minimum, these rules are required, and you should always test, right, whether your ports and EKS is working fine by removing the outbound rules.
- 240_Security Group in EKS - Node and Pod level.txt:85: Okay, few things to just note that this cannot be used with Windows nodes as of now.
- 240_Security Group in EKS - Node and Pod level.txt:86: And if you're using IPv6 address family, then this feature is only available for Fargate, not available for EC2 Node, typically supported by the nitro-based systems only.
- 240_Security Group in EKS - Node and Pod level.txt:88: And if you want to really check which type of the instance supports the trunk and branch ENIs, then there is a GitHub link and there is a file called limits.go in that you can see list of all {indistinct} instances and corresponding flag, which say "is trunking compatible." If it is true, then only that type of the instance family would support the trunking and branching of the ENIs.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:22: That means one pod can access another pod as a service within the cluster only.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:23: That means it cannot be accessed from outside the cluster.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:39: So as the name suggests, accessible only within the cluster.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:46: So you must be wondering from where this IP is allocated.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:52: So this is how cluster IP works, but the limitation as you know, it is only accessible within the cluster.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:58: The most important for you here is the type of the service that is a cluster IP.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:68: So most important thing here to note that it's one node port per service.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:78: And in that case, client would have to keep track of which is the active node and only should be able to hit that node, right?
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:84: Typically you should use service type as load balancer.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:85: And for application load balancing, you should use Kubernetes service type as ingress.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:93: If you want to really use the latest feature of NLB then you should be using the newer controller called ALB load balancer controller with which you can use NLB.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:94: You can't use CLB and it is not recommended to use CLB now.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:96: For ingress service type, ingress means that you should be able to have the pod base routing, host base routing, all those features you know that application load balancer supports.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:111: Now one more thing that it only supports the instance mode for the NLB and does not support target as IP addresses.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:113: Rather, you should use NLB.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:114: And for NLB, you should also use the latest controller which is AWS load balancer controller.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:115: So here you can see that now you can only use NLB for load balancer service and you get many more features.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:121: That is one NLB, which means if you're exposing 10 services then 10 network load balances will be required.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:158: Again, that IP address type is dual stack and it is supported only for IP targets, not for the instance target.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:168: So when the client hits the load balancer and ultimately it reaches the pod, if application running in the pod or in a container wants to know the client IP address, how should we do that?
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:178: That means the port B here now can't see the client IP address which originated the request.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:180: That means you can't preserve the client IP.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:183: So what happens, you have external traffic policy equal to local, and the kube-proxy will only send the traffic to the ports on the same node.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:187: So as much traffic you have, only these two ports will receive that traffic.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:194: I understand that it could be a little complex putting all things together, but Kubernetes, in general, is complex and unfortunately we can't cover Kubernetes to the depth that we want to and that's where probably you should focus only on the networking part as of now.
- 242_EKS Custom Networking - Extending IPv4 address space.txt:2: And this is a short lecture, but also important because this is a kind of scenario that can be there in the exam.
- 242_EKS Custom Networking - Extending IPv4 address space.txt:7: So that may land you into this situation where you are working on a limited set of IP addresses inside your VPC and inside your subnet.
- 242_EKS Custom Networking - Extending IPv4 address space.txt:9: If you create a VPC with CIDR/24, only 251 are the unique IPv4 addresses that you can use in that.
- 242_EKS Custom Networking - Extending IPv4 address space.txt:15: Now, one of the constraint with this IP addresses are that they are routable only within the VPC.
- 242_EKS Custom Networking - Extending IPv4 address space.txt:16: That means traffic from outside cannot directly go to these IP addresses, but within the VPC, IPs can be reached from one port to another port, or one EC2 instance to another EC2 instance.
- 242_EKS Custom Networking - Extending IPv4 address space.txt:17: So how do you really make use of these addresses if they cannot be routed from outside?
- 242_EKS Custom Networking - Extending IPv4 address space.txt:24: One range is 10.0.0.0/26, and another range is 100.64.0.0/18 and also what it does after you enable this custom networking, only IPs from secondary ENIs are now assigned to the ports.
- 242_EKS Custom Networking - Extending IPv4 address space.txt:25: Now earlier we have seen that the secondary IPs from even primary ENIs are attached to the ports, but with custom networking to be true, only IPs from this ENIs are attached to the port, which means that all these ports will have the IP addresses from this range 100.64.0.0/16, and that's what we can see here.
- 242_EKS Custom Networking - Extending IPv4 address space.txt:26: Now that means all ports have IP addresses which are routable only within the VPC.
- 242_EKS Custom Networking - Extending IPv4 address space.txt:31: That means NATing should happen at the ENI level of the node, and we are not using the SNAT of the external devices like a NAT.
- 242_EKS Custom Networking - Extending IPv4 address space.txt:44: That means if you're limited by the IP addresses for your VPC, you can add the 164 range.
- 243_EKS Networking Summary.txt:2: Just trying to summarize what we learned in this section quickly, and this is important for your exam.
- 243_EKS Networking Summary.txt:6: But then EKS gives you control where you can configure this endpoint to be only accessible privately or publicly.
- 243_EKS Networking Summary.txt:7: There are multiple combinations of these settings and if you configure it to be only accessible privately, then it can be accessed from customer VPC via this EKS-owned ENIs.
- 243_EKS Networking Summary.txt:12: And for that, you have to use something called prefix delegation and it is supported only on the Nitro-based instances, where for every IP addresses, you get /28 prefix for IPv4, that means 16 additional IP address, and /80 for IPv6 which gives you millions of IP addresses.
- 243_EKS Networking Summary.txt:24: Now, that's a limitation.
- 243_EKS Networking Summary.txt:27: As you know, ClusterIP is accessible from within the cluster only, NodePort is accessible outside and for that, you have to use Node IP address and a static port.
- 243_EKS Networking Summary.txt:38: But if you want to make sure that the client source IP is preserved, then you can set the external traffic policy to the local, but then it may result in uneven load balancing because traffic cannot be sent to the other node service.

### 6. Patterns / Architectures
- 234_Section Introduction.txt:15: So we will cover Kubernetes open source architecture.
- 234_Section Introduction.txt:18: And within the EKS, we will see EKS architecture that is control plane and data plane.
- 234_Section Introduction.txt:19: Then we will see EKS cluster networking as in how AWS manages the control plane and you manage the data plane.
- 234_Section Introduction.txt:23: So please make sure that you understand this topic well, and then we will see some advanced features of EKS networking which comes under EKS custom networking.
- 234_Section Introduction.txt:31: So with that, let's get started with Kubernetes Architecture.
- 235_Kubernetes Architecture.txt:1: Hello, and let's first see the Kubernetes architecture, and here we are going to talk about Kubernetes open source.
- 235_Kubernetes Architecture.txt:5: So it's important for us to first understand the Kubernetes architecture.
- 235_Kubernetes Architecture.txt:13: Okay, if you look at Kubernetes from the top, Kubernetes is deployed as a cluster, and this cluster consists of control plane and a data plane.
- 235_Kubernetes Architecture.txt:29: So this is an high level architecture of the Kubernetes.
- 235_Kubernetes Architecture.txt:31: So this is a closer look at the cluster.
- 235_Kubernetes Architecture.txt:35: Now, important thing here to know that when you are sitting outside of the cluster, of course, as a person, you would want to interact with the Kubernetes cluster.
- 235_Kubernetes Architecture.txt:36: Now, how does admin talk to the Kubernetes cluster?
- 235_Kubernetes Architecture.txt:42: That means if you want to communicate with Kubernetes cluster from outside as an admin, then you make an contact with API server, and then API server will talk to the data plane to make those adjustment to change the state of Kubernetes cluster.
- 235_Kubernetes Architecture.txt:46: Right now, this key value store maintains the state of your cluster.
- 235_Kubernetes Architecture.txt:50: This is all the configuration information that you provide in the form of manifest file and all this configuration information, and you can say the state of your entire cluster is maintained in the key value store as in the etcd.
- 235_Kubernetes Architecture.txt:51: So it maintains all your cluster data.
- 235_Kubernetes Architecture.txt:53: And also if you want to get the state of your cluster, API server will get that state from the cluster and give it as an output on the command line or in the UI.
- 235_Kubernetes Architecture.txt:54: So etcd maintains the cluster information into the persistent store.
- 235_Kubernetes Architecture.txt:75: And Kubernetes has extensible architecture, which means you can integrate Kubernetes with the cloud resources.
- 235_Kubernetes Architecture.txt:97: So it's an agent that runs on each node in the cluster.
- 235_Kubernetes Architecture.txt:102: Kube-proxy basically enables the network communication to the pods from network station, inside or outside of your cluster.
- 235_Kubernetes Architecture.txt:120: Now, let's look at the process when you want to launch any pods, or say application, inside the Kubernetes cluster, then what that flow will look like.
- 235_Kubernetes Architecture.txt:122: You have your Kubernetes cluster on the right side, and there are users of the application sitting here.
- 235_Kubernetes Architecture.txt:137: So you build the image, and now you want to deploy this image into the Kubernetes cluster.
- 235_Kubernetes Architecture.txt:140: Basically tells Kubernetes how to deploy this application to the Kubernetes cluster.
- 235_Kubernetes Architecture.txt:158: For Kubernetes architecture, I hope it is clear that Kubernetes has control plane and data plane, and what are the components of those control plane and data plane.
- 235_Kubernetes Architecture.txt:159: With that, now, we'll move to the EKS architecture.
- 235_Kubernetes Architecture.txt:162: But we'll see how the architecture of the Kubernetes cluster looks into the AWS world.
- 236_Amazon EKS Architecture.txt:2: So in the earlier lecture, we saw the components of Kubernetes cluster.
- 236_Amazon EKS Architecture.txt:4: Now, when it comes to the EKS, of course architecture remains the same, but the responsibility of control plane, and data plane, changes.
- 236_Amazon EKS Architecture.txt:8: So the architecture is similar to what we saw earlier.
- 236_Amazon EKS Architecture.txt:13: Now this is the Kubernetes architecture.
- 236_Amazon EKS Architecture.txt:23: Once these instances are launched, then you want to make sure that the instance gets registered into the Kubernetes cluster as a node.
- 236_Amazon EKS Architecture.txt:25: And if for some reason, the instance is unhealthy, then you would want to take this out of your cluster.
- 236_Amazon EKS Architecture.txt:28: That means provisioning the nodes, and then adding it to the Kubernetes cluster, as well as draining those nodes, in case you want to reduce the capacity, or adding new nodes when you want to increase the capacity.
- 236_Amazon EKS Architecture.txt:36: So that's a very brief about EKS architecture, very similar to the Kubernetes architecture.
- 236_Amazon EKS Architecture.txt:39: That means your cluster will be inside a VPC, or will be launching this data plane nodes inside a VPC.
- 236_Amazon EKS Architecture.txt:40: So it's interesting to see how these nodes communicate, how these ports communicate, how you expose these services outside of the cluster.
- 237_EKS Cluster Networking.txt:1: Hello and welcome to this lecture, "Amazon EKS Cluster Networking." So in the earlier lecture, we understood the EKS architecture.
- 237_EKS Cluster Networking.txt:3: Now in this lecture, let's understand the cluster networking.
- 237_EKS Cluster Networking.txt:7: But here, we are talking about EKS Cluster Networking, that means when you create EKS cluster, then how does your network look like and what are controls you have over that network?
- 237_EKS Cluster Networking.txt:8: So this is about cluster networking and not really about the pod networking, right?
- 237_EKS Cluster Networking.txt:9: So let's start with EKS Cluster Networking first.
- 237_EKS Cluster Networking.txt:28: Now if you look at this architecture, typically it is advised that for this ENIs, you should have a dedicated subnet.
- 237_EKS Cluster Networking.txt:32: Now further, when you create EKS cluster, it also creates security group and these security groups are attached to these ENIs.
- 237_EKS Cluster Networking.txt:37: But this is a default security group which gets created, and then you also get control where you create security group and then you provide the security group ID while you create the cluster.
- 237_EKS Cluster Networking.txt:41: When we talked about the Kubernetes architecture, we said that Kubernetes APIs servers kind of the heart of the communication.
- 237_EKS Cluster Networking.txt:42: If you want to talk to Kubernetes cluster, you need to make an API call to the API server.
- 237_EKS Cluster Networking.txt:44: And if you're using some kind of client, Kubernetes client like kubectl on your workstation, then you need to connect to this control plane API server and then you can deploy your pods, you can create services, you can attach nodes to the Kubernetes cluster.
- 237_EKS Cluster Networking.txt:48: Now, there are ways to disable the internet access and we'll see that in the same lecture, but this is what happens when you create the EKS cluster.
- 237_EKS Cluster Networking.txt:49: Now, one thing to understand that don't get confused between the Kubernetes API server which is used to manage the Kubernetes cluster components.
- 237_EKS Cluster Networking.txt:51: That means if you want to create the cluster, you need to make an API call to AWS.
- 237_EKS Cluster Networking.txt:53: Similarly, you are now making call to the EKS service of AWS and then it creates the cluster for you.
- 237_EKS Cluster Networking.txt:63: So here is the same architecture and then you have kubectl as a client which you can install on your workstation, assuming that you have permissions to connect to the Kubernetes API server then you can very well go over the internet.
- 237_EKS Cluster Networking.txt:64: Now this is a default setting where EKS cluster endpoint public access is enabled and the private access is disabled.
- 237_EKS Cluster Networking.txt:66: But if that is the case, you create the cluster then you can connect from your workstation.
- 237_EKS Cluster Networking.txt:73: So by default, if you enable the cluster endpoint public access then this worker nodes here and it runs kubelet, as you know, needs to communicate with the control plane over the internet as well.
- 237_EKS Cluster Networking.txt:94: If you have that kind of requirement, you can completely disable the public access to your control plane cluster endpoint, right?
- 237_EKS Cluster Networking.txt:97: Now, in this case, we have disabled the EKS cluster endpoint public access, but we have enabled the private access so that it can only be accessed from this EKS owned ENI.
- 237_EKS Cluster Networking.txt:98: So these are the ways in which you can control the access to the EKS cluster endpoint.
- 237_EKS Cluster Networking.txt:100: Now, for example, if you're creating the EKS cluster altogether.
- 237_EKS Cluster Networking.txt:101: Now for creating EKS cluster, you don't need access to the cluster endpoint, right?
- 237_EKS Cluster Networking.txt:102: Because it is after creating the cluster.
- 237_EKS Cluster Networking.txt:105: You can access that, but in certain cases you want to only allow the client inside a VPC, for example, or client inside a private network to create the EKS cluster.
- 237_EKS Cluster Networking.txt:108: And then your client are sitting here, but this time they're not using kubectl, but they're using other tools like eksctl, which is used to create the Kubernetes cluster and eksctl talks to AWS EKS service endpoint, right?
- 237_EKS Cluster Networking.txt:111: To start with, it will create the cluster, and once cluster is available then the kubectl will be used to connect to the control plane and then perform all the operations.
- 237_EKS Cluster Networking.txt:112: Now, this is how the VPCs look like and the, you know, networking look like for your EKS cluster.
- 238_EKS Pod Networking - Part 1.txt:29: Now if you look at this VPC, you have the subnets, and then you could assign IPv4 or IPv6 that we already learned in EKS architecture.
- 238_EKS Pod Networking - Part 1.txt:114: So by default, Kubernetes assigns IPv4 addresses to the pods, but as you know, you could also create your cluster with IPv6 addresses, but EKS doesn't support dual-stack.
- 239_EKS Pod Networking - Part 2.txt:32: That means NATing is happening at the node level here.
- 239_EKS Pod Networking - Part 2.txt:42: They won't see the IP address of this pod because it is getting NATed at the node level.
- 239_EKS Pod Networking - Part 2.txt:57: But in this case, you don't want this NATing to happen at the node level.
- 239_EKS Pod Networking - Part 2.txt:61: That means you are not doing the NAT at the node level, but you are using some external NAT for this kind of communication.
- 239_EKS Pod Networking - Part 2.txt:75: There is no NATing happening here because we have disabled the source NAT at the node level and which also means if any of these networks wants to communicate with the pod, they can directly communicate.
- 239_EKS Pod Networking - Part 2.txt:82: But like EC2 could have multiple ENIs for multi-home kind of architecture, similarly pods could also have multiple ENIs and this is enabled through something called Multus ENI.
- 240_Security Group in EKS - Node and Pod level.txt:13: Now, when it comes to the EKS cluster, when you create the EKS cluster, it also creates the security groups.
- 240_Security Group in EKS - Node and Pod level.txt:30: So all those rules apply if you want to extend the connectivity beyond, you know, EKS cluster.
- 240_Security Group in EKS - Node and Pod level.txt:31: So, this is a default behavior when it comes to the security group of EKS cluster.
- 240_Security Group in EKS - Node and Pod level.txt:33: And optionally, what you can also do is you could have your own security group, and when creating the EKS cluster, you may provide that security group as one of the input, and then EKS will also attach that security group to the EKS owned ENIs.
- 240_Security Group in EKS - Node and Pod level.txt:56: But with this architecture, it is not possible.
- 240_Security Group in EKS - Node and Pod level.txt:62: Not at the node level or the ENI level.
- 240_Security Group in EKS - Node and Pod level.txt:84: So this is a solution where security groups can be used at the Pod level.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:10: This is because, you know pods are non-permanent objects of the Kubernetes cluster.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:12: And for the same reason that pods may be created and destroyed based on scale, based on the event in the Kubernetes cluster, maybe more random kind of, right?
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:13: So pods inside a cluster always keeps moving across the nodes.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:20: So very first type of the service is cluster IP.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:21: Now this is for the service to be exposed within the cluster.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:22: That means one pod can access another pod as a service within the cluster only.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:23: That means it cannot be accessed from outside the cluster.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:24: It is good if all the communication for those services remains within the cluster and you don't need to expose that externally.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:30: Now actually speaking, if you really want to expose the services of the Kubernetes then it is best idea to use a load balancer service and the ingress service.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:34: And the latest way of having the application load balancing at layer seven is ingress service of Kubernetes.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:38: Okay, so let's look at the cluster IP now.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:39: So as the name suggests, accessible only within the cluster.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:41: Now in this, what happens really is, when you create a cluster IP as a service, Kubernetes assigns a virtual IP and then it exposes as a service.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:42: So service is exposed on a virtual IP and this IP is not exposed outside of a cluster.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:47: So when you create a Kubernetes cluster, you can provide the CIDR range for this cluster IP addresses and then Kubernetes will pick any of the IP address from that range.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:48: So you can pass this parameter service cluster IP range.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:49: And if you don't pass it, EKS uses 10.100.0.0/16 or 172.20.0.0/16 server data range for assigning to the cluster virtual IP.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:50: And the kube-proxy daemon on each cluster node defines the cluster IP to the port IP mapping in the IP table rules.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:51: That means the cluster IP service uses IP table rules to really route the traffic to respective ports across different nodes.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:52: So this is how cluster IP works, but the limitation as you know, it is only accessible within the cluster.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:53: The services exposed as the service-name.namespace.svc.cluster.local, you can see you can give the name to the service and then the name space could be different enrollments or different business units likewise, right?
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:54: So that's the cluster IP service.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:55: Now, how do you really deploy the cluster IP?
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:57: So this is a sample manifest file for cluster IP type of the service.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:58: The most important for you here is the type of the service that is a cluster IP.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:67: So NodePort is used to make the Kubernetes services accessible from outside the cluster and exposes the service on each worker node's IP at the static port, called NodePort.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:69: That means if your Kubernetes cluster has 10 services to be exposed outside, you need to have 10 static ports.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:73: And then internally, this node port uses the cluster IP to route traffic to particular pod IP address.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:74: So ultimately there is a pod on top of pod, there is a cluster IP service, and on top of cluster IP there is a NodePort service.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:75: So this is a layered service architecture you can see here.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:80: So we just saw two services as of now Cluster IP and NodePort.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:81: But the right way probably to expose the services is the load balancer and the ingress.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:85: And for application load balancing, you should use Kubernetes service type as ingress.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:96: For ingress service type, ingress means that you should be able to have the pod base routing, host base routing, all those features you know that application load balancer supports.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:98: Earlier this controller used to be called the AWS ALB Ingress Controller, but now everything is combined as AWS load balancer controller and then it deploys ALB in both instance and IP mode for this ingress resource and it works at layer seven.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:102: So of course the load balancer service is used to expose the services to the client outside of the cluster.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:106: And you already know that NodePort service is built on top of the cluster IP service.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:124: And now let's see how to solve that problem by moving to ingress type of the service.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:125: And that's where Kubernetes Ingress is the right way.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:126: If you have the application layer lower balancing, in this case, it exposes services to the client outside of the cluster.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:127: And then it exposes HTTP and HTTPS routes from outside the cluster to services within the cluster.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:132: So ALB is the ingress resource for EKS.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:133: Now this traffic routing is controlled by the rules as defining the ingress resource.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:141: So this is a great way to simplify your architecture using the Kubernetes Ingress resource.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:142: And as I said, for having the Ingress resource, EKS uses AWS load balancer controller which used to be called AWS Ingress controller but has been now renamed too.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:143: So that's Kubernetes Ingress resource.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:144: This is an AWS implementation of ingress controller.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:145: It ultimately translates the ingress rules, parameters and annotation into the ALB configuration.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:146: So what ingress does ALB can also do, the pod based routing, the whole space routing.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:149: So annotations for Ingress class, you have to select the ALB and then you can also share ALB with multiple services.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:159: So that's the way EKS implements the ingress for Kubernetes using the ALB load balancer controller and using ALB as the resource.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:163: If it's an IP address, then target group registers the ports directly so traffic directly goes to the ports but if the target is instance, then ultimately it uses the NodePort on every node and then NodePort internally uses the cluster IP as a service.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:164: So all that we learned, the cluster IP NodePort is still applicable if you are using the instance as a target for your load balancer or ingress service.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:174: For example, if you say external traffic policy equal to cluster, in that case, this kube-proxy here may send the traffic to other nodes and the ports inside other nodes.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:175: So it does proper load balancing across the node if you have the external traffic policy equal to cluster and that's the default policy if you create the load balancer as a service with NLB.
- 242_EKS Custom Networking - Extending IPv4 address space.txt:1: Hello and welcome to this lecture EKS Custom Networking.
- 242_EKS Custom Networking - Extending IPv4 address space.txt:3: Okay, so let's understand what is EKS Custom Networking.
- 242_EKS Custom Networking - Extending IPv4 address space.txt:10: So the solution to this problem is Custom Networking.
- 242_EKS Custom Networking - Extending IPv4 address space.txt:19: So these IPs are routable within the VPC, and you have to enable the VPC CNI Custom Networking to really extend your IP space.
- 242_EKS Custom Networking - Extending IPv4 address space.txt:21: Now what happens in this case, if you enable this custom networking, it adds a secondary ENI, but then it adds this ENI into this another subnet.
- 242_EKS Custom Networking - Extending IPv4 address space.txt:24: One range is 10.0.0.0/26, and another range is 100.64.0.0/18 and also what it does after you enable this custom networking, only IPs from secondary ENIs are now assigned to the ports.
- 242_EKS Custom Networking - Extending IPv4 address space.txt:25: Now earlier we have seen that the secondary IPs from even primary ENIs are attached to the ports, but with custom networking to be true, only IPs from this ENIs are attached to the port, which means that all these ports will have the IP addresses from this range 100.64.0.0/16, and that's what we can see here.
- 242_EKS Custom Networking - Extending IPv4 address space.txt:30: Custom networking can be combined with SNAT.
- 242_EKS Custom Networking - Extending IPv4 address space.txt:43: So this is what the custom networking is.
- 243_EKS Networking Summary.txt:5: EKS cluster API endpoint which is a Kubernetes API, basically, is by default, publicly accessible because this is launched in AWS-managed VPC.
- 243_EKS Networking Summary.txt:14: In that case, you can allocate the secondary CIDR to the VPC in the range 100.64.0.0/16, and then you enable the custom networking.
- 243_EKS Networking Summary.txt:16: And then you use the SNAT feature at the node level so that your private IP address range from 164 is not exposed outside.
- 243_EKS Networking Summary.txt:22: And we saw that with the architecture.
- 243_EKS Networking Summary.txt:26: If you want to expose the Kubernete services, then there are four ways: ClusterIP, NodePort, LoadBalancer, and Ingress.
- 243_EKS Networking Summary.txt:27: As you know, ClusterIP is accessible from within the cluster only, NodePort is accessible outside and for that, you have to use Node IP address and a static port.
- 243_EKS Networking Summary.txt:29: Essentially, you can use either LoadBalancer or Ingress.
- 243_EKS Networking Summary.txt:30: Now, LoadBalancer service typically work for layer four and Ingress for layer seven, but there are multiple implementation of LoadBalancer controller.
- 243_EKS Networking Summary.txt:34: And with Ingress you can use ALB and you can use all the ALB features like path-based routing or the host-based routing.
- 243_EKS Networking Summary.txt:36: And finally, there is something called external traffic policy, which is set to cluster by default.

## Step 3 — Deep Expansion (EKS Networking Concepts)

### Amazon EKS Networking
- What it is: Kubernetes cluster networking model mapped onto AWS VPC primitives.
- Why it exists: Enables container workloads to participate in AWS-native identity, routing, and security boundaries.
- Internal working: Pods and nodes consume VPC networking constructs through the CNI model and cluster services.
- Architecture: Private cluster nodes with controlled ingress/load-balancing exposure and segmented pod communication.
- Key components: Control plane, nodes, pods, CNI, services, ingress, SG models.

## Cross-Cloud Mapping (Concept-First)

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| Managed Kubernetes networking | EKS + VPC CNI | AKS networking | GKE networking |
| Pod-level isolation controls | SG for pods / CNI patterns | NSG / network policy patterns | Network policy / Dataplane controls |
| Service exposure primitives | ClusterIP/NodePort/LoadBalancer/Ingress | Same Kubernetes primitives + Azure integrations | Same Kubernetes primitives + GCP integrations |

### Trade-offs and Decision Notes
- Container orchestration adds abstraction, but underlying IP, routing, and exposure decisions still matter.
- Pod-level controls improve isolation but increase operational complexity and IP planning pressure.
- Kubernetes networking should be treated as both platform engineering and network architecture.

## Phase-wise Architect-Level Organization

### Phase 1 — Foundations
- Model cluster networking before workload onboarding: nodes, pods, services, ingress, and IP boundaries.
- Define where isolation belongs: node, pod, namespace, or ingress layer.

### Phase 2 — Core Services
- Implement pod/service exposure and pod/node security boundaries intentionally.
- Extend address space and custom networking only where scale demands it.

### Phase 3 — Advanced Patterns
- Separate application exposure concerns from internal pod communication design.
- Standardize ingress and cluster networking baselines across teams.

### Phase 4 — System Design
- Reference architecture: private EKS cluster with controlled ingress and explicit pod-level boundaries.
- Scaling considerations: IP exhaustion, pod density, exposure sprawl, cluster operations complexity.
- Cost considerations: load balancer proliferation, address-space growth, and platform-team overhead.

<!-- BEGIN PRACTICE_ENHANCEMENTS -->

## Hands-On Practice (Kid-Friendly Step-by-Step)

### Safety First
- Use a sandbox account only.
- Set a budget alert before creating resources.
- Delete resources after practice to avoid surprise cost.

### Hands-On Signals Found In This KB
- Signal 1: Pods, nodes, services, and ingress each create different network boundaries.
- Signal 2: But here, we are talking about EKS Cluster Networking, that means when you create EKS cluster, then how does your network look like and what are controls you have over that network?
- Signal 3: If you create a VPC with CIDR/24, only 251 are the unique IPv4 addresses that you can use in that.
- Signal 4: Transcript signals that if you create a VPC with CIDR/24, only 251 are the unique IPv4 addresses that you can use in that.
- Signal 5: Key Insights: You can treat them as like hosts, so that when you deploy your application, they are spread across multiple nodes.
- Signal 6: Key Insights: So maybe there are some nodes on which there is less load, so kube-scheduler will decide how to launch this particular pod on this particular node.
- Signal 7: Key Insights: Now, Kubernetes itself doesn't know how to create application load balancer.
- Signal 8: Key Insights: Now, let's look at the process when you want to launch any pods, or say application, inside the Kubernetes cluster, then what that flow will look like.
- Signal 9: Key Insights: It will install required libraries, binary, everything, and it will create a DockerFile out of it.
- Signal 10: Key Insights: So you run the Docker build command, and then it will create the image, and then you push that image to the registry.

### Service-Specific Lab Paths
### Activity 1: Amazon VPC Lab for EKS cluster networking, pod networking, node/pod security groups, service exposure, custom networking
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

### Activity 2: Elastic Load Balancing Lab for EKS cluster networking, pod networking, node/pod security groups, service exposure, custom networking
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

### Activity 3: Amazon EC2 Lab for EKS cluster networking, pod networking, node/pod security groups, service exposure, custom networking
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

### Activity 4: Amazon CloudWatch Lab for EKS cluster networking, pod networking, node/pod security groups, service exposure, custom networking
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

Use this lens to study EKS cluster networking, pod networking, node/pod security groups, service exposure, custom networking in a cloud-agnostic way: focus on capability first, provider name second.

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
| Elastic Load Balancing | Elastic Load Balancing | Azure Load Balancer or Application Gateway | Cloud Load Balancing |
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

