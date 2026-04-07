# Concept Card: Platform Engineering

## Definition
Transcript evidence থেকে derived canonical definition; conflicting views থাকলে সব variant রাখা হয়েছে।

## First Principles
System boundary, control loop, এবং failure behavior দৃষ্টিতে concept ব্যাখ্যা করতে হবে।

## Mental Model
এই concept-কে runtime contract হিসেবে ধরলে debugging ও design decisions সহজ হয়।

## Why It Exists
Operational complexity কমানো এবং reliable automation enable করা।

## Internal Working
Control plane state reconciliation + node-level execution pathway।

## YAML and Command Usage
Related raw commands এবং manifests reference-based রাখা হয়েছে; no rewrite of original evidence.

## Use Cases
Lab, production-like demos, and certification patterns থেকে mapped।

## Edge Cases
Version mismatch, policy conflict, scheduling/storage/network constraints উল্লেখ করা হয়েছে।

## Pitfalls
Warning/Pitfall entries evidence সহ retain করা হয়েছে।

## Troubleshooting Angle
Symptom -> Cause -> Fix logic chain evidence-based maintain করা হয়েছে।

## Exam Relevance
CKA/CKAD speed + correctness + troubleshooting expectations mapped।

## Source Contributions

### Evidence 1: certified-kubernetes-administrator-with-practice-tests/01_Introduction/001_Course Introduction.extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 01_Introduction / 001_Course Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: Kubernetes is the go-to platform for hosting production grade applications.
- Multi-concept tags: Platform Engineering

### Evidence 2: certified-kubernetes-administrator-with-practice-tests/01_Introduction/001_Course Introduction.extraction.md::E9
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 01_Introduction / 001_Course Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: Yes, you don't need to have a high-end system or access to cloud platforms or worry about cloud costs to gain practice.
- Multi-concept tags: Platform Engineering

### Evidence 3: certified-kubernetes-administrator-with-practice-tests/01_Introduction/004_The Kubernetes Trilogy.extraction.md::E4
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 01_Introduction / 004_The Kubernetes Trilogy.txt
- Line Context: Lines 1-1 from transcript
- Content: It is supported on any cloud platform and supports hosting enhanced and complex applications on various kinds of architectures that make it a vast and complex technology.
- Multi-concept tags: Architecture, Platform Engineering

### Evidence 4: certified-kubernetes-administrator-with-practice-tests/01_Introduction/004_The Kubernetes Trilogy.extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 01_Introduction / 004_The Kubernetes Trilogy.txt
- Line Context: Lines 1-1 from transcript
- Content: You only need to know the real basics of development on a platform like Python or Node.js.
- Multi-concept tags: Architecture, Platform Engineering

### Evidence 5: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/018_Pods.extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 018_Pods.txt
- Line Context: Lines 1-1 from transcript
- Content: So what I'm trying to illustrate in this slide is that pods usually have a 1 to 1 relationship, with containers running your application.
- Multi-concept tags: Pods, Platform Engineering

### Evidence 6: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/018_Pods.extraction.md::E32
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 018_Pods.txt
- Line Context: Lines 1-1 from transcript
- Content: As we discussed in the previous slide, if our intention was to scale our application, then we would need to create additional pods.
- Multi-concept tags: Pods, Platform Engineering

### Evidence 7: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/021_Practice Test Introduction.extraction.md::E33
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 021_Practice Test Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: Now remember that this is not a replica of the actual Kubernetes certification exam, so the interface and your experience in the actual exam is going to be slightly different than this.
- Multi-concept tags: CKA-CKAD, Platform Engineering

### Evidence 8: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/026_Recap - ReplicaSets.extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 026_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: However, whatever we discussed in the previous few slides remain applicable to both these technologies.
- Multi-concept tags: Deployments, Platform Engineering

### Evidence 9: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/026_Recap - ReplicaSets.extraction.md::E84
- Type: Comparison
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 026_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: I will elaborate this in the next slide, but before we get into that, I would like to mention that the selector is one of the major differences between replication controller and replica set.
- Multi-concept tags: Deployments, Scheduling, Platform Engineering

### Evidence 10: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/026_Recap - ReplicaSets.extraction.md::E85
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 026_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: The selector is not a required field in case of a replication controller, but it is still available when you skip it, as we did in the previous slide.
- Multi-concept tags: Deployments, Scheduling, Platform Engineering

### Evidence 11: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/026_Recap - ReplicaSets.extraction.md::E111
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 026_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: We need three replicas and we have updated our selector based on our discussion in the previous slide.
- Multi-concept tags: Deployments, Scheduling, Platform Engineering

### Evidence 12: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/026_Recap - ReplicaSets.extraction.md::E112
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 026_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: Say for instance, we have the same scenario as in the previous slide where we have three existing parts that were created already.
- Multi-concept tags: Deployments, Platform Engineering

### Evidence 13: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/029_Deployments.extraction.md::E31
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 029_Deployments.txt
- Line Context: Lines 1-1 from transcript
- Content: We will see how to take advantage of the deployment using the use cases we discussed in the previous slide in the upcoming lectures.
- Multi-concept tags: Deployments, Platform Engineering

### Evidence 14: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/033_Services.extraction.md::E37
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 033_Services.txt
- Line Context: Lines 1-1 from transcript
- Content: Getting back to Nodeport a few slides back, we discussed about external access to the application.
- Multi-concept tags: Services, Architecture, Platform Engineering

### Evidence 15: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/035_Services - Loadbalancer.extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 035_Services - Loadbalancer.txt
- Line Context: Lines 1-1 from transcript
- Content: However, if we were on a supported cloud platform like Google Cloud or AWS or Azure, I could leverage the native load balancer of that cloud platform.
- Multi-concept tags: Services, Cross-Cloud, Platform Engineering

### Evidence 16: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/035_Services - Loadbalancer.extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 035_Services - Loadbalancer.txt
- Line Context: Lines 1-1 from transcript
- Content: Now remember that this only works with supported cloud platforms.
- Multi-concept tags: Services, Platform Engineering

### Evidence 17: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/035_Services - Loadbalancer.extraction.md::E31
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 035_Services - Loadbalancer.txt
- Line Context: Lines 1-1 from transcript
- Content: So later on, um, when we walk through, uh, the demos of deploying our application on cloud platforms, um, we will see this in action.
- Multi-concept tags: Services, Platform Engineering

### Evidence 18: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/046_Kubectl Apply Command.extraction.md::E34
- Type: Comparison
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 046_Kubectl Apply Command.txt
- Line Context: Lines 1-1 from transcript
- Content: So once you use the apply command going forward, whenever a change is made, the apply command compares all three sections the local pod definition file, the live object configuration, and the last applied configuration stored within the live object configuration file for deciding what changes are to be made to the live configuration, similar to what we saw in the previous slide.
- Multi-concept tags: Pods, Configuration, Platform Engineering

### Evidence 19: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E54
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: Now that behavior is defined by the preemption policy defined in the priority class assigned to the new workload.
- Multi-concept tags: Scheduling, Platform Engineering

### Evidence 20: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E55
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: If the preemption policy is not set, its default value is set to preempt a lower priority.
- Multi-concept tags: Scheduling, Platform Engineering

### Evidence 21: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E57
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: But if you do not want it to kill or evict the existing workload, and instead wait for the cluster resources to free up, then you must set this preemption policy to never.
- Multi-concept tags: Scheduling, Architecture, Platform Engineering

### Evidence 22: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E58
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: So a preemption policy set to never makes the pods in that priority class non preempting, meaning that they cannot preempt other pods and it will wait to be scheduled in the scheduling queue.
- Multi-concept tags: Pods, Scheduling, Platform Engineering

### Evidence 23: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E62
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: That is defined by the preemption policy.
- Multi-concept tags: Scheduling, Platform Engineering

### Evidence 24: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E79
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: And if you run it as a deployment then you'll probably see a slightly different naming convention.
- Multi-concept tags: Deployments, Scheduling, Platform Engineering

### Evidence 25: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/082_(2025 Updates)Admission Controllers.extraction.md::E29
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 082_(2025 Updates)Admission Controllers.txt
- Line Context: Lines 1-1 from transcript
- Content: We will go over some examples in the upcoming slides.
- Multi-concept tags: Security-RBAC, CKA-CKAD, Platform Engineering

### Evidence 26: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/085_(2025 Updates)Validating and Mutating Admission Controllers.extraction.md::E41
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 085_(2025 Updates)Validating and Mutating Admission Controllers.txt
- Line Context: Lines 1-1 from transcript
- Content: Now this could be an API server that could be built on any platform.
- Multi-concept tags: Security-RBAC, Architecture, Platform Engineering

### Evidence 27: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/089_Monitor Cluster Components.extraction.md::E10
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 089_Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: However, hipster is now deprecated and a slimmed down version was formed, known as the Metrics Server.
- Multi-concept tags: Architecture, Observability, Platform Engineering

### Evidence 28: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/096_Rolling Updates and Rollbacks.extraction.md::E36
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 096_Rolling Updates and Rollbacks.txt
- Line Context: Lines 1-1 from transcript
- Content: When you upgrade your application, as we saw in the previous slide, the Kubernetes deployment object creates a new replica set under the hood and starts deploying the containers there.
- Multi-concept tags: Deployments, Platform Engineering

### Evidence 29: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/116_Multi container Pods Design Pattern.extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 116_Multi container Pods Design Pattern.txt
- Line Context: Lines 1-1 from transcript
- Content: So we'll see how to do that in the upcoming slides.
- Multi-concept tags: Pods, Platform Engineering

### Evidence 30: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/116_Multi container Pods Design Pattern.extraction.md::E55
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 116_Multi container Pods Design Pattern.txt
- Line Context: Lines 1-1 from transcript
- Content: However the init container continues to run as it has a restart policy set to always.
- Multi-concept tags: Pods, Platform Engineering

### Evidence 31: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/126_(2025 Updates) In-Place Resize of Pods_.extraction.md::E18
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 126_(2025 Updates) In-Place Resize of Pods_.txt
- Line Context: Lines 1-1 from transcript
- Content: And once this is enabled, the Pod definition supports a set of resize policy parameters, which we will look at next.
- Multi-concept tags: Pods, Platform Engineering

### Evidence 32: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/126_(2025 Updates) In-Place Resize of Pods_.extraction.md::E19
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 126_(2025 Updates) In-Place Resize of Pods_.txt
- Line Context: Lines 1-1 from transcript
- Content: So the new resize policy options allow you to specify a restart policy for each resource.
- Multi-concept tags: Pods, Platform Engineering

### Evidence 33: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.extraction.md::E32
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Line Context: Lines 1-1 from transcript
- Content: And if the pod is beyond the threshold, it kills the pod and whether it kills or not, that depends on the policy that we'll talk about in a bit.
- Multi-concept tags: Pods, Platform Engineering

### Evidence 34: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.extraction.md::E42
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Line Context: Lines 1-1 from transcript
- Content: And finally we have the update policy mode.
- Multi-concept tags: Pods, Platform Engineering

### Evidence 35: certified-kubernetes-administrator-with-practice-tests/07_Security/144_Kubernetes Security Primitives.extraction.md::E2
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 144_Kubernetes Security Primitives.txt
- Line Context: Lines 1-1 from transcript
- Content: Kubernetes being the go to platform for hosting production grid applications.
- Multi-concept tags: Security-RBAC, Platform Engineering

### Evidence 36: certified-kubernetes-administrator-with-practice-tests/07_Security/162_Authorization.extraction.md::E29
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 162_Authorization.txt
- Line Context: Lines 1-1 from transcript
- Content: You do this by creating a policy file with a set of policies defined in a JSON format.
- Multi-concept tags: Security-RBAC, Platform Engineering

### Evidence 37: certified-kubernetes-administrator-with-practice-tests/07_Security/162_Authorization.extraction.md::E31
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 162_Authorization.txt
- Line Context: Lines 1-1 from transcript
- Content: Similarly, we create a policy definition file for each user or group in this file.
- Multi-concept tags: Security-RBAC, Platform Engineering

### Evidence 38: certified-kubernetes-administrator-with-practice-tests/07_Security/162_Authorization.extraction.md::E32
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 162_Authorization.txt
- Line Context: Lines 1-1 from transcript
- Content: Now, every time you need to add or make a change in the security, you must edit this policy file manually and restart the kube API server.
- Multi-concept tags: Security-RBAC, Architecture, Platform Engineering

### Evidence 39: certified-kubernetes-administrator-with-practice-tests/07_Security/162_Authorization.extraction.md::E48
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 162_Authorization.txt
- Line Context: Lines 1-1 from transcript
- Content: For instance, Open Policy Agent is a third party tool that helps with admission control and authorization.
- Multi-concept tags: Security-RBAC, Platform Engineering

### Evidence 40: certified-kubernetes-administrator-with-practice-tests/07_Security/162_Authorization.extraction.md::E49
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 162_Authorization.txt
- Line Context: Lines 1-1 from transcript
- Content: You can have Kubernetes make an API call to the open policy agent with the information about the user and his access requirements, and have the open policy agent decide if the user should be permitted or not.
- Multi-concept tags: Security-RBAC, Platform Engineering

### Evidence 41: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E1
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: So let us first get our networking and security basics right.
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 42: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E2
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: And I'm sorry if this is too basic, but I just wanted to spend a minute on this to make sure we're all on the same page before we begin.
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 43: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E3
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: We will start with a simple example of a traffic flowing through a web app and database server.
- Multi-concept tags: Networking, Security-RBAC, CKA-CKAD, Platform Engineering

### Evidence 44: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: So you have a web server serving front end to users and app server serving back end APIs and a database server.
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 45: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: The user sends in a request to the web server at port 80.
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 46: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E6
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: The web server then sends a request to the API server at port 5000.
- Multi-concept tags: Networking, Security-RBAC, Architecture, Platform Engineering

### Evidence 47: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E7
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: In the backend, the API server then fetches data from the database server at port 3306, and then sends the data back to the user.
- Multi-concept tags: Networking, Security-RBAC, Architecture, Platform Engineering

### Evidence 48: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: A very simple setup.
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 49: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E9
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: So there are two types of traffic here ingress and egress.
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 50: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E10
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, for a web server, the incoming traffic from the users is an ingress traffic and the outgoing request to the app server is egress traffic and that is denoted by the straight arrow.
- Multi-concept tags: Networking, Security-RBAC, CKA-CKAD, Platform Engineering

### Evidence 51: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: When you define ingress and egress.
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 52: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: Remember you're only looking at the direction in which the traffic originated.
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 53: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E13
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: The response back to the user, denoted by the dotted lines, do not really matter.
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 54: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E14
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: Similarly, in case of the back end API server, it receives ingress traffic from the web server on port 5000 and has egress traffic to port 3306 to the database server, and from the database servers perspective, it receives ingress traffic on port 3306 from the API server.
- Multi-concept tags: Networking, Security-RBAC, Architecture, Platform Engineering

### Evidence 55: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E15
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: If we were to list the rules required to get this working, we would have an ingress rule that is required to accept HTTP traffic on port 80 on the web server, and egress rule to allow traffic from the web server to port 5000 on the API server, and ingress rule to accept traffic on port 5000 on the API server, and an egress rule to allow traffic to port 3306 on the database server.
- Multi-concept tags: Networking, Security-RBAC, Architecture, Platform Engineering

### Evidence 56: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E16
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: And finally, an ingress rule on the database server to accept traffic on port 3306.
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 57: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E17
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: So that's the basic of traffic flow and rules.
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 58: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: Let us now look at network security in Kubernetes.
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 59: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E19
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: So we have a cluster with a set of nodes hosting a set of pods and services.
- Multi-concept tags: Pods, Services, Networking, Security-RBAC, Architecture, Platform Engineering

### Evidence 60: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: Each node has an IP address and so does each pod as well as service.
- Multi-concept tags: Pods, Services, Networking, Security-RBAC, Architecture, Platform Engineering

### Evidence 61: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E21
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: One of the prerequisites for networking in Kubernetes is whatever solution you implement, the pods should be able to communicate with each other without having to configure any additional settings like routes.
- Multi-concept tags: Pods, Networking, Security-RBAC, Platform Engineering

### Evidence 62: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E22
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, in this network solution, all pods are on a virtual private network that spans across the nodes in the Kubernetes cluster, and they can all by default reach each other using the IPS or pod names or services Cells configured for that purpose.
- Multi-concept tags: Pods, Services, Networking, Security-RBAC, Architecture, CKA-CKAD, Platform Engineering

### Evidence 63: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E23
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: Kubernetes is configured by default with an all allow rule that allows traffic from any pod to any other pod or services within the cluster.
- Multi-concept tags: Pods, Services, Networking, Security-RBAC, Architecture, Platform Engineering

### Evidence 64: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: Let us now bring back our earlier discussion and see how it fits into Kubernetes.
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 65: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E25
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: For each component in the application, we deploy a pod one for the front end web server, for the API server, and one for the database.
- Multi-concept tags: Pods, Networking, Security-RBAC, Architecture, Platform Engineering

### Evidence 66: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E26
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: We create services to enable communication between the pods as well as to the end user, based on what we discussed in the previous slide.
- Multi-concept tags: Pods, Services, Networking, Security-RBAC, Platform Engineering

### Evidence 67: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: By default, all the three pods can communicate with each other within the Kubernetes cluster.
- Multi-concept tags: Pods, Networking, Security-RBAC, Architecture, Platform Engineering

### Evidence 68: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E28
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: What if we do not want the front end web server to be able to communicate with the database server directly?
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 69: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E29
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: Say for example, your security teams and audits require you to prevent that from happening.
- Multi-concept tags: Networking, Security-RBAC, Observability, CKA-CKAD, Platform Engineering

### Evidence 70: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E30
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: That is where you would implement a network policy to allow traffic to the DB server only from the API server and network policy is another object in the Kubernetes namespace, just like pods, replica sets, or services.
- Multi-concept tags: Pods, Services, Networking, Security-RBAC, Architecture, Platform Engineering

### Evidence 71: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E31
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: You link a network policy to one or more pods.
- Multi-concept tags: Pods, Networking, Security-RBAC, Platform Engineering

### Evidence 72: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E32
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: You can define rules within the network policy.
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 73: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E33
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: In this case, I would say only allow ingress traffic from the API pod on port 3306.
- Multi-concept tags: Pods, Networking, Security-RBAC, Platform Engineering

### Evidence 74: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E34
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: Once this policy is created, it blocks all other traffic to the pod and only allows traffic that matches the specified rule.
- Multi-concept tags: Pods, Networking, Security-RBAC, Platform Engineering

### Evidence 75: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E35
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: Again, this is only applicable to the pod on which the network policy is applied.
- Multi-concept tags: Pods, Networking, Security-RBAC, Platform Engineering

### Evidence 76: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E36
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: So how do you apply or link a network policy to a pod?
- Multi-concept tags: Pods, Networking, Security-RBAC, Platform Engineering

### Evidence 77: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E37
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: We use the same technique that was used before to link replica sets or services to pods.
- Multi-concept tags: Pods, Services, Networking, Security-RBAC, Platform Engineering

### Evidence 78: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E38
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: Labels and selectors.
- Multi-concept tags: Networking, Scheduling, Security-RBAC, Platform Engineering

### Evidence 79: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E39
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: We label the pod and use the same labels on the port selector field in the network policy.
- Multi-concept tags: Pods, Networking, Scheduling, Security-RBAC, Platform Engineering

### Evidence 80: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E40
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: And then we build our rule.
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 81: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E41
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: Under policy types specify whether the rule is to allow ingress or egress, traffic, or both.
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 82: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E42
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: In our case, we only want to allow ingress traffic to the DB pod.
- Multi-concept tags: Pods, Networking, Security-RBAC, Platform Engineering

### Evidence 83: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E43
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: So we add ingress.
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 84: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E44
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: Next we specify the ingress rule that allows traffic from the API pod, and you specify the API pod again using labels and selectors.
- Multi-concept tags: Pods, Networking, Scheduling, Security-RBAC, Platform Engineering

### Evidence 85: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E45
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: And finally the port to allow traffic on which is 3306.
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 86: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E46
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: Let us put all that together.
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 87: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E47
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: We start with a blank object definition file.
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 88: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E48
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: And as usual we have API version kind metadata and spec.
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 89: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E49
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: The API version is networking.io v1.
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 90: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E50
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: The kind is network policy.
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 91: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E51
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: We will name the policy db dash policy.
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 92: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E52
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: And then under the spec section we will first move the pod selector to apply this policy to the DB pod.
- Multi-concept tags: Pods, Networking, Scheduling, Security-RBAC, Platform Engineering

### Evidence 93: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E53
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: Then we will move the rule we created in the previous slide under it.
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 94: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E54
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: And that's it.
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 95: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E55
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: We have our first network policy ready.
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 96: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E56
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: Run the cube control.
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 97: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E57
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: Create command to create the policy.
- Multi-concept tags: Networking, Security-RBAC, Configuration, Platform Engineering

### Evidence 98: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E58
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: Remember that network policies are enforced by the network solution implemented on Kubernetes cluster.
- Multi-concept tags: Networking, Security-RBAC, Architecture, Platform Engineering

### Evidence 99: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E59
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: And not all network solutions support network policies.
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 100: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E60
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: A few of them that are supported are cube, router, calico, Romana, and WaveNet.
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 101: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E61
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: If you used flannel as the networking solution, it does not support network policies as of this recording.
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 102: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E62
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: Always refer to the Network Solutions documentation to see support for network policies.
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 103: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E63
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: Also remember, even in a cluster configured with a solution that does not support network policies, you can still create the policies, but they will just not be enforced.
- Multi-concept tags: Networking, Security-RBAC, Architecture, Platform Engineering

### Evidence 104: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E64
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: You will not get an error message saying the network solution does not support network policies.
- Multi-concept tags: Networking, Security-RBAC, Troubleshooting, Platform Engineering

### Evidence 105: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E65
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: Well, that's it for this lecture.
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 106: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E66
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: Walk through the documentation and head over to the Coding Challenges to Practice network policies.
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 107: certified-kubernetes-administrator-with-practice-tests/07_Security/180_Developing network policies.extraction.md::E13
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 180_Developing network policies.txt
- Line Context: Lines 1-1 from transcript
- Content: So we create a network policy.
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 108: certified-kubernetes-administrator-with-practice-tests/07_Security/180_Developing network policies.extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 180_Developing network policies.txt
- Line Context: Lines 1-1 from transcript
- Content: We will call it DB policy.
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 109: certified-kubernetes-administrator-with-practice-tests/07_Security/180_Developing network policies.extraction.md::E15
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 180_Developing network policies.txt
- Line Context: Lines 1-1 from transcript
- Content: And the first step is to associate this network policy with the pod that we want to protect.
- Multi-concept tags: Pods, Networking, Security-RBAC, Platform Engineering

### Evidence 110: certified-kubernetes-administrator-with-practice-tests/07_Security/180_Developing network policies.extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 180_Developing network policies.txt
- Line Context: Lines 1-1 from transcript
- Content: And that associates the network policy with the database pod and blocks out all traffic.
- Multi-concept tags: Pods, Networking, Security-RBAC, Platform Engineering

### Evidence 111: certified-kubernetes-administrator-with-practice-tests/07_Security/180_Developing network policies.extraction.md::E21
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 180_Developing network policies.txt
- Line Context: Lines 1-1 from transcript
- Content: First, we need to figure out what type of policies should be defined on this network policy object to meet our requirements.
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 112: certified-kubernetes-administrator-with-practice-tests/07_Security/180_Developing network policies.extraction.md::E37
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 180_Developing network policies.txt
- Line Context: Lines 1-1 from transcript
- Content: So a single network policy can have an ingress type of rule, an egress type of rule, or both.
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 113: certified-kubernetes-administrator-with-practice-tests/07_Security/180_Developing network policies.extraction.md::E40
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 180_Developing network policies.txt
- Line Context: Lines 1-1 from transcript
- Content: Policy types.
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 114: certified-kubernetes-administrator-with-practice-tests/07_Security/180_Developing network policies.extraction.md::E41
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 180_Developing network policies.txt
- Line Context: Lines 1-1 from transcript
- Content: Now that we have decided on the type of policy.
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 115: certified-kubernetes-administrator-with-practice-tests/07_Security/180_Developing network policies.extraction.md::E42
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 180_Developing network policies.txt
- Line Context: Lines 1-1 from transcript
- Content: The next step is to define the specifics of that policy.
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 116: certified-kubernetes-administrator-with-practice-tests/07_Security/180_Developing network policies.extraction.md::E51
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 180_Developing network policies.txt
- Line Context: Lines 1-1 from transcript
- Content: This would create a policy that would block all traffic to the DB pod, except for traffic from the API pod.
- Multi-concept tags: Pods, Networking, Security-RBAC, Platform Engineering

### Evidence 117: certified-kubernetes-administrator-with-practice-tests/07_Security/180_Developing network policies.extraction.md::E55
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 180_Developing network policies.txt
- Line Context: Lines 1-1 from transcript
- Content: The current policy would allow any pod in any namespace with matching labels to reach the database pod.
- Multi-concept tags: Pods, Networking, Security-RBAC, Platform Engineering

### Evidence 118: certified-kubernetes-administrator-with-practice-tests/07_Security/180_Developing network policies.extraction.md::E70
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 180_Developing network policies.txt
- Line Context: Lines 1-1 from transcript
- Content: We could configure a network policy to allow traffic originating from certain IP addresses.
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 119: certified-kubernetes-administrator-with-practice-tests/07_Security/180_Developing network policies.extraction.md::E102
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 180_Developing network policies.txt
- Line Context: Lines 1-1 from transcript
- Content: So we first add egress to the policy types.
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 120: certified-kubernetes-administrator-with-practice-tests/07_Security/180_Developing network policies.extraction.md::E103
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 180_Developing network policies.txt
- Line Context: Lines 1-1 from transcript
- Content: And then we add a new egress section to define the specifics of the policy.
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 121: certified-kubernetes-administrator-with-practice-tests/07_Security/182_Lab Solution - Network Policies (optional).extraction.md::E19
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 182_Lab Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So you have the payroll policy.
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 122: certified-kubernetes-administrator-with-practice-tests/07_Security/182_Lab Solution - Network Policies (optional).extraction.md::E21
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 182_Lab Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that's the short form for network policy.
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 123: certified-kubernetes-administrator-with-practice-tests/07_Security/182_Lab Solution - Network Policies (optional).extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 182_Lab Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So there is one policy and that's called as "The Payroll Policy".
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 124: certified-kubernetes-administrator-with-practice-tests/07_Security/182_Lab Solution - Network Policies (optional).extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 182_Lab Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So there's one policy in total.
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 125: certified-kubernetes-administrator-with-practice-tests/07_Security/182_Lab Solution - Network Policies (optional).extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 182_Lab Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So what is the name of the network policy?
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 126: certified-kubernetes-administrator-with-practice-tests/07_Security/182_Lab Solution - Network Policies (optional).extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 182_Lab Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: That is Payroll Policy.
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 127: certified-kubernetes-administrator-with-practice-tests/07_Security/182_Lab Solution - Network Policies (optional).extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 182_Lab Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so which part is the network policy applied on?
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 128: certified-kubernetes-administrator-with-practice-tests/07_Security/182_Lab Solution - Network Policies (optional).extraction.md::E31
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 182_Lab Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So the network policy named "Payroll Policy" is applied on the pod, which is called a "Payroll".
- Multi-concept tags: Pods, Networking, Security-RBAC, Platform Engineering

### Evidence 129: certified-kubernetes-administrator-with-practice-tests/07_Security/182_Lab Solution - Network Policies (optional).extraction.md::E36
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 182_Lab Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So there are no restrictions but as soon as you apply a network policy, it's kind of blocked.
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 130: certified-kubernetes-administrator-with-practice-tests/07_Security/182_Lab Solution - Network Policies (optional).extraction.md::E39
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 182_Lab Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So what type of traffic is the network policy configured to handle?
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 131: certified-kubernetes-administrator-with-practice-tests/07_Security/182_Lab Solution - Network Policies (optional).extraction.md::E40
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 182_Lab Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's look at the network policy in more details.
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 132: certified-kubernetes-administrator-with-practice-tests/07_Security/182_Lab Solution - Network Policies (optional).extraction.md::E41
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 182_Lab Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's do a kubectl describe net poll Payroll Policy.
- Multi-concept tags: Networking, Security-RBAC, On-Prem, Platform Engineering

### Evidence 133: certified-kubernetes-administrator-with-practice-tests/07_Security/182_Lab Solution - Network Policies (optional).extraction.md::E47
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 182_Lab Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So what type of traffic is the network policy configured to handle, is just ingress.
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 134: certified-kubernetes-administrator-with-practice-tests/07_Security/182_Lab Solution - Network Policies (optional).extraction.md::E48
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 182_Lab Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, now what is the impact of the rule configured on this network policy?
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 135: certified-kubernetes-administrator-with-practice-tests/07_Security/182_Lab Solution - Network Policies (optional).extraction.md::E57
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 182_Lab Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now what is the impact of the rule configured on this network policy?
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 136: certified-kubernetes-administrator-with-practice-tests/07_Security/182_Lab Solution - Network Policies (optional).extraction.md::E73
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 182_Lab Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna try and see, we've said this in your policy but we're just gonna see it for real.
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 137: certified-kubernetes-administrator-with-practice-tests/07_Security/182_Lab Solution - Network Policies (optional).extraction.md::E89
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 182_Lab Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now finally, we have to create a network policy to allow traffic from the internal application only to the payroll service and DB service.
- Multi-concept tags: Services, Networking, Security-RBAC, Platform Engineering

### Evidence 138: certified-kubernetes-administrator-with-practice-tests/07_Security/182_Lab Solution - Network Policies (optional).extraction.md::E94
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 182_Lab Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we have to create an Azure policy named "Internal Policy".
- Multi-concept tags: Networking, Security-RBAC, Cross-Cloud, Platform Engineering

### Evidence 139: certified-kubernetes-administrator-with-practice-tests/07_Security/182_Lab Solution - Network Policies (optional).extraction.md::E96
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 182_Lab Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we have to, for, so after creating the policy we need to associate it with the internal pod.
- Multi-concept tags: Pods, Networking, Security-RBAC, Platform Engineering

### Evidence 140: certified-kubernetes-administrator-with-practice-tests/07_Security/182_Lab Solution - Network Policies (optional).extraction.md::E99
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 182_Lab Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And then the policy is egress.
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 141: certified-kubernetes-administrator-with-practice-tests/07_Security/182_Lab Solution - Network Policies (optional).extraction.md::E107
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 182_Lab Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's create a file called "internalpolicy.YMAL".
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 142: certified-kubernetes-administrator-with-practice-tests/07_Security/182_Lab Solution - Network Policies (optional).extraction.md::E108
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 182_Lab Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so the policy name.
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 143: certified-kubernetes-administrator-with-practice-tests/07_Security/182_Lab Solution - Network Policies (optional).extraction.md::E109
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 182_Lab Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So the policy name has to be "Internal policy".
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 144: certified-kubernetes-administrator-with-practice-tests/07_Security/182_Lab Solution - Network Policies (optional).extraction.md::E138
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 182_Lab Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so this particular policy, so we're gonna remove ingress from here.
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 145: certified-kubernetes-administrator-with-practice-tests/07_Security/182_Lab Solution - Network Policies (optional).extraction.md::E139
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 182_Lab Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So what this does is it creates a policy for the internal, it creates an internal policy for the internal pod using this label.
- Multi-concept tags: Pods, Networking, Security-RBAC, Platform Engineering

### Evidence 146: certified-kubernetes-administrator-with-practice-tests/07_Security/182_Lab Solution - Network Policies (optional).extraction.md::E143
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 182_Lab Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now let's create that policy.
- Multi-concept tags: Networking, Security-RBAC, Platform Engineering

### Evidence 147: certified-kubernetes-administrator-with-practice-tests/07_Security/182_Lab Solution - Network Policies (optional).extraction.md::E144
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 182_Lab Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, let's do a describe internal policy and we'll verify the pod selector and egress traffic configuration.
- Multi-concept tags: Pods, Networking, Scheduling, Security-RBAC, On-Prem, Platform Engineering

### Evidence 148: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E44
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Proper cleanup can involve unmount, detach, file system, reformat, snapshot, retain policy handling, encryption, key rotation, or provider level delete calls.
- Multi-concept tags: Storage, Platform Engineering

### Evidence 149: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E69
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: The access mode is read, write many and the persistent volume reclaim policy going to be... retained.
- Multi-concept tags: Storage, Platform Engineering

### Evidence 150: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E79
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: And the reclaim policy is retained.
- Multi-concept tags: Storage, Platform Engineering

### Evidence 151: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E109
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: We have the reclaim policy set.
- Multi-concept tags: Storage, Platform Engineering

### Evidence 152: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E110
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: The name of these policy is the PV and PVC does not really matter.
- Multi-concept tags: Storage, Platform Engineering

### Evidence 153: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E151
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so the next question is what is the reclaim policy set on the persistent volume PV dash log?
- Multi-concept tags: Storage, Platform Engineering

### Evidence 154: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E155
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So we know that with the reclaim policy set to retain, the PV is going to be... retained.
- Multi-concept tags: Storage, Platform Engineering

### Evidence 155: certified-kubernetes-administrator-with-practice-tests/09_Networking/206_Prerequisite DNS.extraction.md::E144
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 206_Prerequisite DNS.txt
- Line Context: Lines 1-1 from transcript
- Content: There are a few other tools as well, such as Nslookup.
- Multi-concept tags: Networking, Platform Engineering

### Evidence 156: certified-kubernetes-administrator-with-practice-tests/09_Networking/206_Prerequisite DNS.extraction.md::E145
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 206_Prerequisite DNS.txt
- Line Context: Lines 1-1 from transcript
- Content: You can use Nslookup to query a hostname from a DNS server.
- Multi-concept tags: Networking, Platform Engineering

### Evidence 157: certified-kubernetes-administrator-with-practice-tests/09_Networking/206_Prerequisite DNS.extraction.md::E146
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 206_Prerequisite DNS.txt
- Line Context: Lines 1-1 from transcript
- Content: But remember Nslookup does not consider the entries in the local Etsy host file.
- Multi-concept tags: Networking, Platform Engineering

### Evidence 158: certified-kubernetes-administrator-with-practice-tests/09_Networking/206_Prerequisite DNS.extraction.md::E147
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 206_Prerequisite DNS.txt
- Line Context: Lines 1-1 from transcript
- Content: So if you add an entry into the local Etsy host file for your web application, and if you try to do an nslookup for that web application, it is not going to find it.
- Multi-concept tags: Networking, Platform Engineering

### Evidence 159: certified-kubernetes-administrator-with-practice-tests/09_Networking/206_Prerequisite DNS.extraction.md::E149
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 206_Prerequisite DNS.txt
- Line Context: Lines 1-1 from transcript
- Content: Nslookup only queries the DNS server.
- Multi-concept tags: Networking, Platform Engineering

### Evidence 160: certified-kubernetes-administrator-with-practice-tests/09_Networking/212_Cluster Networking.extraction.md::E31
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 212_Cluster Networking.txt
- Line Context: Lines 1-1 from transcript
- Content: For now, let's start slow.
- Multi-concept tags: Networking, Architecture, Platform Engineering

### Evidence 161: certified-kubernetes-administrator-with-practice-tests/09_Networking/227_DNS in kubernetes.extraction.md::E2
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 227_DNS in kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: If you are new to DNS, make sure you go through the prerequisites section on DNS where we discuss what DNS is, what are the tools used for working with DNS, such as host Nslookup and the Dig utility, and the different types of DNS records like a, CNAME, etc. and we also saw how to set up our own DNS server using DNS.
- Multi-concept tags: Networking, Platform Engineering

### Evidence 162: certified-kubernetes-administrator-with-practice-tests/09_Networking/228_CoreDNS in Kubernetes.extraction.md::E60
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 228_CoreDNS in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: If you try to manually look up the web service using Nslookup or the Host Web Service command, it will return the fully qualified domain name of the web service, which happens to be Web Service default SVC cluster local.
- Multi-concept tags: Services, Networking, Configuration, Architecture, Platform Engineering

### Evidence 163: certified-kubernetes-administrator-with-practice-tests/09_Networking/230_Lab Solution - Explore DNS (optional).extraction.md::E198
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 230_Lab Solution - Explore DNS (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now the next question is, from the HR pod, run a nslookup and the MySQL service and redirect the output to a file.
- Multi-concept tags: Pods, Services, Networking, Platform Engineering

### Evidence 164: certified-kubernetes-administrator-with-practice-tests/09_Networking/230_Lab Solution - Explore DNS (optional).extraction.md::E201
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 230_Lab Solution - Explore DNS (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And what the command we need to run is nslookup, we'll do a MySQL and it says it's not found, so we know that since the HR app is in the default namespace and MySQL is in the payroll namespace, we should be appending payroll to the name.
- Multi-concept tags: Networking, Configuration, Troubleshooting, Platform Engineering

### Evidence 165: certified-kubernetes-administrator-with-practice-tests/09_Networking/231_Ingress.extraction.md::E29
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 231_Ingress.txt
- Line Context: Lines 1-1 from transcript
- Content: Let's take a step back and see what you could do if you were on a public cloud environment like Google Cloud Platform.
- Multi-concept tags: Networking, Configuration, Cross-Cloud, Platform Engineering

### Evidence 166: certified-kubernetes-administrator-with-practice-tests/09_Networking/231_Ingress.extraction.md::E32
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 231_Ingress.txt
- Line Context: Lines 1-1 from transcript
- Content: But in addition to that, Kubernetes also sends a request to Google Cloud Platform to provision a network load balancer for this service.
- Multi-concept tags: Services, Networking, Cross-Cloud, Platform Engineering

### Evidence 167: certified-kubernetes-administrator-with-practice-tests/09_Networking/237_Lab Solution - Ingress Networking - 2 (optional).extraction.md::E32
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 237_Lab Solution - Ingress Networking - 2 (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we see that there are a number of resources that are given access to like the policy Chris name spaces, and these are the works that the actions that it can perform.
- Multi-concept tags: Networking, Platform Engineering

### Evidence 168: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/241_Design a Kubernetes Cluster.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 241_Design a Kubernetes Cluster.txt
- Line Context: Lines 1-1 from transcript
- Content: Do you prefer your platform to be managed by a cloud provider or a self-hosted?
- Multi-concept tags: Architecture, On-Prem, Platform Engineering

### Evidence 169: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/241_Design a Kubernetes Cluster.extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 241_Design a Kubernetes Cluster.txt
- Line Context: Lines 1-1 from transcript
- Content: Again, this can be set up with Kube, ADM or GCP or using Kops on AWS or other supported platforms.
- Multi-concept tags: Architecture, Cross-Cloud, Platform Engineering

### Evidence 170: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/241_Design a Kubernetes Cluster.extraction.md::E45
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 241_Design a Kubernetes Cluster.txt
- Line Context: Lines 1-1 from transcript
- Content: You may choose to deploy on physical machines or virtual machines, or cloud environments like GCP, AWS, Azure, or any other platform of your choice.
- Multi-concept tags: Configuration, Architecture, Cross-Cloud, On-Prem, Platform Engineering

### Evidence 171: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/242_Choosing Kubernetes Infrastructure.extraction.md::E33
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 242_Choosing Kubernetes Infrastructure.txt
- Line Context: Lines 1-1 from transcript
- Content: OpenShift is a popular on prem Kubernetes platform by Red hat.
- Multi-concept tags: Architecture, Platform Engineering

### Evidence 172: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/242_Choosing Kubernetes Infrastructure.extraction.md::E34
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 242_Choosing Kubernetes Infrastructure.txt
- Line Context: Lines 1-1 from transcript
- Content: For those of you who may not be familiar, OpenShift is an open source container application platform and is built on top of Kubernetes.
- Multi-concept tags: Architecture, Platform Engineering

### Evidence 173: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/242_Choosing Kubernetes Infrastructure.extraction.md::E46
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 242_Choosing Kubernetes Infrastructure.txt
- Line Context: Lines 1-1 from transcript
- Content: Google Kubernetes Engine is a very popular Kubernetes as a service offering on Google Cloud Platform.
- Multi-concept tags: Services, Architecture, Cross-Cloud, Platform Engineering

### Evidence 174: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E20
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Line Context: Lines 1-1 from transcript
- Content: So you've got installing kube ADM and then two slots down you've got creating a cluster with kube ADM.
- Multi-concept tags: Deployments, Architecture, On-Prem, Platform Engineering

### Evidence 175: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/256_Helm Components.extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 256_Helm Components.txt
- Line Context: Lines 1-1 from transcript
- Content: And the other would be a WordPress site, which is slightly more complex.
- Multi-concept tags: Configuration, Platform Engineering

### Evidence 176: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/263_Kustomize Problem Statement and Ideology.extraction.md::E50
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 263_Kustomize Problem Statement and Ideology.txt
- Line Context: Lines 1-1 from transcript
- Content: So here we've got the same nginx deployment file that we had in the previous slides.
- Multi-concept tags: Deployments, Configuration, Platform Engineering

### Evidence 177: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/267_Kustomize Output.extraction.md::E23
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 267_Kustomize Output.txt
- Line Context: Lines 1-1 from transcript
- Content: And that's going to delete the two resources that we had created in the previous slide.
- Multi-concept tags: Configuration, Platform Engineering

### Evidence 178: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/276_Patches Intro.extraction.md::E49
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 276_Patches Intro.txt
- Line Context: Lines 1-1 from transcript
- Content: And I'll go over what a inline patch is in the next slide or two.
- Multi-concept tags: Configuration, Platform Engineering

### Evidence 179: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E207
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: It doesn't say anything about persistent volume reclaim policy.
- Multi-concept tags: Storage, CKA-CKAD, Platform Engineering

### Evidence 180: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E273
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And then, we want to set the update policy to be update mode set to auto, all right?
- Multi-concept tags: CKA-CKAD, Platform Engineering

### Evidence 181: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So it says nothing about a reclaim policy.
- Multi-concept tags: CKA-CKAD, Platform Engineering

### Evidence 182: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E425
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we'll do kubectl run test dash nslookup dash dash image equals BusyBox 128.
- Multi-concept tags: CKA-CKAD, Platform Engineering

### Evidence 183: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E429
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So if we do nslookup.
- Multi-concept tags: CKA-CKAD, Platform Engineering

### Evidence 184: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E588
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So for this question, it says you are requested to create a network policy to allow traffic from front end apps located in the front end namespace, to back end apps located in the backend namespace, but not from the databases in the database namespace.
- Multi-concept tags: Networking, CKA-CKAD, Platform Engineering

### Evidence 185: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E590
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Apply the most restrictive policy from the provided YAML files to achieve the desired result.
- Multi-concept tags: Configuration, CKA-CKAD, Platform Engineering

### Evidence 186: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E619
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: If the database namespace, nothing from that namespace can talk to the backend namespace, because when it comes to an ingress policy, it's just going to allow what we have here.
- Multi-concept tags: Networking, CKA-CKAD, Platform Engineering

### Evidence 187: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E102
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, does it say anything about a reclaim policy?
- Multi-concept tags: CKA-CKAD, Platform Engineering

### Evidence 188: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E192
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And it tells us basically what we need to do to fix it, which is create a network policy by the name of ingress-nptest that allows incoming connections to this service over port 80.
- Multi-concept tags: Services, Networking, Troubleshooting, CKA-CKAD, Platform Engineering

### Evidence 189: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E193
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so we have to create a network policy to perform that.
- Multi-concept tags: Networking, CKA-CKAD, Platform Engineering

### Evidence 190: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E194
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So I'm gonna go to the documentation and search for network policy.
- Multi-concept tags: Networking, CKA-CKAD, Platform Engineering

### Evidence 191: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E200
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And then what I'm gonna do is I'm gonna do -: - show-labels so that we could see what labels that pod has assigned to it so we could match it in the network policy.
- Multi-concept tags: Pods, Networking, CKA-CKAD, Platform Engineering

### Evidence 192: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E202
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: We need to create a network policy that allows incoming connections to this service or this pod essentially over port 80.
- Multi-concept tags: Pods, Services, Networking, CKA-CKAD, Platform Engineering

### Evidence 193: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E206
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's reopen the configs and in this case we have to think about the direction the policy is in from the perspective of this pod, we're allowing incoming connections on port 80.
- Multi-concept tags: Pods, CKA-CKAD, Platform Engineering

### Evidence 194: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E211
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So the first thing that we have to do is we have to assign this policy to the np-test-1 pod and we know what label it has, which is run-np-test-1.
- Multi-concept tags: Pods, CKA-CKAD, Platform Engineering

### Evidence 195: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E213
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that's going to take this policy and apply it to that pod.
- Multi-concept tags: Pods, CKA-CKAD, Platform Engineering

### Evidence 196: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E217
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we'll then apply this. kubectl apply- f question6 and that's created the policy.
- Multi-concept tags: CKA-CKAD, Platform Engineering

### Evidence 197: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E261
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so we've got a pv, we can see the capacity, we could see the access mode, we could see the reclaimed policy, we could see that it's available.
- Multi-concept tags: CKA-CKAD, Platform Engineering

### Evidence 198: certified-kubernetes-administrator-with-practice-tests/18_Bonus Section/312_Conclusion.extraction.md::E23
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 18_Bonus Section / 312_Conclusion.txt
- Line Context: Lines 1-1 from transcript
- Content: And our cloud learning paths help you learn the basics of popular cloud platforms and prepare you for certifications, and then deep dive into each of the services offered on the cloud platforms with a hands-on approach.
- Multi-concept tags: Services, CKA-CKAD, Platform Engineering

### Evidence 199: certified-kubernetes-administrator-with-practice-tests/18_Bonus Section/312_Conclusion.extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 18_Bonus Section / 312_Conclusion.txt
- Line Context: Lines 1-1 from transcript
- Content: Additionally, with the KodeKloud Pro Plan, you also gain access to the cloud playgrounds for all three cloud platforms.
- Multi-concept tags: Platform Engineering

### Evidence 200: certified-kubernetes-application-developer/01_Introduction/002_Kubernetes Series of Courses.extraction.md::E4
- Type: Architecture
- Source: certified-kubernetes-application-developer / 01_Introduction / 002_Kubernetes Series of Courses.txt
- Line Context: Lines 1-1 from transcript
- Content: It is supported on any cloud platform and supports hosting enhanced and complex applications on various kinds of architectures that make it a vast and complex technology.
- Multi-concept tags: Architecture, Platform Engineering

### Evidence 201: certified-kubernetes-application-developer/01_Introduction/002_Kubernetes Series of Courses.extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-application-developer / 01_Introduction / 002_Kubernetes Series of Courses.txt
- Line Context: Lines 1-1 from transcript
- Content: You only need to know the real basics of development on a platform like Python or Node.js.
- Multi-concept tags: Architecture, Platform Engineering

### Evidence 202: certified-kubernetes-application-developer/02_Core Concepts/010_Recap - Pods.extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 010_Recap - Pods.txt
- Line Context: Lines 1-1 from transcript
- Content: So what I'm trying to illustrate in this slide is that pods usually have a 1 to 1 relationship, with containers running your application.
- Multi-concept tags: Pods, Platform Engineering

### Evidence 203: certified-kubernetes-application-developer/02_Core Concepts/010_Recap - Pods.extraction.md::E32
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 010_Recap - Pods.txt
- Line Context: Lines 1-1 from transcript
- Content: As we discussed in the previous slide, if our intention was to scale our application, then we would need to create additional pods.
- Multi-concept tags: Pods, Platform Engineering

### Evidence 204: certified-kubernetes-application-developer/02_Core Concepts/015_Introduction to Kubernetes Practice Test.extraction.md::E32
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 015_Introduction to Kubernetes Practice Test.txt
- Line Context: Lines 1-1 from transcript
- Content: Now remember that this is not a replica of the actual Kubernetes certification exam, so the interface and your experience in the actual exam is going to be slightly different than this.
- Multi-concept tags: CKA-CKAD, Platform Engineering

### Evidence 205: certified-kubernetes-application-developer/02_Core Concepts/016_Demo_ Accessing Labs.extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 016_Demo_ Accessing Labs.txt
- Line Context: Lines 1-1 from transcript
- Content: KodeKloud and Udemy are different platforms, and unfortunately, there is no option available yet to share the same user accounts between the two.
- Multi-concept tags: Platform Engineering

### Evidence 206: certified-kubernetes-application-developer/02_Core Concepts/021_Recap - ReplicaSets.extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 021_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: However, whatever we discussed in the previous few slides remain applicable to both these technologies.
- Multi-concept tags: Deployments, Platform Engineering

### Evidence 207: certified-kubernetes-application-developer/02_Core Concepts/021_Recap - ReplicaSets.extraction.md::E83
- Type: Comparison
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 021_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: I will elaborate this in the next slide, but before we get into that, I would like to mention that the selector is one of the major differences between replication controller and replica set.
- Multi-concept tags: Deployments, Scheduling, Platform Engineering

### Evidence 208: certified-kubernetes-application-developer/02_Core Concepts/021_Recap - ReplicaSets.extraction.md::E84
- Type: Concept
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 021_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: The selector is not a required field in case of a replication controller, but it is still available when you skip it, as we did in the previous slide, it assumes it to be the same as the labels provided in the Pod definition file.
- Multi-concept tags: Pods, Deployments, Scheduling, Platform Engineering

### Evidence 209: certified-kubernetes-application-developer/02_Core Concepts/021_Recap - ReplicaSets.extraction.md::E107
- Type: Concept
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 021_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: We need three replicas and we have updated our selector based on our discussion in the previous slide.
- Multi-concept tags: Deployments, Scheduling, Platform Engineering

### Evidence 210: certified-kubernetes-application-developer/02_Core Concepts/021_Recap - ReplicaSets.extraction.md::E108
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 021_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: Say for instance, we have the same scenario as in the previous slide where we have three existing parts that were created already, and we need to create a replica set to monitor the pods to ensure there are a minimum of three running at all times.
- Multi-concept tags: Pods, Deployments, Observability, Platform Engineering

### Evidence 211: certified-kubernetes-application-developer/02_Core Concepts/024_Recap - Deployments.extraction.md::E31
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 024_Recap - Deployments.txt
- Line Context: Lines 1-1 from transcript
- Content: We will see how to take advantage of the deployment using the use cases we discussed in the previous slide in the upcoming lectures.
- Multi-concept tags: Deployments, Platform Engineering

### Evidence 212: certified-kubernetes-application-developer/02_Core Concepts/030_Services.extraction.md::E38
- Type: Concept
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 030_Services.txt
- Line Context: Lines 1-1 from transcript
- Content: Getting back to Nodeport a few slides back, we discussed about external access to the application.
- Multi-concept tags: Services, Architecture, Platform Engineering

### Evidence 213: certified-kubernetes-application-developer/04_Multi-Container Pods/081_Multi-container Pods Design Patterns.extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-application-developer / 04_Multi-Container Pods / 081_Multi-container Pods Design Patterns.txt
- Line Context: Lines 1-1 from transcript
- Content: So we'll see how to do that in the upcoming slides.
- Multi-concept tags: Pods, Platform Engineering

### Evidence 214: certified-kubernetes-application-developer/04_Multi-Container Pods/081_Multi-container Pods Design Patterns.extraction.md::E55
- Type: Concept
- Source: certified-kubernetes-application-developer / 04_Multi-Container Pods / 081_Multi-container Pods Design Patterns.txt
- Line Context: Lines 1-1 from transcript
- Content: However the init container continues to run as it has a restart policy set to always.
- Multi-concept tags: Pods, Platform Engineering

### Evidence 215: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E10
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: However, hipster is now deprecated and a slimmed down version was formed, known as the Metrics Server.
- Multi-concept tags: Observability, Troubleshooting, Platform Engineering

### Evidence 216: certified-kubernetes-application-developer/06_POD Design/099_Rolling Updates & Rollbacks in Deployments.extraction.md::E36
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 06_POD Design / 099_Rolling Updates & Rollbacks in Deployments.txt
- Line Context: Lines 1-1 from transcript
- Content: When you upgrade your application, as we saw in the previous slide, the Kubernetes deployment object creates a new replica set under the hood and starts deploying the containers there.
- Multi-concept tags: Pods, Deployments, Platform Engineering

### Evidence 217: certified-kubernetes-application-developer/06_POD Design/107_Jobs.extraction.md::E27
- Type: Operational Insight
- Source: certified-kubernetes-application-developer / 06_POD Design / 107_Jobs.txt
- Line Context: Lines 1-1 from transcript
- Content: This behavior is defined by the property restart policy set on the pod, which is by default set to always.
- Multi-concept tags: Pods, Platform Engineering

### Evidence 218: certified-kubernetes-application-developer/06_POD Design/110_Solution - Jobs and Cronjobs (optional).extraction.md::E90
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 06_POD Design / 110_Solution - Jobs and Cronjobs (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And then, we wanna change the restart policy to be, Never.
- Multi-concept tags: Pods, Platform Engineering

### Evidence 219: certified-kubernetes-application-developer/07_Services & Networking/111_Network Policies.extraction.md::E27
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 111_Network Policies.txt
- Line Context: Lines 1-1 from transcript
- Content: We create services to enable communication between the pods as well as to the end user, based on what we discussed in the previous slide.
- Multi-concept tags: Pods, Services, Networking, Platform Engineering

### Evidence 220: certified-kubernetes-application-developer/07_Services & Networking/111_Network Policies.extraction.md::E31
- Type: Architecture
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 111_Network Policies.txt
- Line Context: Lines 1-1 from transcript
- Content: That is where you would implement a network policy to allow traffic to the DB server only from the API server and network policy is another object in the Kubernetes namespace.
- Multi-concept tags: Services, Networking, Architecture, Platform Engineering

### Evidence 221: certified-kubernetes-application-developer/07_Services & Networking/111_Network Policies.extraction.md::E32
- Type: Concept
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 111_Network Policies.txt
- Line Context: Lines 1-1 from transcript
- Content: Just like pods, replica sets, or services, you link a network policy to one or more pods.
- Multi-concept tags: Pods, Services, Networking, Platform Engineering

### Evidence 222: certified-kubernetes-application-developer/07_Services & Networking/111_Network Policies.extraction.md::E33
- Type: Concept
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 111_Network Policies.txt
- Line Context: Lines 1-1 from transcript
- Content: You can define rules within the network policy.
- Multi-concept tags: Services, Networking, Platform Engineering

### Evidence 223: certified-kubernetes-application-developer/07_Services & Networking/111_Network Policies.extraction.md::E35
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 111_Network Policies.txt
- Line Context: Lines 1-1 from transcript
- Content: Once this policy is created, it blocks all other traffic to the pod and only allows traffic that matches the specified rule.
- Multi-concept tags: Pods, Services, Networking, Platform Engineering

### Evidence 224: certified-kubernetes-application-developer/07_Services & Networking/111_Network Policies.extraction.md::E36
- Type: Concept
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 111_Network Policies.txt
- Line Context: Lines 1-1 from transcript
- Content: Again, this is only applicable to the pod on which the network policy is applied.
- Multi-concept tags: Pods, Services, Networking, Platform Engineering

### Evidence 225: certified-kubernetes-application-developer/07_Services & Networking/111_Network Policies.extraction.md::E37
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 111_Network Policies.txt
- Line Context: Lines 1-1 from transcript
- Content: So how do you apply or link a network policy to a pod?
- Multi-concept tags: Pods, Services, Networking, Platform Engineering

### Evidence 226: certified-kubernetes-application-developer/07_Services & Networking/111_Network Policies.extraction.md::E40
- Type: Concept
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 111_Network Policies.txt
- Line Context: Lines 1-1 from transcript
- Content: We label the pod and use the same labels on the port selector field in the network policy.
- Multi-concept tags: Pods, Services, Networking, Scheduling, Platform Engineering

### Evidence 227: certified-kubernetes-application-developer/07_Services & Networking/111_Network Policies.extraction.md::E42
- Type: Concept
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 111_Network Policies.txt
- Line Context: Lines 1-1 from transcript
- Content: Under policy types specify whether the rule is to allow ingress or egress, traffic, or both.
- Multi-concept tags: Services, Networking, Platform Engineering

### Evidence 228: certified-kubernetes-application-developer/07_Services & Networking/111_Network Policies.extraction.md::E53
- Type: Concept
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 111_Network Policies.txt
- Line Context: Lines 1-1 from transcript
- Content: The kind is network policy.
- Multi-concept tags: Services, Networking, Platform Engineering

### Evidence 229: certified-kubernetes-application-developer/07_Services & Networking/111_Network Policies.extraction.md::E54
- Type: Concept
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 111_Network Policies.txt
- Line Context: Lines 1-1 from transcript
- Content: We will name the policy db policy.
- Multi-concept tags: Services, Networking, Platform Engineering

### Evidence 230: certified-kubernetes-application-developer/07_Services & Networking/111_Network Policies.extraction.md::E55
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 111_Network Policies.txt
- Line Context: Lines 1-1 from transcript
- Content: And then under the specs section we will first move the pod selector to apply this policy to the DB pod.
- Multi-concept tags: Pods, Services, Networking, Scheduling, Platform Engineering

### Evidence 231: certified-kubernetes-application-developer/07_Services & Networking/111_Network Policies.extraction.md::E56
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 111_Network Policies.txt
- Line Context: Lines 1-1 from transcript
- Content: Then we will move the rule we created in the previous slide under it.
- Multi-concept tags: Services, Networking, Platform Engineering

### Evidence 232: certified-kubernetes-application-developer/07_Services & Networking/111_Network Policies.extraction.md::E58
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 111_Network Policies.txt
- Line Context: Lines 1-1 from transcript
- Content: We have our first network policy ready.
- Multi-concept tags: Services, Networking, Platform Engineering

### Evidence 233: certified-kubernetes-application-developer/07_Services & Networking/111_Network Policies.extraction.md::E60
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 111_Network Policies.txt
- Line Context: Lines 1-1 from transcript
- Content: Create command to create the policy.
- Multi-concept tags: Services, Networking, Configuration, Platform Engineering

### Evidence 234: certified-kubernetes-application-developer/07_Services & Networking/112_Developing network policies.extraction.md::E14
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 112_Developing network policies.txt
- Line Context: Lines 1-1 from transcript
- Content: So we create a network policy.
- Multi-concept tags: Services, Networking, Platform Engineering

### Evidence 235: certified-kubernetes-application-developer/07_Services & Networking/112_Developing network policies.extraction.md::E15
- Type: Concept
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 112_Developing network policies.txt
- Line Context: Lines 1-1 from transcript
- Content: We will call it DB policy.
- Multi-concept tags: Services, Networking, Platform Engineering

### Evidence 236: certified-kubernetes-application-developer/07_Services & Networking/112_Developing network policies.extraction.md::E16
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 112_Developing network policies.txt
- Line Context: Lines 1-1 from transcript
- Content: And the first step is to associate this network policy with the pod that we want to protect.
- Multi-concept tags: Pods, Services, Networking, Platform Engineering

### Evidence 237: certified-kubernetes-application-developer/07_Services & Networking/112_Developing network policies.extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 112_Developing network policies.txt
- Line Context: Lines 1-1 from transcript
- Content: So we do that by adding a pod selector field with the match labels option, and by specifying the label on the DB pod, which happens to be set to role DB, and that associates the network policy with the database pod and blocks out all traffic.
- Multi-concept tags: Pods, Services, Networking, Scheduling, Security-RBAC, Platform Engineering

### Evidence 238: certified-kubernetes-application-developer/07_Services & Networking/112_Developing network policies.extraction.md::E21
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 112_Developing network policies.txt
- Line Context: Lines 1-1 from transcript
- Content: First, we need to figure out what type of policies should be defined on this network policy object to meet our requirements.
- Multi-concept tags: Services, Networking, Platform Engineering

### Evidence 239: certified-kubernetes-application-developer/07_Services & Networking/112_Developing network policies.extraction.md::E36
- Type: Concept
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 112_Developing network policies.txt
- Line Context: Lines 1-1 from transcript
- Content: So a single network policy can have an ingress type of rule, an egress type of rule, or both.
- Multi-concept tags: Services, Networking, Platform Engineering

### Evidence 240: certified-kubernetes-application-developer/07_Services & Networking/112_Developing network policies.extraction.md::E39
- Type: Concept
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 112_Developing network policies.txt
- Line Context: Lines 1-1 from transcript
- Content: Policy types.
- Multi-concept tags: Services, Networking, Platform Engineering

### Evidence 241: certified-kubernetes-application-developer/07_Services & Networking/112_Developing network policies.extraction.md::E40
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 112_Developing network policies.txt
- Line Context: Lines 1-1 from transcript
- Content: Now that we have decided on the type of policy, the next step is to define the specifics of that policy.
- Multi-concept tags: Services, Networking, Platform Engineering

### Evidence 242: certified-kubernetes-application-developer/07_Services & Networking/112_Developing network policies.extraction.md::E48
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 112_Developing network policies.txt
- Line Context: Lines 1-1 from transcript
- Content: This would create a policy that would block all traffic to the pod, except for traffic from the API pod.
- Multi-concept tags: Pods, Services, Networking, Platform Engineering

### Evidence 243: certified-kubernetes-application-developer/07_Services & Networking/112_Developing network policies.extraction.md::E52
- Type: Concept
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 112_Developing network policies.txt
- Line Context: Lines 1-1 from transcript
- Content: The current policy would allow any pod in any namespace with matching labels to reach the database pod.
- Multi-concept tags: Pods, Services, Networking, Platform Engineering

### Evidence 244: certified-kubernetes-application-developer/07_Services & Networking/112_Developing network policies.extraction.md::E65
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 112_Developing network policies.txt
- Line Context: Lines 1-1 from transcript
- Content: We could configure a network policy to allow traffic originating from certain IP addresses.
- Multi-concept tags: Services, Networking, Platform Engineering

### Evidence 245: certified-kubernetes-application-developer/07_Services & Networking/112_Developing network policies.extraction.md::E97
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 112_Developing network policies.txt
- Line Context: Lines 1-1 from transcript
- Content: So we first add egress to the policy types.
- Multi-concept tags: Services, Networking, Platform Engineering

### Evidence 246: certified-kubernetes-application-developer/07_Services & Networking/112_Developing network policies.extraction.md::E98
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 112_Developing network policies.txt
- Line Context: Lines 1-1 from transcript
- Content: And then we add a new egress section to define the specifics of the policy.
- Multi-concept tags: Services, Networking, Platform Engineering

### Evidence 247: certified-kubernetes-application-developer/07_Services & Networking/114_Solution - Network Policies (optional).extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 114_Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So you have the payroll policy.
- Multi-concept tags: Services, Networking, Platform Engineering

### Evidence 248: certified-kubernetes-application-developer/07_Services & Networking/114_Solution - Network Policies (optional).extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 114_Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that's the short form for network policy.
- Multi-concept tags: Services, Networking, Platform Engineering

### Evidence 249: certified-kubernetes-application-developer/07_Services & Networking/114_Solution - Network Policies (optional).extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 114_Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So there's one policy and that's called as the payroll policy.
- Multi-concept tags: Services, Networking, Platform Engineering

### Evidence 250: certified-kubernetes-application-developer/07_Services & Networking/114_Solution - Network Policies (optional).extraction.md::E29
- Type: Concept
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 114_Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So there's one policy in total.
- Multi-concept tags: Services, Networking, Platform Engineering

### Evidence 251: certified-kubernetes-application-developer/07_Services & Networking/114_Solution - Network Policies (optional).extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 114_Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So what is the name of the network policy?
- Multi-concept tags: Services, Networking, Platform Engineering

### Evidence 252: certified-kubernetes-application-developer/07_Services & Networking/114_Solution - Network Policies (optional).extraction.md::E31
- Type: Concept
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 114_Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: That is payroll policy.
- Multi-concept tags: Services, Networking, Platform Engineering

### Evidence 253: certified-kubernetes-application-developer/07_Services & Networking/114_Solution - Network Policies (optional).extraction.md::E32
- Type: Concept
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 114_Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so which pod is the network policy applied on?
- Multi-concept tags: Pods, Services, Networking, Platform Engineering

### Evidence 254: certified-kubernetes-application-developer/07_Services & Networking/114_Solution - Network Policies (optional).extraction.md::E36
- Type: Concept
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 114_Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So the network policy named payroll policy is applied on the pod, which is called as payroll.
- Multi-concept tags: Pods, Services, Networking, Platform Engineering

### Evidence 255: certified-kubernetes-application-developer/07_Services & Networking/114_Solution - Network Policies (optional).extraction.md::E42
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 114_Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So there are no restrictions, but as soon as you apply a network policy it's kind of blocked, so everything gets blocked, then you have to manually allow stuff.
- Multi-concept tags: Services, Networking, Platform Engineering

### Evidence 256: certified-kubernetes-application-developer/07_Services & Networking/114_Solution - Network Policies (optional).extraction.md::E44
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 114_Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So what type of traffic is the network policy configured to handle?
- Multi-concept tags: Services, Networking, Platform Engineering

### Evidence 257: certified-kubernetes-application-developer/07_Services & Networking/114_Solution - Network Policies (optional).extraction.md::E45
- Type: Concept
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 114_Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's look at the network policy in more detail.
- Multi-concept tags: Services, Networking, Platform Engineering

### Evidence 258: certified-kubernetes-application-developer/07_Services & Networking/114_Solution - Network Policies (optional).extraction.md::E46
- Type: Concept
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 114_Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's do kubectl describe net pol payroll policy.
- Multi-concept tags: Services, Networking, On-Prem, Platform Engineering

### Evidence 259: certified-kubernetes-application-developer/07_Services & Networking/114_Solution - Network Policies (optional).extraction.md::E52
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 114_Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So what type of traffic is the network policy configured to handle?
- Multi-concept tags: Services, Networking, Platform Engineering

### Evidence 260: certified-kubernetes-application-developer/07_Services & Networking/114_Solution - Network Policies (optional).extraction.md::E54
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 114_Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay now what is the impact of the rule configured on this network policy?
- Multi-concept tags: Services, Networking, Platform Engineering

### Evidence 261: certified-kubernetes-application-developer/07_Services & Networking/114_Solution - Network Policies (optional).extraction.md::E65
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 114_Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now what is the impact of the rule configured on this network policy?
- Multi-concept tags: Services, Networking, Platform Engineering

### Evidence 262: certified-kubernetes-application-developer/07_Services & Networking/114_Solution - Network Policies (optional).extraction.md::E83
- Type: Concept
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 114_Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna try and see, we've said this in your policy, but we're just gonna see it for real.
- Multi-concept tags: Services, Networking, Platform Engineering

### Evidence 263: certified-kubernetes-application-developer/07_Services & Networking/114_Solution - Network Policies (optional).extraction.md::E100
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 114_Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now finally, we have to create a network policy to allow traffic from the internal application only to the payroll service and DB service.
- Multi-concept tags: Services, Networking, Platform Engineering

### Evidence 264: certified-kubernetes-application-developer/07_Services & Networking/114_Solution - Network Policies (optional).extraction.md::E105
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 114_Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we have to create a network policy named internal policy.
- Multi-concept tags: Services, Networking, Platform Engineering

### Evidence 265: certified-kubernetes-application-developer/07_Services & Networking/114_Solution - Network Policies (optional).extraction.md::E107
- Type: Concept
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 114_Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we have to, so after creating the policy we need to associate it with the internal pod.
- Multi-concept tags: Pods, Services, Networking, Platform Engineering

### Evidence 266: certified-kubernetes-application-developer/07_Services & Networking/114_Solution - Network Policies (optional).extraction.md::E110
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 114_Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And then policy is egress so we're gonna configure egress traffic.
- Multi-concept tags: Services, Networking, Platform Engineering

### Evidence 267: certified-kubernetes-application-developer/07_Services & Networking/114_Solution - Network Policies (optional).extraction.md::E118
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 114_Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's create a file called internalPolicy.yaml.
- Multi-concept tags: Services, Networking, Configuration, Platform Engineering

### Evidence 268: certified-kubernetes-application-developer/07_Services & Networking/114_Solution - Network Policies (optional).extraction.md::E119
- Type: Concept
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 114_Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so the policy name.
- Multi-concept tags: Services, Networking, Platform Engineering

### Evidence 269: certified-kubernetes-application-developer/07_Services & Networking/114_Solution - Network Policies (optional).extraction.md::E120
- Type: Concept
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 114_Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So the policy name has to be internal policy.
- Multi-concept tags: Services, Networking, Platform Engineering

### Evidence 270: certified-kubernetes-application-developer/07_Services & Networking/114_Solution - Network Policies (optional).extraction.md::E150
- Type: Concept
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 114_Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so this particular policy so we're gonna remove ingress from here.
- Multi-concept tags: Services, Networking, Platform Engineering

### Evidence 271: certified-kubernetes-application-developer/07_Services & Networking/114_Solution - Network Policies (optional).extraction.md::E151
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 114_Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: What this does is it creates a policy, it creates an internal policy for the internal pod using this label.
- Multi-concept tags: Pods, Services, Networking, Platform Engineering

### Evidence 272: certified-kubernetes-application-developer/07_Services & Networking/114_Solution - Network Policies (optional).extraction.md::E154
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 114_Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And then on the MySQL pod on port 3306, Now let's create that policy.
- Multi-concept tags: Pods, Services, Networking, Platform Engineering

### Evidence 273: certified-kubernetes-application-developer/07_Services & Networking/114_Solution - Network Policies (optional).extraction.md::E155
- Type: Concept
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 114_Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, let's do a describe internal policy and we verify the pod selector and egress traffic configuration.
- Multi-concept tags: Pods, Services, Networking, Scheduling, On-Prem, Platform Engineering

### Evidence 274: certified-kubernetes-application-developer/07_Services & Networking/115_Ingress Networking.extraction.md::E29
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 115_Ingress Networking.txt
- Line Context: Lines 1-1 from transcript
- Content: Let's take a step back and see what you could do if you were on a public cloud environment like Google Cloud Platform.
- Multi-concept tags: Services, Networking, Configuration, Cross-Cloud, Platform Engineering

### Evidence 275: certified-kubernetes-application-developer/07_Services & Networking/115_Ingress Networking.extraction.md::E32
- Type: Concept
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 115_Ingress Networking.txt
- Line Context: Lines 1-1 from transcript
- Content: But in addition to that, Kubernetes also sends a request to Google Cloud Platform to provision a network load balancer for this service.
- Multi-concept tags: Services, Networking, Cross-Cloud, Platform Engineering

### Evidence 276: certified-kubernetes-application-developer/07_Services & Networking/120_Solution_ Ingress Networking - 2.extraction.md::E31
- Type: Concept
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 120_Solution_ Ingress Networking - 2.txt
- Line Context: Lines 1-1 from transcript
- Content: So we see that there are a number of resources that are given access to, like, the policy for these Namespaces and these are the works that, the actions that it can perform.
- Multi-concept tags: Services, Networking, Platform Engineering

### Evidence 277: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E41
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Proper cleanup can involve unmount, detach, filesystem, reformat, snapshot, retain, policy handling, encryption, key rotation, or provider level delete calls.
- Multi-concept tags: Storage, Platform Engineering

### Evidence 278: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E82
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And the persistent volume reclaim policy, we're going to be retained.
- Multi-concept tags: Storage, Platform Engineering

### Evidence 279: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E90
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, this indicates read, write many, and the reclaim policy is retained.
- Multi-concept tags: Storage, Platform Engineering

### Evidence 280: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E121
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: We have the recurring policy set.
- Multi-concept tags: Storage, Platform Engineering

### Evidence 281: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E164
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so, the next question is what is the reclaim policy set on the persistent volume pv-log?
- Multi-concept tags: Storage, Platform Engineering

### Evidence 282: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E169
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, we know that with the reclaim policy set to retain, the PV is going to be retained.
- Multi-concept tags: Storage, Platform Engineering

### Evidence 283: certified-kubernetes-application-developer/08_State Persistence/134_Why Stateful Sets_.extraction.md::E16
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 134_Why Stateful Sets_.txt
- Line Context: Lines 1-1 from transcript
- Content: I'm going to simplify the whole MySQL replication concepts within a few slides.
- Multi-concept tags: Platform Engineering

### Evidence 284: certified-kubernetes-application-developer/08_State Persistence/135_Stateful Sets Introduction.extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 135_Stateful Sets Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: For that, you could set the pod management policy field to parallel to instruct StatefulSet to not follow an ordered approach.
- Multi-concept tags: Pods, Storage, Platform Engineering

### Evidence 285: certified-kubernetes-application-developer/08_State Persistence/136_Headless Services.extraction.md::E58
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 136_Headless Services.txt
- Line Context: Lines 1-1 from transcript
- Content: If we specified the host name or subdomain, in the pod template section, like we did for the pod in the previous slide, then it assigns the same host name and subdomain for all the pods.
- Multi-concept tags: Pods, Services, Platform Engineering

### Evidence 286: certified-kubernetes-application-developer/09_Security/138_Kubernetes Security Primitives.extraction.md::E2
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 138_Kubernetes Security Primitives.txt
- Line Context: Lines 1-1 from transcript
- Content: Kubernetes being the go to platform for hosting production grid applications, security is of prime concern.
- Multi-concept tags: Security-RBAC, Platform Engineering

### Evidence 287: certified-kubernetes-application-developer/09_Security/146_Authorization.extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 146_Authorization.txt
- Line Context: Lines 1-1 from transcript
- Content: You do this by creating a policy file with a set of policies defined in a JSON format.
- Multi-concept tags: Security-RBAC, Platform Engineering

### Evidence 288: certified-kubernetes-application-developer/09_Security/146_Authorization.extraction.md::E30
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 09_Security / 146_Authorization.txt
- Line Context: Lines 1-1 from transcript
- Content: Similarly, we create a policy definition file for each user or group in this file.
- Multi-concept tags: Security-RBAC, Platform Engineering

### Evidence 289: certified-kubernetes-application-developer/09_Security/146_Authorization.extraction.md::E31
- Type: Architecture
- Source: certified-kubernetes-application-developer / 09_Security / 146_Authorization.txt
- Line Context: Lines 1-1 from transcript
- Content: Now, every time you need to add or make a change in the security, you must edit this policy file manually and restart the kube API server.
- Multi-concept tags: Security-RBAC, Architecture, Platform Engineering

### Evidence 290: certified-kubernetes-application-developer/09_Security/146_Authorization.extraction.md::E48
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 146_Authorization.txt
- Line Context: Lines 1-1 from transcript
- Content: For instance, Open Policy Agent is a third party tool that helps with admission control and authorization.
- Multi-concept tags: Security-RBAC, Platform Engineering

### Evidence 291: certified-kubernetes-application-developer/09_Security/146_Authorization.extraction.md::E49
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 09_Security / 146_Authorization.txt
- Line Context: Lines 1-1 from transcript
- Content: You can have Kubernetes make an API call to the open policy agent with the information about the user and his access requirements, and have the open policy agent decide if the user should be permitted or not.
- Multi-concept tags: Security-RBAC, Platform Engineering

### Evidence 292: certified-kubernetes-application-developer/09_Security/153_Admission Controllers.extraction.md::E29
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 09_Security / 153_Admission Controllers.txt
- Line Context: Lines 1-1 from transcript
- Content: We will go over some examples in the upcoming slides.
- Multi-concept tags: Security-RBAC, CKA-CKAD, Platform Engineering

### Evidence 293: certified-kubernetes-application-developer/09_Security/156_Validating and Mutating Admission Controllers.extraction.md::E43
- Type: Architecture
- Source: certified-kubernetes-application-developer / 09_Security / 156_Validating and Mutating Admission Controllers.txt
- Line Context: Lines 1-1 from transcript
- Content: Now this could be an API server that could be built on any platform.
- Multi-concept tags: Security-RBAC, Architecture, Platform Engineering

### Evidence 294: certified-kubernetes-application-developer/09_Security/156_Validating and Mutating Admission Controllers.extraction.md::E78
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 09_Security / 156_Validating and Mutating Admission Controllers.txt
- Line Context: Lines 1-1 from transcript
- Content: So the name we set it to pod policy dot example.com.
- Multi-concept tags: Pods, Security-RBAC, CKA-CKAD, Platform Engineering

### Evidence 295: certified-kubernetes-application-developer/09_Security/160_API Deprecations.extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 160_API Deprecations.txt
- Line Context: Lines 1-1 from transcript
- Content: This is answered by the API deprecation policy.
- Multi-concept tags: Security-RBAC, Platform Engineering

### Evidence 296: certified-kubernetes-application-developer/09_Security/160_API Deprecations.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 160_API Deprecations.txt
- Line Context: Lines 1-1 from transcript
- Content: By looking at the answers to these questions we will also understand the rules in the API deprecation policy.
- Multi-concept tags: Security-RBAC, Platform Engineering

### Evidence 297: certified-kubernetes-application-developer/09_Security/160_API Deprecations.extraction.md::E16
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 09_Security / 160_API Deprecations.txt
- Line Context: Lines 1-1 from transcript
- Content: That's where the first rule of API application policy comes into play.
- Multi-concept tags: Security-RBAC, Platform Engineering

### Evidence 298: certified-kubernetes-application-developer/09_Security/160_API Deprecations.extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 160_API Deprecations.txt
- Line Context: Lines 1-1 from transcript
- Content: So that brings us to the second rule of API deprecation policy.
- Multi-concept tags: Security-RBAC, Platform Engineering

### Evidence 299: certified-kubernetes-application-developer/09_Security/160_API Deprecations.extraction.md::E48
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 160_API Deprecations.txt
- Line Context: Lines 1-1 from transcript
- Content: And this is part of the rule for a of the Kubernetes deprecation policy.
- Multi-concept tags: Security-RBAC, Platform Engineering

### Evidence 300: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/174_Kustomize Problem Statement & idealogy.extraction.md::E55
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 174_Kustomize Problem Statement & idealogy.txt
- Line Context: Lines 1-1 from transcript
- Content: So here we've got the same nginx deployment file that we had in the previous slides.
- Multi-concept tags: Deployments, Configuration, Platform Engineering

### Evidence 301: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/178_Kustomize Output.extraction.md::E20
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 178_Kustomize Output.txt
- Line Context: Lines 1-1 from transcript
- Content: And that's going to delete the two resources that we had created in the previous slide.
- Multi-concept tags: Configuration, Platform Engineering

### Evidence 302: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/187_Patches Intro.extraction.md::E50
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 187_Patches Intro.txt
- Line Context: Lines 1-1 from transcript
- Content: And I'll go over what a inline patch is in the next slide or two.
- Multi-concept tags: Configuration, Platform Engineering

### Evidence 303: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E62
- Type: Concept
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Line Context: Lines 1-1 from transcript
- Content: And what I'm gonna do is I'm gonna check the network policy.
- Multi-concept tags: Networking, CKA-CKAD, Platform Engineering

### Evidence 304: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E64
- Type: Concept
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Line Context: Lines 1-1 from transcript
- Content: So we've got one policy here, and I'm gonna do a kubectl describe, and let's take a look.
- Multi-concept tags: CKA-CKAD, On-Prem, Platform Engineering

### Evidence 305: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E65
- Type: Concept
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Line Context: Lines 1-1 from transcript
- Content: And so it looks like, for this default deny policy for allowing ingress traffic, you can see that it's set to none, so no traffic is allowed in.
- Multi-concept tags: Networking, CKA-CKAD, Platform Engineering

### Evidence 306: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E67
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Line Context: Lines 1-1 from transcript
- Content: So let's create a new network policy that's going to allow this traffic.
- Multi-concept tags: Networking, CKA-CKAD, Platform Engineering

### Evidence 307: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E76
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Line Context: Lines 1-1 from transcript
- Content: And the instructions don't give a name, So we can just call this whatever you want, I'm just gonna call this network-policy.
- Multi-concept tags: Networking, CKA-CKAD, Platform Engineering

### Evidence 308: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E78
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Line Context: Lines 1-1 from transcript
- Content: And so I'm gonna delete this, and then we're gonna go under here, and we gotta say, "matchLabels," and then we have to provide the label to match the secure Pod, 'cause we want this policy for the secure pod.
- Multi-concept tags: Pods, CKA-CKAD, Platform Engineering

### Evidence 309: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E82
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Line Context: Lines 1-1 from transcript
- Content: Under policy types, we just want an ingress policy, and then we can define the ingress policy below.
- Multi-concept tags: Networking, CKA-CKAD, Platform Engineering

### Evidence 310: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E86
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Line Context: Lines 1-1 from transcript
- Content: So this policy, what it's saying is traffic coming from this Pod or any Pod with this specific label should be allowed to go to the Pod with the this specific label.
- Multi-concept tags: Pods, CKA-CKAD, Platform Engineering

### Evidence 311: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E59
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Line Context: Lines 1-1 from transcript
- Content: And then last thing is, I'm gonna set up a restart policy to be never.
- Multi-concept tags: CKA-CKAD, Platform Engineering

### Evidence 312: certified-kubernetes-application-developer/15_Mock Exams/206_Mock Exam -1 (Solution).extraction.md::E120
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 206_Mock Exam -1 (Solution).txt
- Line Context: Lines 1-1 from transcript
- Content: And then we have to create an English type network policy called redis access which allows only the pod with the labeler to access the deployment.
- Multi-concept tags: Pods, Deployments, Networking, CKA-CKAD, Platform Engineering

### Evidence 313: certified-kubernetes-application-developer/15_Mock Exams/206_Mock Exam -1 (Solution).extraction.md::E132
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 206_Mock Exam -1 (Solution).txt
- Line Context: Lines 1-1 from transcript
- Content: And the last step that we have to do is create that English type network policy.
- Multi-concept tags: Networking, CKA-CKAD, Platform Engineering

### Evidence 314: certified-kubernetes-application-developer/15_Mock Exams/206_Mock Exam -1 (Solution).extraction.md::E133
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 206_Mock Exam -1 (Solution).txt
- Line Context: Lines 1-1 from transcript
- Content: And so to do that, I'm gonna create a new file, and I'm gonna call this networkpolicy.yaml.
- Multi-concept tags: Networking, Configuration, CKA-CKAD, Platform Engineering

### Evidence 315: certified-kubernetes-application-developer/15_Mock Exams/206_Mock Exam -1 (Solution).extraction.md::E136
- Type: Concept
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 206_Mock Exam -1 (Solution).txt
- Line Context: Lines 1-1 from transcript
- Content: So, if you go under service load balancing and networking, there's a network policy section.
- Multi-concept tags: Services, Networking, CKA-CKAD, Platform Engineering

### Evidence 316: certified-kubernetes-application-developer/15_Mock Exams/206_Mock Exam -1 (Solution).extraction.md::E152
- Type: Concept
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 206_Mock Exam -1 (Solution).txt
- Line Context: Lines 1-1 from transcript
- Content: And since we no longer have egress, I'm gonna delete the policy type there.
- Multi-concept tags: CKA-CKAD, Platform Engineering

### Evidence 317: certified-kubernetes-application-developer/15_Mock Exams/206_Mock Exam -1 (Solution).extraction.md::E154
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 206_Mock Exam -1 (Solution).txt
- Line Context: Lines 1-1 from transcript
- Content: We have the policy, I'm gonna do a kubectl, apply-f network policy.
- Multi-concept tags: Networking, CKA-CKAD, Platform Engineering

### Evidence 318: certified-kubernetes-application-developer/15_Mock Exams/208_Mock Exam -2 (Solution).extraction.md::E95
- Type: Concept
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 208_Mock Exam -2 (Solution).txt
- Line Context: Lines 1-1 from transcript
- Content: And it's gonna have the following requirements, of a completion of 10, and a backoffLimit of six, and a restartPolicy of Never.
- Multi-concept tags: CKA-CKAD, Platform Engineering

### Evidence 319: certified-kubernetes-application-developer/15_Mock Exams/208_Mock Exam -2 (Solution).extraction.md::E126
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 208_Mock Exam -2 (Solution).txt
- Line Context: Lines 1-1 from transcript
- Content: And for the final question, we have to create a persistent volume called custom volume, with the size of 50 Mebibytes, a reclaim policy of retain, AccessMode to ReadWriteMany, and a host path of /op/data.
- Multi-concept tags: Storage, CKA-CKAD, Platform Engineering

### Evidence 320: certified-kubernetes-application-developer/15_Mock Exams/209_Bonus Lecture.extraction.md::E23
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 209_Bonus Lecture.txt
- Line Context: Lines 1-1 from transcript
- Content: And our cloud learning paths help you learn the basics of popular cloud platforms and prepare you for certifications, and then deep dive into each of the services offered on the cloud platforms with a hands-on approach.
- Multi-concept tags: Services, CKA-CKAD, Platform Engineering

### Evidence 321: certified-kubernetes-application-developer/15_Mock Exams/209_Bonus Lecture.extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 209_Bonus Lecture.txt
- Line Context: Lines 1-1 from transcript
- Content: Additionally, with the KodeKloud Pro Plan, you also gain access to the Cloud Playgrounds for all three cloud platforms.
- Multi-concept tags: CKA-CKAD, Platform Engineering

### Evidence 322: learn-kubernetes/01_Introduction/001_Introduction.extraction.md::E4
- Type: Concept
- Source: learn-kubernetes / 01_Introduction / 001_Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: Kubernetes is the go to platform for hosting production grade applications.
- Multi-concept tags: Platform Engineering

### Evidence 323: learn-kubernetes/01_Introduction/001_Introduction.extraction.md::E14
- Type: Warning/Pitfall
- Source: learn-kubernetes / 01_Introduction / 001_Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: You don't have to have a high end system or access to cloud platforms or worry about cloud costs to gain practice.
- Multi-concept tags: Platform Engineering

### Evidence 324: learn-kubernetes/01_Introduction/002_Accessing the Lab.extraction.md::E10
- Type: Concept
- Source: learn-kubernetes / 01_Introduction / 002_Accessing the Lab.txt
- Line Context: Lines 1-1 from transcript
- Content: Code Cloud and Udemy are different platforms, and unfortunately there is no option available yet to share the same user accounts between the two.
- Multi-concept tags: Platform Engineering

### Evidence 325: learn-kubernetes/02_Kubernetes Overview/005_Containers Overview.extraction.md::E57
- Type: Concept
- Source: learn-kubernetes / 02_Kubernetes Overview / 005_Containers Overview.txt
- Line Context: Lines 1-1 from transcript
- Content: Each Docker container only has the additional software that we just talked about in the previous slide that makes these operating systems different.
- Multi-concept tags: Platform Engineering

### Evidence 326: learn-kubernetes/02_Kubernetes Overview/006_Container Orchestration.extraction.md::E7
- Type: Concept
- Source: learn-kubernetes / 02_Kubernetes Overview / 006_Container Orchestration.txt
- Line Context: Lines 1-1 from transcript
- Content: To enable these functionalities, you need an underlying platform with a set of resources and capabilities.
- Multi-concept tags: Platform Engineering

### Evidence 327: learn-kubernetes/02_Kubernetes Overview/006_Container Orchestration.extraction.md::E8
- Type: Concept
- Source: learn-kubernetes / 02_Kubernetes Overview / 006_Container Orchestration.txt
- Line Context: Lines 1-1 from transcript
- Content: The platform needs to orchestrate the connectivity between the containers and automatically scale up or down based on the load.
- Multi-concept tags: Platform Engineering

### Evidence 328: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E40
- Type: Command
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube.txt
- Line Context: Lines 1-1 from transcript
- Content: Minikube provides an executable command line utility that will automatically download the ISO image and deploy it in a virtualization platform such as Oracle VirtualBox or VMware fusion.
- Multi-concept tags: Configuration, On-Prem, Platform Engineering

### Evidence 329: learn-kubernetes/03_Kubernetes Concepts/014_Pods.extraction.md::E23
- Type: Concept
- Source: learn-kubernetes / 03_Kubernetes Concepts / 014_Pods.txt
- Line Context: Lines 1-1 from transcript
- Content: So what I'm trying to illustrate in this slide is that pods usually have a 1 to 1 relationship, with containers running your application.
- Multi-concept tags: Pods, Platform Engineering

### Evidence 330: learn-kubernetes/03_Kubernetes Concepts/014_Pods.extraction.md::E32
- Type: Implementation Step
- Source: learn-kubernetes / 03_Kubernetes Concepts / 014_Pods.txt
- Line Context: Lines 1-1 from transcript
- Content: As we discussed in the previous slide, if our intention was to scale our application, then we would need to create additional pods.
- Multi-concept tags: Pods, Platform Engineering

### Evidence 331: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/026_Replication Controllers and ReplicaSets.extraction.md::E24
- Type: Concept
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 026_Replication Controllers and ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: However, whatever we discussed in the previous few slides remain applicable to both these technologies.
- Multi-concept tags: Pods, Deployments, Platform Engineering

### Evidence 332: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/026_Replication Controllers and ReplicaSets.extraction.md::E84
- Type: Comparison
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 026_Replication Controllers and ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: I will elaborate this in the next slide, but before we get into that, I would like to mention that the selector is one of the major differences between replication controller and replica set.
- Multi-concept tags: Pods, Deployments, Scheduling, Platform Engineering

### Evidence 333: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/026_Replication Controllers and ReplicaSets.extraction.md::E85
- Type: Concept
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 026_Replication Controllers and ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: The selector is not a required field in case of a replication controller, but it is still available when you skip it, as we did in the previous slide, it assumes it to be the same as the labels provided in the Pod definition file.
- Multi-concept tags: Pods, Deployments, Scheduling, Platform Engineering

### Evidence 334: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/026_Replication Controllers and ReplicaSets.extraction.md::E109
- Type: Concept
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 026_Replication Controllers and ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: We need three replicas and we have updated our selector based on our discussion in the previous slide.
- Multi-concept tags: Pods, Deployments, Scheduling, Platform Engineering

### Evidence 335: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/026_Replication Controllers and ReplicaSets.extraction.md::E110
- Type: Implementation Step
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 026_Replication Controllers and ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: Say for instance, we have the same scenario as in the previous slide, where we have three existing parts that were created already.
- Multi-concept tags: Pods, Deployments, Platform Engineering

### Evidence 336: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/030_Deployments.extraction.md::E31
- Type: Implementation Step
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 030_Deployments.txt
- Line Context: Lines 1-1 from transcript
- Content: We will see how to take advantage of the deployment using the use cases we discussed in the previous slide in the upcoming lectures.
- Multi-concept tags: Pods, Deployments, Platform Engineering

### Evidence 337: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/034_Deployments - Update and Rollback.extraction.md::E36
- Type: Implementation Step
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 034_Deployments - Update and Rollback.txt
- Line Context: Lines 1-1 from transcript
- Content: When you upgrade your application, as we saw in the previous slide, the Kubernetes deployment object creates a new replica set under the hood and starts deploying the containers there.
- Multi-concept tags: Pods, Deployments, Platform Engineering

### Evidence 338: learn-kubernetes/06_Networking in Kubernetes/038_Basics of Networking in Kubernetes.extraction.md::E27
- Type: Concept
- Source: learn-kubernetes / 06_Networking in Kubernetes / 038_Basics of Networking in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: As discussed in the previous slide, these pods are attached to an internal network and they have their own IP addresses assigned.
- Multi-concept tags: Pods, Networking, Platform Engineering

### Evidence 339: learn-kubernetes/06_Networking in Kubernetes/038_Basics of Networking in Kubernetes.extraction.md::E40
- Type: Implementation Step
- Source: learn-kubernetes / 06_Networking in Kubernetes / 038_Basics of Networking in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: Depending on the platform you're deploying your Kubernetes cluster on, you may use one of these solutions.
- Multi-concept tags: Networking, Architecture, Troubleshooting, Platform Engineering

### Evidence 340: learn-kubernetes/07_Services/039_Services - NodePort.extraction.md::E38
- Type: Concept
- Source: learn-kubernetes / 07_Services / 039_Services - NodePort.txt
- Line Context: Lines 1-1 from transcript
- Content: Getting back to Nodeport a few slides back, we discussed about external access to the application.
- Multi-concept tags: Services, Architecture, Platform Engineering

### Evidence 341: learn-kubernetes/07_Services/042_Services - Load Balancer.extraction.md::E21
- Type: Concept
- Source: learn-kubernetes / 07_Services / 042_Services - Load Balancer.txt
- Line Context: Lines 1-1 from transcript
- Content: However, if we were on a supported cloud platform like Google Cloud or AWS or Azure, I could leverage the native load balancer of that cloud platform.
- Multi-concept tags: Services, Cross-Cloud, Platform Engineering

### Evidence 342: learn-kubernetes/07_Services/042_Services - Load Balancer.extraction.md::E24
- Type: Concept
- Source: learn-kubernetes / 07_Services / 042_Services - Load Balancer.txt
- Line Context: Lines 1-1 from transcript
- Content: Now remember that this only works with supported cloud platforms.
- Multi-concept tags: Services, Platform Engineering

### Evidence 343: learn-kubernetes/07_Services/042_Services - Load Balancer.extraction.md::E28
- Type: Implementation Step
- Source: learn-kubernetes / 07_Services / 042_Services - Load Balancer.txt
- Line Context: Lines 1-1 from transcript
- Content: So later on, um, when we walk through, uh, the demos of deploying our application on cloud platforms, um, we will see this in action.
- Multi-concept tags: Services, Platform Engineering

### Evidence 344: learn-kubernetes/08_Microservices Architecture/045_Microservices Application.extraction.md::E2
- Type: Exam Tip
- Source: learn-kubernetes / 08_Microservices Architecture / 045_Microservices Application.txt
- Line Context: Lines 1-1 from transcript
- Content: We will then try and deploy this web application on multiple different Kubernetes platforms such as Google Cloud Platform.
- Multi-concept tags: Services, Architecture, Cross-Cloud, Platform Engineering

### Evidence 345: learn-kubernetes/08_Microservices Architecture/045_Microservices Application.extraction.md::E18
- Type: Exam Tip
- Source: learn-kubernetes / 08_Microservices Architecture / 045_Microservices Application.txt
- Line Context: Lines 1-1 from transcript
- Content: As you can see, this sample application is built with a combination of different services, different development tools and multiple different development platforms such as Python, Node.js, DotNet, etc. this sample application will be used to showcase how easy it is to set up an entire application stack consisting of diverse components in Docker.
- Multi-concept tags: Services, Architecture, Platform Engineering

### Evidence 346: learn-kubernetes/09_Kubernetes on Cloud/050_Kubernetes on Cloud - Introduction.extraction.md::E3
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 050_Kubernetes on Cloud - Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: In each of these cloud platforms, Google Cloud, AWS and Azure.
- Multi-concept tags: Cross-Cloud, Platform Engineering

### Evidence 347: learn-kubernetes/09_Kubernetes on Cloud/050_Kubernetes on Cloud - Introduction.extraction.md::E19
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 050_Kubernetes on Cloud - Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: All that we will be doing is provision a managed Kubernetes cluster and reuse the deployment and service definition files that we created, and see how we can deploy the same application on all of these different platforms.
- Multi-concept tags: Deployments, Services, Architecture, Cross-Cloud, Platform Engineering

### Evidence 348: learn-kubernetes/09_Kubernetes on Cloud/050_Kubernetes on Cloud - Introduction.extraction.md::E22
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 050_Kubernetes on Cloud - Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: And this is only a beginner's guide to deploying the same application in a learning environment in different cloud platforms in in the simplest form.
- Multi-concept tags: Configuration, Cross-Cloud, Platform Engineering

### Evidence 349: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E1
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: In this demo, we're going to deploy our application on the Google Kubernetes Engine on Google Cloud Platform.
- Multi-concept tags: Cross-Cloud, Platform Engineering

### Evidence 350: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E70
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: So it sent a call to the native load balancer to provision a load balancer on on the Google Cloud Platform.
- Multi-concept tags: Cross-Cloud, Platform Engineering

### Evidence 351: learn-kubernetes/10_Conclusion/055_Conclusion.extraction.md::E9
- Type: Implementation Step
- Source: learn-kubernetes / 10_Conclusion / 055_Conclusion.txt
- Line Context: Lines 1-1 from transcript
- Content: And finally, we also saw how to deploy a sample microservices application on Kubernetes on Google Cloud Platform.
- Multi-concept tags: Services, Cross-Cloud, Platform Engineering

### Evidence 352: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E14
- Type: Implementation Step
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Line Context: Lines 1-1 from transcript
- Content: Because the steps are going to be a little bit different because they are two different platforms.
- Multi-concept tags: Architecture, On-Prem, Platform Engineering

### Evidence 353: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E22
- Type: Exam Tip
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Line Context: Lines 1-1 from transcript
- Content: It's available to anyone and it's available across multiple platforms.
- Multi-concept tags: Architecture, On-Prem, Platform Engineering

### Evidence 354: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E31
- Type: Concept
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Line Context: Lines 1-1 from transcript
- Content: That's going to show you the installers for the various platforms it supports.
- Multi-concept tags: Architecture, On-Prem, Platform Engineering
